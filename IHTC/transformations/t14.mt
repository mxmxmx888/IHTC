using "../ihtc.mm"

match {
    // Transformation 14: add a random nurse to a random room on a random
    // compatible shift.
    // Purpose: to create a nurse-to-room assignment when the nurse is available
    // on that shift and satisfies the required skill and workload conditions.

    nurse: Nurse {}
    nws: NurseWorkingShift {}
    room: Room {}
    shift: HospitalisationShift {}
    create rsa: RoomShiftAssignment {}

    forbid existingAssignment: RoomShiftAssignment {}

    nws.nurse -- nurse
    shift.room -- room

    create rsa.nurse -- nurse
    create rsa.hospitalisationShift -- shift

    forbid existingAssignment.nurse -- nurse
    forbid existingAssignment.hospitalisationShift -- shift

    where nws.day == shift.day
    where nws.shift == shift.shift
    where nurse.skillLevel >= shift.skillLevelRequired
    where nws.maxLoad >= shift.workload
}