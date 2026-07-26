using "../ihtc.mm"

// T10: Reassign a scheduled patient's operation to another available theatre
// on the same admission day. This changes only the theatre association, so no
// room-stay update is required.

match{
    hospital: HospitalInstance {}

    state: OptimisationState {
        phase == OptimisationPhase.PATIENTS
    }

    hospital.optimisationState -- state

    // The availability record ensures the replacement theatre is usable on the
    // current admission day and has positive capacity.
    patient: Patient{}
    admission: Admission{}
    ot: OperatingTheatre{}
    newOt: OperatingTheatre{}
    opAvailability: OperatingTheatreAvailability{}
    
    admission.patientId -- patient
    admission.operationTheatreId -- ot
    
    opAvailability.operatingTheatreId -- newOt

    delete admission.operationTheatreId -- ot
    create admission.operationTheatreId -- newOt
    
    where admission.admissionDay == opAvailability.day
    where newOt != ot
    where opAvailability.maxCapacity > 0



}
