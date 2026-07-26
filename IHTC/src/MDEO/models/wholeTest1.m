using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 6 }
state: OptimisationState { phase = OptimisationPhase.PATIENTS }

s1: Surgeon { id = 1 }
s2: Surgeon { id = 2 }

r1: Room { id = 1 maxCapacity = 2 }
r2: Room { id = 2 maxCapacity = 2 }

ot1: OperatingTheatre { id = 1 }
ot2: OperatingTheatre { id = 2 }

n1: Nurse { id = 1 skillLevel = 1 }
n2: Nurse { id = 2 skillLevel = 2 }

hospital.optimisationState -- state
hospital.surgeons -- s1
hospital.surgeons -- s2
hospital.rooms -- r1
hospital.rooms -- r2
hospital.operatingtheatres -- ot1
hospital.operatingtheatres -- ot2
hospital.nurses -- n1
hospital.nurses -- n2

p1: Patient { id = 1 isMandatory = true isScheduled = true dueDate = 2 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 2 gender = Gender.M stayLength = 2 }
p2: Patient { id = 2 isMandatory = true isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.CHILD surgeryDuration = 1 gender = Gender.F stayLength = 2 }
p3: Patient { id = 3 isMandatory = false isScheduled = false dueDate = 4 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.F stayLength = 2 }
p4: Patient { id = 4 isMandatory = false isScheduled = false dueDate = 5 releaseDate = 2 ageGroup = AgeGroup.CHILD surgeryDuration = 1 gender = Gender.M stayLength = 1 }
p5: Patient { id = 5 isMandatory = false isScheduled = false dueDate = 5 releaseDate = 2 ageGroup = AgeGroup.ELDERLY surgeryDuration = 2 gender = Gender.F stayLength = 2 }
p6: Patient { id = 6 isMandatory = false isScheduled = false dueDate = 5 releaseDate = 3 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 1 }

p1.assignedSurgeonId -- s1
p2.assignedSurgeonId -- s2
p3.assignedSurgeonId -- s1
p4.assignedSurgeonId -- s2
p5.assignedSurgeonId -- s1
p6.assignedSurgeonId -- s2

hospital.patients -- p1
hospital.patients -- p2
hospital.patients -- p3
hospital.patients -- p4
hospital.patients -- p5
hospital.patients -- p6

d1: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d3: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d4: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d5: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d6: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }

d1.patient -- p1
d2.patient -- p2
d3.patient -- p3
d4.patient -- p4
d5.patient -- p5
d6.patient -- p6

p1.dayDemand -- d1
p2.dayDemand -- d2
p3.dayDemand -- d3
p4.dayDemand -- d4
p5.dayDemand -- d5
p6.dayDemand -- d6

a1: Admission { admissionDay = 0 }
a2: Admission { admissionDay = 1 }

a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1

a2.patientId -- p2
a2.roomId -- r2
a2.operationTheatreId -- ot2

hospital.admissions -- a1
hospital.admissions -- a2

sa1d0: SurgeonAvailability { day = 0 maxOperatingTime = 4 }
sa1d1: SurgeonAvailability { day = 1 maxOperatingTime = 4 }
sa1d2: SurgeonAvailability { day = 2 maxOperatingTime = 4 }
sa1d3: SurgeonAvailability { day = 3 maxOperatingTime = 4 }
sa1d4: SurgeonAvailability { day = 4 maxOperatingTime = 4 }
sa1d5: SurgeonAvailability { day = 5 maxOperatingTime = 4 }

sa2d0: SurgeonAvailability { day = 0 maxOperatingTime = 4 }
sa2d1: SurgeonAvailability { day = 1 maxOperatingTime = 4 }
sa2d2: SurgeonAvailability { day = 2 maxOperatingTime = 4 }
sa2d3: SurgeonAvailability { day = 3 maxOperatingTime = 4 }
sa2d4: SurgeonAvailability { day = 4 maxOperatingTime = 4 }
sa2d5: SurgeonAvailability { day = 5 maxOperatingTime = 4 }

sa1d0.surgeonId -- s1
sa1d1.surgeonId -- s1
sa1d2.surgeonId -- s1
sa1d3.surgeonId -- s1
sa1d4.surgeonId -- s1
sa1d5.surgeonId -- s1

sa2d0.surgeonId -- s2
sa2d1.surgeonId -- s2
sa2d2.surgeonId -- s2
sa2d3.surgeonId -- s2
sa2d4.surgeonId -- s2
sa2d5.surgeonId -- s2

hospital.surgeonAvailabilities -- sa1d0
hospital.surgeonAvailabilities -- sa1d1
hospital.surgeonAvailabilities -- sa1d2
hospital.surgeonAvailabilities -- sa1d3
hospital.surgeonAvailabilities -- sa1d4
hospital.surgeonAvailabilities -- sa1d5
hospital.surgeonAvailabilities -- sa2d0
hospital.surgeonAvailabilities -- sa2d1
hospital.surgeonAvailabilities -- sa2d2
hospital.surgeonAvailabilities -- sa2d3
hospital.surgeonAvailabilities -- sa2d4
hospital.surgeonAvailabilities -- sa2d5

ota1d0: OperatingTheatreAvailability { day = 0 maxCapacity = 4 }
ota1d1: OperatingTheatreAvailability { day = 1 maxCapacity = 4 }
ota1d2: OperatingTheatreAvailability { day = 2 maxCapacity = 4 }
ota1d3: OperatingTheatreAvailability { day = 3 maxCapacity = 4 }
ota1d4: OperatingTheatreAvailability { day = 4 maxCapacity = 4 }
ota1d5: OperatingTheatreAvailability { day = 5 maxCapacity = 4 }

ota2d0: OperatingTheatreAvailability { day = 0 maxCapacity = 4 }
ota2d1: OperatingTheatreAvailability { day = 1 maxCapacity = 4 }
ota2d2: OperatingTheatreAvailability { day = 2 maxCapacity = 4 }
ota2d3: OperatingTheatreAvailability { day = 3 maxCapacity = 4 }
ota2d4: OperatingTheatreAvailability { day = 4 maxCapacity = 4 }
ota2d5: OperatingTheatreAvailability { day = 5 maxCapacity = 4 }

ota1d0.operatingTheatreId -- ot1
ota1d1.operatingTheatreId -- ot1
ota1d2.operatingTheatreId -- ot1
ota1d3.operatingTheatreId -- ot1
ota1d4.operatingTheatreId -- ot1
ota1d5.operatingTheatreId -- ot1

ota2d0.operatingTheatreId -- ot2
ota2d1.operatingTheatreId -- ot2
ota2d2.operatingTheatreId -- ot2
ota2d3.operatingTheatreId -- ot2
ota2d4.operatingTheatreId -- ot2
ota2d5.operatingTheatreId -- ot2

hospital.operatingTheatreAvailabilities -- ota1d0
hospital.operatingTheatreAvailabilities -- ota1d1
hospital.operatingTheatreAvailabilities -- ota1d2
hospital.operatingTheatreAvailabilities -- ota1d3
hospital.operatingTheatreAvailabilities -- ota1d4
hospital.operatingTheatreAvailabilities -- ota1d5
hospital.operatingTheatreAvailabilities -- ota2d0
hospital.operatingTheatreAvailabilities -- ota2d1
hospital.operatingTheatreAvailabilities -- ota2d2
hospital.operatingTheatreAvailabilities -- ota2d3
hospital.operatingTheatreAvailabilities -- ota2d4
hospital.operatingTheatreAvailabilities -- ota2d5

ra1d0: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d1: RoomAvailability { day = 1 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d2: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d3: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d4: RoomAvailability { day = 4 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }

ra2d0: RoomAvailability { day = 0 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d1: RoomAvailability { day = 1 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 2 }
ra2d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 2 }
ra2d3: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d4: RoomAvailability { day = 4 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }

ra1d0.roomId -- r1
ra1d1.roomId -- r1
ra1d2.roomId -- r1
ra1d3.roomId -- r1
ra1d4.roomId -- r1
ra1d5.roomId -- r1

ra2d0.roomId -- r2
ra2d1.roomId -- r2
ra2d2.roomId -- r2
ra2d3.roomId -- r2
ra2d4.roomId -- r2
ra2d5.roomId -- r2

hospital.roomAvailabilities -- ra1d0
hospital.roomAvailabilities -- ra1d1
hospital.roomAvailabilities -- ra1d2
hospital.roomAvailabilities -- ra1d3
hospital.roomAvailabilities -- ra1d4
hospital.roomAvailabilities -- ra1d5
hospital.roomAvailabilities -- ra2d0
hospital.roomAvailabilities -- ra2d1
hospital.roomAvailabilities -- ra2d2
hospital.roomAvailabilities -- ra2d3
hospital.roomAvailabilities -- ra2d4
hospital.roomAvailabilities -- ra2d5

nws1d0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 4 }
nws1d1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 4 }
nws1d2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 4 }
nws1d3: NurseWorkingShift { day = 3 shift = 0 maxLoad = 4 }
nws1d4: NurseWorkingShift { day = 4 shift = 0 maxLoad = 4 }
nws1d5: NurseWorkingShift { day = 5 shift = 0 maxLoad = 4 }

nws2d0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 6 }
nws2d1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 6 }
nws2d2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 6 }
nws2d3: NurseWorkingShift { day = 3 shift = 0 maxLoad = 6 }
nws2d4: NurseWorkingShift { day = 4 shift = 0 maxLoad = 6 }
nws2d5: NurseWorkingShift { day = 5 shift = 0 maxLoad = 6 }

nws1d0.nurse -- n1
nws1d1.nurse -- n1
nws1d2.nurse -- n1
nws1d3.nurse -- n1
nws1d4.nurse -- n1
nws1d5.nurse -- n1

nws2d0.nurse -- n2
nws2d1.nurse -- n2
nws2d2.nurse -- n2
nws2d3.nurse -- n2
nws2d4.nurse -- n2
nws2d5.nurse -- n2

hospital.nurseWorkingShifts -- nws1d0
hospital.nurseWorkingShifts -- nws1d1
hospital.nurseWorkingShifts -- nws1d2
hospital.nurseWorkingShifts -- nws1d3
hospital.nurseWorkingShifts -- nws1d4
hospital.nurseWorkingShifts -- nws1d5
hospital.nurseWorkingShifts -- nws2d0
hospital.nurseWorkingShifts -- nws2d1
hospital.nurseWorkingShifts -- nws2d2
hospital.nurseWorkingShifts -- nws2d3
hospital.nurseWorkingShifts -- nws2d4
hospital.nurseWorkingShifts -- nws2d5

hs_r1_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r1_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r1_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r1_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r1_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r1_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r1_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r1_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r1_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r1_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r1_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r1_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r1_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r1_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r1_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r1_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r1_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r1_d5_s2: HospitalisationShift { day = 5 shift = 2 }

hs_r2_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r2_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r2_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r2_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r2_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r2_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r2_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r2_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r2_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r2_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r2_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r2_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r2_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r2_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r2_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r2_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r2_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r2_d5_s2: HospitalisationShift { day = 5 shift = 2 }

hs_r1_d0_s0.room -- r1
hs_r1_d0_s1.room -- r1
hs_r1_d0_s2.room -- r1
hs_r1_d1_s0.room -- r1
hs_r1_d1_s1.room -- r1
hs_r1_d1_s2.room -- r1
hs_r1_d2_s0.room -- r1
hs_r1_d2_s1.room -- r1
hs_r1_d2_s2.room -- r1
hs_r1_d3_s0.room -- r1
hs_r1_d3_s1.room -- r1
hs_r1_d3_s2.room -- r1
hs_r1_d4_s0.room -- r1
hs_r1_d4_s1.room -- r1
hs_r1_d4_s2.room -- r1
hs_r1_d5_s0.room -- r1
hs_r1_d5_s1.room -- r1
hs_r1_d5_s2.room -- r1

hs_r2_d0_s0.room -- r2
hs_r2_d0_s1.room -- r2
hs_r2_d0_s2.room -- r2
hs_r2_d1_s0.room -- r2
hs_r2_d1_s1.room -- r2
hs_r2_d1_s2.room -- r2
hs_r2_d2_s0.room -- r2
hs_r2_d2_s1.room -- r2
hs_r2_d2_s2.room -- r2
hs_r2_d3_s0.room -- r2
hs_r2_d3_s1.room -- r2
hs_r2_d3_s2.room -- r2
hs_r2_d4_s0.room -- r2
hs_r2_d4_s1.room -- r2
hs_r2_d4_s2.room -- r2
hs_r2_d5_s0.room -- r2
hs_r2_d5_s1.room -- r2
hs_r2_d5_s2.room -- r2

hospital.hospitalisationShifts -- hs_r1_d0_s0
hospital.hospitalisationShifts -- hs_r1_d0_s1
hospital.hospitalisationShifts -- hs_r1_d0_s2
hospital.hospitalisationShifts -- hs_r1_d1_s0
hospital.hospitalisationShifts -- hs_r1_d1_s1
hospital.hospitalisationShifts -- hs_r1_d1_s2
hospital.hospitalisationShifts -- hs_r1_d2_s0
hospital.hospitalisationShifts -- hs_r1_d2_s1
hospital.hospitalisationShifts -- hs_r1_d2_s2
hospital.hospitalisationShifts -- hs_r1_d3_s0
hospital.hospitalisationShifts -- hs_r1_d3_s1
hospital.hospitalisationShifts -- hs_r1_d3_s2
hospital.hospitalisationShifts -- hs_r1_d4_s0
hospital.hospitalisationShifts -- hs_r1_d4_s1
hospital.hospitalisationShifts -- hs_r1_d4_s2
hospital.hospitalisationShifts -- hs_r1_d5_s0
hospital.hospitalisationShifts -- hs_r1_d5_s1
hospital.hospitalisationShifts -- hs_r1_d5_s2

hospital.hospitalisationShifts -- hs_r2_d0_s0
hospital.hospitalisationShifts -- hs_r2_d0_s1
hospital.hospitalisationShifts -- hs_r2_d0_s2
hospital.hospitalisationShifts -- hs_r2_d1_s0
hospital.hospitalisationShifts -- hs_r2_d1_s1
hospital.hospitalisationShifts -- hs_r2_d1_s2
hospital.hospitalisationShifts -- hs_r2_d2_s0
hospital.hospitalisationShifts -- hs_r2_d2_s1
hospital.hospitalisationShifts -- hs_r2_d2_s2
hospital.hospitalisationShifts -- hs_r2_d3_s0
hospital.hospitalisationShifts -- hs_r2_d3_s1
hospital.hospitalisationShifts -- hs_r2_d3_s2
hospital.hospitalisationShifts -- hs_r2_d4_s0
hospital.hospitalisationShifts -- hs_r2_d4_s1
hospital.hospitalisationShifts -- hs_r2_d4_s2
hospital.hospitalisationShifts -- hs_r2_d5_s0
hospital.hospitalisationShifts -- hs_r2_d5_s1
hospital.hospitalisationShifts -- hs_r2_d5_s2