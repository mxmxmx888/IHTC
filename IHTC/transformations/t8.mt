using "../ihtc.mm"

match {
    // Transformation 8: move an admitted patient to a different compatible room.
    // Full-stay RoomAvailability is updated for both the old room and the new room.
    patient: Patient {
        isScheduled == true
    }

    admission: Admission {}
    oldRoom: Room {}
    newRoom: Room {}
    roomAvailabilityStart: RoomAvailability {}

    admission.patientId -- patient
    admission.roomId -- oldRoom
    roomAvailabilityStart.roomId -- newRoom

    forbid patient.incompatibleRooms -- newRoom

    var startDay = admission.admissionDay
    var endDay = startDay + patient.stayLength - 1
    var oldRoomNumber = oldRoom.id
    var newRoomNumber = newRoom.id

    where newRoom != oldRoom
    where roomAvailabilityStart.day == startDay
    where roomAvailabilityStart.roomNumber == newRoomNumber
}

match {
    var checkDay = startDay
}

while (checkDay <= endDay) {
    if match {
        stayCheckEmpty: RoomAvailability {
            roomNumber == newRoomNumber
            day == checkDay
            ageGroup == AgeGroup.EMPTY
            occupiedBeds < newRoom.maxCapacity
        }
    } then {
    } else {
        if match {
            stayCheckSame: RoomAvailability {
                roomNumber == newRoomNumber
                day == checkDay
                ageGroup == patient.ageGroup
                occupiedBeds < newRoom.maxCapacity
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
    var removeDay = startDay
}

while (removeDay <= endDay) {
    if match {
        lastBedTarget: RoomAvailability {
            roomNumber == oldRoomNumber
            day == removeDay
            ageGroup == patient.ageGroup
            occupiedBeds == 1
            occupiedBeds = 0
            ageGroup = AgeGroup.EMPTY
        }

        lastBedTarget.roomId -- oldRoom
    } then {
    } else {
        match {
            remainingBedTarget: RoomAvailability {
                roomNumber == oldRoomNumber
                day == removeDay
                ageGroup == patient.ageGroup
                occupiedBeds > 1
                occupiedBeds = remainingBedTarget.occupiedBeds - 1
            }

            remainingBedTarget.roomId -- oldRoom
        }
    }

    match {
        removeDay = removeDay + 1
    }
}

match {
    var addDay = startDay
}

while (addDay <= endDay) {
    if match {
        emptyDayTarget: RoomAvailability {
            roomNumber == newRoomNumber
            day == addDay
            ageGroup == AgeGroup.EMPTY
            occupiedBeds = emptyDayTarget.occupiedBeds + 1
            ageGroup = patient.ageGroup
        }

        emptyDayTarget.roomId -- newRoom
    } then {
    } else {
        match {
            sameAgeDayTarget: RoomAvailability {
                roomNumber == newRoomNumber
                day == addDay
                ageGroup == patient.ageGroup
                occupiedBeds = sameAgeDayTarget.occupiedBeds + 1
            }

            sameAgeDayTarget.roomId -- newRoom
        }
    }

    match {
        addDay = addDay + 1
    }
}

match {
    delete admission.roomId -- oldRoom
    create admission.roomId -- newRoom
}