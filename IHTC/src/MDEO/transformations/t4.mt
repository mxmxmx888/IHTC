using "../ihtc.mm"

// T4: Remove one optional scheduled patient. The rule releases their room bed
// on every day of their stay, marks them unscheduled, and records the removal.
match {
    hospital: HospitalInstance {}

    state: OptimisationState {
        phase == OptimisationPhase.PATIENTS
    }

    hospital.optimisationState -- state
    patient: Patient {
        isMandatory == false
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

// Release one occupied bed for every day of the removed patient's stay. When
// the last bed is released, the room day becomes EMPTY again.
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
    // Keep the patient available for a later admission move.
    patient {
        isScheduled = false
    }
}

// Maintain the deletion counter used by the removed-patients objective.
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
