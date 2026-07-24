using "../ihtc.mm"

match {
    // Transformation 8: reassign an admitted patient to a different compatible room.
    // Purpose: to move a scheduled patient into another feasible room in order
    // to improve room allocation and avoid poor room choices.

    patient: Patient {}
    admission: Admission {}
    oldRoom: Room {}
    newRoom: Room {}
    roomAvailability: RoomAvailability {}

    admission.patientId -- patient
    admission.roomId -- oldRoom
    roomAvailability.roomId -- newRoom

    delete admission.roomId -- oldRoom
    create admission.roomId -- newRoom

    where patient.isScheduled == true
    where newRoom != oldRoom
    where roomAvailability.day == admission.admissionDay
    where roomAvailability.occupiedBeds < newRoom.maxCapacity

    forbid patient.incompatibleRooms -- newRoom
}