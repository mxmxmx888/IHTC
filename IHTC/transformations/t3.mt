using "../ihtc.mm"

// Transformation 3: find the earliest available surgeon, then find a theatre
// and room available on the same day, and insert a random compatible
// non-mandatory patient.

match {
    hospital: HospitalInstance {}

    patient: Patient {}

    surgeon: Surgeon {}
    surgeonAvailability: SurgeonAvailability {}

    theatre: OperatingTheatre {}
    theatreAvailability: OperatingTheatreAvailability {}

    room: Room {}
    roomAvailability: RoomAvailability {}

    forbid existingAdmission: Admission {}

    var day = surgeonAvailability.day

    hospital.patients -- patient
    hospital.surgeonAvailabilities -- surgeonAvailability
    hospital.operatingTheatreAvailabilities -- theatreAvailability
    hospital.roomAvailabilities -- roomAvailability

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
    where patient.isScheduled == false

    where surgeonAvailability.maxOperatingTime > 0
    where theatreAvailability.day == day
    where roomAvailability.day == day
    where theatreAvailability.maxCapacity > 0
    where roomAvailability.occupiedBeds < room.maxCapacity

    where patient.releaseDate <= day
    where day <= patient.dueDate
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime

    where hospital.surgeonAvailabilities.all((other) =>
        other == surgeonAvailability ||
        other.maxOperatingTime == 0 ||
        other.day >= surgeonAvailability.day
    )
}