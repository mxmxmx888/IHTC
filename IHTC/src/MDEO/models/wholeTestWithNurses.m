using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 7 }
state: OptimisationState { phase = OptimisationPhase.PATIENTS }

s1: Surgeon { id = 1 }
s2: Surgeon { id = 2 }
s3: Surgeon { id = 3 }

r1: Room { id = 1 maxCapacity = 2 }
r2: Room { id = 2 maxCapacity = 2 }
r3: Room { id = 3 maxCapacity = 1 }

ot1: OperatingTheatre { id = 1 }
ot2: OperatingTheatre { id = 2 }

n1: Nurse { id = 1 skillLevel = 1 }
n2: Nurse { id = 2 skillLevel = 2 }
n3: Nurse { id = 3 skillLevel = 1 }

hospital.surgeons -- s1
hospital.surgeons -- s2
hospital.surgeons -- s3
hospital.rooms -- r1
hospital.rooms -- r2
hospital.rooms -- r3
hospital.operatingtheatres -- ot1
hospital.operatingtheatres -- ot2
hospital.nurses -- n1
hospital.nurses -- n2
hospital.nurses -- n3
hospital.optimisationState -- state

p1: Patient { id = 1 isMandatory = true isScheduled = true dueDate = 3 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 2 gender = Gender.M stayLength = 2 }
p2: Patient { id = 2 isMandatory = false isScheduled = true dueDate = 4 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.F stayLength = 2 }
p3: Patient { id = 3 isMandatory = false isScheduled = true dueDate = 5 releaseDate = 1 ageGroup = AgeGroup.CHILD surgeryDuration = 1 gender = Gender.M stayLength = 1 }
p4: Patient { id = 4 isMandatory = false isScheduled = true dueDate = 5 releaseDate = 2 ageGroup = AgeGroup.ELDERLY surgeryDuration = 2 gender = Gender.F stayLength = 2 }
p5: Patient { id = 5 isMandatory = false isScheduled = false dueDate = 5 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }
p6: Patient { id = 6 isMandatory = false isScheduled = false dueDate = 6 releaseDate = 2 ageGroup = AgeGroup.ADULT surgeryDuration = 2 gender = Gender.F stayLength = 2 }
p7: Patient { id = 7 isMandatory = false isScheduled = false dueDate = 6 releaseDate = 2 ageGroup = AgeGroup.CHILD surgeryDuration = 1 gender = Gender.F stayLength = 1 }
p8: Patient { id = 8 isMandatory = false isScheduled = false dueDate = 6 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 1 gender = Gender.M stayLength = 2 }
p9: Patient { id = 9 isMandatory = true isScheduled = true dueDate = 4 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 3 gender = Gender.M stayLength = 2 }
p10: Patient { id = 10 isMandatory = false isScheduled = false dueDate = 6 releaseDate = 0 ageGroup = AgeGroup.YOUNG surgeryDuration = 1 gender = Gender.F stayLength = 1 }

p1.assignedSurgeonId -- s1
p2.assignedSurgeonId -- s2
p3.assignedSurgeonId -- s1
p4.assignedSurgeonId -- s3
p5.assignedSurgeonId -- s2
p6.assignedSurgeonId -- s1
p7.assignedSurgeonId -- s3
p8.assignedSurgeonId -- s2
p9.assignedSurgeonId -- s1
p10.assignedSurgeonId -- s3

p7.incompatibleRooms -- r2
p8.incompatibleRooms -- r1
p10.incompatibleRooms -- r3

hospital.patients -- p1
hospital.patients -- p2
hospital.patients -- p3
hospital.patients -- p4
hospital.patients -- p5
hospital.patients -- p6
hospital.patients -- p7
hospital.patients -- p8
hospital.patients -- p9
hospital.patients -- p10

d1: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d3: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d4: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d5: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d6: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d7: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d8: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d9: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d10: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }

d1.patient -- p1
d2.patient -- p2
d3.patient -- p3
d4.patient -- p4
d5.patient -- p5
d6.patient -- p6
d7.patient -- p7
d8.patient -- p8
d9.patient -- p9
d10.patient -- p10

p1.dayDemand -- d1
p2.dayDemand -- d2
p3.dayDemand -- d3
p4.dayDemand -- d4
p5.dayDemand -- d5
p6.dayDemand -- d6
p7.dayDemand -- d7
p8.dayDemand -- d8
p9.dayDemand -- d9
p10.dayDemand -- d10

a1: Admission { admissionDay = 0 }
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1

a2: Admission { admissionDay = 1 }
a2.patientId -- p2
a2.roomId -- r1
a2.operationTheatreId -- ot2

a3: Admission { admissionDay = 2 }
a3.patientId -- p3
a3.roomId -- r2
a3.operationTheatreId -- ot1

a4: Admission { admissionDay = 3 }
a4.patientId -- p4
a4.roomId -- r3
a4.operationTheatreId -- ot2

a9: Admission { admissionDay = 3 }
a9.patientId -- p9
a9.roomId -- r1
a9.operationTheatreId -- ot1

sa1d0: SurgeonAvailability { day = 0 maxOperatingTime = 4 }
sa1d1: SurgeonAvailability { day = 1 maxOperatingTime = 4 }
sa1d2: SurgeonAvailability { day = 2 maxOperatingTime = 4 }
sa1d3: SurgeonAvailability { day = 3 maxOperatingTime = 4 }
sa1d4: SurgeonAvailability { day = 4 maxOperatingTime = 4 }
sa1d5: SurgeonAvailability { day = 5 maxOperatingTime = 4 }
sa1d6: SurgeonAvailability { day = 6 maxOperatingTime = 4 }
sa2d0: SurgeonAvailability { day = 0 maxOperatingTime = 3 }
sa2d1: SurgeonAvailability { day = 1 maxOperatingTime = 3 }
sa2d2: SurgeonAvailability { day = 2 maxOperatingTime = 3 }
sa2d3: SurgeonAvailability { day = 3 maxOperatingTime = 3 }
sa2d4: SurgeonAvailability { day = 4 maxOperatingTime = 3 }
sa2d5: SurgeonAvailability { day = 5 maxOperatingTime = 3 }
sa2d6: SurgeonAvailability { day = 6 maxOperatingTime = 3 }
sa3d0: SurgeonAvailability { day = 0 maxOperatingTime = 3 }
sa3d1: SurgeonAvailability { day = 1 maxOperatingTime = 3 }
sa3d2: SurgeonAvailability { day = 2 maxOperatingTime = 3 }
sa3d3: SurgeonAvailability { day = 3 maxOperatingTime = 3 }
sa3d4: SurgeonAvailability { day = 4 maxOperatingTime = 3 }
sa3d5: SurgeonAvailability { day = 5 maxOperatingTime = 3 }
sa3d6: SurgeonAvailability { day = 6 maxOperatingTime = 3 }

sa1d0.surgeonId -- s1
sa1d1.surgeonId -- s1
sa1d2.surgeonId -- s1
sa1d3.surgeonId -- s1
sa1d4.surgeonId -- s1
sa1d5.surgeonId -- s1
sa1d6.surgeonId -- s1
sa2d0.surgeonId -- s2
sa2d1.surgeonId -- s2
sa2d2.surgeonId -- s2
sa2d3.surgeonId -- s2
sa2d4.surgeonId -- s2
sa2d5.surgeonId -- s2
sa2d6.surgeonId -- s2
sa3d0.surgeonId -- s3
sa3d1.surgeonId -- s3
sa3d2.surgeonId -- s3
sa3d3.surgeonId -- s3
sa3d4.surgeonId -- s3
sa3d5.surgeonId -- s3
sa3d6.surgeonId -- s3

hospital.surgeonAvailabilities -- sa1d0
hospital.surgeonAvailabilities -- sa1d1
hospital.surgeonAvailabilities -- sa1d2
hospital.surgeonAvailabilities -- sa1d3
hospital.surgeonAvailabilities -- sa1d4
hospital.surgeonAvailabilities -- sa1d5
hospital.surgeonAvailabilities -- sa1d6
hospital.surgeonAvailabilities -- sa2d0
hospital.surgeonAvailabilities -- sa2d1
hospital.surgeonAvailabilities -- sa2d2
hospital.surgeonAvailabilities -- sa2d3
hospital.surgeonAvailabilities -- sa2d4
hospital.surgeonAvailabilities -- sa2d5
hospital.surgeonAvailabilities -- sa2d6
hospital.surgeonAvailabilities -- sa3d0
hospital.surgeonAvailabilities -- sa3d1
hospital.surgeonAvailabilities -- sa3d2
hospital.surgeonAvailabilities -- sa3d3
hospital.surgeonAvailabilities -- sa3d4
hospital.surgeonAvailabilities -- sa3d5
hospital.surgeonAvailabilities -- sa3d6

ota1d0: OperatingTheatreAvailability { day = 0 maxCapacity = 4 }
ota1d1: OperatingTheatreAvailability { day = 1 maxCapacity = 4 }
ota1d2: OperatingTheatreAvailability { day = 2 maxCapacity = 4 }
ota1d3: OperatingTheatreAvailability { day = 3 maxCapacity = 4 }
ota1d4: OperatingTheatreAvailability { day = 4 maxCapacity = 4 }
ota1d5: OperatingTheatreAvailability { day = 5 maxCapacity = 4 }
ota1d6: OperatingTheatreAvailability { day = 6 maxCapacity = 4 }
ota2d0: OperatingTheatreAvailability { day = 0 maxCapacity = 3 }
ota2d1: OperatingTheatreAvailability { day = 1 maxCapacity = 3 }
ota2d2: OperatingTheatreAvailability { day = 2 maxCapacity = 3 }
ota2d3: OperatingTheatreAvailability { day = 3 maxCapacity = 3 }
ota2d4: OperatingTheatreAvailability { day = 4 maxCapacity = 3 }
ota2d5: OperatingTheatreAvailability { day = 5 maxCapacity = 3 }
ota2d6: OperatingTheatreAvailability { day = 6 maxCapacity = 3 }

ota1d0.operatingTheatreId -- ot1
ota1d1.operatingTheatreId -- ot1
ota1d2.operatingTheatreId -- ot1
ota1d3.operatingTheatreId -- ot1
ota1d4.operatingTheatreId -- ot1
ota1d5.operatingTheatreId -- ot1
ota1d6.operatingTheatreId -- ot1
ota2d0.operatingTheatreId -- ot2
ota2d1.operatingTheatreId -- ot2
ota2d2.operatingTheatreId -- ot2
ota2d3.operatingTheatreId -- ot2
ota2d4.operatingTheatreId -- ot2
ota2d5.operatingTheatreId -- ot2
ota2d6.operatingTheatreId -- ot2

hospital.operatingTheatreAvailabilities -- ota1d0
hospital.operatingTheatreAvailabilities -- ota1d1
hospital.operatingTheatreAvailabilities -- ota1d2
hospital.operatingTheatreAvailabilities -- ota1d3
hospital.operatingTheatreAvailabilities -- ota1d4
hospital.operatingTheatreAvailabilities -- ota1d5
hospital.operatingTheatreAvailabilities -- ota1d6
hospital.operatingTheatreAvailabilities -- ota2d0
hospital.operatingTheatreAvailabilities -- ota2d1
hospital.operatingTheatreAvailabilities -- ota2d2
hospital.operatingTheatreAvailabilities -- ota2d3
hospital.operatingTheatreAvailabilities -- ota2d4
hospital.operatingTheatreAvailabilities -- ota2d5
hospital.operatingTheatreAvailabilities -- ota2d6

ra1d0: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d1: RoomAvailability { day = 1 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d3: RoomAvailability { day = 3 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d4: RoomAvailability { day = 4 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d6: RoomAvailability { day = 6 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra2d0: RoomAvailability { day = 0 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d1: RoomAvailability { day = 1 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 2 }
ra2d3: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d4: RoomAvailability { day = 4 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d6: RoomAvailability { day = 6 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra3d0: RoomAvailability { day = 0 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d1: RoomAvailability { day = 1 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d2: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d3: RoomAvailability { day = 3 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d4: RoomAvailability { day = 4 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d6: RoomAvailability { day = 6 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }

ra1d0.roomId -- r1
ra1d1.roomId -- r1
ra1d2.roomId -- r1
ra1d3.roomId -- r1
ra1d4.roomId -- r1
ra1d5.roomId -- r1
ra1d6.roomId -- r1
ra2d0.roomId -- r2
ra2d1.roomId -- r2
ra2d2.roomId -- r2
ra2d3.roomId -- r2
ra2d4.roomId -- r2
ra2d5.roomId -- r2
ra2d6.roomId -- r2
ra3d0.roomId -- r3
ra3d1.roomId -- r3
ra3d2.roomId -- r3
ra3d3.roomId -- r3
ra3d4.roomId -- r3
ra3d5.roomId -- r3
ra3d6.roomId -- r3

hospital.roomAvailabilities -- ra1d0
hospital.roomAvailabilities -- ra1d1
hospital.roomAvailabilities -- ra1d2
hospital.roomAvailabilities -- ra1d3
hospital.roomAvailabilities -- ra1d4
hospital.roomAvailabilities -- ra1d5
hospital.roomAvailabilities -- ra1d6
hospital.roomAvailabilities -- ra2d0
hospital.roomAvailabilities -- ra2d1
hospital.roomAvailabilities -- ra2d2
hospital.roomAvailabilities -- ra2d3
hospital.roomAvailabilities -- ra2d4
hospital.roomAvailabilities -- ra2d5
hospital.roomAvailabilities -- ra2d6
hospital.roomAvailabilities -- ra3d0
hospital.roomAvailabilities -- ra3d1
hospital.roomAvailabilities -- ra3d2
hospital.roomAvailabilities -- ra3d3
hospital.roomAvailabilities -- ra3d4
hospital.roomAvailabilities -- ra3d5
hospital.roomAvailabilities -- ra3d6

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
hs_r1_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r1_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r1_d6_s2: HospitalisationShift { day = 6 shift = 2 }
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
hs_r2_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r2_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r2_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r3_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r3_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r3_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r3_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r3_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r3_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r3_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r3_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r3_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r3_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r3_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r3_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r3_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r3_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r3_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r3_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r3_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r3_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r3_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r3_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r3_d6_s2: HospitalisationShift { day = 6 shift = 2 }

hs_r1_d0_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s0
hs_r1_d0_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s1
hs_r1_d0_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s2
hs_r1_d1_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s0
hs_r1_d1_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s1
hs_r1_d1_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s2
hs_r1_d2_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s0
hs_r1_d2_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s1
hs_r1_d2_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s2
hs_r1_d3_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s0
hs_r1_d3_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s1
hs_r1_d3_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s2
hs_r1_d4_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s0
hs_r1_d4_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s1
hs_r1_d4_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s2
hs_r1_d5_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d5_s0
hs_r1_d5_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d5_s1
hs_r1_d5_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d5_s2
hs_r1_d6_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d6_s0
hs_r1_d6_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d6_s1
hs_r1_d6_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d6_s2
hs_r2_d0_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d0_s0
hs_r2_d0_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d0_s1
hs_r2_d0_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d0_s2
hs_r2_d1_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d1_s0
hs_r2_d1_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d1_s1
hs_r2_d1_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d1_s2
hs_r2_d2_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d2_s0
hs_r2_d2_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d2_s1
hs_r2_d2_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d2_s2
hs_r2_d3_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d3_s0
hs_r2_d3_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d3_s1
hs_r2_d3_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d3_s2
hs_r2_d4_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d4_s0
hs_r2_d4_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d4_s1
hs_r2_d4_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d4_s2
hs_r2_d5_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d5_s0
hs_r2_d5_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d5_s1
hs_r2_d5_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d5_s2
hs_r2_d6_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d6_s0
hs_r2_d6_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d6_s1
hs_r2_d6_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d6_s2
hs_r3_d0_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d0_s0
hs_r3_d0_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d0_s1
hs_r3_d0_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d0_s2
hs_r3_d1_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d1_s0
hs_r3_d1_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d1_s1
hs_r3_d1_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d1_s2
hs_r3_d2_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d2_s0
hs_r3_d2_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d2_s1
hs_r3_d2_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d2_s2
hs_r3_d3_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d3_s0
hs_r3_d3_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d3_s1
hs_r3_d3_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d3_s2
hs_r3_d4_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d4_s0
hs_r3_d4_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d4_s1
hs_r3_d4_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d4_s2
hs_r3_d5_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d5_s0
hs_r3_d5_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d5_s1
hs_r3_d5_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d5_s2
hs_r3_d6_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d6_s0
hs_r3_d6_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d6_s1
hs_r3_d6_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d6_s2

n1d0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 4 }
n1d1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 4 }
n1d2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 4 }
n1d3: NurseWorkingShift { day = 3 shift = 0 maxLoad = 4 }
n1d4: NurseWorkingShift { day = 4 shift = 0 maxLoad = 4 }
n2d0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 5 }
n2d1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 5 }
n2d2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 5 }
n2d3: NurseWorkingShift { day = 3 shift = 0 maxLoad = 5 }
n2d4: NurseWorkingShift { day = 4 shift = 0 maxLoad = 5 }
n3d0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 3 }
n3d1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 3 }
n3d2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 3 }
n3d3: NurseWorkingShift { day = 3 shift = 0 maxLoad = 3 }
n3d4: NurseWorkingShift { day = 4 shift = 0 maxLoad = 3 }

n1d0.nurse -- n1
n1d1.nurse -- n1
n1d2.nurse -- n1
n1d3.nurse -- n1
n1d4.nurse -- n1
n2d0.nurse -- n2
n2d1.nurse -- n2
n2d2.nurse -- n2
n2d3.nurse -- n2
n2d4.nurse -- n2
n3d0.nurse -- n3
n3d1.nurse -- n3
n3d2.nurse -- n3
n3d3.nurse -- n3
n3d4.nurse -- n3

hospital.nurseWorkingShifts -- n1d0
hospital.nurseWorkingShifts -- n1d1
hospital.nurseWorkingShifts -- n1d2
hospital.nurseWorkingShifts -- n1d3
hospital.nurseWorkingShifts -- n1d4
hospital.nurseWorkingShifts -- n2d0
hospital.nurseWorkingShifts -- n2d1
hospital.nurseWorkingShifts -- n2d2
hospital.nurseWorkingShifts -- n2d3
hospital.nurseWorkingShifts -- n2d4
hospital.nurseWorkingShifts -- n3d0
hospital.nurseWorkingShifts -- n3d1
hospital.nurseWorkingShifts -- n3d2
hospital.nurseWorkingShifts -- n3d3
hospital.nurseWorkingShifts -- n3d4
hospital.admissions -- a1
hospital.admissions -- a2
hospital.admissions -- a3
hospital.admissions -- a4
hospital.admissions -- a9