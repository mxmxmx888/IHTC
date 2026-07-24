using "../ihtc.mm"

match {
    // Transformation 14: add a nurse to a compatible room-shift.
    // This version keeps the same intent, but uses a simpler control-flow structure:
    // 1. if the patient is already on the target shift, only add the nurse assignment
    // 2. else if a compatible target shift already exists, extend it with the patient
    // 3. else if an incompatible shift already exists, kill
    // 4. else create a fresh HospitalisationShift and assignment

    hospital: HospitalInstance {}

    patient: Patient {
        isScheduled == true
    }

    admission: Admission {}
    room: Room {}
    demand: PatientDayDemand {}

    nurse: Nurse {}
    nws: NurseWorkingShift {}

    admission.patientId -- patient
    admission.roomId -- room
    patient.dayDemand -- demand
    nws.nurse -- nurse

    var targetDay = admission.admissionDay + demand.relativeDay
    var targetShift = demand.shift
    var targetRoomNumber = room.id

    // Do not allow duplicate nurse assignment to the same room-shift.
    forbid existingAssignment: RoomShiftAssignment {}
    forbid existingAssignmentShift: HospitalisationShift {
        day == targetDay
        shift == targetShift
        roomNumber == targetRoomNumber
    }
    forbid existingAssignment.nurse -- nurse
    forbid existingAssignment.hospitalisationShift -- existingAssignmentShift

    where nws.day == targetDay
    where nws.shift == targetShift
    where targetDay < hospital.decisionHorizon
    where nurse.skillLevel >= demand.skillLevelRequired
}

if match {
    // Case 1: target shift already exists and already contains this patient.
    patientShiftCheck: HospitalisationShift {
        day == targetDay
        shift == targetShift
        roomNumber == targetRoomNumber
    }

    patientShiftCheck.patient -- patient

    where nurse.skillLevel >= patientShiftCheck.skillLevelRequired
    where nws.maxLoad >= patientShiftCheck.workload
} then {
    match {
        patientShiftAssign: HospitalisationShift {
            day == targetDay
            shift == targetShift
            roomNumber == targetRoomNumber
        }

        create rsaExistingPatient: RoomShiftAssignment {}
        create rsaExistingPatient.nurse -- nurse
        create rsaExistingPatient.hospitalisationShift -- patientShiftAssign
        create hospital.roomShiftAssignments -- rsaExistingPatient
    }
} else {
    if match {
        // Case 2: target shift exists, does not yet contain this patient,
        // and already has sufficient required skill level.
        mergeableShiftCheck: HospitalisationShift {
            day == targetDay
            shift == targetShift
            roomNumber == targetRoomNumber
            skillLevelRequired >= demand.skillLevelRequired
        }

        forbid mergeableShiftCheck.patient -- patient

        where nurse.skillLevel >= mergeableShiftCheck.skillLevelRequired
        where nws.maxLoad >= mergeableShiftCheck.workload + demand.workloadProduced
    } then {
        match {
            mergeableShiftUpdate: HospitalisationShift {
                day == targetDay
                shift == targetShift
                roomNumber == targetRoomNumber
                skillLevelRequired >= demand.skillLevelRequired
                workload = mergeableShiftUpdate.workload + demand.workloadProduced
            }

            create mergeableShiftUpdate.patient -- patient

            create rsaMerged: RoomShiftAssignment {}
            create rsaMerged.nurse -- nurse
            create rsaMerged.hospitalisationShift -- mergeableShiftUpdate
            create hospital.roomShiftAssignments -- rsaMerged
        }
    } else {
        if match {
            // Case 3: some shift already exists for this room/day/shift,
            // but it is not compatible with this patient demand.
            blockingShift: HospitalisationShift {
                day == targetDay
                shift == targetShift
                roomNumber == targetRoomNumber
            }
        } then {
            kill
        } else {
            // Case 4: no target shift exists yet, so create it.
            match {
                create shiftNew: HospitalisationShift {
                    day = targetDay
                    shift = targetShift
                    roomNumber = targetRoomNumber
                    workload = demand.workloadProduced
                    skillLevelRequired = demand.skillLevelRequired
                }

                create hospital.hospitalisationShifts -- shiftNew
                create shiftNew.room -- room
                create shiftNew.patient -- patient

                create rsaNew: RoomShiftAssignment {}
                create rsaNew.nurse -- nurse
                create rsaNew.hospitalisationShift -- shiftNew
                create hospital.roomShiftAssignments -- rsaNew
            }
        }
    }
}