using "../ihtc.mm"

// Transformation 2: insert the non-mandatory unscheduled patient with the
// smallest surgery duration into a feasible admission day, room, and theatre.

match {
    hospital: HospitalInstance {}

    patient: Patient {
        isScheduled = true
    }

    surgeon: Surgeon {}
    room: Room {}
    theatre: OperatingTheatre {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailability: RoomAvailability {}

    forbid existingAdmission: Admission {}

    var day = surgeonAvailability.day

    hospital.patients -- patient

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

    where theatreAvailability.day == day
    where roomAvailability.day == day
    where patient.releaseDate <= day
    where day <= patient.dueDate
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
    where roomAvailability.occupiedBeds < room.maxCapacity

    where hospital.patients.all((other) =>
        other == patient ||
        other.isMandatory == true ||
        other.isScheduled == true ||
        other.surgeryDuration >= patient.surgeryDuration
    )
}