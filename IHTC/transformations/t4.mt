using "../ihtc.mm"

match {
    // Transformation 4: remove an admitted non-mandatory patient. This frees
    // resources while only sacrificing an optional patient, which helps repair
    // overloaded or low-quality schedules.
    patient: Patient {}
    delete admission: Admission {}

    delete admission.patientId -- patient

    // Only optional patients can be removed by this move.
    where patient.isMandatory == false
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