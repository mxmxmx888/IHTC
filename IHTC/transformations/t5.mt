using "../ihtc.mm"

match {
    // Transformation 5: remove a random admitted patient. This makes a more
    // disruptive change to the schedule by freeing capacity regardless of
    // whether the removed patient is mandatory or non-mandatory.
    patient: Patient {}
    delete admission: Admission {}

    delete admission.patientId -- patient
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