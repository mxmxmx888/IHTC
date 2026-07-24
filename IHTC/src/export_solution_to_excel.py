#!/usr/bin/env python3
"""Export an IHTC solution JSON file to a readable Excel workbook."""

from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

try:
    from openpyxl import Workbook
    from openpyxl.styles import Font
except ModuleNotFoundError as exc:  # pragma: no cover - dependency guard
    raise SystemExit(
        "Missing dependency 'openpyxl'. Install it with "
        "`pip install -r requirements.txt`."
    ) from exc


class ValidationError(ValueError):
    """Raised when the input JSON does not match the expected schema."""


PROJECT_ROOT = Path(__file__).resolve().parent.parent
PROBLEM_METADATA_PATH = PROJECT_ROOT / "references" / "ihtc_input_reference.json"


@dataclass(frozen=True)
class PatientRow:
    patient_id: str
    scheduled_status: str
    admission_day: int | str
    room: str
    operating_theater: str


@dataclass(frozen=True)
class NurseAssignmentGroupedRow:
    nurse_id: str
    day: int
    shift: str
    room_count: int
    rooms_joined: str


@dataclass(frozen=True)
class NurseAssignmentFlatRow:
    nurse_id: str
    day: int
    shift: str
    room: str


@dataclass(frozen=True)
class ProblemMetadata:
    days: int
    shift_types: list[str]
    room_ids: list[str]


@dataclass(frozen=True)
class NormalizedExportData:
    patient_rows: list[PatientRow]
    grouped_rows: list[NurseAssignmentGroupedRow]
    flat_rows: list[NurseAssignmentFlatRow]
    metadata: ProblemMetadata


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Convert an IHTC solution JSON file into an Excel workbook."
    )
    parser.add_argument("--input", required=True, help="Path to the solution JSON file.")
    parser.add_argument(
        "--output",
        required=True,
        help="Output workbook name. The file will be written into IHTC/exports/.",
    )
    return parser.parse_args()


def require_dict(value: Any, context: str) -> dict[str, Any]:
    if not isinstance(value, dict):
        raise ValidationError(f"{context} must be an object.")
    return value


def require_list(value: Any, context: str) -> list[Any]:
    if not isinstance(value, list):
        raise ValidationError(f"{context} must be a list.")
    return value


def require_str(value: Any, context: str) -> str:
    if not isinstance(value, str):
        raise ValidationError(f"{context} must be a string.")
    return value


def require_int(value: Any, context: str) -> int:
    if not isinstance(value, int) or isinstance(value, bool):
        raise ValidationError(f"{context} must be an integer.")
    return value


def load_solution(path: Path) -> dict[str, Any]:
    try:
        raw = path.read_text(encoding="utf-8")
    except OSError as exc:
        raise SystemExit(f"Failed to read input file '{path}': {exc}") from exc

    try:
        payload = json.loads(raw)
    except json.JSONDecodeError as exc:
        raise SystemExit(f"Invalid JSON in '{path}': {exc}") from exc

    solution = require_dict(payload, "Top-level JSON")
    patients = require_list(solution.get("patients"), "Top-level 'patients'")
    nurses = require_list(solution.get("nurses"), "Top-level 'nurses'")
    return {"patients": patients, "nurses": nurses}


def require_number(value: Any, context: str) -> int | float:
    if not isinstance(value, (int, float)) or isinstance(value, bool):
        raise ValidationError(f"{context} must be numeric.")
    return value


def load_problem_metadata(path: Path) -> ProblemMetadata:
    try:
        raw = path.read_text(encoding="utf-8")
    except OSError as exc:
        raise SystemExit(f"Failed to read problem metadata file '{path}': {exc}") from exc

    try:
        payload = json.loads(raw)
    except json.JSONDecodeError as exc:
        raise SystemExit(f"Invalid JSON in problem metadata file '{path}': {exc}") from exc

    problem = require_dict(payload, "Problem metadata JSON")
    days = require_int(problem.get("days"), "Problem metadata 'days'")
    shift_types_raw = require_list(
        problem.get("shift_types"), "Problem metadata 'shift_types'"
    )
    rooms_raw = require_list(problem.get("rooms"), "Problem metadata 'rooms'")

    shift_types: list[str] = []
    for index, raw_shift in enumerate(shift_types_raw):
        shift_types.append(
            require_str(raw_shift, f"Problem metadata shift_types[{index}]")
        )

    room_ids: list[str] = []
    for index, raw_room in enumerate(rooms_raw):
        room = require_dict(raw_room, f"Problem metadata rooms[{index}]")
        room_ids.append(require_str(room.get('id'), f"Problem metadata rooms[{index}].id"))

    if not room_ids:
        raise ValidationError("Problem metadata 'rooms' must not be empty.")

    return ProblemMetadata(days=days, shift_types=shift_types, room_ids=room_ids)


def load_problem_shift_types(path: Path) -> list[str]:
    return load_problem_metadata(path).shift_types


def normalize_patients(patients: list[Any]) -> list[PatientRow]:
    rows: list[PatientRow] = []
    for index, raw_patient in enumerate(patients):
        patient = require_dict(raw_patient, f"patients[{index}]")
        patient_id = require_str(patient.get("id"), f"patients[{index}].id")
        admission_day_value = patient.get("admission_day")

        if admission_day_value == "none":
            rows.append(
                PatientRow(
                    patient_id=patient_id,
                    scheduled_status="UNSCHEDULED",
                    admission_day="none",
                    room="",
                    operating_theater="",
                )
            )
            continue

        admission_day = require_int(
            admission_day_value, f"patients[{index}].admission_day"
        )
        room = require_str(patient.get("room"), f"patients[{index}].room")
        operating_theater = require_str(
            patient.get("operating_theater"),
            f"patients[{index}].operating_theater",
        )

        rows.append(
            PatientRow(
                patient_id=patient_id,
                scheduled_status="SCHEDULED",
                admission_day=admission_day,
                room=room,
                operating_theater=operating_theater,
            )
        )
    return rows


def normalize_nurses(
    nurses: list[Any],
) -> tuple[list[NurseAssignmentGroupedRow], list[NurseAssignmentFlatRow]]:
    grouped_rows: list[NurseAssignmentGroupedRow] = []
    flat_rows: list[NurseAssignmentFlatRow] = []

    for nurse_index, raw_nurse in enumerate(nurses):
        nurse = require_dict(raw_nurse, f"nurses[{nurse_index}]")
        nurse_id = require_str(nurse.get("id"), f"nurses[{nurse_index}].id")
        assignments = require_list(
            nurse.get("assignments"), f"nurses[{nurse_index}].assignments"
        )

        for assignment_index, raw_assignment in enumerate(assignments):
            assignment = require_dict(
                raw_assignment,
                f"nurses[{nurse_index}].assignments[{assignment_index}]",
            )
            day = require_int(
                assignment.get("day"),
                f"nurses[{nurse_index}].assignments[{assignment_index}].day",
            )
            shift = require_str(
                assignment.get("shift"),
                f"nurses[{nurse_index}].assignments[{assignment_index}].shift",
            )
            rooms = require_list(
                assignment.get("rooms"),
                f"nurses[{nurse_index}].assignments[{assignment_index}].rooms",
            )

            normalized_rooms: list[str] = []
            for room_index, room_value in enumerate(rooms):
                normalized_rooms.append(
                    require_str(
                        room_value,
                        "nurses"
                        f"[{nurse_index}].assignments[{assignment_index}].rooms[{room_index}]",
                    )
                )

            grouped_rows.append(
                NurseAssignmentGroupedRow(
                    nurse_id=nurse_id,
                    day=day,
                    shift=shift,
                    room_count=len(normalized_rooms),
                    rooms_joined=", ".join(normalized_rooms),
                )
            )

            for room in normalized_rooms:
                flat_rows.append(
                    NurseAssignmentFlatRow(
                        nurse_id=nurse_id,
                        day=day,
                        shift=shift,
                        room=room,
                    )
                )

    return grouped_rows, flat_rows


def build_schedule_index(
    nurses: list[Any], metadata: ProblemMetadata
) -> dict[tuple[str, int, str], list[str]]:
    room_ids = set(metadata.room_ids)
    shift_types = set(metadata.shift_types)
    schedule_index: dict[tuple[str, int, str], list[str]] = {}

    for nurse_index, raw_nurse in enumerate(nurses):
        nurse = require_dict(raw_nurse, f"nurses[{nurse_index}]")
        nurse_id = require_str(nurse.get("id"), f"nurses[{nurse_index}].id")
        assignments = require_list(
            nurse.get("assignments"), f"nurses[{nurse_index}].assignments"
        )

        for assignment_index, raw_assignment in enumerate(assignments):
            assignment = require_dict(
                raw_assignment,
                f"nurses[{nurse_index}].assignments[{assignment_index}]",
            )
            day = require_int(
                assignment.get("day"),
                f"nurses[{nurse_index}].assignments[{assignment_index}].day",
            )
            shift = require_str(
                assignment.get("shift"),
                f"nurses[{nurse_index}].assignments[{assignment_index}].shift",
            )
            rooms = require_list(
                assignment.get("rooms"),
                f"nurses[{nurse_index}].assignments[{assignment_index}].rooms",
            )

            if day < 0 or day >= metadata.days:
                raise ValidationError(
                    "nurses"
                    f"[{nurse_index}].assignments[{assignment_index}].day={day} "
                    f"is outside the problem horizon 0..{metadata.days - 1}."
                )
            if shift not in shift_types:
                raise ValidationError(
                    "nurses"
                    f"[{nurse_index}].assignments[{assignment_index}].shift='{shift}' "
                    "is not present in problem metadata shift_types."
                )

            for room_index, raw_room in enumerate(rooms):
                room_id = require_str(
                    raw_room,
                    "nurses"
                    f"[{nurse_index}].assignments[{assignment_index}].rooms[{room_index}]",
                )
                if room_id not in room_ids:
                    raise ValidationError(
                        "nurses"
                        f"[{nurse_index}].assignments[{assignment_index}].rooms[{room_index}]='{room_id}' "
                        "is not present in problem metadata rooms."
                    )
                schedule_index.setdefault((room_id, day, shift), []).append(nurse_id)

    return schedule_index


def build_schedule_index_from_flat_rows(
    flat_rows: list[NurseAssignmentFlatRow],
) -> dict[tuple[str, int, str], list[str]]:
    schedule_index: dict[tuple[str, int, str], list[str]] = {}
    for row in flat_rows:
        schedule_index.setdefault((row.room, row.day, row.shift), []).append(row.nurse_id)
    return schedule_index


def load_generated_model(path: Path) -> dict[str, Any]:
    try:
        raw = path.read_text(encoding="utf-8")
    except OSError as exc:
        raise SystemExit(f"Failed to read input file '{path}': {exc}") from exc

    try:
        payload = json.loads(raw)
    except json.JSONDecodeError as exc:
        raise SystemExit(f"Invalid JSON in '{path}': {exc}") from exc

    model = require_dict(payload, "Top-level JSON")
    instances = require_list(model.get("instances"), "Top-level 'instances'")
    links = require_list(model.get("links"), "Top-level 'links'")
    return {"instances": instances, "links": links}


def normalize_generated_model(model: dict[str, Any]) -> NormalizedExportData:
    instances_raw = model["instances"]
    links_raw = model["links"]

    instances: dict[str, dict[str, Any]] = {}
    outgoing: dict[tuple[str, str], list[str]] = {}

    for index, raw_instance in enumerate(instances_raw):
        instance = require_dict(raw_instance, f"instances[{index}]")
        name = require_str(instance.get("name"), f"instances[{index}].name")
        require_str(instance.get("className"), f"instances[{index}].className")
        require_dict(instance.get("properties"), f"instances[{index}].properties")
        instances[name] = instance

    for index, raw_link in enumerate(links_raw):
        link = require_dict(raw_link, f"links[{index}]")
        source_name = require_str(link.get("sourceName"), f"links[{index}].sourceName")
        source_property = require_str(
            link.get("sourceProperty"), f"links[{index}].sourceProperty"
        )
        target_name = require_str(link.get("targetName"), f"links[{index}].targetName")
        outgoing.setdefault((source_name, source_property), []).append(target_name)

    admissions_by_patient: dict[str, dict[str, str | int]] = {}
    for name, instance in instances.items():
        if instance["className"] != "Admission":
            continue
        properties = instance["properties"]
        day = int(require_number(properties.get("admissionDay"), f"{name}.admissionDay"))
        patient_names = outgoing.get((name, "patientId"), [])
        room_names = outgoing.get((name, "roomId"), [])
        theatre_names = outgoing.get((name, "operationTheatreId"), [])

        if len(patient_names) != 1 or len(room_names) != 1 or len(theatre_names) != 1:
            raise ValidationError(
                f"Admission '{name}' must link to exactly one patient, room, and theatre."
            )

        admissions_by_patient[patient_names[0]] = {
            "admission_day": day,
            "room": room_names[0],
            "operating_theater": theatre_names[0],
        }

    patient_rows: list[PatientRow] = []
    for name, instance in sorted(
        (
            (n, inst)
            for n, inst in instances.items()
            if inst["className"] == "Patient"
        ),
        key=lambda item: require_number(item[1]["properties"].get("id"), f"{item[0]}.id"),
    ):
        properties = instance["properties"]
        patient_id = str(int(require_number(properties.get("id"), f"{name}.id")))
        admission = admissions_by_patient.get(name)

        if admission is None:
            patient_rows.append(
                PatientRow(
                    patient_id=patient_id,
                    scheduled_status="UNSCHEDULED",
                    admission_day="none",
                    room="",
                    operating_theater="",
                )
            )
            continue

        patient_rows.append(
            PatientRow(
                patient_id=patient_id,
                scheduled_status="SCHEDULED",
                admission_day=int(admission["admission_day"]),
                room=str(admission["room"]),
                operating_theater=str(admission["operating_theater"]),
            )
        )

    hospital_instances = [
        inst for inst in instances.values() if inst["className"] == "HospitalInstance"
    ]
    if len(hospital_instances) != 1:
        raise ValidationError("Generated model must contain exactly one HospitalInstance.")
    decision_horizon = int(
        require_number(
            hospital_instances[0]["properties"].get("decisionHorizon"),
            "HospitalInstance.decisionHorizon",
        )
    )

    room_rows: list[tuple[str, int]] = []
    for name, instance in instances.items():
        if instance["className"] != "Room":
            continue
        room_rows.append(
            (name, int(require_number(instance["properties"].get("id"), f"{name}.id")))
        )
    room_ids = [name for name, _ in sorted(room_rows, key=lambda item: item[1])]

    shift_types = load_problem_shift_types(PROBLEM_METADATA_PATH)
    metadata = ProblemMetadata(
        days=decision_horizon, shift_types=shift_types, room_ids=room_ids
    )

    grouped_rows: list[NurseAssignmentGroupedRow] = []
    flat_rows: list[NurseAssignmentFlatRow] = []

    for name, instance in sorted(instances.items()):
        if instance["className"] != "RoomShiftAssignment":
            continue

        nurse_names = outgoing.get((name, "nurse"), [])
        shift_names = outgoing.get((name, "hospitalisationShift"), [])
        if len(nurse_names) != 1 or len(shift_names) != 1:
            raise ValidationError(
                f"RoomShiftAssignment '{name}' must link to exactly one nurse and one hospitalisation shift."
            )

        nurse_name = nurse_names[0]
        shift_name = shift_names[0]
        shift_instance = instances.get(shift_name)
        nurse_instance = instances.get(nurse_name)

        if shift_instance is None or shift_instance["className"] != "HospitalisationShift":
            raise ValidationError(
                f"RoomShiftAssignment '{name}' references invalid hospitalisation shift '{shift_name}'."
            )
        if nurse_instance is None or nurse_instance["className"] != "Nurse":
            raise ValidationError(
                f"RoomShiftAssignment '{name}' references invalid nurse '{nurse_name}'."
            )

        room_names = outgoing.get((shift_name, "room"), [])
        if len(room_names) != 1:
            raise ValidationError(
                f"HospitalisationShift '{shift_name}' must link to exactly one room."
            )

        day = int(
            require_number(
                shift_instance["properties"].get("day"),
                f"{shift_name}.day",
            )
        )
        shift_index = int(
            require_number(
                shift_instance["properties"].get("shift"),
                f"{shift_name}.shift",
            )
        )
        if shift_index < 0 or shift_index >= len(shift_types):
            raise ValidationError(
                f"HospitalisationShift '{shift_name}' has shift index {shift_index}, "
                f"but only {len(shift_types)} shift types are available."
            )

        nurse_id = str(
            int(require_number(nurse_instance["properties"].get("id"), f"{nurse_name}.id"))
        )
        room_name = room_names[0]
        shift_label = shift_types[shift_index]

        grouped_rows.append(
            NurseAssignmentGroupedRow(
                nurse_id=nurse_id,
                day=day,
                shift=shift_label,
                room_count=1,
                rooms_joined=room_name,
            )
        )
        flat_rows.append(
            NurseAssignmentFlatRow(
                nurse_id=nurse_id,
                day=day,
                shift=shift_label,
                room=room_name,
            )
        )

    return NormalizedExportData(
        patient_rows=patient_rows,
        grouped_rows=grouped_rows,
        flat_rows=flat_rows,
        metadata=metadata,
    )


def normalize_input(path: Path) -> NormalizedExportData:
    try:
        raw = path.read_text(encoding="utf-8")
    except OSError as exc:
        raise SystemExit(f"Failed to read input file '{path}': {exc}") from exc

    try:
        payload = json.loads(raw)
    except json.JSONDecodeError as exc:
        raise SystemExit(f"Invalid JSON in '{path}': {exc}") from exc

    root = require_dict(payload, "Top-level JSON")

    if "patients" in root and "nurses" in root:
        metadata = load_problem_metadata(PROBLEM_METADATA_PATH)
        solution = load_solution(path)
        patient_rows = normalize_patients(solution["patients"])
        grouped_rows, flat_rows = normalize_nurses(solution["nurses"])
        return NormalizedExportData(
            patient_rows=patient_rows,
            grouped_rows=grouped_rows,
            flat_rows=flat_rows,
            metadata=metadata,
        )

    if "instances" in root and "links" in root:
        return normalize_generated_model(load_generated_model(path))

    raise ValidationError(
        "Unsupported input format. Expected either a solution JSON with "
        "'patients' and 'nurses' or an MDEO generated model with "
        "'instances' and 'links'."
    )


def add_sheet(workbook: Workbook, title: str, headers: list[str], rows: list[list[Any]]) -> None:
    worksheet = workbook.create_sheet(title=title)
    worksheet.append(headers)
    for cell in worksheet[1]:
        cell.font = Font(bold=True)
    worksheet.freeze_panes = "A2"

    for row in rows:
        worksheet.append(row)

    autosize_columns(worksheet)


def autosize_columns(worksheet: Any) -> None:
    for column_cells in worksheet.columns:
        max_length = 0
        column_letter = column_cells[0].column_letter
        for cell in column_cells:
            value = "" if cell.value is None else str(cell.value)
            if len(value) > max_length:
                max_length = len(value)
        worksheet.column_dimensions[column_letter].width = min(max(max_length + 2, 12), 50)


def build_workbook(
    input_path: Path,
    metadata: ProblemMetadata,
    patient_rows: list[PatientRow],
    grouped_rows: list[NurseAssignmentGroupedRow],
    flat_rows: list[NurseAssignmentFlatRow],
    schedule_index: dict[tuple[str, int, str], list[str]],
) -> Workbook:
    workbook = Workbook()
    overview = workbook.active
    overview.title = "Overview"

    grouped_rows_sorted = sorted(
        grouped_rows,
        key=lambda row: (int(row.nurse_id), row.day, row.shift, row.rooms_joined),
    )
    patient_rows_sorted = sorted(
        patient_rows,
        key=lambda row: (
            0 if row.scheduled_status == "SCHEDULED" else 1,
            int(row.patient_id),
        ),
    )

    overview_headers = [
        "total_patients",
        "admitted_patients",
        "unscheduled_patients",
        "total_nurses",
        "total_nurse_assignment_groups",
        "total_flattened_nurse_room_assignments",
        "decision_horizon_days",
        "shift_types_used",
        "total_rooms_in_schedule",
    ]
    overview_values = [
        len(patient_rows),
        sum(1 for row in patient_rows if row.scheduled_status == "SCHEDULED"),
        sum(1 for row in patient_rows if row.scheduled_status == "UNSCHEDULED"),
        len({row.nurse_id for row in grouped_rows}),
        len(grouped_rows),
        len(flat_rows),
        metadata.days,
        ", ".join(metadata.shift_types),
        len(metadata.room_ids),
    ]

    overview.append(overview_headers)
    overview.append(overview_values)
    for cell in overview[1]:
        cell.font = Font(bold=True)

    overview.append([])
    overview.append(["generated_at_utc", datetime.now(timezone.utc).isoformat()])
    overview.append(["source_file", str(input_path)])
    overview.freeze_panes = "A2"
    autosize_columns(overview)

    add_sheet(
        workbook,
        "Patients",
        ["patient_id", "scheduled_status", "admission_day", "room", "operating_theater"],
        [
            [
                row.patient_id,
                row.scheduled_status,
                row.admission_day,
                row.room,
                row.operating_theater,
            ]
            for row in patient_rows_sorted
        ],
    )

    add_sheet(
        workbook,
        "UnscheduledPatients",
        ["patient_id", "admission_day"],
        [
            [row.patient_id, row.admission_day]
            for row in patient_rows
            if row.scheduled_status == "UNSCHEDULED"
        ],
    )

    add_sheet(
        workbook,
        "NurseAssignmentsGrouped",
        ["nurse_id", "day", "shift", "room_count", "rooms_joined"],
        [
            [
                row.nurse_id,
                row.day,
                row.shift,
                row.room_count,
                row.rooms_joined,
            ]
            for row in grouped_rows_sorted
        ],
    )

    add_sheet(
        workbook,
        "NurseAssignmentsFlat",
        ["nurse_id", "day", "shift", "room"],
        [[row.nurse_id, row.day, row.shift, row.room] for row in flat_rows],
    )

    schedule_headers = ["room_id"]
    for day in range(metadata.days):
        for shift in metadata.shift_types:
            schedule_headers.append(f"D{day}_{shift}")

    schedule_rows: list[list[Any]] = []
    for room_id in metadata.room_ids:
        row: list[Any] = [room_id]
        for day in range(metadata.days):
            for shift in metadata.shift_types:
                assigned_nurses = schedule_index.get((room_id, day, shift), [])
                row.append(", ".join(assigned_nurses))
        schedule_rows.append(row)

    add_sheet(workbook, "RoomShiftSchedule", schedule_headers, schedule_rows)
    workbook["RoomShiftSchedule"].freeze_panes = "B2"

    return workbook


def main() -> int:
    args = parse_args()
    input_path = Path(args.input).expanduser().resolve()
    exports_dir = PROJECT_ROOT / "exports"
    output_name = Path(args.output).name
    output_path = exports_dir / output_name

    try:
        export_data = normalize_input(input_path)
        schedule_index = build_schedule_index_from_flat_rows(export_data.flat_rows)
    except ValidationError as exc:
        print(f"Schema validation failed: {exc}", file=sys.stderr)
        return 1

    workbook = build_workbook(
        input_path,
        export_data.metadata,
        export_data.patient_rows,
        export_data.grouped_rows,
        export_data.flat_rows,
        schedule_index,
    )
    exports_dir.mkdir(parents=True, exist_ok=True)
    workbook.save(output_path)
    print(f"Wrote Excel workbook to {output_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
