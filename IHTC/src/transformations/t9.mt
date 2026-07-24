using "../ihtc.mm"

match {
    // Transformation 9: move an admitted patient to a different feasible day.
    // The room and theatre stay the same. RoomAvailability is first updated
    // on the old interval, then validated and updated on the new interval.
    hospital: HospitalInstance {}

    patient: Patient {
        isScheduled == true
    }

    admission: Admission {}
    room: Room {}
    theatre: OperatingTheatre {}
    surgeon: Surgeon {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailabilityStart: RoomAvailability {}

    admission.patientId -- patient
    admission.roomId -- room
    admission.operationTheatreId -- theatre

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre
    roomAvailabilityStart.roomId -- room

    var oldStartDay = admission.admissionDay
    var oldEndDay = oldStartDay + patient.stayLength - 1

    var newStartDay = surgeonAvailability.day
    var newEndDay = newStartDay + patient.stayLength - 1

    var chosenRoomNumber = room.id

    where oldStartDay != newStartDay
    where theatreAvailability.day == newStartDay
    where roomAvailabilityStart.day == newStartDay
    where roomAvailabilityStart.roomNumber == chosenRoomNumber
    where patient.releaseDate <= newStartDay
    where newStartDay <= patient.dueDate
    where newEndDay < hospital.decisionHorizon
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
}

match {
    var removeDay = oldStartDay
}

while (removeDay <= oldEndDay) {
    if match {
        lastBedTarget: RoomAvailability {
            roomNumber == chosenRoomNumber
            day == removeDay
            ageGroup == patient.ageGroup
            occupiedBeds == 1
            occupiedBeds = 0
            ageGroup = AgeGroup.EMPTY
        }
    } then {
    } else {
        match {
            remainingBedTarget: RoomAvailability {
                roomNumber == chosenRoomNumber
                day == removeDay
                ageGroup == patient.ageGroup
                occupiedBeds > 1
                occupiedBeds = remainingBedTarget.occupiedBeds - 1
            }
        }
    }

    match {
        removeDay = removeDay + 1
    }
}

match {
    var checkDay = newStartDay
}

while (checkDay <= newEndDay) {
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
    var addDay = newStartDay
}

while (addDay <= newEndDay) {
    if match {
        emptyDayTarget: RoomAvailability {
            roomNumber == chosenRoomNumber
            day == addDay
            ageGroup == AgeGroup.EMPTY
            occupiedBeds = emptyDayTarget.occupiedBeds + 1
            ageGroup = patient.ageGroup
        }
    } then {
    } else {
        match {
            sameAgeDayTarget: RoomAvailability {
                roomNumber == chosenRoomNumber
                day == addDay
                ageGroup == patient.ageGroup
                occupiedBeds = sameAgeDayTarget.occupiedBeds + 1
            }
        }
    }

    match {
        addDay = addDay + 1
    }
}

match {
    admission {
        admissionDay = newStartDay
    }
}