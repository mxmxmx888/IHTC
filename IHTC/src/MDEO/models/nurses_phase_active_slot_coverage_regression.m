using "../ihtc.mm"

// Regression model for T14 after a feasible optional admission exists in the
// NURSES phase. n1 can cover the active r1/day-2/shift-0 demand.
hospital: HospitalInstance { decisionHorizon = 4 }
state: OptimisationState { phase = OptimisationPhase.NURSES }
hospital.optimisationState -- state

s1: Surgeon { id = 1 }
r1: Room { id = 1 maxCapacity = 2 }
ot1: OperatingTheatre { id = 1 }
n1: Nurse { id = 1 skillLevel = 1 }
hospital.surgeons -- s1
hospital.rooms -- r1
hospital.operatingtheatres -- ot1
hospital.nurses -- n1

p1: Patient {
    id = 1
    isMandatory = false
    isScheduled = true
    dueDate = 2
    releaseDate = 2
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.M
    stayLength = 1
}
p1.assignedSurgeonId -- s1
hospital.patients -- p1

a1: Admission { admissionDay = 2 }
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1
hospital.admissions -- a1

d1: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d1.patient -- p1
p1.dayDemand -- d1

nws2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 3 }
nws2.nurse -- n1
hospital.nurseWorkingShifts -- nws2

hs20: HospitalisationShift { day = 2 shift = 0 }
hs20.room -- r1
hospital.hospitalisationShifts -- hs20
