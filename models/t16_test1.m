using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 5 }

s1: Surgeon { id = 1 }
r1: Room { id = 1 maxCapacity = 2 }
r2: Room { id = 2 maxCapacity = 2 }
ot1: OperatingTheatre { id = 1 }
n1: Nurse { id = 1 skillLevel = 2 }

hospital.surgeons -- s1
hospital.rooms -- r1
hospital.rooms -- r2
hospital.operatingtheatres -- ot1
hospital.nurses -- n1

p0: Patient { id = 0 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.F stayLength = 2 }
p0.assignedSurgeonId -- s1
hospital.patients -- p0

p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }
p1.assignedSurgeonId -- s1
hospital.patients -- p1

p2: Patient { id = 2 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.F stayLength = 2 }
p2.assignedSurgeonId -- s1
hospital.patients -- p2

a0: Admission { admissionDay = 1 }
a0.patientId -- p0
a0.roomId -- r1
a0.operationTheatreId -- ot1

a1: Admission { admissionDay = 1 }
a1.patientId -- p1
a1.roomId -- r2
a1.operationTheatreId -- ot1

a2: Admission { admissionDay = 1 }
a2.patientId -- p2
a2.roomId -- r2
a2.operationTheatreId -- ot1

d0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d0.patient -- p0
p0.dayDemand -- d0

d1: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d1.patient -- p1
p1.dayDemand -- d1

d2: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d2.patient -- p2
p2.dayDemand -- d2

nws1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 8 }
nws1.nurse -- n1
hospital.nurseWorkingShifts -- nws1

oldShift: HospitalisationShift { day = 1 shift = 0 roomNumber = 1 workload = 2 skillLevelRequired = 1 }
oldShift.room -- r1
oldShift.patient -- p0
hospital.hospitalisationShifts -- oldShift

oldRSA: RoomShiftAssignment {}
oldRSA.nurse -- n1
oldRSA.hospitalisationShift -- oldShift
hospital.roomShiftAssignments -- oldRSA

targetShift: HospitalisationShift { day = 1 shift = 0 roomNumber = 2 workload = 1 skillLevelRequired = 1 }
targetShift.room -- r2
targetShift.patient -- p2
hospital.hospitalisationShifts -- targetShift