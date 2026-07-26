using "../ihtc.mm"

// T6: Swap one optional scheduled patient for a different optional unscheduled
// patient. It releases the old full stay, records the removal, then validates
// and occupies a feasible stay for the replacement.
match {
    hospital: HospitalInstance {}

    state: OptimisationState {
        phase == OptimisationPhase.PATIENTS
    }

    hospital.optimisationState -- state
    oldPatient: Patient {
        isMandatory == false
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

// Release the removed patient's bed across their complete former stay.
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
    // Mark the removed patient as available to schedule again.
    oldPatient {
        isScheduled = false
    }
}

// Count the deletion before adding the replacement admission.
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
    // Select a different optional patient and a feasible resource combination
    // for the replacement admission.
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

// Validate every day of the replacement stay for capacity and age compatibility.
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

// Add the replacement patient to every RoomAvailability record in their stay.
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
    // Finalise the replacement only after its full room stay has been updated.
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
