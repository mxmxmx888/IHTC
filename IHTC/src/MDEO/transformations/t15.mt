using "../ihtc.mm"

// T15: Remove one nurse-to-room-shift assignment during the nurse phase. This
// repair move frees a nurse assignment so later mutations can rebalance cover.
match {
    hospital: HospitalInstance {}
    state: OptimisationState {
        phase == OptimisationPhase.NURSES
    }
    nurse: Nurse {}
    shift: HospitalisationShift {}
    delete assignment: RoomShiftAssignment {}

    hospital.optimisationState -- state
    // Deleting the assignment and both links removes the nurse from this slot.
    delete assignment.nurse -- nurse
    delete assignment.hospitalisationShift -- shift
}
