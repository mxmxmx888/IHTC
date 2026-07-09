using "../ihtc.mm"

// T9 + T10
match {
    patient: Patient {}
    admission: Admission { admissionDay = newDay }
    surgeon: Surgeon {}
    room: Room {}
    oldOt: OperatingTheatre {}
    newOt: OperatingTheatre {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailability: RoomAvailability {}

    admission.patientId -- patient
    admission.operationTheatreId -- oldOt
    admission.roomId -- room

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- newOt
    roomAvailability.roomId -- room

    delete admission.operationTheatreId -- oldOt
    create admission.operationTheatreId -- newOt

    var newDay = surgeonAvailability.day

    where patient.isScheduled == true
    where admission.admissionDay != newDay
    where newOt != oldOt
    where theatreAvailability.day == newDay
    where roomAvailability.day == newDay
    where patient.releaseDate <= newDay
    where newDay <= patient.dueDate
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
    where roomAvailability.occupiedBeds < room.maxCapacity
}