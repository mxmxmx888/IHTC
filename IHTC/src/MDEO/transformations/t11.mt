using "../ihtc.mm"

// T11: Make a joint room, day, and theatre reassignment for one scheduled
// patient. The rule releases the old room interval, validates the full target
// interval, records the new occupancy, and then updates all three links.
match {
    hospital: HospitalInstance {}

    state: OptimisationState {
        phase == OptimisationPhase.PATIENTS
    }

    hospital.optimisationState -- state


    patient: Patient {
        isScheduled == true
    }

    admission: Admission {}
    oldRoom: Room {}
    newRoom: Room {}
    oldTheatre: OperatingTheatre {}
    newTheatre: OperatingTheatre {}
    surgeon: Surgeon {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailabilityStart: RoomAvailability {}

    admission.patientId -- patient
    admission.roomId -- oldRoom
    admission.operationTheatreId -- oldTheatre

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- newTheatre
    roomAvailabilityStart.roomId -- newRoom

    forbid patient.incompatibleRooms -- newRoom

    var oldStartDay = admission.admissionDay
    var oldEndDay = oldStartDay + patient.stayLength - 1

    var newStartDay = surgeonAvailability.day
    var newEndDay = newStartDay + patient.stayLength - 1

    var oldRoomNumber = oldRoom.id
    var newRoomNumber = newRoom.id

    where newRoom != oldRoom
    where newTheatre != oldTheatre
    where oldStartDay != newStartDay

    where theatreAvailability.day == newStartDay
    where roomAvailabilityStart.day == newStartDay
    where roomAvailabilityStart.roomNumber == newRoomNumber
    where patient.releaseDate <= newStartDay
    where newStartDay <= patient.dueDate
    where newEndDay < hospital.decisionHorizon
    where patient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
}

match {
    var removeDay = oldStartDay
}

// Release occupancy for every day of the patient's original room stay.
while (removeDay <= oldEndDay) {
    if match {
        lastBedTarget: RoomAvailability {
            roomNumber == oldRoomNumber
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
                roomNumber == oldRoomNumber
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

// Validate every day in the proposed room and day interval before mutating it.
while (checkDay <= newEndDay) {
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
    var addDay = newStartDay
}

// Add the patient to each room-day record in the validated new interval.
while (addDay <= newEndDay) {
    if match {
        emptyDayTarget: RoomAvailability {
            roomNumber == newRoomNumber
            day == addDay
            ageGroup == AgeGroup.EMPTY
            occupiedBeds = emptyDayTarget.occupiedBeds + 1
            ageGroup = patient.ageGroup
        }
    } then {
    } else {
        match {
            sameAgeDayTarget: RoomAvailability {
                roomNumber == newRoomNumber
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
    // Commit the new day, room, and theatre after all room occupancy changes.
    admission {
        admissionDay = newStartDay
    }

    delete admission.roomId -- oldRoom
    create admission.roomId -- newRoom

    delete admission.operationTheatreId -- oldTheatre
    create admission.operationTheatreId -- newTheatre
}
