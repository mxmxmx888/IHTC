using "../ihtc.mm"

// T3: Admit an optional unscheduled patient using the earliest available
// surgeon day, with a compatible room and available theatre on that day.
// The whole stay is validated before its room occupancy is recorded.
match {
    hospital: HospitalInstance {}

    state: OptimisationState {}

    hospital.optimisationState -- state

    // Optional admissions remain available after the nurse phase begins.
    where state.phase == OptimisationPhase.PATIENTS || state.phase == OptimisationPhase.NURSES


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

    // Select the earliest surgeon availability with positive operating time.
    where hospital.surgeonAvailabilities.all((other) =>
        other == surgeonAvailability ||
        other.maxOperatingTime == 0 ||
        other.day >= surgeonAvailability.day
    )
}

match {
    var checkDay = startDay
}

// Check every room day in the stay. The room must be empty or contain only the
// same age group, and it must have at least one free bed.
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

// Record the patient in RoomAvailability for each day of the validated stay.
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
    // Finalise the selected admission after the room interval has been updated.
    patient {
        isScheduled = true
    }

    create admission: Admission {
        admissionDay = startDay
    }

    create admission.patientId -- patient
    create admission.roomId -- room
    create admission.operationTheatreId -- theatre
    create hospital.admissions -- admission
}
