using "../ihtc.mm"

match {
    // Transformation 1: admit a non-mandatory patient by assigning a feasible
    // day, room, and theatre. This is a broad exploratory move used to expand
    // the schedule with new optional patients.
    patient: Patient {}
    surgeon: Surgeon {}
    room: Room {}
    theatre: OperatingTheatre {}
    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailability: RoomAvailability {}

    forbid existingAdmission: Admission {}

    var day = surgeonAvailability.day

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre
    roomAvailability.roomId -- room

    forbid existingAdmission.patientId -- patient
    forbid patient.incompatibleRooms -- room

    create admission: Admission {
        admissionDay = day
    }

    create admission.patientId -- patient
    create admission.roomId -- room
    create admission.operationTheatreId -- theatre

    // Only optional patients can be inserted by this move.
    where patient.isMandatory == false

    // Keep all selected availability records aligned to the same day.
    where theatreAvailability.day == day
    where roomAvailability.day == day

    where patient.releaseDate <= day
    where day <= patient.dueDate
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
}