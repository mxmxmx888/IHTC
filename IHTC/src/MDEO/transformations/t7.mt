using "../ihtc.mm"

// T7: Replace any scheduled patient with a different optional unscheduled
// patient. This is a more disruptive swap than T6 because the removed patient
// may be mandatory; the replacement is always optional.
match {
    hospital: HospitalInstance {}

    state: OptimisationState {
        phase == OptimisationPhase.PATIENTS
    }

    hospital.optimisationState -- state
    oldPatient: Patient {
        isScheduled == true
    }

    oldRoom: Room {}
    oldTheatre: OperatingTheatre {}
    delete oldAdmission: Admission {}

    delete oldAdmission.patientId -- oldPatient
    delete oldAdmission.roomId -- oldRoom
    delete oldAdmission.operationTheatreId -- oldTheatre
    delete hospital.admissions -- oldAdmission

    var oldStartDay = oldAdmission.admissionDay
    var oldEndDay = oldStartDay + oldPatient.stayLength - 1
    var oldRoomNumber = oldRoom.id
}

match {
    var oldUpdateDay = oldStartDay
}

// Release the old patient's occupancy across their whole former stay.
while (oldUpdateDay <= oldEndDay) {
    if match {
        lastBedTarget: RoomAvailability {
            roomNumber == oldRoomNumber
            day == oldUpdateDay
            ageGroup == oldPatient.ageGroup
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
                day == oldUpdateDay
                ageGroup == oldPatient.ageGroup
                occupiedBeds > 1
                occupiedBeds = remainingBedTarget.occupiedBeds - 1
            }

            remainingBedTarget.roomId -- oldRoom
        }
    }

    match {
        oldUpdateDay = oldUpdateDay + 1
    }
}

match {
    // Keep the removed patient in the model but mark them unscheduled.
    oldPatient {
        isScheduled = false
    }
}

// Increment the removed-admissions tracker for this replacement move.
if match {
    existingTrackerCheck: DeletedAdmissionsTracker {}
} then {
    match {
        existingTrackerUpdate: DeletedAdmissionsTracker {
            count = existingTrackerUpdate.count + 1
        }
    }
} else {
    match {
        create createdTracker: DeletedAdmissionsTracker {
            count = 1
        }
    }
}

match {
    // Find a different optional patient and a feasible resource combination.
    newPatient: Patient {
        isMandatory == false
        isScheduled == false
    }
    surgeon: Surgeon {}
    newRoom: Room {}
    theatre: OperatingTheatre {}

    surgeonAvailability: SurgeonAvailability {}
    theatreAvailability: OperatingTheatreAvailability {}
    roomAvailabilityStart: RoomAvailability {}

    forbid existingAdmission: Admission {}

    var newStartDay = surgeonAvailability.day
    var newEndDay = newStartDay + newPatient.stayLength - 1
    var newRoomNumber = newRoom.id

    newPatient.assignedSurgeonId -- surgeon
    surgeonAvailability.surgeonId -- surgeon
    theatreAvailability.operatingTheatreId -- theatre
    roomAvailabilityStart.roomId -- newRoom

    forbid existingAdmission.patientId -- newPatient
    forbid newPatient.incompatibleRooms -- newRoom

    where newPatient != oldPatient
    where theatreAvailability.day == newStartDay
    where roomAvailabilityStart.day == newStartDay
    where roomAvailabilityStart.roomNumber == newRoomNumber
    where newPatient.releaseDate <= newStartDay
    where newStartDay <= newPatient.dueDate
    where newEndDay < hospital.decisionHorizon
    where newPatient.surgeryDuration <= surgeonAvailability.maxOperatingTime
    where theatreAvailability.maxCapacity > 0
}

match {
    var checkDay = newStartDay
}

// Validate capacity and age-group compatibility for each new stay day.
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
                ageGroup == newPatient.ageGroup
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
    var newUpdateDay = newStartDay
}

// Record the replacement patient's occupancy over the full new stay.
while (newUpdateDay <= newEndDay) {
    if match {
        emptyDayTarget: RoomAvailability {
            roomNumber == newRoomNumber
            day == newUpdateDay
            ageGroup == AgeGroup.EMPTY
            occupiedBeds = emptyDayTarget.occupiedBeds + 1
            ageGroup = newPatient.ageGroup
        }

        emptyDayTarget.roomId -- newRoom
    } then {
    } else {
        match {
            sameAgeDayTarget: RoomAvailability {
                roomNumber == newRoomNumber
                day == newUpdateDay
                ageGroup == newPatient.ageGroup
                occupiedBeds = sameAgeDayTarget.occupiedBeds + 1
            }

            sameAgeDayTarget.roomId -- newRoom
        }
    }

    match {
        newUpdateDay = newUpdateDay + 1
    }
}

match {
    // Create the new admission after all room-day updates are complete.
    newPatient {
        isScheduled = true
    }

    create newAdmission: Admission {
        admissionDay = newStartDay
    }

    create newAdmission.patientId -- newPatient
    create newAdmission.roomId -- newRoom
    create newAdmission.operationTheatreId -- theatre
    create hospital.admissions -- newAdmission
}
