using "../ihtc.mm"

match {
    // Transformation 3: find the earliest available surgeon, then find a
    // theatre and room on the same day, and admit a compatible non-mandatory
    // unscheduled patient. Full-stay RoomAvailability is validated and updated
    // in the same way as T1 and T2.
    hospital: HospitalInstance {}

    patient: Patient {
        isMandatory == false
        isScheduled == false
    }
    surgeon: Surgeon {}
    room: Room {}
    theatre: OperatingTheatre {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailabilityStart: RoomAvailability {}

    forbid existingAdmission: Admission {}

    var startDay = surgeonAvailability.day
    var endDay = startDay + patient.stayLength - 1
    var chosenRoomNumber = room.id

    hospital.patients -- patient
    hospital.surgeonAvailabilities -- surgeonAvailability

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre
    roomAvailabilityStart.roomId -- room

    forbid existingAdmission.patientId -- patient
    forbid patient.incompatibleRooms -- room

    where surgeonAvailability.maxOperatingTime > 0
    where theatreAvailability.day == startDay
    where roomAvailabilityStart.day == startDay
    where roomAvailabilityStart.roomNumber == chosenRoomNumber
    where patient.releaseDate <= startDay
    where startDay <= patient.dueDate
    where endDay < hospital.decisionHorizon
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0

    // Pick the earliest surgeon availability in the model.
    where hospital.surgeonAvailabilities.all((other) =>
        other == surgeonAvailability ||
        other.maxOperatingTime == 0 ||
        other.day >= surgeonAvailability.day
    )
}

match {
    var checkDay = startDay
}

while (checkDay <= endDay) {
    if match {
        stayCheckEmpty: RoomAvailability {
            roomNumber == chosenRoomNumber
            day == checkDay
            ageGroup == AgeGroup.EMPTY
            occupiedBeds < room.maxCapacity
        }
    } then {
    } else {
        if match {
            stayCheckSame: RoomAvailability {
                roomNumber == chosenRoomNumber
                day == checkDay
                ageGroup == patient.ageGroup
                occupiedBeds < room.maxCapacity
            }
        } then {
        } else {
            kill
        }
    }

    match {
        checkDay = checkDay + 1
    }
}

match {
    var updateDay = startDay
}

while (updateDay <= endDay) {
    if match {
        emptyDayTarget: RoomAvailability {
            roomNumber == chosenRoomNumber
            day == updateDay
            ageGroup == AgeGroup.EMPTY
            occupiedBeds = emptyDayTarget.occupiedBeds + 1
            ageGroup = patient.ageGroup
        }

        emptyDayTarget.roomId -- room
    } then {
    } else {
        match {
            sameAgeDayTarget: RoomAvailability {
                roomNumber == chosenRoomNumber
                day == updateDay
                ageGroup == patient.ageGroup
                occupiedBeds = sameAgeDayTarget.occupiedBeds + 1
            }

            sameAgeDayTarget.roomId -- room
        }
    }

    match {
        updateDay = updateDay + 1
    }
}

match {
    patient {
        isScheduled = true
    }

    create admission: Admission {
        admissionDay = startDay
    }

    create admission.patientId -- patient
    create admission.roomId -- room
    create admission.operationTheatreId -- theatre
}