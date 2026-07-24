using "../ihtc.mm"
// Transformation 10: give a random admitted patient a random new compatible
// operating theatre.
// Purpose: to reassign a patient to a different feasible theatre on the same
// admission day in order to improve theatre usage or overall resource balance.

match{
    
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