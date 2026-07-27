using "../ihtc.mm"

// T17: Make the one-way transition from patient scheduling to nurse assignment.
// It runs only after every mandatory patient is scheduled, which freezes T1-T13
// and enables the nurse-phase transformations T14-T16.
match {
    hospital: HospitalInstance {}

    // The transition can be matched only once from the initial patient phase.
    state: OptimisationState {
        phase == OptimisationPhase.PATIENTS
    }

    hospital.optimisationState -- state

    // Optional patients do not block the phase transition.
    where hospital.patients.all((patient) =>
        patient.isMandatory == false || patient.isScheduled == true
    )
}

match {
    // This state change is irreversible within the current optimisation model.
    state {
        phase = OptimisationPhase.NURSES
    }
}
