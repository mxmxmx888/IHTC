using "../ihtc.mm"

// T13: Make a joint admission-day and theatre reassignment while retaining the
// current room. It moves the patient's full room stay to a validated new day
// interval and then updates the admission day and theatre association.
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
    room: Room {}
    oldTheatre: OperatingTheatre {}
    newTheatre: OperatingTheatre {}
    surgeon: Surgeon {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailabilityStart: RoomAvailability {}

    admission.patientId -- patient
    admission.roomId -- room
    admission.operationTheatreId -- oldTheatre

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- newTheatre
    roomAvailabilityStart.roomId -- room

    var oldStartDay = admission.admissionDay
    var oldEndDay = oldStartDay + patient.stayLength - 1

    var newStartDay = surgeonAvailability.day
    var newEndDay = newStartDay + patient.stayLength - 1

    var chosenRoomNumber = room.id

    where oldStartDay != newStartDay
    where newTheatre != oldTheatre

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

// Release the existing room interval one day at a time.
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

// Validate the current room across the complete proposed new stay.
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

// Reapply the patient's occupancy for each day of the new stay.
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
    // Commit the new admission day and operating theatre after room updates.
    admission {
        admissionDay = newStartDay
    }

    delete admission.operationTheatreId -- oldTheatre
    create admission.operationTheatreId -- newTheatre
}
