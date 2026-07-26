using "../ihtc.mm"

// T12: Make a joint room and admission-day reassignment while retaining the
// current theatre. The rule transfers the patient's full room stay from the
// old room interval to a validated new interval.
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
    theatre: OperatingTheatre {}
    surgeon: Surgeon {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailabilityStart: RoomAvailability {}

    admission.patientId -- patient
    admission.roomId -- oldRoom
    admission.operationTheatreId -- theatre

    patient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre
    roomAvailabilityStart.roomId -- newRoom

    forbid patient.incompatibleRooms -- newRoom

    var oldStartDay = admission.admissionDay
    var oldEndDay = oldStartDay + patient.stayLength - 1

    var newStartDay = surgeonAvailability.day
    var newEndDay = newStartDay + patient.stayLength - 1

    var oldRoomNumber = oldRoom.id
    var newRoomNumber = newRoom.id

    where newRoom != oldRoom
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

// Remove the patient's occupancy from each day of the old room stay.
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

// Validate each target room day before changing the admission.
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

// Add occupancy to the new room for every day of the approved stay.
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
    // Store the new admission day and room after the interval transfer.
    admission {
        admissionDay = newStartDay
    }

    delete admission.roomId -- oldRoom
    create admission.roomId -- newRoom
}
