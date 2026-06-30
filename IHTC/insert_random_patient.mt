using "./ihtc.mm"

rule insertRandomPatient {
    match {
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

        where patient.isMandatory == false
        where theatreAvailability.day == day
        where roomAvailability.day == day
        where patient.releaseDate <= day
        where day <= patient.dueDate
        where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
        where theatreAvailability.maxCapacity > 0
    }
}
