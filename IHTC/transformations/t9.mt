using "../ihtc.mm"
    // Transformation 9: move an admitted patient to a different feasible day.
    // Purpose: to improve schedule balance or resource usage by changing only the day.

match {


    patient: Patient {}
    admission: Admission {admissionDay = newDay}

    surgeon: Surgeon {}
    theatre: OperatingTheatre {}
    room: Room {}
    

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailability: RoomAvailability {}

    admission.patientId -- patient
    admission.operationTheatreId -- theatre
    admission.roomId -- room

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre
    roomAvailability.roomId -- room

    var newDay = surgeonAvailability.day

    where patient.isScheduled == true
    where admission.admissionDay != newDay
    where theatreAvailability.day == newDay
    where roomAvailability.day == newDay
    where patient.releaseDate <= newDay
    where newDay <= patient.dueDate
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
    where roomAvailability.occupiedBeds < room.maxCapacity

    
}