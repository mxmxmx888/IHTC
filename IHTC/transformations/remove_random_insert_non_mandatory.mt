using "../ihtc.mm"

match {
    // Transformation 7: remove one admitted patient, then admit a different
    // non-mandatory patient. This enables a more disruptive change to the
    // schedule by replacing part of the current plan with a new optional patient.
    patient: Patient {}
    delete oldAdmission: Admission {}

    newPatient: Patient {}

    surgeon: Surgeon {}
    room: Room {}
    theatre: OperatingTheatre {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailability: RoomAvailability {}

    forbid newExistingAdmission: Admission {}

    var day = surgeonAvailability.day

    delete oldAdmission.patientId -- patient

    newPatient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre
    roomAvailability.roomId -- room

    forbid newExistingAdmission.patientId -- newPatient
    forbid newPatient.incompatibleRooms -- room

    create newAdmission: Admission {
        admissionDay = day
    }

    create newAdmission.patientId -- newPatient
    create newAdmission.roomId -- room
    create newAdmission.operationTheatreId -- theatre

    // The inserted patient must be optional and different from the removed one.
    where newPatient.isMandatory == false
    where newPatient != patient

    // Keep all selected availability records aligned to the same day.
    where theatreAvailability.day == day
    where roomAvailability.day == day

    where newPatient.releaseDate <= day
    where day <= newPatient.dueDate
    where newPatient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
} 

if match {
    existingTrackerCheck: DeletedAdmissionsTracker {}
} then {
    match {
        existingTrackerUpdate: DeletedAdmissionsTracker {
            count = existingTrackerUpdate.count + 1
        }
    }
} else {
    match {
        create createdTracker: DeletedAdmissionsTracker {
            count = 1
        }
    }
}