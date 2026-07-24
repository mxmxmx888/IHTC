using "../ihtc.mm"

match {
    // Transformation 15: remove a nurse from a room-shift assignment.
    // This removes only the staffing assignment, not the underlying shift demand.

    nurse: Nurse {}
    shift: HospitalisationShift {}
    room: Room {}

    delete rsa: RoomShiftAssignment {}

    shift.room -- room
    delete rsa.nurse -- nurse
    delete rsa.hospitalisationShift -- shift
}