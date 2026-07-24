using "../ihtc.mm"

match {
    // Transformation 4: remove a random non-mandatory admitted patient.
    // Full-stay RoomAvailability is updated across the patient's whole stay.
    patient: Patient {
        isMandatory == false
        isScheduled == true
    }

    room: Room {}
    delete admission: Admission {}

    delete admission.patientId -- patient
    delete admission.roomId -- room

    var startDay = admission.admissionDay
    var endDay = startDay + patient.stayLength - 1
    var chosenRoomNumber = room.id
}

match {
    var updateDay = startDay
}

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
    patient {
        isScheduled = false
    }
}

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