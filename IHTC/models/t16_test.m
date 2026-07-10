using "../ihtc.mm"



hospital: HospitalInstance { decisionHorizon = 3 }

r1: Room { id = 1 maxCapacity = 2 }
r2: Room { id = 2 maxCapacity = 2 }

n1: Nurse { id = 1 skillLevel = 1 }

hospital.rooms -- r1
hospital.rooms -- r2
hospital.nurses -- n1

p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }
p2: Patient { id = 2 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.F stayLength = 2 }

oldShift: HospitalisationShift { day = 2 shift = 1 workload = 4 skillLevelRequired = 1 }
oldShift.room -- r1
oldShift.patient -- p1

newShift: HospitalisationShift { day = 2 shift = 2 workload = 3 skillLevelRequired = 1 }
newShift.room -- r2
newShift.patient -- p2

nws1: NurseWorkingShift { day = 2 shift = 2 maxLoad = 5 }
nws1.nurse -- n1

oldRSA: RoomShiftAssignment {}
oldRSA.nurse -- n1
oldRSA.hospitalisationShift -- oldShift