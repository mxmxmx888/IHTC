using "../ihtc.mm"

// Transformation 2: insert the non-mandatory unscheduled patient with the
// smallest surgery duration into a feasible admission day, room, and theatre.
// Purpose: to choose the easiest optional patient to fit into the schedule,
// making it more likely that a valid admission can be added with minimal
// resource pressure.





match {
    patient: Patient {}

    where patient.isMandatory == false
    where patient.isScheduled == false
    where patient.surgeryDuration >= 0
}