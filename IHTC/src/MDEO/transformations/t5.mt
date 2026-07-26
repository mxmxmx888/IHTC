using "../ihtc.mm"

// T5: Remove one scheduled patient regardless of priority. This broad repair
// move releases their full room stay and records that an admission was removed.
match {
    hospital: HospitalInstance {}

    state: OptimisationState {
        phase == OptimisationPhase.PATIENTS
    }

    hospital.optimisationState -- state
    patient: Patient {
        isScheduled == true
    }

    room: Room {}
    delete admission: Admission {}

    delete admission.patientId -- patient
    delete admission.roomId -- room
    delete hospital.admissions -- admission

    var startDay = admission.admissionDay
    var endDay = startDay + patient.stayLength - 1
    var chosenRoomNumber = room.id
}

match {
    var updateDay = startDay
}

// Release the patient's bed on every day of their stay. Clearing the final bed
// also resets the age group so that another group may later use the room day.
while (updateDay <= endDay) {
    if match {
        lastBedTarget: RoomAvailability {
            roomNumber == chosenRoomNumber
            day == updateDay
            ageGroup == patient.ageGroup
            occupiedBeds == 1
            occupiedBeds = 0
            ageGroup = AgeGroup.EMPTY
        }

        lastBedTarget.roomId -- room
    } then {
    } else {
        match {
            remainingBedTarget: RoomAvailability {
                roomNumber == chosenRoomNumber
                day == updateDay
                ageGroup == patient.ageGroup
                occupiedBeds > 1
                occupiedBeds = remainingBedTarget.occupiedBeds - 1
            }

            remainingBedTarget.roomId -- room
        }
    }

    match {
        updateDay = updateDay + 1
    }
}

match {
    // The patient remains in the instance but is no longer scheduled.
    patient {
        isScheduled = false
    }
}

// Update the removal tracker, creating it on the first removal if required.
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
