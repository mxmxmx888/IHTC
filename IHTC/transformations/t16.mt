using "../ihtc.mm"

match {
    // Transformation 16: remove a nurse from one room-shift assignment and
    // assign the same nurse to another compatible room-shift.

    hospital: HospitalInstance {}

    nurse: Nurse {}
    oldShift: HospitalisationShift {}
    oldRoom: Room {}

    delete oldRSA: RoomShiftAssignment {}

    targetPatient: Patient {
        isScheduled == true
    }

    targetAdmission: Admission {}
    targetRoom: Room {}
    targetDemand: PatientDayDemand {}
    nws: NurseWorkingShift {}

    delete oldRSA.nurse -- nurse
    delete oldRSA.hospitalisationShift -- oldShift
    oldShift.room -- oldRoom

    targetAdmission.patientId -- targetPatient
    targetAdmission.roomId -- targetRoom
    targetPatient.dayDemand -- targetDemand
    nws.nurse -- nurse

    var targetDay = targetAdmission.admissionDay + targetDemand.relativeDay
    var targetShift = targetDemand.shift
    var targetRoomNumber = targetRoom.id

    where targetRoom != oldRoom
    where nws.day == targetDay
    where nws.shift == targetShift
    where targetDay < hospital.decisionHorizon
    where nurse.skillLevel >= targetDemand.skillLevelRequired
}

if match {
    existingShiftGate: HospitalisationShift {
        day == targetDay
        shift == targetShift
        roomNumber == targetRoomNumber
    }
} then {
    if match {
        shiftAlreadyHasPatientGate: HospitalisationShift {
            day == targetDay
            shift == targetShift
            roomNumber == targetRoomNumber
        }

        shiftAlreadyHasPatientGate.patient -- targetPatient
    } then {
        if match {
            existingAssignmentGateA: RoomShiftAssignment {}
            existingAssignmentShiftA: HospitalisationShift {
                day == targetDay
                shift == targetShift
                roomNumber == targetRoomNumber
            }

            existingAssignmentGateA.nurse -- nurse
            existingAssignmentGateA.hospitalisationShift -- existingAssignmentShiftA
        } then {
            kill
        } else {
            match {
                assignOnlyShiftA: HospitalisationShift {
                    day == targetDay
                    shift == targetShift
                    roomNumber == targetRoomNumber
                }

                where nurse.skillLevel >= assignOnlyShiftA.skillLevelRequired
                where nws.maxLoad >= assignOnlyShiftA.workload

                create rsaAssignOnlyA: RoomShiftAssignment {}
                create rsaAssignOnlyA.nurse -- nurse
                create rsaAssignOnlyA.hospitalisationShift -- assignOnlyShiftA
                create hospital.roomShiftAssignments -- rsaAssignOnlyA
            }
        }
    } else {
        if match {
            higherSkillGateB: HospitalisationShift {
                day == targetDay
                shift == targetShift
                roomNumber == targetRoomNumber
                skillLevelRequired < targetDemand.skillLevelRequired
            }
        } then {
            if match {
                existingAssignmentGateB: RoomShiftAssignment {}
                existingAssignmentShiftB: HospitalisationShift {
                    day == targetDay
                    shift == targetShift
                    roomNumber == targetRoomNumber
                    skillLevelRequired < targetDemand.skillLevelRequired
                }

                existingAssignmentGateB.nurse -- nurse
                existingAssignmentGateB.hospitalisationShift -- existingAssignmentShiftB
            } then {
                match {
                    higherSkillUpdateNoRsaB: HospitalisationShift {
                        day == targetDay
                        shift == targetShift
                        roomNumber == targetRoomNumber
                        skillLevelRequired < targetDemand.skillLevelRequired
                        workload = higherSkillUpdateNoRsaB.workload + targetDemand.workloadProduced
                        skillLevelRequired = targetDemand.skillLevelRequired
                    }

                    where nurse.skillLevel >= targetDemand.skillLevelRequired
                    where nws.maxLoad >= higherSkillUpdateNoRsaB.workload + targetDemand.workloadProduced

                    create higherSkillUpdateNoRsaB.patient -- targetPatient
                }
            } else {
                match {
                    higherSkillUpdateWithRsaB: HospitalisationShift {
                        day == targetDay
                        shift == targetShift
                        roomNumber == targetRoomNumber
                        skillLevelRequired < targetDemand.skillLevelRequired
                        workload = higherSkillUpdateWithRsaB.workload + targetDemand.workloadProduced
                        skillLevelRequired = targetDemand.skillLevelRequired
                    }

                    where nurse.skillLevel >= targetDemand.skillLevelRequired
                    where nws.maxLoad >= higherSkillUpdateWithRsaB.workload + targetDemand.workloadProduced

                    create higherSkillUpdateWithRsaB.patient -- targetPatient

                    create rsaHigherB: RoomShiftAssignment {}
                    create rsaHigherB.nurse -- nurse
                    create rsaHigherB.hospitalisationShift -- higherSkillUpdateWithRsaB
                    create hospital.roomShiftAssignments -- rsaHigherB
                }
            }
        } else {
            if match {
                existingAssignmentGateC: RoomShiftAssignment {}
                existingAssignmentShiftC: HospitalisationShift {
                    day == targetDay
                    shift == targetShift
                    roomNumber == targetRoomNumber
                    skillLevelRequired >= targetDemand.skillLevelRequired
                }

                existingAssignmentGateC.nurse -- nurse
                existingAssignmentGateC.hospitalisationShift -- existingAssignmentShiftC
            } then {
                match {
                    enoughSkillUpdateNoRsaC: HospitalisationShift {
                        day == targetDay
                        shift == targetShift
                        roomNumber == targetRoomNumber
                        skillLevelRequired >= targetDemand.skillLevelRequired
                        workload = enoughSkillUpdateNoRsaC.workload + targetDemand.workloadProduced
                    }

                    where nurse.skillLevel >= enoughSkillUpdateNoRsaC.skillLevelRequired
                    where nws.maxLoad >= enoughSkillUpdateNoRsaC.workload + targetDemand.workloadProduced

                    create enoughSkillUpdateNoRsaC.patient -- targetPatient
                }
            } else {
                match {
                    enoughSkillUpdateWithRsaC: HospitalisationShift {
                        day == targetDay
                        shift == targetShift
                        roomNumber == targetRoomNumber
                        skillLevelRequired >= targetDemand.skillLevelRequired
                        workload = enoughSkillUpdateWithRsaC.workload + targetDemand.workloadProduced
                    }

                    where nurse.skillLevel >= enoughSkillUpdateWithRsaC.skillLevelRequired
                    where nws.maxLoad >= enoughSkillUpdateWithRsaC.workload + targetDemand.workloadProduced

                    create enoughSkillUpdateWithRsaC.patient -- targetPatient

                    create rsaEnoughC: RoomShiftAssignment {}
                    create rsaEnoughC.nurse -- nurse
                    create rsaEnoughC.hospitalisationShift -- enoughSkillUpdateWithRsaC
                    create hospital.roomShiftAssignments -- rsaEnoughC
                }
            }
        }
    }
} else {
    match {
        create shiftNewD: HospitalisationShift {
            day = targetDay
            shift = targetShift
            roomNumber = targetRoomNumber
            workload = targetDemand.workloadProduced
            skillLevelRequired = targetDemand.skillLevelRequired
        }

        create hospital.hospitalisationShifts -- shiftNewD
        create shiftNewD.room -- targetRoom
        create shiftNewD.patient -- targetPatient

        create rsaNewD: RoomShiftAssignment {}
        create rsaNewD.nurse -- nurse
        create rsaNewD.hospitalisationShift -- shiftNewD
        create hospital.roomShiftAssignments -- rsaNewD
    }
}