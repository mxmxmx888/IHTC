using "../ihtc.mm"

// T1: Admit an optional unscheduled patient to a feasible day, room, and
// theatre. The rule checks the whole stay before creating the admission and
// then records the patient's occupancy for every day of that stay.
match {
    hospital: HospitalInstance {}

    state: OptimisationState {
        phase == OptimisationPhase.PATIENTS
    }

    hospital.optimisationState -- state


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

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre
    roomAvailabilityStart.roomId -- room

    forbid existingAdmission.patientId -- patient
    forbid patient.incompatibleRooms -- room

    where theatreAvailability.day == startDay
    where roomAvailabilityStart.day == startDay
    where roomAvailabilityStart.roomNumber == chosenRoomNumber
    where patient.releaseDate <= startDay
    where startDay <= patient.dueDate
    where endDay < hospital.decisionHorizon
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
}

match {
    var checkDay = startDay
}

// Validate every day of the proposed stay. A room day must either be empty or
// already contain the same age group with spare capacity; otherwise abort.
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

// Commit the occupancy for every validated day. An empty room day adopts the
// patient's age group; an existing compatible room day only gains one bed.
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
    // Create the admission only after the full stay has been validated and
    // reflected in RoomAvailability.
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
