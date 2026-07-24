using "../ihtc.mm"

// Transformation 11: change a patient's room, admission day,
// and theatre in one coordinated move.
// Purpose: to explore a broader reallocation across multiple
// decision variables at once.

match {
    patient: Patient {}
    surgeon: Surgeon {}
    theatre: OperatingTheatre {}
    newTheatre: OperatingTheatre {}
    room: Room {}
    newRoom: Room {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailability: RoomAvailability {}

    var newDay = surgeonAvailability.day

    admission: Admission {
        admissionDay = newDay
    }

    admission.patientId -- patient
    admission.operationTheatreId -- theatre
    admission.roomId -- room

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- newTheatre
    roomAvailability.roomId -- newRoom

    delete admission.operationTheatreId -- theatre
    create admission.operationTheatreId -- newTheatre

    delete admission.roomId -- room
    create admission.roomId -- newRoom

    where patient.isScheduled == true

    where newRoom != room
    where newTheatre != theatre
    forbid patient.incompatibleRooms -- newRoom

    where admission.admissionDay != newDay
    where theatreAvailability.day == newDay
    where roomAvailability.day == newDay

    where patient.releaseDate <= newDay
    where newDay <= patient.dueDate
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
    where roomAvailability.occupiedBeds < newRoom.maxCapacity
}