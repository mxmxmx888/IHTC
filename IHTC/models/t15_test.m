using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 3 }

r1: Room { id = 1 maxCapacity = 2 }
n1: Nurse { id = 1 skillLevel = 1 }

hospital.rooms -- r1
hospital.nurses -- n1

p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }

shift1: HospitalisationShift { day = 2 shift = 1 workload = 5 skillLevelRequired = 1 }
shift1.room -- r1
shift1.patient -- p1

rsa1: RoomShiftAssignment {}
rsa1.nurse -- n1
rsa1.hospitalisationShift -- shift1