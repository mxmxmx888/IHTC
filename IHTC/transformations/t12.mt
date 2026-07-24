using "../ihtc.mm"

match {
// T8 + T9

    patient: Patient {}
    admission: Admission {admissionDay = newDay}
    oldRoom: Room {}
    newRoom: Room {}
    surgeon: Surgeon {}
    theatre: OperatingTheatre {}
    roomAvailability: RoomAvailability {}
    admission.operationTheatreId -- theatre
    admission.patientId -- patient
    admission.roomId -- oldRoom
    roomAvailability.roomId -- newRoom

    delete admission.roomId -- oldRoom
    create admission.roomId -- newRoom

    forbid patient.incompatibleRooms -- newRoom
    

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre

    var newDay = surgeonAvailability.day

    where patient.isScheduled == true
    where admission.admissionDay != newDay
    where theatreAvailability.day == newDay
    where roomAvailability.day == newDay
    where patient.releaseDate <= newDay
    where newDay <= patient.dueDate
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
    
    where newRoom != oldRoom
    
    where roomAvailability.occupiedBeds < newRoom.maxCapacity
}