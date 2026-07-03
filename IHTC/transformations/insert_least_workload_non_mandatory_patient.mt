using "../ihtc.mm"

match {
    patient: Patient {}

    forbid existingAdmission: Admission {}
    forbid existingAdmission.patientId -- patient

    where patient.isMandatory == false

    var patientDuration = patient.surgeryDuration

    forbid betterPatient: Patient {
      isMandatory == false
      surgeryDuration < patientDuration
   }

    forbid betterExistingAdmission: Admission {}

}