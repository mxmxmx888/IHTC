using "../ihtc.mm"

// T14: Assign an available nurse to an active room-day-shift slot in the nurse
// phase. Demand is derived from current admissions and PatientDayDemand, so an
// assignment is created only for a slot that is currently needed and qualified.
match {
    hospital: HospitalInstance {}

    // Nurse-only move; unavailable until mandatory patient admissions are complete.
    state: OptimisationState {
        phase == OptimisationPhase.NURSES
    }

    nurse: Nurse {}
    nurseWorkingShift: NurseWorkingShift {}
    shift: HospitalisationShift {}
    room: Room {}

    patient: Patient {}
    admission: Admission {}
    demand: PatientDayDemand {}

    forbid existingAssignment: RoomShiftAssignment {}

    hospital.optimisationState -- state
    nurseWorkingShift.nurse -- nurse
    shift.room -- room

    hospital.admissions -- admission
    admission.patientId -- patient
    admission.roomId -- room
    patient.dayDemand -- demand

    forbid existingAssignment.hospitalisationShift -- shift

    where nurseWorkingShift.day == shift.day
    where nurseWorkingShift.shift == shift.shift
    where admission.admissionDay + demand.relativeDay == shift.day
    where demand.shift == shift.shift
}

// Check every demand contributing to the selected slot. If any requirement is
// above this nurse's skill level, reject the entire candidate assignment.
if match {
    conflictingPatient: Patient {}
    conflictingAdmission: Admission {}

    conflictingDemand: PatientDayDemand {
        skillLevelRequired > nurse.skillLevel
    }

    hospital.admissions -- conflictingAdmission
    conflictingAdmission.patientId -- conflictingPatient
    conflictingAdmission.roomId -- room
    conflictingPatient.dayDemand -- conflictingDemand

    where conflictingAdmission.admissionDay + conflictingDemand.relativeDay == shift.day
    where conflictingDemand.shift == shift.shift
} then {
    kill
} else {
}

match {
    // The slot has active demand and the nurse passed all skill checks.
    create assignment: RoomShiftAssignment {}
    create assignment.nurse -- nurse
    create assignment.hospitalisationShift -- shift
    create hospital.roomShiftAssignments -- assignment
}
