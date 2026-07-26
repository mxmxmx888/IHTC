using "../ihtc.mm"

// T16: Move a nurse from one room-day-shift slot to another active slot in a
// different room during the nurse phase. The target must match the nurse's
// working shift and all demand in it must be within the nurse's skill level.
match {
    hospital: HospitalInstance {}

    state: OptimisationState {
        phase == OptimisationPhase.NURSES
    }

    nurse: Nurse {}
    nurseWorkingShift: NurseWorkingShift {}
    oldShift: HospitalisationShift {}
    newShift: HospitalisationShift {}
    oldRoom: Room {}
    newRoom: Room {}

    patient: Patient {}
    admission: Admission {}
    demand: PatientDayDemand {}

    delete oldAssignment: RoomShiftAssignment {}
    forbid existingNewAssignment: RoomShiftAssignment {}

    hospital.optimisationState -- state
    nurseWorkingShift.nurse -- nurse
    oldShift.room -- oldRoom
    newShift.room -- newRoom

    delete oldAssignment.nurse -- nurse
    delete oldAssignment.hospitalisationShift -- oldShift

    hospital.admissions -- admission
    admission.patientId -- patient
    admission.roomId -- newRoom
    patient.dayDemand -- demand

    forbid existingNewAssignment.hospitalisationShift -- newShift

    where oldShift != newShift
    where oldRoom != newRoom
    where nurseWorkingShift.day == newShift.day
    where nurseWorkingShift.shift == newShift.shift
    where admission.admissionDay + demand.relativeDay == newShift.day
    where demand.shift == newShift.shift
}

// Examine every demand contributing to the target slot. A single demand above
// the nurse's skill level invalidates the complete reassignment.
if match {
    conflictingPatient: Patient {}
    conflictingAdmission: Admission {}

    conflictingDemand: PatientDayDemand {
        skillLevelRequired > nurse.skillLevel
    }

    hospital.admissions -- conflictingAdmission
    conflictingAdmission.patientId -- conflictingPatient
    conflictingAdmission.roomId -- newRoom
    conflictingPatient.dayDemand -- conflictingDemand

    where conflictingAdmission.admissionDay + conflictingDemand.relativeDay == newShift.day
    where conflictingDemand.shift == newShift.shift
} then {
    kill
} else {
}

match {
    // Replace the old assignment only after the target slot passes skill checks.
    create newAssignment: RoomShiftAssignment {}
    create newAssignment.nurse -- nurse
    create newAssignment.hospitalisationShift -- newShift
    create hospital.roomShiftAssignments -- newAssignment
}
