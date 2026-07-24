using "../ihtc.mm"

match {
    // Transformation 16: remove a nurse from one room-shift and assign them to
    // another compatible room-shift.
    // Purpose: to reallocate nursing capacity without changing the total number
    // of nurse assignments.

    nurse: Nurse {}
    nws: NurseWorkingShift {}
    oldRoom: Room {}
    newRoom: Room {}
    oldShift: HospitalisationShift {}
    newShift: HospitalisationShift {}

    delete oldRSA: RoomShiftAssignment {}
    create newRSA: RoomShiftAssignment {}

    forbid existingTargetRSA: RoomShiftAssignment {}

    oldShift.room -- oldRoom
    newShift.room -- newRoom

    delete oldRSA.nurse -- nurse
    delete oldRSA.hospitalisationShift -- oldShift

    create newRSA.nurse -- nurse
    create newRSA.hospitalisationShift -- newShift

    forbid existingTargetRSA.nurse -- nurse
    forbid existingTargetRSA.hospitalisationShift -- newShift

    where oldRoom != newRoom
    where oldShift != newShift
    where nws.day == newShift.day
    where nws.shift == newShift.shift
    where nurse.skillLevel >= newShift.skillLevelRequired
    where nws.maxLoad >= newShift.workload
}