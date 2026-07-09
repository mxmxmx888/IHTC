using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 3 }

r1: Room { id = 1 maxCapacity = 2 }

n1: Nurse { id = 1 skillLevel = 1 }
n2: Nurse { id = 2 skillLevel = 0 }

hospital.rooms -- r1
hospital.nurses -- n1
hospital.nurses -- n2

p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }
p2: Patient { id = 2 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.F stayLength = 2 }

shift1: HospitalisationShift { day = 2 shift = 1 workload = 5 skillLevelRequired = 1 }
shift1.room -- r1
shift1.patient -- p1
shift1.patient -- p2

nws1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 6 }
nws1.nurse -- n1

nws2: NurseWorkingShift { day = 2 shift = 1 maxLoad = 4 }
nws2.nurse -- n2