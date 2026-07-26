using "../ihtc.mm"

// Generated from test07.json.
// A/B genders map to M/F and infant maps to BABY in the current metamodel.
// Existing occupants are represented in RoomAvailability because the Occupant class
// cannot store source age-group or shift-level nursing demand independently.

hospital: HospitalInstance { decisionHorizon = 32 }
state: OptimisationState { phase = OptimisationPhase.PATIENTS }
hospital.optimisationState -- state

s0: Surgeon { id = 0 }
hospital.surgeons -- s0
s1: Surgeon { id = 1 }
hospital.surgeons -- s1
ot0: OperatingTheatre { id = 0 }
hospital.operatingtheatres -- ot0
ot1: OperatingTheatre { id = 1 }
hospital.operatingtheatres -- ot1
ot2: OperatingTheatre { id = 2 }
hospital.operatingtheatres -- ot2
r0: Room { id = 0 maxCapacity = 3 }
hospital.rooms -- r0
r1: Room { id = 1 maxCapacity = 4 }
hospital.rooms -- r1
r2: Room { id = 2 maxCapacity = 2 }
hospital.rooms -- r2
r3: Room { id = 3 maxCapacity = 2 }
hospital.rooms -- r3
r4: Room { id = 4 maxCapacity = 4 }
hospital.rooms -- r4
r5: Room { id = 5 maxCapacity = 4 }
hospital.rooms -- r5
r6: Room { id = 6 maxCapacity = 2 }
hospital.rooms -- r6
r7: Room { id = 7 maxCapacity = 3 }
hospital.rooms -- r7
r8: Room { id = 8 maxCapacity = 2 }
hospital.rooms -- r8
n0: Nurse { id = 0 skillLevel = 2 }
hospital.nurses -- n0
n1: Nurse { id = 1 skillLevel = 4 }
hospital.nurses -- n1
n2: Nurse { id = 2 skillLevel = 1 }
hospital.nurses -- n2
n3: Nurse { id = 3 skillLevel = 2 }
hospital.nurses -- n3
n4: Nurse { id = 4 skillLevel = 3 }
hospital.nurses -- n4
n5: Nurse { id = 5 skillLevel = 3 }
hospital.nurses -- n5
n6: Nurse { id = 6 skillLevel = 2 }
hospital.nurses -- n6
n7: Nurse { id = 7 skillLevel = 0 }
hospital.nurses -- n7
n8: Nurse { id = 8 skillLevel = 2 }
hospital.nurses -- n8
n9: Nurse { id = 9 skillLevel = 1 }
hospital.nurses -- n9
n10: Nurse { id = 10 skillLevel = 0 }
hospital.nurses -- n10
n11: Nurse { id = 11 skillLevel = 2 }
hospital.nurses -- n11
n12: Nurse { id = 12 skillLevel = 0 }
hospital.nurses -- n12
n13: Nurse { id = 13 skillLevel = 3 }
hospital.nurses -- n13
n14: Nurse { id = 14 skillLevel = 2 }
hospital.nurses -- n14
n15: Nurse { id = 15 skillLevel = 0 }
hospital.nurses -- n15
n16: Nurse { id = 16 skillLevel = 3 }
hospital.nurses -- n16
n17: Nurse { id = 17 skillLevel = 2 }
hospital.nurses -- n17
n18: Nurse { id = 18 skillLevel = 3 }
hospital.nurses -- n18
n19: Nurse { id = 19 skillLevel = 4 }
hospital.nurses -- n19
n20: Nurse { id = 20 skillLevel = 4 }
hospital.nurses -- n20
n21: Nurse { id = 21 skillLevel = 3 }
hospital.nurses -- n21

p0: Patient { id = 0 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 14 ageGroup = AgeGroup.ADULT surgeryDuration = 300 gender = Gender.F stayLength = 5 }
p0.assignedSurgeonId -- s0
hospital.patients -- p0
d0_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d0_0_0.patient -- p0
p0.dayDemand -- d0_0_0
d0_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d0_0_1.patient -- p0
p0.dayDemand -- d0_0_1
d0_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d0_0_2.patient -- p0
p0.dayDemand -- d0_0_2
d0_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d0_1_0.patient -- p0
p0.dayDemand -- d0_1_0
d0_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d0_1_1.patient -- p0
p0.dayDemand -- d0_1_1
d0_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d0_1_2.patient -- p0
p0.dayDemand -- d0_1_2
d0_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d0_2_0.patient -- p0
p0.dayDemand -- d0_2_0
d0_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d0_2_1.patient -- p0
p0.dayDemand -- d0_2_1
d0_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d0_2_2.patient -- p0
p0.dayDemand -- d0_2_2
d0_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d0_3_0.patient -- p0
p0.dayDemand -- d0_3_0
d0_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d0_3_1.patient -- p0
p0.dayDemand -- d0_3_1
d0_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d0_3_2.patient -- p0
p0.dayDemand -- d0_3_2
d0_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d0_4_0.patient -- p0
p0.dayDemand -- d0_4_0
d0_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d0_4_1.patient -- p0
p0.dayDemand -- d0_4_1
d0_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d0_4_2.patient -- p0
p0.dayDemand -- d0_4_2

p1: Patient { id = 1 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 8 ageGroup = AgeGroup.YOUNG surgeryDuration = 180 gender = Gender.F stayLength = 6 }
p1.assignedSurgeonId -- s0
hospital.patients -- p1
d1_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d1_0_0.patient -- p1
p1.dayDemand -- d1_0_0
d1_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d1_0_1.patient -- p1
p1.dayDemand -- d1_0_1
d1_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d1_0_2.patient -- p1
p1.dayDemand -- d1_0_2
d1_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d1_1_0.patient -- p1
p1.dayDemand -- d1_1_0
d1_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d1_1_1.patient -- p1
p1.dayDemand -- d1_1_1
d1_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d1_1_2.patient -- p1
p1.dayDemand -- d1_1_2
d1_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d1_2_0.patient -- p1
p1.dayDemand -- d1_2_0
d1_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d1_2_1.patient -- p1
p1.dayDemand -- d1_2_1
d1_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d1_2_2.patient -- p1
p1.dayDemand -- d1_2_2
d1_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d1_3_0.patient -- p1
p1.dayDemand -- d1_3_0
d1_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d1_3_1.patient -- p1
p1.dayDemand -- d1_3_1
d1_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d1_3_2.patient -- p1
p1.dayDemand -- d1_3_2
d1_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d1_4_0.patient -- p1
p1.dayDemand -- d1_4_0
d1_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d1_4_1.patient -- p1
p1.dayDemand -- d1_4_1
d1_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d1_4_2.patient -- p1
p1.dayDemand -- d1_4_2
d1_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d1_5_0.patient -- p1
p1.dayDemand -- d1_5_0
d1_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d1_5_1.patient -- p1
p1.dayDemand -- d1_5_1
d1_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d1_5_2.patient -- p1
p1.dayDemand -- d1_5_2

p2: Patient { id = 2 isMandatory = true isScheduled = true dueDate = 17 releaseDate = 1 ageGroup = AgeGroup.CHILD surgeryDuration = 300 gender = Gender.F stayLength = 8 }
p2.assignedSurgeonId -- s0
hospital.patients -- p2
p2.incompatibleRooms -- r2
p2.incompatibleRooms -- r8
d2_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d2_0_0.patient -- p2
p2.dayDemand -- d2_0_0
d2_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_0_1.patient -- p2
p2.dayDemand -- d2_0_1
d2_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d2_0_2.patient -- p2
p2.dayDemand -- d2_0_2
d2_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2_1_0.patient -- p2
p2.dayDemand -- d2_1_0
d2_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_1_1.patient -- p2
p2.dayDemand -- d2_1_1
d2_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d2_1_2.patient -- p2
p2.dayDemand -- d2_1_2
d2_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d2_2_0.patient -- p2
p2.dayDemand -- d2_2_0
d2_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d2_2_1.patient -- p2
p2.dayDemand -- d2_2_1
d2_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d2_2_2.patient -- p2
p2.dayDemand -- d2_2_2
d2_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d2_3_0.patient -- p2
p2.dayDemand -- d2_3_0
d2_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d2_3_1.patient -- p2
p2.dayDemand -- d2_3_1
d2_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d2_3_2.patient -- p2
p2.dayDemand -- d2_3_2
d2_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d2_4_0.patient -- p2
p2.dayDemand -- d2_4_0
d2_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d2_4_1.patient -- p2
p2.dayDemand -- d2_4_1
d2_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d2_4_2.patient -- p2
p2.dayDemand -- d2_4_2
d2_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d2_5_0.patient -- p2
p2.dayDemand -- d2_5_0
d2_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d2_5_1.patient -- p2
p2.dayDemand -- d2_5_1
d2_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d2_5_2.patient -- p2
p2.dayDemand -- d2_5_2
d2_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d2_6_0.patient -- p2
p2.dayDemand -- d2_6_0
d2_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d2_6_1.patient -- p2
p2.dayDemand -- d2_6_1
d2_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d2_6_2.patient -- p2
p2.dayDemand -- d2_6_2
d2_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2_7_0.patient -- p2
p2.dayDemand -- d2_7_0
d2_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d2_7_1.patient -- p2
p2.dayDemand -- d2_7_1
d2_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d2_7_2.patient -- p2
p2.dayDemand -- d2_7_2

p3: Patient { id = 3 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 1 ageGroup = AgeGroup.BABY surgeryDuration = 240 gender = Gender.F stayLength = 7 }
p3.assignedSurgeonId -- s0
hospital.patients -- p3
p3.incompatibleRooms -- r1
d3_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d3_0_0.patient -- p3
p3.dayDemand -- d3_0_0
d3_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d3_0_1.patient -- p3
p3.dayDemand -- d3_0_1
d3_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d3_0_2.patient -- p3
p3.dayDemand -- d3_0_2
d3_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d3_1_0.patient -- p3
p3.dayDemand -- d3_1_0
d3_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d3_1_1.patient -- p3
p3.dayDemand -- d3_1_1
d3_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d3_1_2.patient -- p3
p3.dayDemand -- d3_1_2
d3_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d3_2_0.patient -- p3
p3.dayDemand -- d3_2_0
d3_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d3_2_1.patient -- p3
p3.dayDemand -- d3_2_1
d3_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d3_2_2.patient -- p3
p3.dayDemand -- d3_2_2
d3_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d3_3_0.patient -- p3
p3.dayDemand -- d3_3_0
d3_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d3_3_1.patient -- p3
p3.dayDemand -- d3_3_1
d3_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d3_3_2.patient -- p3
p3.dayDemand -- d3_3_2
d3_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d3_4_0.patient -- p3
p3.dayDemand -- d3_4_0
d3_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d3_4_1.patient -- p3
p3.dayDemand -- d3_4_1
d3_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d3_4_2.patient -- p3
p3.dayDemand -- d3_4_2
d3_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d3_5_0.patient -- p3
p3.dayDemand -- d3_5_0
d3_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d3_5_1.patient -- p3
p3.dayDemand -- d3_5_1
d3_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d3_5_2.patient -- p3
p3.dayDemand -- d3_5_2
d3_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d3_6_0.patient -- p3
p3.dayDemand -- d3_6_0
d3_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d3_6_1.patient -- p3
p3.dayDemand -- d3_6_1
d3_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d3_6_2.patient -- p3
p3.dayDemand -- d3_6_2

p4: Patient { id = 4 isMandatory = true isScheduled = true dueDate = 17 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 4 }
p4.assignedSurgeonId -- s0
hospital.patients -- p4
p4.incompatibleRooms -- r6
d4_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d4_0_0.patient -- p4
p4.dayDemand -- d4_0_0
d4_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d4_0_1.patient -- p4
p4.dayDemand -- d4_0_1
d4_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d4_0_2.patient -- p4
p4.dayDemand -- d4_0_2
d4_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d4_1_0.patient -- p4
p4.dayDemand -- d4_1_0
d4_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d4_1_1.patient -- p4
p4.dayDemand -- d4_1_1
d4_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d4_1_2.patient -- p4
p4.dayDemand -- d4_1_2
d4_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d4_2_0.patient -- p4
p4.dayDemand -- d4_2_0
d4_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d4_2_1.patient -- p4
p4.dayDemand -- d4_2_1
d4_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d4_2_2.patient -- p4
p4.dayDemand -- d4_2_2
d4_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d4_3_0.patient -- p4
p4.dayDemand -- d4_3_0
d4_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d4_3_1.patient -- p4
p4.dayDemand -- d4_3_1
d4_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d4_3_2.patient -- p4
p4.dayDemand -- d4_3_2

p5: Patient { id = 5 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 300 gender = Gender.M stayLength = 6 }
p5.assignedSurgeonId -- s1
hospital.patients -- p5
p5.incompatibleRooms -- r4
d5_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d5_0_0.patient -- p5
p5.dayDemand -- d5_0_0
d5_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d5_0_1.patient -- p5
p5.dayDemand -- d5_0_1
d5_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d5_0_2.patient -- p5
p5.dayDemand -- d5_0_2
d5_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d5_1_0.patient -- p5
p5.dayDemand -- d5_1_0
d5_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d5_1_1.patient -- p5
p5.dayDemand -- d5_1_1
d5_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d5_1_2.patient -- p5
p5.dayDemand -- d5_1_2
d5_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d5_2_0.patient -- p5
p5.dayDemand -- d5_2_0
d5_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d5_2_1.patient -- p5
p5.dayDemand -- d5_2_1
d5_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d5_2_2.patient -- p5
p5.dayDemand -- d5_2_2
d5_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d5_3_0.patient -- p5
p5.dayDemand -- d5_3_0
d5_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d5_3_1.patient -- p5
p5.dayDemand -- d5_3_1
d5_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d5_3_2.patient -- p5
p5.dayDemand -- d5_3_2
d5_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d5_4_0.patient -- p5
p5.dayDemand -- d5_4_0
d5_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d5_4_1.patient -- p5
p5.dayDemand -- d5_4_1
d5_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d5_4_2.patient -- p5
p5.dayDemand -- d5_4_2
d5_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d5_5_0.patient -- p5
p5.dayDemand -- d5_5_0
d5_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d5_5_1.patient -- p5
p5.dayDemand -- d5_5_1
d5_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d5_5_2.patient -- p5
p5.dayDemand -- d5_5_2

p6: Patient { id = 6 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 14 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 6 }
p6.assignedSurgeonId -- s0
hospital.patients -- p6
p6.incompatibleRooms -- r4
p6.incompatibleRooms -- r8
d6_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d6_0_0.patient -- p6
p6.dayDemand -- d6_0_0
d6_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d6_0_1.patient -- p6
p6.dayDemand -- d6_0_1
d6_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d6_0_2.patient -- p6
p6.dayDemand -- d6_0_2
d6_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d6_1_0.patient -- p6
p6.dayDemand -- d6_1_0
d6_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d6_1_1.patient -- p6
p6.dayDemand -- d6_1_1
d6_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d6_1_2.patient -- p6
p6.dayDemand -- d6_1_2
d6_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d6_2_0.patient -- p6
p6.dayDemand -- d6_2_0
d6_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d6_2_1.patient -- p6
p6.dayDemand -- d6_2_1
d6_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d6_2_2.patient -- p6
p6.dayDemand -- d6_2_2
d6_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d6_3_0.patient -- p6
p6.dayDemand -- d6_3_0
d6_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d6_3_1.patient -- p6
p6.dayDemand -- d6_3_1
d6_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d6_3_2.patient -- p6
p6.dayDemand -- d6_3_2
d6_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d6_4_0.patient -- p6
p6.dayDemand -- d6_4_0
d6_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d6_4_1.patient -- p6
p6.dayDemand -- d6_4_1
d6_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d6_4_2.patient -- p6
p6.dayDemand -- d6_4_2
d6_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d6_5_0.patient -- p6
p6.dayDemand -- d6_5_0
d6_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d6_5_1.patient -- p6
p6.dayDemand -- d6_5_1
d6_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d6_5_2.patient -- p6
p6.dayDemand -- d6_5_2

p7: Patient { id = 7 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.F stayLength = 6 }
p7.assignedSurgeonId -- s1
hospital.patients -- p7
p7.incompatibleRooms -- r1
d7_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d7_0_0.patient -- p7
p7.dayDemand -- d7_0_0
d7_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d7_0_1.patient -- p7
p7.dayDemand -- d7_0_1
d7_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d7_0_2.patient -- p7
p7.dayDemand -- d7_0_2
d7_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d7_1_0.patient -- p7
p7.dayDemand -- d7_1_0
d7_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d7_1_1.patient -- p7
p7.dayDemand -- d7_1_1
d7_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d7_1_2.patient -- p7
p7.dayDemand -- d7_1_2
d7_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d7_2_0.patient -- p7
p7.dayDemand -- d7_2_0
d7_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d7_2_1.patient -- p7
p7.dayDemand -- d7_2_1
d7_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d7_2_2.patient -- p7
p7.dayDemand -- d7_2_2
d7_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d7_3_0.patient -- p7
p7.dayDemand -- d7_3_0
d7_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d7_3_1.patient -- p7
p7.dayDemand -- d7_3_1
d7_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d7_3_2.patient -- p7
p7.dayDemand -- d7_3_2
d7_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d7_4_0.patient -- p7
p7.dayDemand -- d7_4_0
d7_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d7_4_1.patient -- p7
p7.dayDemand -- d7_4_1
d7_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d7_4_2.patient -- p7
p7.dayDemand -- d7_4_2
d7_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d7_5_0.patient -- p7
p7.dayDemand -- d7_5_0
d7_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d7_5_1.patient -- p7
p7.dayDemand -- d7_5_1
d7_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d7_5_2.patient -- p7
p7.dayDemand -- d7_5_2

p8: Patient { id = 8 isMandatory = true isScheduled = true dueDate = 14 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 60 gender = Gender.F stayLength = 2 }
p8.assignedSurgeonId -- s0
hospital.patients -- p8
d8_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d8_0_0.patient -- p8
p8.dayDemand -- d8_0_0
d8_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d8_0_1.patient -- p8
p8.dayDemand -- d8_0_1
d8_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d8_0_2.patient -- p8
p8.dayDemand -- d8_0_2
d8_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d8_1_0.patient -- p8
p8.dayDemand -- d8_1_0
d8_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d8_1_1.patient -- p8
p8.dayDemand -- d8_1_1
d8_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d8_1_2.patient -- p8
p8.dayDemand -- d8_1_2

p9: Patient { id = 9 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ADULT surgeryDuration = 300 gender = Gender.F stayLength = 6 }
p9.assignedSurgeonId -- s1
hospital.patients -- p9
d9_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d9_0_0.patient -- p9
p9.dayDemand -- d9_0_0
d9_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d9_0_1.patient -- p9
p9.dayDemand -- d9_0_1
d9_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d9_0_2.patient -- p9
p9.dayDemand -- d9_0_2
d9_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d9_1_0.patient -- p9
p9.dayDemand -- d9_1_0
d9_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d9_1_1.patient -- p9
p9.dayDemand -- d9_1_1
d9_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d9_1_2.patient -- p9
p9.dayDemand -- d9_1_2
d9_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d9_2_0.patient -- p9
p9.dayDemand -- d9_2_0
d9_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d9_2_1.patient -- p9
p9.dayDemand -- d9_2_1
d9_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_2_2.patient -- p9
p9.dayDemand -- d9_2_2
d9_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d9_3_0.patient -- p9
p9.dayDemand -- d9_3_0
d9_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d9_3_1.patient -- p9
p9.dayDemand -- d9_3_1
d9_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_3_2.patient -- p9
p9.dayDemand -- d9_3_2
d9_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d9_4_0.patient -- p9
p9.dayDemand -- d9_4_0
d9_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d9_4_1.patient -- p9
p9.dayDemand -- d9_4_1
d9_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_4_2.patient -- p9
p9.dayDemand -- d9_4_2
d9_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d9_5_0.patient -- p9
p9.dayDemand -- d9_5_0
d9_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d9_5_1.patient -- p9
p9.dayDemand -- d9_5_1
d9_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d9_5_2.patient -- p9
p9.dayDemand -- d9_5_2

p10: Patient { id = 10 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.M stayLength = 6 }
p10.assignedSurgeonId -- s0
hospital.patients -- p10
p10.incompatibleRooms -- r2
p10.incompatibleRooms -- r8
d10_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d10_0_0.patient -- p10
p10.dayDemand -- d10_0_0
d10_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d10_0_1.patient -- p10
p10.dayDemand -- d10_0_1
d10_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d10_0_2.patient -- p10
p10.dayDemand -- d10_0_2
d10_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d10_1_0.patient -- p10
p10.dayDemand -- d10_1_0
d10_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d10_1_1.patient -- p10
p10.dayDemand -- d10_1_1
d10_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d10_1_2.patient -- p10
p10.dayDemand -- d10_1_2
d10_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d10_2_0.patient -- p10
p10.dayDemand -- d10_2_0
d10_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d10_2_1.patient -- p10
p10.dayDemand -- d10_2_1
d10_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d10_2_2.patient -- p10
p10.dayDemand -- d10_2_2
d10_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d10_3_0.patient -- p10
p10.dayDemand -- d10_3_0
d10_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d10_3_1.patient -- p10
p10.dayDemand -- d10_3_1
d10_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d10_3_2.patient -- p10
p10.dayDemand -- d10_3_2
d10_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d10_4_0.patient -- p10
p10.dayDemand -- d10_4_0
d10_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d10_4_1.patient -- p10
p10.dayDemand -- d10_4_1
d10_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d10_4_2.patient -- p10
p10.dayDemand -- d10_4_2
d10_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d10_5_0.patient -- p10
p10.dayDemand -- d10_5_0
d10_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d10_5_1.patient -- p10
p10.dayDemand -- d10_5_1
d10_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d10_5_2.patient -- p10
p10.dayDemand -- d10_5_2

p11: Patient { id = 11 isMandatory = true isScheduled = true dueDate = 15 releaseDate = 2 ageGroup = AgeGroup.YOUNG surgeryDuration = 180 gender = Gender.F stayLength = 3 }
p11.assignedSurgeonId -- s1
hospital.patients -- p11
d11_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d11_0_0.patient -- p11
p11.dayDemand -- d11_0_0
d11_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d11_0_1.patient -- p11
p11.dayDemand -- d11_0_1
d11_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d11_0_2.patient -- p11
p11.dayDemand -- d11_0_2
d11_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d11_1_0.patient -- p11
p11.dayDemand -- d11_1_0
d11_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d11_1_1.patient -- p11
p11.dayDemand -- d11_1_1
d11_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d11_1_2.patient -- p11
p11.dayDemand -- d11_1_2
d11_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d11_2_0.patient -- p11
p11.dayDemand -- d11_2_0
d11_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d11_2_1.patient -- p11
p11.dayDemand -- d11_2_1
d11_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d11_2_2.patient -- p11
p11.dayDemand -- d11_2_2

p12: Patient { id = 12 isMandatory = true isScheduled = true dueDate = 7 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 4 }
p12.assignedSurgeonId -- s1
hospital.patients -- p12
d12_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d12_0_0.patient -- p12
p12.dayDemand -- d12_0_0
d12_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d12_0_1.patient -- p12
p12.dayDemand -- d12_0_1
d12_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d12_0_2.patient -- p12
p12.dayDemand -- d12_0_2
d12_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d12_1_0.patient -- p12
p12.dayDemand -- d12_1_0
d12_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d12_1_1.patient -- p12
p12.dayDemand -- d12_1_1
d12_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d12_1_2.patient -- p12
p12.dayDemand -- d12_1_2
d12_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d12_2_0.patient -- p12
p12.dayDemand -- d12_2_0
d12_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d12_2_1.patient -- p12
p12.dayDemand -- d12_2_1
d12_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d12_2_2.patient -- p12
p12.dayDemand -- d12_2_2
d12_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d12_3_0.patient -- p12
p12.dayDemand -- d12_3_0
d12_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d12_3_1.patient -- p12
p12.dayDemand -- d12_3_1
d12_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d12_3_2.patient -- p12
p12.dayDemand -- d12_3_2

p13: Patient { id = 13 isMandatory = true isScheduled = true dueDate = 18 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 4 }
p13.assignedSurgeonId -- s1
hospital.patients -- p13
p13.incompatibleRooms -- r7
d13_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d13_0_0.patient -- p13
p13.dayDemand -- d13_0_0
d13_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d13_0_1.patient -- p13
p13.dayDemand -- d13_0_1
d13_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d13_0_2.patient -- p13
p13.dayDemand -- d13_0_2
d13_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d13_1_0.patient -- p13
p13.dayDemand -- d13_1_0
d13_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d13_1_1.patient -- p13
p13.dayDemand -- d13_1_1
d13_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d13_1_2.patient -- p13
p13.dayDemand -- d13_1_2
d13_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d13_2_0.patient -- p13
p13.dayDemand -- d13_2_0
d13_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d13_2_1.patient -- p13
p13.dayDemand -- d13_2_1
d13_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d13_2_2.patient -- p13
p13.dayDemand -- d13_2_2
d13_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d13_3_0.patient -- p13
p13.dayDemand -- d13_3_0
d13_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d13_3_1.patient -- p13
p13.dayDemand -- d13_3_1
d13_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d13_3_2.patient -- p13
p13.dayDemand -- d13_3_2

p14: Patient { id = 14 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 10 }
p14.assignedSurgeonId -- s1
hospital.patients -- p14
d14_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d14_0_0.patient -- p14
p14.dayDemand -- d14_0_0
d14_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d14_0_1.patient -- p14
p14.dayDemand -- d14_0_1
d14_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d14_0_2.patient -- p14
p14.dayDemand -- d14_0_2
d14_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d14_1_0.patient -- p14
p14.dayDemand -- d14_1_0
d14_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d14_1_1.patient -- p14
p14.dayDemand -- d14_1_1
d14_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d14_1_2.patient -- p14
p14.dayDemand -- d14_1_2
d14_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d14_2_0.patient -- p14
p14.dayDemand -- d14_2_0
d14_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d14_2_1.patient -- p14
p14.dayDemand -- d14_2_1
d14_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d14_2_2.patient -- p14
p14.dayDemand -- d14_2_2
d14_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d14_3_0.patient -- p14
p14.dayDemand -- d14_3_0
d14_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d14_3_1.patient -- p14
p14.dayDemand -- d14_3_1
d14_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d14_3_2.patient -- p14
p14.dayDemand -- d14_3_2
d14_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d14_4_0.patient -- p14
p14.dayDemand -- d14_4_0
d14_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d14_4_1.patient -- p14
p14.dayDemand -- d14_4_1
d14_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d14_4_2.patient -- p14
p14.dayDemand -- d14_4_2
d14_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d14_5_0.patient -- p14
p14.dayDemand -- d14_5_0
d14_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d14_5_1.patient -- p14
p14.dayDemand -- d14_5_1
d14_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d14_5_2.patient -- p14
p14.dayDemand -- d14_5_2
d14_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d14_6_0.patient -- p14
p14.dayDemand -- d14_6_0
d14_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d14_6_1.patient -- p14
p14.dayDemand -- d14_6_1
d14_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d14_6_2.patient -- p14
p14.dayDemand -- d14_6_2
d14_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d14_7_0.patient -- p14
p14.dayDemand -- d14_7_0
d14_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d14_7_1.patient -- p14
p14.dayDemand -- d14_7_1
d14_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d14_7_2.patient -- p14
p14.dayDemand -- d14_7_2
d14_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d14_8_0.patient -- p14
p14.dayDemand -- d14_8_0
d14_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d14_8_1.patient -- p14
p14.dayDemand -- d14_8_1
d14_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d14_8_2.patient -- p14
p14.dayDemand -- d14_8_2
d14_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d14_9_0.patient -- p14
p14.dayDemand -- d14_9_0
d14_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d14_9_1.patient -- p14
p14.dayDemand -- d14_9_1
d14_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d14_9_2.patient -- p14
p14.dayDemand -- d14_9_2

p15: Patient { id = 15 isMandatory = true isScheduled = true dueDate = 17 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 4 }
p15.assignedSurgeonId -- s0
hospital.patients -- p15
p15.incompatibleRooms -- r1
d15_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d15_0_0.patient -- p15
p15.dayDemand -- d15_0_0
d15_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d15_0_1.patient -- p15
p15.dayDemand -- d15_0_1
d15_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d15_0_2.patient -- p15
p15.dayDemand -- d15_0_2
d15_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d15_1_0.patient -- p15
p15.dayDemand -- d15_1_0
d15_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d15_1_1.patient -- p15
p15.dayDemand -- d15_1_1
d15_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d15_1_2.patient -- p15
p15.dayDemand -- d15_1_2
d15_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d15_2_0.patient -- p15
p15.dayDemand -- d15_2_0
d15_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d15_2_1.patient -- p15
p15.dayDemand -- d15_2_1
d15_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d15_2_2.patient -- p15
p15.dayDemand -- d15_2_2
d15_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d15_3_0.patient -- p15
p15.dayDemand -- d15_3_0
d15_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d15_3_1.patient -- p15
p15.dayDemand -- d15_3_1
d15_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d15_3_2.patient -- p15
p15.dayDemand -- d15_3_2

p16: Patient { id = 16 isMandatory = true isScheduled = true dueDate = 11 releaseDate = 3 ageGroup = AgeGroup.ADULT surgeryDuration = 240 gender = Gender.M stayLength = 5 }
p16.assignedSurgeonId -- s0
hospital.patients -- p16
d16_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d16_0_0.patient -- p16
p16.dayDemand -- d16_0_0
d16_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d16_0_1.patient -- p16
p16.dayDemand -- d16_0_1
d16_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d16_0_2.patient -- p16
p16.dayDemand -- d16_0_2
d16_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d16_1_0.patient -- p16
p16.dayDemand -- d16_1_0
d16_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d16_1_1.patient -- p16
p16.dayDemand -- d16_1_1
d16_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d16_1_2.patient -- p16
p16.dayDemand -- d16_1_2
d16_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d16_2_0.patient -- p16
p16.dayDemand -- d16_2_0
d16_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d16_2_1.patient -- p16
p16.dayDemand -- d16_2_1
d16_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d16_2_2.patient -- p16
p16.dayDemand -- d16_2_2
d16_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d16_3_0.patient -- p16
p16.dayDemand -- d16_3_0
d16_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d16_3_1.patient -- p16
p16.dayDemand -- d16_3_1
d16_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d16_3_2.patient -- p16
p16.dayDemand -- d16_3_2
d16_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d16_4_0.patient -- p16
p16.dayDemand -- d16_4_0
d16_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d16_4_1.patient -- p16
p16.dayDemand -- d16_4_1
d16_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d16_4_2.patient -- p16
p16.dayDemand -- d16_4_2

p17: Patient { id = 17 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 5 }
p17.assignedSurgeonId -- s0
hospital.patients -- p17
p17.incompatibleRooms -- r0
p17.incompatibleRooms -- r1
d17_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d17_0_0.patient -- p17
p17.dayDemand -- d17_0_0
d17_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d17_0_1.patient -- p17
p17.dayDemand -- d17_0_1
d17_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d17_0_2.patient -- p17
p17.dayDemand -- d17_0_2
d17_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d17_1_0.patient -- p17
p17.dayDemand -- d17_1_0
d17_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d17_1_1.patient -- p17
p17.dayDemand -- d17_1_1
d17_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d17_1_2.patient -- p17
p17.dayDemand -- d17_1_2
d17_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d17_2_0.patient -- p17
p17.dayDemand -- d17_2_0
d17_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d17_2_1.patient -- p17
p17.dayDemand -- d17_2_1
d17_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d17_2_2.patient -- p17
p17.dayDemand -- d17_2_2
d17_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d17_3_0.patient -- p17
p17.dayDemand -- d17_3_0
d17_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d17_3_1.patient -- p17
p17.dayDemand -- d17_3_1
d17_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d17_3_2.patient -- p17
p17.dayDemand -- d17_3_2
d17_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d17_4_0.patient -- p17
p17.dayDemand -- d17_4_0
d17_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d17_4_1.patient -- p17
p17.dayDemand -- d17_4_1
d17_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d17_4_2.patient -- p17
p17.dayDemand -- d17_4_2

p18: Patient { id = 18 isMandatory = true isScheduled = true dueDate = 15 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.F stayLength = 6 }
p18.assignedSurgeonId -- s1
hospital.patients -- p18
p18.incompatibleRooms -- r4
d18_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d18_0_0.patient -- p18
p18.dayDemand -- d18_0_0
d18_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d18_0_1.patient -- p18
p18.dayDemand -- d18_0_1
d18_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d18_0_2.patient -- p18
p18.dayDemand -- d18_0_2
d18_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d18_1_0.patient -- p18
p18.dayDemand -- d18_1_0
d18_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d18_1_1.patient -- p18
p18.dayDemand -- d18_1_1
d18_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d18_1_2.patient -- p18
p18.dayDemand -- d18_1_2
d18_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d18_2_0.patient -- p18
p18.dayDemand -- d18_2_0
d18_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d18_2_1.patient -- p18
p18.dayDemand -- d18_2_1
d18_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d18_2_2.patient -- p18
p18.dayDemand -- d18_2_2
d18_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d18_3_0.patient -- p18
p18.dayDemand -- d18_3_0
d18_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d18_3_1.patient -- p18
p18.dayDemand -- d18_3_1
d18_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d18_3_2.patient -- p18
p18.dayDemand -- d18_3_2
d18_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d18_4_0.patient -- p18
p18.dayDemand -- d18_4_0
d18_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d18_4_1.patient -- p18
p18.dayDemand -- d18_4_1
d18_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d18_4_2.patient -- p18
p18.dayDemand -- d18_4_2
d18_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d18_5_0.patient -- p18
p18.dayDemand -- d18_5_0
d18_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d18_5_1.patient -- p18
p18.dayDemand -- d18_5_1
d18_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d18_5_2.patient -- p18
p18.dayDemand -- d18_5_2

p19: Patient { id = 19 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 2 ageGroup = AgeGroup.YOUNG surgeryDuration = 180 gender = Gender.F stayLength = 4 }
p19.assignedSurgeonId -- s1
hospital.patients -- p19
d19_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d19_0_0.patient -- p19
p19.dayDemand -- d19_0_0
d19_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d19_0_1.patient -- p19
p19.dayDemand -- d19_0_1
d19_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d19_0_2.patient -- p19
p19.dayDemand -- d19_0_2
d19_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d19_1_0.patient -- p19
p19.dayDemand -- d19_1_0
d19_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d19_1_1.patient -- p19
p19.dayDemand -- d19_1_1
d19_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d19_1_2.patient -- p19
p19.dayDemand -- d19_1_2
d19_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d19_2_0.patient -- p19
p19.dayDemand -- d19_2_0
d19_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d19_2_1.patient -- p19
p19.dayDemand -- d19_2_1
d19_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d19_2_2.patient -- p19
p19.dayDemand -- d19_2_2
d19_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d19_3_0.patient -- p19
p19.dayDemand -- d19_3_0
d19_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d19_3_1.patient -- p19
p19.dayDemand -- d19_3_1
d19_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d19_3_2.patient -- p19
p19.dayDemand -- d19_3_2

p20: Patient { id = 20 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.F stayLength = 4 }
p20.assignedSurgeonId -- s0
hospital.patients -- p20
d20_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d20_0_0.patient -- p20
p20.dayDemand -- d20_0_0
d20_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d20_0_1.patient -- p20
p20.dayDemand -- d20_0_1
d20_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d20_0_2.patient -- p20
p20.dayDemand -- d20_0_2
d20_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d20_1_0.patient -- p20
p20.dayDemand -- d20_1_0
d20_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d20_1_1.patient -- p20
p20.dayDemand -- d20_1_1
d20_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d20_1_2.patient -- p20
p20.dayDemand -- d20_1_2
d20_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d20_2_0.patient -- p20
p20.dayDemand -- d20_2_0
d20_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d20_2_1.patient -- p20
p20.dayDemand -- d20_2_1
d20_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d20_2_2.patient -- p20
p20.dayDemand -- d20_2_2
d20_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d20_3_0.patient -- p20
p20.dayDemand -- d20_3_0
d20_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d20_3_1.patient -- p20
p20.dayDemand -- d20_3_1
d20_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d20_3_2.patient -- p20
p20.dayDemand -- d20_3_2

p21: Patient { id = 21 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 16 ageGroup = AgeGroup.YOUNG surgeryDuration = 90 gender = Gender.M stayLength = 7 }
p21.assignedSurgeonId -- s0
hospital.patients -- p21
d21_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d21_0_0.patient -- p21
p21.dayDemand -- d21_0_0
d21_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d21_0_1.patient -- p21
p21.dayDemand -- d21_0_1
d21_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d21_0_2.patient -- p21
p21.dayDemand -- d21_0_2
d21_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d21_1_0.patient -- p21
p21.dayDemand -- d21_1_0
d21_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d21_1_1.patient -- p21
p21.dayDemand -- d21_1_1
d21_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d21_1_2.patient -- p21
p21.dayDemand -- d21_1_2
d21_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d21_2_0.patient -- p21
p21.dayDemand -- d21_2_0
d21_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d21_2_1.patient -- p21
p21.dayDemand -- d21_2_1
d21_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d21_2_2.patient -- p21
p21.dayDemand -- d21_2_2
d21_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d21_3_0.patient -- p21
p21.dayDemand -- d21_3_0
d21_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d21_3_1.patient -- p21
p21.dayDemand -- d21_3_1
d21_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d21_3_2.patient -- p21
p21.dayDemand -- d21_3_2
d21_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d21_4_0.patient -- p21
p21.dayDemand -- d21_4_0
d21_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d21_4_1.patient -- p21
p21.dayDemand -- d21_4_1
d21_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d21_4_2.patient -- p21
p21.dayDemand -- d21_4_2
d21_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d21_5_0.patient -- p21
p21.dayDemand -- d21_5_0
d21_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d21_5_1.patient -- p21
p21.dayDemand -- d21_5_1
d21_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d21_5_2.patient -- p21
p21.dayDemand -- d21_5_2
d21_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d21_6_0.patient -- p21
p21.dayDemand -- d21_6_0
d21_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d21_6_1.patient -- p21
p21.dayDemand -- d21_6_1
d21_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d21_6_2.patient -- p21
p21.dayDemand -- d21_6_2

p22: Patient { id = 22 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 2 ageGroup = AgeGroup.ADULT surgeryDuration = 300 gender = Gender.F stayLength = 12 }
p22.assignedSurgeonId -- s1
hospital.patients -- p22
p22.incompatibleRooms -- r3
d22_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_0_0.patient -- p22
p22.dayDemand -- d22_0_0
d22_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_0_1.patient -- p22
p22.dayDemand -- d22_0_1
d22_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d22_0_2.patient -- p22
p22.dayDemand -- d22_0_2
d22_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d22_1_0.patient -- p22
p22.dayDemand -- d22_1_0
d22_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d22_1_1.patient -- p22
p22.dayDemand -- d22_1_1
d22_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d22_1_2.patient -- p22
p22.dayDemand -- d22_1_2
d22_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_2_0.patient -- p22
p22.dayDemand -- d22_2_0
d22_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d22_2_1.patient -- p22
p22.dayDemand -- d22_2_1
d22_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d22_2_2.patient -- p22
p22.dayDemand -- d22_2_2
d22_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d22_3_0.patient -- p22
p22.dayDemand -- d22_3_0
d22_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d22_3_1.patient -- p22
p22.dayDemand -- d22_3_1
d22_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d22_3_2.patient -- p22
p22.dayDemand -- d22_3_2
d22_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d22_4_0.patient -- p22
p22.dayDemand -- d22_4_0
d22_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d22_4_1.patient -- p22
p22.dayDemand -- d22_4_1
d22_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d22_4_2.patient -- p22
p22.dayDemand -- d22_4_2
d22_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_5_0.patient -- p22
p22.dayDemand -- d22_5_0
d22_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_5_1.patient -- p22
p22.dayDemand -- d22_5_1
d22_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d22_5_2.patient -- p22
p22.dayDemand -- d22_5_2
d22_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_6_0.patient -- p22
p22.dayDemand -- d22_6_0
d22_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_6_1.patient -- p22
p22.dayDemand -- d22_6_1
d22_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d22_6_2.patient -- p22
p22.dayDemand -- d22_6_2
d22_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d22_7_0.patient -- p22
p22.dayDemand -- d22_7_0
d22_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d22_7_1.patient -- p22
p22.dayDemand -- d22_7_1
d22_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d22_7_2.patient -- p22
p22.dayDemand -- d22_7_2
d22_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_8_0.patient -- p22
p22.dayDemand -- d22_8_0
d22_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d22_8_1.patient -- p22
p22.dayDemand -- d22_8_1
d22_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d22_8_2.patient -- p22
p22.dayDemand -- d22_8_2
d22_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d22_9_0.patient -- p22
p22.dayDemand -- d22_9_0
d22_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_9_1.patient -- p22
p22.dayDemand -- d22_9_1
d22_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d22_9_2.patient -- p22
p22.dayDemand -- d22_9_2
d22_10_0: PatientDayDemand { relativeDay = 10 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d22_10_0.patient -- p22
p22.dayDemand -- d22_10_0
d22_10_1: PatientDayDemand { relativeDay = 10 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d22_10_1.patient -- p22
p22.dayDemand -- d22_10_1
d22_10_2: PatientDayDemand { relativeDay = 10 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d22_10_2.patient -- p22
p22.dayDemand -- d22_10_2
d22_11_0: PatientDayDemand { relativeDay = 11 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d22_11_0.patient -- p22
p22.dayDemand -- d22_11_0
d22_11_1: PatientDayDemand { relativeDay = 11 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d22_11_1.patient -- p22
p22.dayDemand -- d22_11_1
d22_11_2: PatientDayDemand { relativeDay = 11 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d22_11_2.patient -- p22
p22.dayDemand -- d22_11_2

p23: Patient { id = 23 isMandatory = true isScheduled = true dueDate = 18 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.F stayLength = 5 }
p23.assignedSurgeonId -- s1
hospital.patients -- p23
p23.incompatibleRooms -- r6
p23.incompatibleRooms -- r8
d23_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d23_0_0.patient -- p23
p23.dayDemand -- d23_0_0
d23_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d23_0_1.patient -- p23
p23.dayDemand -- d23_0_1
d23_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d23_0_2.patient -- p23
p23.dayDemand -- d23_0_2
d23_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d23_1_0.patient -- p23
p23.dayDemand -- d23_1_0
d23_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d23_1_1.patient -- p23
p23.dayDemand -- d23_1_1
d23_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d23_1_2.patient -- p23
p23.dayDemand -- d23_1_2
d23_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d23_2_0.patient -- p23
p23.dayDemand -- d23_2_0
d23_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d23_2_1.patient -- p23
p23.dayDemand -- d23_2_1
d23_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d23_2_2.patient -- p23
p23.dayDemand -- d23_2_2
d23_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d23_3_0.patient -- p23
p23.dayDemand -- d23_3_0
d23_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d23_3_1.patient -- p23
p23.dayDemand -- d23_3_1
d23_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d23_3_2.patient -- p23
p23.dayDemand -- d23_3_2
d23_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d23_4_0.patient -- p23
p23.dayDemand -- d23_4_0
d23_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d23_4_1.patient -- p23
p23.dayDemand -- d23_4_1
d23_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d23_4_2.patient -- p23
p23.dayDemand -- d23_4_2

p24: Patient { id = 24 isMandatory = true isScheduled = true dueDate = 4 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 7 }
p24.assignedSurgeonId -- s1
hospital.patients -- p24
d24_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d24_0_0.patient -- p24
p24.dayDemand -- d24_0_0
d24_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d24_0_1.patient -- p24
p24.dayDemand -- d24_0_1
d24_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d24_0_2.patient -- p24
p24.dayDemand -- d24_0_2
d24_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d24_1_0.patient -- p24
p24.dayDemand -- d24_1_0
d24_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d24_1_1.patient -- p24
p24.dayDemand -- d24_1_1
d24_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d24_1_2.patient -- p24
p24.dayDemand -- d24_1_2
d24_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d24_2_0.patient -- p24
p24.dayDemand -- d24_2_0
d24_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d24_2_1.patient -- p24
p24.dayDemand -- d24_2_1
d24_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d24_2_2.patient -- p24
p24.dayDemand -- d24_2_2
d24_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d24_3_0.patient -- p24
p24.dayDemand -- d24_3_0
d24_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d24_3_1.patient -- p24
p24.dayDemand -- d24_3_1
d24_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d24_3_2.patient -- p24
p24.dayDemand -- d24_3_2
d24_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d24_4_0.patient -- p24
p24.dayDemand -- d24_4_0
d24_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d24_4_1.patient -- p24
p24.dayDemand -- d24_4_1
d24_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d24_4_2.patient -- p24
p24.dayDemand -- d24_4_2
d24_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d24_5_0.patient -- p24
p24.dayDemand -- d24_5_0
d24_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d24_5_1.patient -- p24
p24.dayDemand -- d24_5_1
d24_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d24_5_2.patient -- p24
p24.dayDemand -- d24_5_2
d24_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d24_6_0.patient -- p24
p24.dayDemand -- d24_6_0
d24_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d24_6_1.patient -- p24
p24.dayDemand -- d24_6_1
d24_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d24_6_2.patient -- p24
p24.dayDemand -- d24_6_2

p25: Patient { id = 25 isMandatory = true isScheduled = true dueDate = 14 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 12 }
p25.assignedSurgeonId -- s0
hospital.patients -- p25
p25.incompatibleRooms -- r2
p25.incompatibleRooms -- r4
d25_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d25_0_0.patient -- p25
p25.dayDemand -- d25_0_0
d25_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d25_0_1.patient -- p25
p25.dayDemand -- d25_0_1
d25_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d25_0_2.patient -- p25
p25.dayDemand -- d25_0_2
d25_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d25_1_0.patient -- p25
p25.dayDemand -- d25_1_0
d25_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d25_1_1.patient -- p25
p25.dayDemand -- d25_1_1
d25_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d25_1_2.patient -- p25
p25.dayDemand -- d25_1_2
d25_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d25_2_0.patient -- p25
p25.dayDemand -- d25_2_0
d25_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d25_2_1.patient -- p25
p25.dayDemand -- d25_2_1
d25_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d25_2_2.patient -- p25
p25.dayDemand -- d25_2_2
d25_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d25_3_0.patient -- p25
p25.dayDemand -- d25_3_0
d25_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d25_3_1.patient -- p25
p25.dayDemand -- d25_3_1
d25_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d25_3_2.patient -- p25
p25.dayDemand -- d25_3_2
d25_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d25_4_0.patient -- p25
p25.dayDemand -- d25_4_0
d25_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d25_4_1.patient -- p25
p25.dayDemand -- d25_4_1
d25_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d25_4_2.patient -- p25
p25.dayDemand -- d25_4_2
d25_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d25_5_0.patient -- p25
p25.dayDemand -- d25_5_0
d25_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d25_5_1.patient -- p25
p25.dayDemand -- d25_5_1
d25_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d25_5_2.patient -- p25
p25.dayDemand -- d25_5_2
d25_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d25_6_0.patient -- p25
p25.dayDemand -- d25_6_0
d25_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d25_6_1.patient -- p25
p25.dayDemand -- d25_6_1
d25_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d25_6_2.patient -- p25
p25.dayDemand -- d25_6_2
d25_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d25_7_0.patient -- p25
p25.dayDemand -- d25_7_0
d25_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d25_7_1.patient -- p25
p25.dayDemand -- d25_7_1
d25_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d25_7_2.patient -- p25
p25.dayDemand -- d25_7_2
d25_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d25_8_0.patient -- p25
p25.dayDemand -- d25_8_0
d25_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d25_8_1.patient -- p25
p25.dayDemand -- d25_8_1
d25_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d25_8_2.patient -- p25
p25.dayDemand -- d25_8_2
d25_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d25_9_0.patient -- p25
p25.dayDemand -- d25_9_0
d25_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d25_9_1.patient -- p25
p25.dayDemand -- d25_9_1
d25_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d25_9_2.patient -- p25
p25.dayDemand -- d25_9_2
d25_10_0: PatientDayDemand { relativeDay = 10 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d25_10_0.patient -- p25
p25.dayDemand -- d25_10_0
d25_10_1: PatientDayDemand { relativeDay = 10 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d25_10_1.patient -- p25
p25.dayDemand -- d25_10_1
d25_10_2: PatientDayDemand { relativeDay = 10 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d25_10_2.patient -- p25
p25.dayDemand -- d25_10_2
d25_11_0: PatientDayDemand { relativeDay = 11 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d25_11_0.patient -- p25
p25.dayDemand -- d25_11_0
d25_11_1: PatientDayDemand { relativeDay = 11 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d25_11_1.patient -- p25
p25.dayDemand -- d25_11_1
d25_11_2: PatientDayDemand { relativeDay = 11 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d25_11_2.patient -- p25
p25.dayDemand -- d25_11_2

p26: Patient { id = 26 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 7 }
p26.assignedSurgeonId -- s0
hospital.patients -- p26
p26.incompatibleRooms -- r2
d26_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d26_0_0.patient -- p26
p26.dayDemand -- d26_0_0
d26_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d26_0_1.patient -- p26
p26.dayDemand -- d26_0_1
d26_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d26_0_2.patient -- p26
p26.dayDemand -- d26_0_2
d26_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d26_1_0.patient -- p26
p26.dayDemand -- d26_1_0
d26_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d26_1_1.patient -- p26
p26.dayDemand -- d26_1_1
d26_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d26_1_2.patient -- p26
p26.dayDemand -- d26_1_2
d26_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d26_2_0.patient -- p26
p26.dayDemand -- d26_2_0
d26_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d26_2_1.patient -- p26
p26.dayDemand -- d26_2_1
d26_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d26_2_2.patient -- p26
p26.dayDemand -- d26_2_2
d26_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d26_3_0.patient -- p26
p26.dayDemand -- d26_3_0
d26_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d26_3_1.patient -- p26
p26.dayDemand -- d26_3_1
d26_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d26_3_2.patient -- p26
p26.dayDemand -- d26_3_2
d26_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d26_4_0.patient -- p26
p26.dayDemand -- d26_4_0
d26_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d26_4_1.patient -- p26
p26.dayDemand -- d26_4_1
d26_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d26_4_2.patient -- p26
p26.dayDemand -- d26_4_2
d26_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d26_5_0.patient -- p26
p26.dayDemand -- d26_5_0
d26_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d26_5_1.patient -- p26
p26.dayDemand -- d26_5_1
d26_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d26_5_2.patient -- p26
p26.dayDemand -- d26_5_2
d26_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d26_6_0.patient -- p26
p26.dayDemand -- d26_6_0
d26_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d26_6_1.patient -- p26
p26.dayDemand -- d26_6_1
d26_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d26_6_2.patient -- p26
p26.dayDemand -- d26_6_2

p27: Patient { id = 27 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 3 }
p27.assignedSurgeonId -- s0
hospital.patients -- p27
p27.incompatibleRooms -- r7
d27_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d27_0_0.patient -- p27
p27.dayDemand -- d27_0_0
d27_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d27_0_1.patient -- p27
p27.dayDemand -- d27_0_1
d27_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d27_0_2.patient -- p27
p27.dayDemand -- d27_0_2
d27_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d27_1_0.patient -- p27
p27.dayDemand -- d27_1_0
d27_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d27_1_1.patient -- p27
p27.dayDemand -- d27_1_1
d27_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d27_1_2.patient -- p27
p27.dayDemand -- d27_1_2
d27_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d27_2_0.patient -- p27
p27.dayDemand -- d27_2_0
d27_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d27_2_1.patient -- p27
p27.dayDemand -- d27_2_1
d27_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d27_2_2.patient -- p27
p27.dayDemand -- d27_2_2

p28: Patient { id = 28 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.F stayLength = 4 }
p28.assignedSurgeonId -- s1
hospital.patients -- p28
p28.incompatibleRooms -- r2
p28.incompatibleRooms -- r6
d28_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d28_0_0.patient -- p28
p28.dayDemand -- d28_0_0
d28_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d28_0_1.patient -- p28
p28.dayDemand -- d28_0_1
d28_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d28_0_2.patient -- p28
p28.dayDemand -- d28_0_2
d28_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d28_1_0.patient -- p28
p28.dayDemand -- d28_1_0
d28_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d28_1_1.patient -- p28
p28.dayDemand -- d28_1_1
d28_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d28_1_2.patient -- p28
p28.dayDemand -- d28_1_2
d28_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d28_2_0.patient -- p28
p28.dayDemand -- d28_2_0
d28_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d28_2_1.patient -- p28
p28.dayDemand -- d28_2_1
d28_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d28_2_2.patient -- p28
p28.dayDemand -- d28_2_2
d28_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d28_3_0.patient -- p28
p28.dayDemand -- d28_3_0
d28_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d28_3_1.patient -- p28
p28.dayDemand -- d28_3_1
d28_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d28_3_2.patient -- p28
p28.dayDemand -- d28_3_2

p29: Patient { id = 29 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 9 ageGroup = AgeGroup.ADULT surgeryDuration = 240 gender = Gender.F stayLength = 4 }
p29.assignedSurgeonId -- s0
hospital.patients -- p29
d29_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d29_0_0.patient -- p29
p29.dayDemand -- d29_0_0
d29_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d29_0_1.patient -- p29
p29.dayDemand -- d29_0_1
d29_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d29_0_2.patient -- p29
p29.dayDemand -- d29_0_2
d29_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d29_1_0.patient -- p29
p29.dayDemand -- d29_1_0
d29_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d29_1_1.patient -- p29
p29.dayDemand -- d29_1_1
d29_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d29_1_2.patient -- p29
p29.dayDemand -- d29_1_2
d29_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d29_2_0.patient -- p29
p29.dayDemand -- d29_2_0
d29_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d29_2_1.patient -- p29
p29.dayDemand -- d29_2_1
d29_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d29_2_2.patient -- p29
p29.dayDemand -- d29_2_2
d29_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d29_3_0.patient -- p29
p29.dayDemand -- d29_3_0
d29_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d29_3_1.patient -- p29
p29.dayDemand -- d29_3_1
d29_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d29_3_2.patient -- p29
p29.dayDemand -- d29_3_2

p30: Patient { id = 30 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 11 ageGroup = AgeGroup.ADULT surgeryDuration = 90 gender = Gender.M stayLength = 4 }
p30.assignedSurgeonId -- s0
hospital.patients -- p30
p30.incompatibleRooms -- r5
d30_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d30_0_0.patient -- p30
p30.dayDemand -- d30_0_0
d30_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d30_0_1.patient -- p30
p30.dayDemand -- d30_0_1
d30_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d30_0_2.patient -- p30
p30.dayDemand -- d30_0_2
d30_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d30_1_0.patient -- p30
p30.dayDemand -- d30_1_0
d30_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d30_1_1.patient -- p30
p30.dayDemand -- d30_1_1
d30_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d30_1_2.patient -- p30
p30.dayDemand -- d30_1_2
d30_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d30_2_0.patient -- p30
p30.dayDemand -- d30_2_0
d30_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d30_2_1.patient -- p30
p30.dayDemand -- d30_2_1
d30_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d30_2_2.patient -- p30
p30.dayDemand -- d30_2_2
d30_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d30_3_0.patient -- p30
p30.dayDemand -- d30_3_0
d30_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d30_3_1.patient -- p30
p30.dayDemand -- d30_3_1
d30_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d30_3_2.patient -- p30
p30.dayDemand -- d30_3_2

p31: Patient { id = 31 isMandatory = true isScheduled = true dueDate = 9 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 3 }
p31.assignedSurgeonId -- s0
hospital.patients -- p31
p31.incompatibleRooms -- r0
p31.incompatibleRooms -- r1
p31.incompatibleRooms -- r5
p31.incompatibleRooms -- r6
d31_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d31_0_0.patient -- p31
p31.dayDemand -- d31_0_0
d31_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d31_0_1.patient -- p31
p31.dayDemand -- d31_0_1
d31_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d31_0_2.patient -- p31
p31.dayDemand -- d31_0_2
d31_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d31_1_0.patient -- p31
p31.dayDemand -- d31_1_0
d31_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d31_1_1.patient -- p31
p31.dayDemand -- d31_1_1
d31_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d31_1_2.patient -- p31
p31.dayDemand -- d31_1_2
d31_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d31_2_0.patient -- p31
p31.dayDemand -- d31_2_0
d31_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d31_2_1.patient -- p31
p31.dayDemand -- d31_2_1
d31_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d31_2_2.patient -- p31
p31.dayDemand -- d31_2_2

p32: Patient { id = 32 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 9 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.F stayLength = 3 }
p32.assignedSurgeonId -- s0
hospital.patients -- p32
p32.incompatibleRooms -- r0
p32.incompatibleRooms -- r4
p32.incompatibleRooms -- r5
d32_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d32_0_0.patient -- p32
p32.dayDemand -- d32_0_0
d32_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d32_0_1.patient -- p32
p32.dayDemand -- d32_0_1
d32_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d32_0_2.patient -- p32
p32.dayDemand -- d32_0_2
d32_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d32_1_0.patient -- p32
p32.dayDemand -- d32_1_0
d32_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d32_1_1.patient -- p32
p32.dayDemand -- d32_1_1
d32_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d32_1_2.patient -- p32
p32.dayDemand -- d32_1_2
d32_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d32_2_0.patient -- p32
p32.dayDemand -- d32_2_0
d32_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d32_2_1.patient -- p32
p32.dayDemand -- d32_2_1
d32_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d32_2_2.patient -- p32
p32.dayDemand -- d32_2_2

p33: Patient { id = 33 isMandatory = true isScheduled = true dueDate = 8 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p33.assignedSurgeonId -- s1
hospital.patients -- p33
p33.incompatibleRooms -- r0
p33.incompatibleRooms -- r5
p33.incompatibleRooms -- r6
d33_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d33_0_0.patient -- p33
p33.dayDemand -- d33_0_0
d33_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d33_0_1.patient -- p33
p33.dayDemand -- d33_0_1
d33_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d33_0_2.patient -- p33
p33.dayDemand -- d33_0_2
d33_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d33_1_0.patient -- p33
p33.dayDemand -- d33_1_0
d33_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d33_1_1.patient -- p33
p33.dayDemand -- d33_1_1
d33_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d33_1_2.patient -- p33
p33.dayDemand -- d33_1_2
d33_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d33_2_0.patient -- p33
p33.dayDemand -- d33_2_0
d33_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d33_2_1.patient -- p33
p33.dayDemand -- d33_2_1
d33_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d33_2_2.patient -- p33
p33.dayDemand -- d33_2_2
d33_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d33_3_0.patient -- p33
p33.dayDemand -- d33_3_0
d33_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d33_3_1.patient -- p33
p33.dayDemand -- d33_3_1
d33_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d33_3_2.patient -- p33
p33.dayDemand -- d33_3_2

p34: Patient { id = 34 isMandatory = true isScheduled = true dueDate = 17 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 3 }
p34.assignedSurgeonId -- s0
hospital.patients -- p34
p34.incompatibleRooms -- r7
d34_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d34_0_0.patient -- p34
p34.dayDemand -- d34_0_0
d34_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d34_0_1.patient -- p34
p34.dayDemand -- d34_0_1
d34_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d34_0_2.patient -- p34
p34.dayDemand -- d34_0_2
d34_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d34_1_0.patient -- p34
p34.dayDemand -- d34_1_0
d34_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d34_1_1.patient -- p34
p34.dayDemand -- d34_1_1
d34_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d34_1_2.patient -- p34
p34.dayDemand -- d34_1_2
d34_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d34_2_0.patient -- p34
p34.dayDemand -- d34_2_0
d34_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d34_2_1.patient -- p34
p34.dayDemand -- d34_2_1
d34_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d34_2_2.patient -- p34
p34.dayDemand -- d34_2_2

p35: Patient { id = 35 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p35.assignedSurgeonId -- s1
hospital.patients -- p35
d35_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d35_0_0.patient -- p35
p35.dayDemand -- d35_0_0
d35_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d35_0_1.patient -- p35
p35.dayDemand -- d35_0_1
d35_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d35_0_2.patient -- p35
p35.dayDemand -- d35_0_2
d35_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d35_1_0.patient -- p35
p35.dayDemand -- d35_1_0
d35_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d35_1_1.patient -- p35
p35.dayDemand -- d35_1_1
d35_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d35_1_2.patient -- p35
p35.dayDemand -- d35_1_2
d35_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d35_2_0.patient -- p35
p35.dayDemand -- d35_2_0
d35_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d35_2_1.patient -- p35
p35.dayDemand -- d35_2_1
d35_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d35_2_2.patient -- p35
p35.dayDemand -- d35_2_2
d35_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d35_3_0.patient -- p35
p35.dayDemand -- d35_3_0
d35_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d35_3_1.patient -- p35
p35.dayDemand -- d35_3_1
d35_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d35_3_2.patient -- p35
p35.dayDemand -- d35_3_2

p36: Patient { id = 36 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 4 }
p36.assignedSurgeonId -- s1
hospital.patients -- p36
p36.incompatibleRooms -- r5
d36_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d36_0_0.patient -- p36
p36.dayDemand -- d36_0_0
d36_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d36_0_1.patient -- p36
p36.dayDemand -- d36_0_1
d36_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d36_0_2.patient -- p36
p36.dayDemand -- d36_0_2
d36_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d36_1_0.patient -- p36
p36.dayDemand -- d36_1_0
d36_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d36_1_1.patient -- p36
p36.dayDemand -- d36_1_1
d36_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d36_1_2.patient -- p36
p36.dayDemand -- d36_1_2
d36_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d36_2_0.patient -- p36
p36.dayDemand -- d36_2_0
d36_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d36_2_1.patient -- p36
p36.dayDemand -- d36_2_1
d36_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d36_2_2.patient -- p36
p36.dayDemand -- d36_2_2
d36_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d36_3_0.patient -- p36
p36.dayDemand -- d36_3_0
d36_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d36_3_1.patient -- p36
p36.dayDemand -- d36_3_1
d36_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d36_3_2.patient -- p36
p36.dayDemand -- d36_3_2

p37: Patient { id = 37 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ADULT surgeryDuration = 90 gender = Gender.M stayLength = 2 }
p37.assignedSurgeonId -- s0
hospital.patients -- p37
d37_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d37_0_0.patient -- p37
p37.dayDemand -- d37_0_0
d37_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d37_0_1.patient -- p37
p37.dayDemand -- d37_0_1
d37_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d37_0_2.patient -- p37
p37.dayDemand -- d37_0_2
d37_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 1 skillLevelRequired = 3 }
d37_1_0.patient -- p37
p37.dayDemand -- d37_1_0
d37_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d37_1_1.patient -- p37
p37.dayDemand -- d37_1_1
d37_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d37_1_2.patient -- p37
p37.dayDemand -- d37_1_2

p38: Patient { id = 38 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 16 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.M stayLength = 6 }
p38.assignedSurgeonId -- s1
hospital.patients -- p38
p38.incompatibleRooms -- r0
d38_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d38_0_0.patient -- p38
p38.dayDemand -- d38_0_0
d38_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d38_0_1.patient -- p38
p38.dayDemand -- d38_0_1
d38_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d38_0_2.patient -- p38
p38.dayDemand -- d38_0_2
d38_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d38_1_0.patient -- p38
p38.dayDemand -- d38_1_0
d38_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d38_1_1.patient -- p38
p38.dayDemand -- d38_1_1
d38_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d38_1_2.patient -- p38
p38.dayDemand -- d38_1_2
d38_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d38_2_0.patient -- p38
p38.dayDemand -- d38_2_0
d38_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d38_2_1.patient -- p38
p38.dayDemand -- d38_2_1
d38_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d38_2_2.patient -- p38
p38.dayDemand -- d38_2_2
d38_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d38_3_0.patient -- p38
p38.dayDemand -- d38_3_0
d38_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d38_3_1.patient -- p38
p38.dayDemand -- d38_3_1
d38_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d38_3_2.patient -- p38
p38.dayDemand -- d38_3_2
d38_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d38_4_0.patient -- p38
p38.dayDemand -- d38_4_0
d38_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d38_4_1.patient -- p38
p38.dayDemand -- d38_4_1
d38_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d38_4_2.patient -- p38
p38.dayDemand -- d38_4_2
d38_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d38_5_0.patient -- p38
p38.dayDemand -- d38_5_0
d38_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d38_5_1.patient -- p38
p38.dayDemand -- d38_5_1
d38_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d38_5_2.patient -- p38
p38.dayDemand -- d38_5_2

p39: Patient { id = 39 isMandatory = true isScheduled = true dueDate = 18 releaseDate = 4 ageGroup = AgeGroup.BABY surgeryDuration = 120 gender = Gender.F stayLength = 3 }
p39.assignedSurgeonId -- s1
hospital.patients -- p39
d39_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d39_0_0.patient -- p39
p39.dayDemand -- d39_0_0
d39_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d39_0_1.patient -- p39
p39.dayDemand -- d39_0_1
d39_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d39_0_2.patient -- p39
p39.dayDemand -- d39_0_2
d39_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d39_1_0.patient -- p39
p39.dayDemand -- d39_1_0
d39_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d39_1_1.patient -- p39
p39.dayDemand -- d39_1_1
d39_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d39_1_2.patient -- p39
p39.dayDemand -- d39_1_2
d39_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d39_2_0.patient -- p39
p39.dayDemand -- d39_2_0
d39_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d39_2_1.patient -- p39
p39.dayDemand -- d39_2_1
d39_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d39_2_2.patient -- p39
p39.dayDemand -- d39_2_2

p40: Patient { id = 40 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.F stayLength = 8 }
p40.assignedSurgeonId -- s1
hospital.patients -- p40
p40.incompatibleRooms -- r6
p40.incompatibleRooms -- r7
d40_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d40_0_0.patient -- p40
p40.dayDemand -- d40_0_0
d40_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d40_0_1.patient -- p40
p40.dayDemand -- d40_0_1
d40_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d40_0_2.patient -- p40
p40.dayDemand -- d40_0_2
d40_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d40_1_0.patient -- p40
p40.dayDemand -- d40_1_0
d40_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d40_1_1.patient -- p40
p40.dayDemand -- d40_1_1
d40_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d40_1_2.patient -- p40
p40.dayDemand -- d40_1_2
d40_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d40_2_0.patient -- p40
p40.dayDemand -- d40_2_0
d40_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d40_2_1.patient -- p40
p40.dayDemand -- d40_2_1
d40_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d40_2_2.patient -- p40
p40.dayDemand -- d40_2_2
d40_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d40_3_0.patient -- p40
p40.dayDemand -- d40_3_0
d40_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d40_3_1.patient -- p40
p40.dayDemand -- d40_3_1
d40_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d40_3_2.patient -- p40
p40.dayDemand -- d40_3_2
d40_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d40_4_0.patient -- p40
p40.dayDemand -- d40_4_0
d40_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d40_4_1.patient -- p40
p40.dayDemand -- d40_4_1
d40_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d40_4_2.patient -- p40
p40.dayDemand -- d40_4_2
d40_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d40_5_0.patient -- p40
p40.dayDemand -- d40_5_0
d40_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d40_5_1.patient -- p40
p40.dayDemand -- d40_5_1
d40_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d40_5_2.patient -- p40
p40.dayDemand -- d40_5_2
d40_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d40_6_0.patient -- p40
p40.dayDemand -- d40_6_0
d40_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d40_6_1.patient -- p40
p40.dayDemand -- d40_6_1
d40_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d40_6_2.patient -- p40
p40.dayDemand -- d40_6_2
d40_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d40_7_0.patient -- p40
p40.dayDemand -- d40_7_0
d40_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d40_7_1.patient -- p40
p40.dayDemand -- d40_7_1
d40_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d40_7_2.patient -- p40
p40.dayDemand -- d40_7_2

p41: Patient { id = 41 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 9 ageGroup = AgeGroup.ADULT surgeryDuration = 240 gender = Gender.F stayLength = 5 }
p41.assignedSurgeonId -- s0
hospital.patients -- p41
p41.incompatibleRooms -- r5
p41.incompatibleRooms -- r6
d41_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d41_0_0.patient -- p41
p41.dayDemand -- d41_0_0
d41_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d41_0_1.patient -- p41
p41.dayDemand -- d41_0_1
d41_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d41_0_2.patient -- p41
p41.dayDemand -- d41_0_2
d41_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d41_1_0.patient -- p41
p41.dayDemand -- d41_1_0
d41_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d41_1_1.patient -- p41
p41.dayDemand -- d41_1_1
d41_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d41_1_2.patient -- p41
p41.dayDemand -- d41_1_2
d41_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d41_2_0.patient -- p41
p41.dayDemand -- d41_2_0
d41_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d41_2_1.patient -- p41
p41.dayDemand -- d41_2_1
d41_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d41_2_2.patient -- p41
p41.dayDemand -- d41_2_2
d41_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d41_3_0.patient -- p41
p41.dayDemand -- d41_3_0
d41_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d41_3_1.patient -- p41
p41.dayDemand -- d41_3_1
d41_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d41_3_2.patient -- p41
p41.dayDemand -- d41_3_2
d41_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d41_4_0.patient -- p41
p41.dayDemand -- d41_4_0
d41_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d41_4_1.patient -- p41
p41.dayDemand -- d41_4_1
d41_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d41_4_2.patient -- p41
p41.dayDemand -- d41_4_2

p42: Patient { id = 42 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 5 ageGroup = AgeGroup.YOUNG surgeryDuration = 120 gender = Gender.M stayLength = 3 }
p42.assignedSurgeonId -- s1
hospital.patients -- p42
d42_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d42_0_0.patient -- p42
p42.dayDemand -- d42_0_0
d42_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d42_0_1.patient -- p42
p42.dayDemand -- d42_0_1
d42_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d42_0_2.patient -- p42
p42.dayDemand -- d42_0_2
d42_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d42_1_0.patient -- p42
p42.dayDemand -- d42_1_0
d42_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d42_1_1.patient -- p42
p42.dayDemand -- d42_1_1
d42_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d42_1_2.patient -- p42
p42.dayDemand -- d42_1_2
d42_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d42_2_0.patient -- p42
p42.dayDemand -- d42_2_0
d42_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d42_2_1.patient -- p42
p42.dayDemand -- d42_2_1
d42_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d42_2_2.patient -- p42
p42.dayDemand -- d42_2_2

p43: Patient { id = 43 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 14 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.M stayLength = 5 }
p43.assignedSurgeonId -- s0
hospital.patients -- p43
d43_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d43_0_0.patient -- p43
p43.dayDemand -- d43_0_0
d43_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d43_0_1.patient -- p43
p43.dayDemand -- d43_0_1
d43_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d43_0_2.patient -- p43
p43.dayDemand -- d43_0_2
d43_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d43_1_0.patient -- p43
p43.dayDemand -- d43_1_0
d43_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d43_1_1.patient -- p43
p43.dayDemand -- d43_1_1
d43_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d43_1_2.patient -- p43
p43.dayDemand -- d43_1_2
d43_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d43_2_0.patient -- p43
p43.dayDemand -- d43_2_0
d43_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d43_2_1.patient -- p43
p43.dayDemand -- d43_2_1
d43_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d43_2_2.patient -- p43
p43.dayDemand -- d43_2_2
d43_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d43_3_0.patient -- p43
p43.dayDemand -- d43_3_0
d43_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d43_3_1.patient -- p43
p43.dayDemand -- d43_3_1
d43_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d43_3_2.patient -- p43
p43.dayDemand -- d43_3_2
d43_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d43_4_0.patient -- p43
p43.dayDemand -- d43_4_0
d43_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d43_4_1.patient -- p43
p43.dayDemand -- d43_4_1
d43_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d43_4_2.patient -- p43
p43.dayDemand -- d43_4_2

p44: Patient { id = 44 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 7 ageGroup = AgeGroup.YOUNG surgeryDuration = 240 gender = Gender.M stayLength = 8 }
p44.assignedSurgeonId -- s0
hospital.patients -- p44
p44.incompatibleRooms -- r1
p44.incompatibleRooms -- r3
p44.incompatibleRooms -- r7
d44_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d44_0_0.patient -- p44
p44.dayDemand -- d44_0_0
d44_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d44_0_1.patient -- p44
p44.dayDemand -- d44_0_1
d44_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d44_0_2.patient -- p44
p44.dayDemand -- d44_0_2
d44_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d44_1_0.patient -- p44
p44.dayDemand -- d44_1_0
d44_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d44_1_1.patient -- p44
p44.dayDemand -- d44_1_1
d44_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d44_1_2.patient -- p44
p44.dayDemand -- d44_1_2
d44_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d44_2_0.patient -- p44
p44.dayDemand -- d44_2_0
d44_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d44_2_1.patient -- p44
p44.dayDemand -- d44_2_1
d44_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d44_2_2.patient -- p44
p44.dayDemand -- d44_2_2
d44_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d44_3_0.patient -- p44
p44.dayDemand -- d44_3_0
d44_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d44_3_1.patient -- p44
p44.dayDemand -- d44_3_1
d44_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d44_3_2.patient -- p44
p44.dayDemand -- d44_3_2
d44_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d44_4_0.patient -- p44
p44.dayDemand -- d44_4_0
d44_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d44_4_1.patient -- p44
p44.dayDemand -- d44_4_1
d44_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d44_4_2.patient -- p44
p44.dayDemand -- d44_4_2
d44_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d44_5_0.patient -- p44
p44.dayDemand -- d44_5_0
d44_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d44_5_1.patient -- p44
p44.dayDemand -- d44_5_1
d44_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d44_5_2.patient -- p44
p44.dayDemand -- d44_5_2
d44_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d44_6_0.patient -- p44
p44.dayDemand -- d44_6_0
d44_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d44_6_1.patient -- p44
p44.dayDemand -- d44_6_1
d44_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d44_6_2.patient -- p44
p44.dayDemand -- d44_6_2
d44_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d44_7_0.patient -- p44
p44.dayDemand -- d44_7_0
d44_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d44_7_1.patient -- p44
p44.dayDemand -- d44_7_1
d44_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d44_7_2.patient -- p44
p44.dayDemand -- d44_7_2

p45: Patient { id = 45 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 15 ageGroup = AgeGroup.CHILD surgeryDuration = 240 gender = Gender.F stayLength = 6 }
p45.assignedSurgeonId -- s1
hospital.patients -- p45
p45.incompatibleRooms -- r0
d45_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d45_0_0.patient -- p45
p45.dayDemand -- d45_0_0
d45_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d45_0_1.patient -- p45
p45.dayDemand -- d45_0_1
d45_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d45_0_2.patient -- p45
p45.dayDemand -- d45_0_2
d45_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d45_1_0.patient -- p45
p45.dayDemand -- d45_1_0
d45_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d45_1_1.patient -- p45
p45.dayDemand -- d45_1_1
d45_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d45_1_2.patient -- p45
p45.dayDemand -- d45_1_2
d45_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d45_2_0.patient -- p45
p45.dayDemand -- d45_2_0
d45_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d45_2_1.patient -- p45
p45.dayDemand -- d45_2_1
d45_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d45_2_2.patient -- p45
p45.dayDemand -- d45_2_2
d45_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d45_3_0.patient -- p45
p45.dayDemand -- d45_3_0
d45_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d45_3_1.patient -- p45
p45.dayDemand -- d45_3_1
d45_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d45_3_2.patient -- p45
p45.dayDemand -- d45_3_2
d45_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d45_4_0.patient -- p45
p45.dayDemand -- d45_4_0
d45_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d45_4_1.patient -- p45
p45.dayDemand -- d45_4_1
d45_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d45_4_2.patient -- p45
p45.dayDemand -- d45_4_2
d45_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d45_5_0.patient -- p45
p45.dayDemand -- d45_5_0
d45_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d45_5_1.patient -- p45
p45.dayDemand -- d45_5_1
d45_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d45_5_2.patient -- p45
p45.dayDemand -- d45_5_2

p46: Patient { id = 46 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 14 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 6 }
p46.assignedSurgeonId -- s0
hospital.patients -- p46
d46_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d46_0_0.patient -- p46
p46.dayDemand -- d46_0_0
d46_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d46_0_1.patient -- p46
p46.dayDemand -- d46_0_1
d46_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d46_0_2.patient -- p46
p46.dayDemand -- d46_0_2
d46_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d46_1_0.patient -- p46
p46.dayDemand -- d46_1_0
d46_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d46_1_1.patient -- p46
p46.dayDemand -- d46_1_1
d46_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d46_1_2.patient -- p46
p46.dayDemand -- d46_1_2
d46_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d46_2_0.patient -- p46
p46.dayDemand -- d46_2_0
d46_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d46_2_1.patient -- p46
p46.dayDemand -- d46_2_1
d46_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d46_2_2.patient -- p46
p46.dayDemand -- d46_2_2
d46_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d46_3_0.patient -- p46
p46.dayDemand -- d46_3_0
d46_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d46_3_1.patient -- p46
p46.dayDemand -- d46_3_1
d46_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d46_3_2.patient -- p46
p46.dayDemand -- d46_3_2
d46_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 3 }
d46_4_0.patient -- p46
p46.dayDemand -- d46_4_0
d46_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d46_4_1.patient -- p46
p46.dayDemand -- d46_4_1
d46_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d46_4_2.patient -- p46
p46.dayDemand -- d46_4_2
d46_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d46_5_0.patient -- p46
p46.dayDemand -- d46_5_0
d46_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d46_5_1.patient -- p46
p46.dayDemand -- d46_5_1
d46_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d46_5_2.patient -- p46
p46.dayDemand -- d46_5_2

p47: Patient { id = 47 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 8 ageGroup = AgeGroup.ADULT surgeryDuration = 90 gender = Gender.F stayLength = 5 }
p47.assignedSurgeonId -- s1
hospital.patients -- p47
p47.incompatibleRooms -- r7
d47_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d47_0_0.patient -- p47
p47.dayDemand -- d47_0_0
d47_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d47_0_1.patient -- p47
p47.dayDemand -- d47_0_1
d47_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d47_0_2.patient -- p47
p47.dayDemand -- d47_0_2
d47_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d47_1_0.patient -- p47
p47.dayDemand -- d47_1_0
d47_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d47_1_1.patient -- p47
p47.dayDemand -- d47_1_1
d47_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d47_1_2.patient -- p47
p47.dayDemand -- d47_1_2
d47_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d47_2_0.patient -- p47
p47.dayDemand -- d47_2_0
d47_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d47_2_1.patient -- p47
p47.dayDemand -- d47_2_1
d47_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d47_2_2.patient -- p47
p47.dayDemand -- d47_2_2
d47_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d47_3_0.patient -- p47
p47.dayDemand -- d47_3_0
d47_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d47_3_1.patient -- p47
p47.dayDemand -- d47_3_1
d47_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d47_3_2.patient -- p47
p47.dayDemand -- d47_3_2
d47_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 3 }
d47_4_0.patient -- p47
p47.dayDemand -- d47_4_0
d47_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d47_4_1.patient -- p47
p47.dayDemand -- d47_4_1
d47_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d47_4_2.patient -- p47
p47.dayDemand -- d47_4_2

p48: Patient { id = 48 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 14 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.F stayLength = 3 }
p48.assignedSurgeonId -- s0
hospital.patients -- p48
d48_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d48_0_0.patient -- p48
p48.dayDemand -- d48_0_0
d48_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d48_0_1.patient -- p48
p48.dayDemand -- d48_0_1
d48_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d48_0_2.patient -- p48
p48.dayDemand -- d48_0_2
d48_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d48_1_0.patient -- p48
p48.dayDemand -- d48_1_0
d48_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d48_1_1.patient -- p48
p48.dayDemand -- d48_1_1
d48_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d48_1_2.patient -- p48
p48.dayDemand -- d48_1_2
d48_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d48_2_0.patient -- p48
p48.dayDemand -- d48_2_0
d48_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d48_2_1.patient -- p48
p48.dayDemand -- d48_2_1
d48_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d48_2_2.patient -- p48
p48.dayDemand -- d48_2_2

p49: Patient { id = 49 isMandatory = true isScheduled = true dueDate = 17 releaseDate = 9 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 8 }
p49.assignedSurgeonId -- s0
hospital.patients -- p49
p49.incompatibleRooms -- r1
p49.incompatibleRooms -- r2
d49_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d49_0_0.patient -- p49
p49.dayDemand -- d49_0_0
d49_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d49_0_1.patient -- p49
p49.dayDemand -- d49_0_1
d49_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d49_0_2.patient -- p49
p49.dayDemand -- d49_0_2
d49_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d49_1_0.patient -- p49
p49.dayDemand -- d49_1_0
d49_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d49_1_1.patient -- p49
p49.dayDemand -- d49_1_1
d49_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d49_1_2.patient -- p49
p49.dayDemand -- d49_1_2
d49_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d49_2_0.patient -- p49
p49.dayDemand -- d49_2_0
d49_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d49_2_1.patient -- p49
p49.dayDemand -- d49_2_1
d49_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d49_2_2.patient -- p49
p49.dayDemand -- d49_2_2
d49_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d49_3_0.patient -- p49
p49.dayDemand -- d49_3_0
d49_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d49_3_1.patient -- p49
p49.dayDemand -- d49_3_1
d49_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d49_3_2.patient -- p49
p49.dayDemand -- d49_3_2
d49_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d49_4_0.patient -- p49
p49.dayDemand -- d49_4_0
d49_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d49_4_1.patient -- p49
p49.dayDemand -- d49_4_1
d49_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d49_4_2.patient -- p49
p49.dayDemand -- d49_4_2
d49_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d49_5_0.patient -- p49
p49.dayDemand -- d49_5_0
d49_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d49_5_1.patient -- p49
p49.dayDemand -- d49_5_1
d49_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d49_5_2.patient -- p49
p49.dayDemand -- d49_5_2
d49_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d49_6_0.patient -- p49
p49.dayDemand -- d49_6_0
d49_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d49_6_1.patient -- p49
p49.dayDemand -- d49_6_1
d49_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d49_6_2.patient -- p49
p49.dayDemand -- d49_6_2
d49_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d49_7_0.patient -- p49
p49.dayDemand -- d49_7_0
d49_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d49_7_1.patient -- p49
p49.dayDemand -- d49_7_1
d49_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d49_7_2.patient -- p49
p49.dayDemand -- d49_7_2

p50: Patient { id = 50 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.F stayLength = 2 }
p50.assignedSurgeonId -- s0
hospital.patients -- p50
p50.incompatibleRooms -- r6
d50_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d50_0_0.patient -- p50
p50.dayDemand -- d50_0_0
d50_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d50_0_1.patient -- p50
p50.dayDemand -- d50_0_1
d50_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d50_0_2.patient -- p50
p50.dayDemand -- d50_0_2
d50_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d50_1_0.patient -- p50
p50.dayDemand -- d50_1_0
d50_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d50_1_1.patient -- p50
p50.dayDemand -- d50_1_1
d50_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d50_1_2.patient -- p50
p50.dayDemand -- d50_1_2

p51: Patient { id = 51 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.M stayLength = 10 }
p51.assignedSurgeonId -- s1
hospital.patients -- p51
p51.incompatibleRooms -- r8
d51_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d51_0_0.patient -- p51
p51.dayDemand -- d51_0_0
d51_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d51_0_1.patient -- p51
p51.dayDemand -- d51_0_1
d51_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d51_0_2.patient -- p51
p51.dayDemand -- d51_0_2
d51_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d51_1_0.patient -- p51
p51.dayDemand -- d51_1_0
d51_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d51_1_1.patient -- p51
p51.dayDemand -- d51_1_1
d51_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d51_1_2.patient -- p51
p51.dayDemand -- d51_1_2
d51_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d51_2_0.patient -- p51
p51.dayDemand -- d51_2_0
d51_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d51_2_1.patient -- p51
p51.dayDemand -- d51_2_1
d51_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d51_2_2.patient -- p51
p51.dayDemand -- d51_2_2
d51_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d51_3_0.patient -- p51
p51.dayDemand -- d51_3_0
d51_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d51_3_1.patient -- p51
p51.dayDemand -- d51_3_1
d51_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d51_3_2.patient -- p51
p51.dayDemand -- d51_3_2
d51_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d51_4_0.patient -- p51
p51.dayDemand -- d51_4_0
d51_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d51_4_1.patient -- p51
p51.dayDemand -- d51_4_1
d51_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d51_4_2.patient -- p51
p51.dayDemand -- d51_4_2
d51_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d51_5_0.patient -- p51
p51.dayDemand -- d51_5_0
d51_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d51_5_1.patient -- p51
p51.dayDemand -- d51_5_1
d51_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d51_5_2.patient -- p51
p51.dayDemand -- d51_5_2
d51_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d51_6_0.patient -- p51
p51.dayDemand -- d51_6_0
d51_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d51_6_1.patient -- p51
p51.dayDemand -- d51_6_1
d51_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d51_6_2.patient -- p51
p51.dayDemand -- d51_6_2
d51_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d51_7_0.patient -- p51
p51.dayDemand -- d51_7_0
d51_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d51_7_1.patient -- p51
p51.dayDemand -- d51_7_1
d51_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d51_7_2.patient -- p51
p51.dayDemand -- d51_7_2
d51_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d51_8_0.patient -- p51
p51.dayDemand -- d51_8_0
d51_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d51_8_1.patient -- p51
p51.dayDemand -- d51_8_1
d51_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d51_8_2.patient -- p51
p51.dayDemand -- d51_8_2
d51_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d51_9_0.patient -- p51
p51.dayDemand -- d51_9_0
d51_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d51_9_1.patient -- p51
p51.dayDemand -- d51_9_1
d51_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d51_9_2.patient -- p51
p51.dayDemand -- d51_9_2

p52: Patient { id = 52 isMandatory = true isScheduled = true dueDate = 18 releaseDate = 5 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 3 }
p52.assignedSurgeonId -- s1
hospital.patients -- p52
d52_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d52_0_0.patient -- p52
p52.dayDemand -- d52_0_0
d52_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d52_0_1.patient -- p52
p52.dayDemand -- d52_0_1
d52_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d52_0_2.patient -- p52
p52.dayDemand -- d52_0_2
d52_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d52_1_0.patient -- p52
p52.dayDemand -- d52_1_0
d52_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d52_1_1.patient -- p52
p52.dayDemand -- d52_1_1
d52_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d52_1_2.patient -- p52
p52.dayDemand -- d52_1_2
d52_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d52_2_0.patient -- p52
p52.dayDemand -- d52_2_0
d52_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d52_2_1.patient -- p52
p52.dayDemand -- d52_2_1
d52_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d52_2_2.patient -- p52
p52.dayDemand -- d52_2_2

p53: Patient { id = 53 isMandatory = true isScheduled = true dueDate = 7 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 3 }
p53.assignedSurgeonId -- s0
hospital.patients -- p53
p53.incompatibleRooms -- r4
d53_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d53_0_0.patient -- p53
p53.dayDemand -- d53_0_0
d53_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d53_0_1.patient -- p53
p53.dayDemand -- d53_0_1
d53_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d53_0_2.patient -- p53
p53.dayDemand -- d53_0_2
d53_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d53_1_0.patient -- p53
p53.dayDemand -- d53_1_0
d53_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d53_1_1.patient -- p53
p53.dayDemand -- d53_1_1
d53_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d53_1_2.patient -- p53
p53.dayDemand -- d53_1_2
d53_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d53_2_0.patient -- p53
p53.dayDemand -- d53_2_0
d53_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d53_2_1.patient -- p53
p53.dayDemand -- d53_2_1
d53_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d53_2_2.patient -- p53
p53.dayDemand -- d53_2_2

p54: Patient { id = 54 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 5 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 3 }
p54.assignedSurgeonId -- s1
hospital.patients -- p54
d54_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d54_0_0.patient -- p54
p54.dayDemand -- d54_0_0
d54_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d54_0_1.patient -- p54
p54.dayDemand -- d54_0_1
d54_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d54_0_2.patient -- p54
p54.dayDemand -- d54_0_2
d54_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d54_1_0.patient -- p54
p54.dayDemand -- d54_1_0
d54_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d54_1_1.patient -- p54
p54.dayDemand -- d54_1_1
d54_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d54_1_2.patient -- p54
p54.dayDemand -- d54_1_2
d54_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d54_2_0.patient -- p54
p54.dayDemand -- d54_2_0
d54_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d54_2_1.patient -- p54
p54.dayDemand -- d54_2_1
d54_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d54_2_2.patient -- p54
p54.dayDemand -- d54_2_2

p55: Patient { id = 55 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 4 }
p55.assignedSurgeonId -- s1
hospital.patients -- p55
p55.incompatibleRooms -- r0
d55_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d55_0_0.patient -- p55
p55.dayDemand -- d55_0_0
d55_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d55_0_1.patient -- p55
p55.dayDemand -- d55_0_1
d55_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d55_0_2.patient -- p55
p55.dayDemand -- d55_0_2
d55_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d55_1_0.patient -- p55
p55.dayDemand -- d55_1_0
d55_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d55_1_1.patient -- p55
p55.dayDemand -- d55_1_1
d55_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d55_1_2.patient -- p55
p55.dayDemand -- d55_1_2
d55_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d55_2_0.patient -- p55
p55.dayDemand -- d55_2_0
d55_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d55_2_1.patient -- p55
p55.dayDemand -- d55_2_1
d55_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d55_2_2.patient -- p55
p55.dayDemand -- d55_2_2
d55_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 3 }
d55_3_0.patient -- p55
p55.dayDemand -- d55_3_0
d55_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d55_3_1.patient -- p55
p55.dayDemand -- d55_3_1
d55_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d55_3_2.patient -- p55
p55.dayDemand -- d55_3_2

p56: Patient { id = 56 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 4 }
p56.assignedSurgeonId -- s1
hospital.patients -- p56
p56.incompatibleRooms -- r1
p56.incompatibleRooms -- r3
d56_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d56_0_0.patient -- p56
p56.dayDemand -- d56_0_0
d56_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d56_0_1.patient -- p56
p56.dayDemand -- d56_0_1
d56_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d56_0_2.patient -- p56
p56.dayDemand -- d56_0_2
d56_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d56_1_0.patient -- p56
p56.dayDemand -- d56_1_0
d56_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d56_1_1.patient -- p56
p56.dayDemand -- d56_1_1
d56_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d56_1_2.patient -- p56
p56.dayDemand -- d56_1_2
d56_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d56_2_0.patient -- p56
p56.dayDemand -- d56_2_0
d56_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d56_2_1.patient -- p56
p56.dayDemand -- d56_2_1
d56_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d56_2_2.patient -- p56
p56.dayDemand -- d56_2_2
d56_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d56_3_0.patient -- p56
p56.dayDemand -- d56_3_0
d56_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d56_3_1.patient -- p56
p56.dayDemand -- d56_3_1
d56_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d56_3_2.patient -- p56
p56.dayDemand -- d56_3_2

p57: Patient { id = 57 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 11 ageGroup = AgeGroup.ADULT surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p57.assignedSurgeonId -- s0
hospital.patients -- p57
d57_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d57_0_0.patient -- p57
p57.dayDemand -- d57_0_0
d57_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d57_0_1.patient -- p57
p57.dayDemand -- d57_0_1
d57_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d57_0_2.patient -- p57
p57.dayDemand -- d57_0_2
d57_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d57_1_0.patient -- p57
p57.dayDemand -- d57_1_0
d57_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d57_1_1.patient -- p57
p57.dayDemand -- d57_1_1
d57_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d57_1_2.patient -- p57
p57.dayDemand -- d57_1_2
d57_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d57_2_0.patient -- p57
p57.dayDemand -- d57_2_0
d57_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d57_2_1.patient -- p57
p57.dayDemand -- d57_2_1
d57_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d57_2_2.patient -- p57
p57.dayDemand -- d57_2_2
d57_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d57_3_0.patient -- p57
p57.dayDemand -- d57_3_0
d57_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d57_3_1.patient -- p57
p57.dayDemand -- d57_3_1
d57_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d57_3_2.patient -- p57
p57.dayDemand -- d57_3_2

p58: Patient { id = 58 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 5 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 6 }
p58.assignedSurgeonId -- s1
hospital.patients -- p58
d58_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d58_0_0.patient -- p58
p58.dayDemand -- d58_0_0
d58_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d58_0_1.patient -- p58
p58.dayDemand -- d58_0_1
d58_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d58_0_2.patient -- p58
p58.dayDemand -- d58_0_2
d58_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d58_1_0.patient -- p58
p58.dayDemand -- d58_1_0
d58_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d58_1_1.patient -- p58
p58.dayDemand -- d58_1_1
d58_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d58_1_2.patient -- p58
p58.dayDemand -- d58_1_2
d58_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d58_2_0.patient -- p58
p58.dayDemand -- d58_2_0
d58_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d58_2_1.patient -- p58
p58.dayDemand -- d58_2_1
d58_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d58_2_2.patient -- p58
p58.dayDemand -- d58_2_2
d58_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d58_3_0.patient -- p58
p58.dayDemand -- d58_3_0
d58_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d58_3_1.patient -- p58
p58.dayDemand -- d58_3_1
d58_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d58_3_2.patient -- p58
p58.dayDemand -- d58_3_2
d58_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d58_4_0.patient -- p58
p58.dayDemand -- d58_4_0
d58_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d58_4_1.patient -- p58
p58.dayDemand -- d58_4_1
d58_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d58_4_2.patient -- p58
p58.dayDemand -- d58_4_2
d58_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d58_5_0.patient -- p58
p58.dayDemand -- d58_5_0
d58_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d58_5_1.patient -- p58
p58.dayDemand -- d58_5_1
d58_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d58_5_2.patient -- p58
p58.dayDemand -- d58_5_2

p59: Patient { id = 59 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 14 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 6 }
p59.assignedSurgeonId -- s1
hospital.patients -- p59
p59.incompatibleRooms -- r1
p59.incompatibleRooms -- r3
d59_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d59_0_0.patient -- p59
p59.dayDemand -- d59_0_0
d59_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d59_0_1.patient -- p59
p59.dayDemand -- d59_0_1
d59_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d59_0_2.patient -- p59
p59.dayDemand -- d59_0_2
d59_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d59_1_0.patient -- p59
p59.dayDemand -- d59_1_0
d59_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d59_1_1.patient -- p59
p59.dayDemand -- d59_1_1
d59_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d59_1_2.patient -- p59
p59.dayDemand -- d59_1_2
d59_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d59_2_0.patient -- p59
p59.dayDemand -- d59_2_0
d59_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d59_2_1.patient -- p59
p59.dayDemand -- d59_2_1
d59_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d59_2_2.patient -- p59
p59.dayDemand -- d59_2_2
d59_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d59_3_0.patient -- p59
p59.dayDemand -- d59_3_0
d59_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d59_3_1.patient -- p59
p59.dayDemand -- d59_3_1
d59_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d59_3_2.patient -- p59
p59.dayDemand -- d59_3_2
d59_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d59_4_0.patient -- p59
p59.dayDemand -- d59_4_0
d59_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d59_4_1.patient -- p59
p59.dayDemand -- d59_4_1
d59_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d59_4_2.patient -- p59
p59.dayDemand -- d59_4_2
d59_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d59_5_0.patient -- p59
p59.dayDemand -- d59_5_0
d59_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d59_5_1.patient -- p59
p59.dayDemand -- d59_5_1
d59_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d59_5_2.patient -- p59
p59.dayDemand -- d59_5_2

p60: Patient { id = 60 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.ADULT surgeryDuration = 90 gender = Gender.M stayLength = 6 }
p60.assignedSurgeonId -- s1
hospital.patients -- p60
p60.incompatibleRooms -- r2
d60_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d60_0_0.patient -- p60
p60.dayDemand -- d60_0_0
d60_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d60_0_1.patient -- p60
p60.dayDemand -- d60_0_1
d60_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d60_0_2.patient -- p60
p60.dayDemand -- d60_0_2
d60_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d60_1_0.patient -- p60
p60.dayDemand -- d60_1_0
d60_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d60_1_1.patient -- p60
p60.dayDemand -- d60_1_1
d60_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d60_1_2.patient -- p60
p60.dayDemand -- d60_1_2
d60_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d60_2_0.patient -- p60
p60.dayDemand -- d60_2_0
d60_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d60_2_1.patient -- p60
p60.dayDemand -- d60_2_1
d60_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d60_2_2.patient -- p60
p60.dayDemand -- d60_2_2
d60_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d60_3_0.patient -- p60
p60.dayDemand -- d60_3_0
d60_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d60_3_1.patient -- p60
p60.dayDemand -- d60_3_1
d60_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d60_3_2.patient -- p60
p60.dayDemand -- d60_3_2
d60_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d60_4_0.patient -- p60
p60.dayDemand -- d60_4_0
d60_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d60_4_1.patient -- p60
p60.dayDemand -- d60_4_1
d60_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d60_4_2.patient -- p60
p60.dayDemand -- d60_4_2
d60_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d60_5_0.patient -- p60
p60.dayDemand -- d60_5_0
d60_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d60_5_1.patient -- p60
p60.dayDemand -- d60_5_1
d60_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d60_5_2.patient -- p60
p60.dayDemand -- d60_5_2

p61: Patient { id = 61 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ADULT surgeryDuration = 90 gender = Gender.F stayLength = 6 }
p61.assignedSurgeonId -- s0
hospital.patients -- p61
d61_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d61_0_0.patient -- p61
p61.dayDemand -- d61_0_0
d61_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d61_0_1.patient -- p61
p61.dayDemand -- d61_0_1
d61_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d61_0_2.patient -- p61
p61.dayDemand -- d61_0_2
d61_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d61_1_0.patient -- p61
p61.dayDemand -- d61_1_0
d61_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d61_1_1.patient -- p61
p61.dayDemand -- d61_1_1
d61_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d61_1_2.patient -- p61
p61.dayDemand -- d61_1_2
d61_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d61_2_0.patient -- p61
p61.dayDemand -- d61_2_0
d61_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d61_2_1.patient -- p61
p61.dayDemand -- d61_2_1
d61_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d61_2_2.patient -- p61
p61.dayDemand -- d61_2_2
d61_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d61_3_0.patient -- p61
p61.dayDemand -- d61_3_0
d61_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d61_3_1.patient -- p61
p61.dayDemand -- d61_3_1
d61_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d61_3_2.patient -- p61
p61.dayDemand -- d61_3_2
d61_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d61_4_0.patient -- p61
p61.dayDemand -- d61_4_0
d61_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d61_4_1.patient -- p61
p61.dayDemand -- d61_4_1
d61_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d61_4_2.patient -- p61
p61.dayDemand -- d61_4_2
d61_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d61_5_0.patient -- p61
p61.dayDemand -- d61_5_0
d61_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d61_5_1.patient -- p61
p61.dayDemand -- d61_5_1
d61_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d61_5_2.patient -- p61
p61.dayDemand -- d61_5_2

p62: Patient { id = 62 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 14 ageGroup = AgeGroup.YOUNG surgeryDuration = 300 gender = Gender.M stayLength = 6 }
p62.assignedSurgeonId -- s1
hospital.patients -- p62
p62.incompatibleRooms -- r6
d62_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d62_0_0.patient -- p62
p62.dayDemand -- d62_0_0
d62_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d62_0_1.patient -- p62
p62.dayDemand -- d62_0_1
d62_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d62_0_2.patient -- p62
p62.dayDemand -- d62_0_2
d62_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d62_1_0.patient -- p62
p62.dayDemand -- d62_1_0
d62_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d62_1_1.patient -- p62
p62.dayDemand -- d62_1_1
d62_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d62_1_2.patient -- p62
p62.dayDemand -- d62_1_2
d62_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d62_2_0.patient -- p62
p62.dayDemand -- d62_2_0
d62_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d62_2_1.patient -- p62
p62.dayDemand -- d62_2_1
d62_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d62_2_2.patient -- p62
p62.dayDemand -- d62_2_2
d62_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d62_3_0.patient -- p62
p62.dayDemand -- d62_3_0
d62_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d62_3_1.patient -- p62
p62.dayDemand -- d62_3_1
d62_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d62_3_2.patient -- p62
p62.dayDemand -- d62_3_2
d62_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d62_4_0.patient -- p62
p62.dayDemand -- d62_4_0
d62_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d62_4_1.patient -- p62
p62.dayDemand -- d62_4_1
d62_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d62_4_2.patient -- p62
p62.dayDemand -- d62_4_2
d62_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d62_5_0.patient -- p62
p62.dayDemand -- d62_5_0
d62_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d62_5_1.patient -- p62
p62.dayDemand -- d62_5_1
d62_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d62_5_2.patient -- p62
p62.dayDemand -- d62_5_2

p63: Patient { id = 63 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 2 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.M stayLength = 6 }
p63.assignedSurgeonId -- s1
hospital.patients -- p63
p63.incompatibleRooms -- r5
d63_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d63_0_0.patient -- p63
p63.dayDemand -- d63_0_0
d63_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d63_0_1.patient -- p63
p63.dayDemand -- d63_0_1
d63_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d63_0_2.patient -- p63
p63.dayDemand -- d63_0_2
d63_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d63_1_0.patient -- p63
p63.dayDemand -- d63_1_0
d63_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d63_1_1.patient -- p63
p63.dayDemand -- d63_1_1
d63_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d63_1_2.patient -- p63
p63.dayDemand -- d63_1_2
d63_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d63_2_0.patient -- p63
p63.dayDemand -- d63_2_0
d63_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d63_2_1.patient -- p63
p63.dayDemand -- d63_2_1
d63_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d63_2_2.patient -- p63
p63.dayDemand -- d63_2_2
d63_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d63_3_0.patient -- p63
p63.dayDemand -- d63_3_0
d63_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d63_3_1.patient -- p63
p63.dayDemand -- d63_3_1
d63_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d63_3_2.patient -- p63
p63.dayDemand -- d63_3_2
d63_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d63_4_0.patient -- p63
p63.dayDemand -- d63_4_0
d63_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d63_4_1.patient -- p63
p63.dayDemand -- d63_4_1
d63_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d63_4_2.patient -- p63
p63.dayDemand -- d63_4_2
d63_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d63_5_0.patient -- p63
p63.dayDemand -- d63_5_0
d63_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d63_5_1.patient -- p63
p63.dayDemand -- d63_5_1
d63_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d63_5_2.patient -- p63
p63.dayDemand -- d63_5_2

p64: Patient { id = 64 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 14 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 3 }
p64.assignedSurgeonId -- s0
hospital.patients -- p64
p64.incompatibleRooms -- r5
d64_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d64_0_0.patient -- p64
p64.dayDemand -- d64_0_0
d64_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d64_0_1.patient -- p64
p64.dayDemand -- d64_0_1
d64_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d64_0_2.patient -- p64
p64.dayDemand -- d64_0_2
d64_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d64_1_0.patient -- p64
p64.dayDemand -- d64_1_0
d64_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d64_1_1.patient -- p64
p64.dayDemand -- d64_1_1
d64_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d64_1_2.patient -- p64
p64.dayDemand -- d64_1_2
d64_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d64_2_0.patient -- p64
p64.dayDemand -- d64_2_0
d64_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d64_2_1.patient -- p64
p64.dayDemand -- d64_2_1
d64_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d64_2_2.patient -- p64
p64.dayDemand -- d64_2_2

p65: Patient { id = 65 isMandatory = true isScheduled = true dueDate = 8 releaseDate = 8 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.F stayLength = 7 }
p65.assignedSurgeonId -- s1
hospital.patients -- p65
d65_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d65_0_0.patient -- p65
p65.dayDemand -- d65_0_0
d65_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d65_0_1.patient -- p65
p65.dayDemand -- d65_0_1
d65_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d65_0_2.patient -- p65
p65.dayDemand -- d65_0_2
d65_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d65_1_0.patient -- p65
p65.dayDemand -- d65_1_0
d65_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d65_1_1.patient -- p65
p65.dayDemand -- d65_1_1
d65_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d65_1_2.patient -- p65
p65.dayDemand -- d65_1_2
d65_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d65_2_0.patient -- p65
p65.dayDemand -- d65_2_0
d65_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d65_2_1.patient -- p65
p65.dayDemand -- d65_2_1
d65_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d65_2_2.patient -- p65
p65.dayDemand -- d65_2_2
d65_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d65_3_0.patient -- p65
p65.dayDemand -- d65_3_0
d65_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d65_3_1.patient -- p65
p65.dayDemand -- d65_3_1
d65_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d65_3_2.patient -- p65
p65.dayDemand -- d65_3_2
d65_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d65_4_0.patient -- p65
p65.dayDemand -- d65_4_0
d65_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d65_4_1.patient -- p65
p65.dayDemand -- d65_4_1
d65_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d65_4_2.patient -- p65
p65.dayDemand -- d65_4_2
d65_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d65_5_0.patient -- p65
p65.dayDemand -- d65_5_0
d65_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d65_5_1.patient -- p65
p65.dayDemand -- d65_5_1
d65_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d65_5_2.patient -- p65
p65.dayDemand -- d65_5_2
d65_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d65_6_0.patient -- p65
p65.dayDemand -- d65_6_0
d65_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d65_6_1.patient -- p65
p65.dayDemand -- d65_6_1
d65_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d65_6_2.patient -- p65
p65.dayDemand -- d65_6_2

p66: Patient { id = 66 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 14 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 2 }
p66.assignedSurgeonId -- s0
hospital.patients -- p66
d66_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d66_0_0.patient -- p66
p66.dayDemand -- d66_0_0
d66_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d66_0_1.patient -- p66
p66.dayDemand -- d66_0_1
d66_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d66_0_2.patient -- p66
p66.dayDemand -- d66_0_2
d66_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 1 skillLevelRequired = 3 }
d66_1_0.patient -- p66
p66.dayDemand -- d66_1_0
d66_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d66_1_1.patient -- p66
p66.dayDemand -- d66_1_1
d66_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d66_1_2.patient -- p66
p66.dayDemand -- d66_1_2

p67: Patient { id = 67 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 19 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.F stayLength = 3 }
p67.assignedSurgeonId -- s0
hospital.patients -- p67
p67.incompatibleRooms -- r3
d67_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d67_0_0.patient -- p67
p67.dayDemand -- d67_0_0
d67_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d67_0_1.patient -- p67
p67.dayDemand -- d67_0_1
d67_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d67_0_2.patient -- p67
p67.dayDemand -- d67_0_2
d67_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d67_1_0.patient -- p67
p67.dayDemand -- d67_1_0
d67_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d67_1_1.patient -- p67
p67.dayDemand -- d67_1_1
d67_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d67_1_2.patient -- p67
p67.dayDemand -- d67_1_2
d67_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d67_2_0.patient -- p67
p67.dayDemand -- d67_2_0
d67_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d67_2_1.patient -- p67
p67.dayDemand -- d67_2_1
d67_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d67_2_2.patient -- p67
p67.dayDemand -- d67_2_2

p68: Patient { id = 68 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 5 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 3 }
p68.assignedSurgeonId -- s1
hospital.patients -- p68
p68.incompatibleRooms -- r7
d68_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d68_0_0.patient -- p68
p68.dayDemand -- d68_0_0
d68_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d68_0_1.patient -- p68
p68.dayDemand -- d68_0_1
d68_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d68_0_2.patient -- p68
p68.dayDemand -- d68_0_2
d68_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d68_1_0.patient -- p68
p68.dayDemand -- d68_1_0
d68_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d68_1_1.patient -- p68
p68.dayDemand -- d68_1_1
d68_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d68_1_2.patient -- p68
p68.dayDemand -- d68_1_2
d68_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d68_2_0.patient -- p68
p68.dayDemand -- d68_2_0
d68_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d68_2_1.patient -- p68
p68.dayDemand -- d68_2_1
d68_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d68_2_2.patient -- p68
p68.dayDemand -- d68_2_2

p69: Patient { id = 69 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 18 ageGroup = AgeGroup.ADULT surgeryDuration = 300 gender = Gender.F stayLength = 5 }
p69.assignedSurgeonId -- s1
hospital.patients -- p69
p69.incompatibleRooms -- r5
d69_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d69_0_0.patient -- p69
p69.dayDemand -- d69_0_0
d69_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d69_0_1.patient -- p69
p69.dayDemand -- d69_0_1
d69_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d69_0_2.patient -- p69
p69.dayDemand -- d69_0_2
d69_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d69_1_0.patient -- p69
p69.dayDemand -- d69_1_0
d69_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d69_1_1.patient -- p69
p69.dayDemand -- d69_1_1
d69_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d69_1_2.patient -- p69
p69.dayDemand -- d69_1_2
d69_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d69_2_0.patient -- p69
p69.dayDemand -- d69_2_0
d69_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d69_2_1.patient -- p69
p69.dayDemand -- d69_2_1
d69_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d69_2_2.patient -- p69
p69.dayDemand -- d69_2_2
d69_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d69_3_0.patient -- p69
p69.dayDemand -- d69_3_0
d69_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d69_3_1.patient -- p69
p69.dayDemand -- d69_3_1
d69_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d69_3_2.patient -- p69
p69.dayDemand -- d69_3_2
d69_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d69_4_0.patient -- p69
p69.dayDemand -- d69_4_0
d69_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d69_4_1.patient -- p69
p69.dayDemand -- d69_4_1
d69_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d69_4_2.patient -- p69
p69.dayDemand -- d69_4_2

p70: Patient { id = 70 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 14 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.M stayLength = 5 }
p70.assignedSurgeonId -- s0
hospital.patients -- p70
d70_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d70_0_0.patient -- p70
p70.dayDemand -- d70_0_0
d70_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d70_0_1.patient -- p70
p70.dayDemand -- d70_0_1
d70_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d70_0_2.patient -- p70
p70.dayDemand -- d70_0_2
d70_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d70_1_0.patient -- p70
p70.dayDemand -- d70_1_0
d70_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d70_1_1.patient -- p70
p70.dayDemand -- d70_1_1
d70_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d70_1_2.patient -- p70
p70.dayDemand -- d70_1_2
d70_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d70_2_0.patient -- p70
p70.dayDemand -- d70_2_0
d70_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d70_2_1.patient -- p70
p70.dayDemand -- d70_2_1
d70_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d70_2_2.patient -- p70
p70.dayDemand -- d70_2_2
d70_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d70_3_0.patient -- p70
p70.dayDemand -- d70_3_0
d70_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d70_3_1.patient -- p70
p70.dayDemand -- d70_3_1
d70_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d70_3_2.patient -- p70
p70.dayDemand -- d70_3_2
d70_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d70_4_0.patient -- p70
p70.dayDemand -- d70_4_0
d70_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d70_4_1.patient -- p70
p70.dayDemand -- d70_4_1
d70_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d70_4_2.patient -- p70
p70.dayDemand -- d70_4_2

p71: Patient { id = 71 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 17 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.M stayLength = 3 }
p71.assignedSurgeonId -- s0
hospital.patients -- p71
p71.incompatibleRooms -- r0
d71_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d71_0_0.patient -- p71
p71.dayDemand -- d71_0_0
d71_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d71_0_1.patient -- p71
p71.dayDemand -- d71_0_1
d71_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d71_0_2.patient -- p71
p71.dayDemand -- d71_0_2
d71_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d71_1_0.patient -- p71
p71.dayDemand -- d71_1_0
d71_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d71_1_1.patient -- p71
p71.dayDemand -- d71_1_1
d71_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d71_1_2.patient -- p71
p71.dayDemand -- d71_1_2
d71_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d71_2_0.patient -- p71
p71.dayDemand -- d71_2_0
d71_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d71_2_1.patient -- p71
p71.dayDemand -- d71_2_1
d71_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d71_2_2.patient -- p71
p71.dayDemand -- d71_2_2

p72: Patient { id = 72 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 4 }
p72.assignedSurgeonId -- s1
hospital.patients -- p72
p72.incompatibleRooms -- r1
d72_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d72_0_0.patient -- p72
p72.dayDemand -- d72_0_0
d72_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d72_0_1.patient -- p72
p72.dayDemand -- d72_0_1
d72_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d72_0_2.patient -- p72
p72.dayDemand -- d72_0_2
d72_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d72_1_0.patient -- p72
p72.dayDemand -- d72_1_0
d72_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d72_1_1.patient -- p72
p72.dayDemand -- d72_1_1
d72_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d72_1_2.patient -- p72
p72.dayDemand -- d72_1_2
d72_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d72_2_0.patient -- p72
p72.dayDemand -- d72_2_0
d72_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d72_2_1.patient -- p72
p72.dayDemand -- d72_2_1
d72_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d72_2_2.patient -- p72
p72.dayDemand -- d72_2_2
d72_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d72_3_0.patient -- p72
p72.dayDemand -- d72_3_0
d72_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d72_3_1.patient -- p72
p72.dayDemand -- d72_3_1
d72_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d72_3_2.patient -- p72
p72.dayDemand -- d72_3_2

p73: Patient { id = 73 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 19 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.F stayLength = 7 }
p73.assignedSurgeonId -- s1
hospital.patients -- p73
p73.incompatibleRooms -- r1
d73_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d73_0_0.patient -- p73
p73.dayDemand -- d73_0_0
d73_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d73_0_1.patient -- p73
p73.dayDemand -- d73_0_1
d73_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d73_0_2.patient -- p73
p73.dayDemand -- d73_0_2
d73_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d73_1_0.patient -- p73
p73.dayDemand -- d73_1_0
d73_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d73_1_1.patient -- p73
p73.dayDemand -- d73_1_1
d73_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d73_1_2.patient -- p73
p73.dayDemand -- d73_1_2
d73_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d73_2_0.patient -- p73
p73.dayDemand -- d73_2_0
d73_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d73_2_1.patient -- p73
p73.dayDemand -- d73_2_1
d73_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d73_2_2.patient -- p73
p73.dayDemand -- d73_2_2
d73_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d73_3_0.patient -- p73
p73.dayDemand -- d73_3_0
d73_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d73_3_1.patient -- p73
p73.dayDemand -- d73_3_1
d73_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d73_3_2.patient -- p73
p73.dayDemand -- d73_3_2
d73_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d73_4_0.patient -- p73
p73.dayDemand -- d73_4_0
d73_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d73_4_1.patient -- p73
p73.dayDemand -- d73_4_1
d73_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d73_4_2.patient -- p73
p73.dayDemand -- d73_4_2
d73_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d73_5_0.patient -- p73
p73.dayDemand -- d73_5_0
d73_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d73_5_1.patient -- p73
p73.dayDemand -- d73_5_1
d73_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d73_5_2.patient -- p73
p73.dayDemand -- d73_5_2
d73_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d73_6_0.patient -- p73
p73.dayDemand -- d73_6_0
d73_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d73_6_1.patient -- p73
p73.dayDemand -- d73_6_1
d73_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d73_6_2.patient -- p73
p73.dayDemand -- d73_6_2

p74: Patient { id = 74 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 7 }
p74.assignedSurgeonId -- s1
hospital.patients -- p74
d74_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d74_0_0.patient -- p74
p74.dayDemand -- d74_0_0
d74_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d74_0_1.patient -- p74
p74.dayDemand -- d74_0_1
d74_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d74_0_2.patient -- p74
p74.dayDemand -- d74_0_2
d74_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d74_1_0.patient -- p74
p74.dayDemand -- d74_1_0
d74_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d74_1_1.patient -- p74
p74.dayDemand -- d74_1_1
d74_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d74_1_2.patient -- p74
p74.dayDemand -- d74_1_2
d74_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d74_2_0.patient -- p74
p74.dayDemand -- d74_2_0
d74_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d74_2_1.patient -- p74
p74.dayDemand -- d74_2_1
d74_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d74_2_2.patient -- p74
p74.dayDemand -- d74_2_2
d74_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d74_3_0.patient -- p74
p74.dayDemand -- d74_3_0
d74_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d74_3_1.patient -- p74
p74.dayDemand -- d74_3_1
d74_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d74_3_2.patient -- p74
p74.dayDemand -- d74_3_2
d74_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d74_4_0.patient -- p74
p74.dayDemand -- d74_4_0
d74_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d74_4_1.patient -- p74
p74.dayDemand -- d74_4_1
d74_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d74_4_2.patient -- p74
p74.dayDemand -- d74_4_2
d74_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d74_5_0.patient -- p74
p74.dayDemand -- d74_5_0
d74_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d74_5_1.patient -- p74
p74.dayDemand -- d74_5_1
d74_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d74_5_2.patient -- p74
p74.dayDemand -- d74_5_2
d74_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d74_6_0.patient -- p74
p74.dayDemand -- d74_6_0
d74_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d74_6_1.patient -- p74
p74.dayDemand -- d74_6_1
d74_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d74_6_2.patient -- p74
p74.dayDemand -- d74_6_2

p75: Patient { id = 75 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 2 ageGroup = AgeGroup.YOUNG surgeryDuration = 90 gender = Gender.F stayLength = 4 }
p75.assignedSurgeonId -- s1
hospital.patients -- p75
d75_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d75_0_0.patient -- p75
p75.dayDemand -- d75_0_0
d75_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d75_0_1.patient -- p75
p75.dayDemand -- d75_0_1
d75_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d75_0_2.patient -- p75
p75.dayDemand -- d75_0_2
d75_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d75_1_0.patient -- p75
p75.dayDemand -- d75_1_0
d75_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d75_1_1.patient -- p75
p75.dayDemand -- d75_1_1
d75_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d75_1_2.patient -- p75
p75.dayDemand -- d75_1_2
d75_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d75_2_0.patient -- p75
p75.dayDemand -- d75_2_0
d75_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d75_2_1.patient -- p75
p75.dayDemand -- d75_2_1
d75_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d75_2_2.patient -- p75
p75.dayDemand -- d75_2_2
d75_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d75_3_0.patient -- p75
p75.dayDemand -- d75_3_0
d75_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d75_3_1.patient -- p75
p75.dayDemand -- d75_3_1
d75_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d75_3_2.patient -- p75
p75.dayDemand -- d75_3_2

p76: Patient { id = 76 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 2 }
p76.assignedSurgeonId -- s1
hospital.patients -- p76
d76_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d76_0_0.patient -- p76
p76.dayDemand -- d76_0_0
d76_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d76_0_1.patient -- p76
p76.dayDemand -- d76_0_1
d76_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d76_0_2.patient -- p76
p76.dayDemand -- d76_0_2
d76_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d76_1_0.patient -- p76
p76.dayDemand -- d76_1_0
d76_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d76_1_1.patient -- p76
p76.dayDemand -- d76_1_1
d76_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d76_1_2.patient -- p76
p76.dayDemand -- d76_1_2

p77: Patient { id = 77 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 14 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p77.assignedSurgeonId -- s0
hospital.patients -- p77
d77_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d77_0_0.patient -- p77
p77.dayDemand -- d77_0_0
d77_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d77_0_1.patient -- p77
p77.dayDemand -- d77_0_1
d77_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d77_0_2.patient -- p77
p77.dayDemand -- d77_0_2
d77_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d77_1_0.patient -- p77
p77.dayDemand -- d77_1_0
d77_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d77_1_1.patient -- p77
p77.dayDemand -- d77_1_1
d77_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d77_1_2.patient -- p77
p77.dayDemand -- d77_1_2
d77_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d77_2_0.patient -- p77
p77.dayDemand -- d77_2_0
d77_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d77_2_1.patient -- p77
p77.dayDemand -- d77_2_1
d77_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d77_2_2.patient -- p77
p77.dayDemand -- d77_2_2
d77_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d77_3_0.patient -- p77
p77.dayDemand -- d77_3_0
d77_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d77_3_1.patient -- p77
p77.dayDemand -- d77_3_1
d77_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d77_3_2.patient -- p77
p77.dayDemand -- d77_3_2

p78: Patient { id = 78 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.F stayLength = 2 }
p78.assignedSurgeonId -- s0
hospital.patients -- p78
d78_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d78_0_0.patient -- p78
p78.dayDemand -- d78_0_0
d78_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d78_0_1.patient -- p78
p78.dayDemand -- d78_0_1
d78_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d78_0_2.patient -- p78
p78.dayDemand -- d78_0_2
d78_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d78_1_0.patient -- p78
p78.dayDemand -- d78_1_0
d78_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d78_1_1.patient -- p78
p78.dayDemand -- d78_1_1
d78_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d78_1_2.patient -- p78
p78.dayDemand -- d78_1_2

p79: Patient { id = 79 isMandatory = true isScheduled = true dueDate = 18 releaseDate = 18 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 10 }
p79.assignedSurgeonId -- s1
hospital.patients -- p79
d79_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d79_0_0.patient -- p79
p79.dayDemand -- d79_0_0
d79_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d79_0_1.patient -- p79
p79.dayDemand -- d79_0_1
d79_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d79_0_2.patient -- p79
p79.dayDemand -- d79_0_2
d79_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d79_1_0.patient -- p79
p79.dayDemand -- d79_1_0
d79_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d79_1_1.patient -- p79
p79.dayDemand -- d79_1_1
d79_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d79_1_2.patient -- p79
p79.dayDemand -- d79_1_2
d79_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d79_2_0.patient -- p79
p79.dayDemand -- d79_2_0
d79_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d79_2_1.patient -- p79
p79.dayDemand -- d79_2_1
d79_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d79_2_2.patient -- p79
p79.dayDemand -- d79_2_2
d79_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d79_3_0.patient -- p79
p79.dayDemand -- d79_3_0
d79_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d79_3_1.patient -- p79
p79.dayDemand -- d79_3_1
d79_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d79_3_2.patient -- p79
p79.dayDemand -- d79_3_2
d79_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d79_4_0.patient -- p79
p79.dayDemand -- d79_4_0
d79_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d79_4_1.patient -- p79
p79.dayDemand -- d79_4_1
d79_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d79_4_2.patient -- p79
p79.dayDemand -- d79_4_2
d79_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d79_5_0.patient -- p79
p79.dayDemand -- d79_5_0
d79_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d79_5_1.patient -- p79
p79.dayDemand -- d79_5_1
d79_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d79_5_2.patient -- p79
p79.dayDemand -- d79_5_2
d79_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d79_6_0.patient -- p79
p79.dayDemand -- d79_6_0
d79_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d79_6_1.patient -- p79
p79.dayDemand -- d79_6_1
d79_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d79_6_2.patient -- p79
p79.dayDemand -- d79_6_2
d79_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d79_7_0.patient -- p79
p79.dayDemand -- d79_7_0
d79_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d79_7_1.patient -- p79
p79.dayDemand -- d79_7_1
d79_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d79_7_2.patient -- p79
p79.dayDemand -- d79_7_2
d79_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d79_8_0.patient -- p79
p79.dayDemand -- d79_8_0
d79_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d79_8_1.patient -- p79
p79.dayDemand -- d79_8_1
d79_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d79_8_2.patient -- p79
p79.dayDemand -- d79_8_2
d79_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d79_9_0.patient -- p79
p79.dayDemand -- d79_9_0
d79_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d79_9_1.patient -- p79
p79.dayDemand -- d79_9_1
d79_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d79_9_2.patient -- p79
p79.dayDemand -- d79_9_2

p80: Patient { id = 80 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.YOUNG surgeryDuration = 180 gender = Gender.F stayLength = 3 }
p80.assignedSurgeonId -- s0
hospital.patients -- p80
p80.incompatibleRooms -- r0
d80_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d80_0_0.patient -- p80
p80.dayDemand -- d80_0_0
d80_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d80_0_1.patient -- p80
p80.dayDemand -- d80_0_1
d80_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d80_0_2.patient -- p80
p80.dayDemand -- d80_0_2
d80_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d80_1_0.patient -- p80
p80.dayDemand -- d80_1_0
d80_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d80_1_1.patient -- p80
p80.dayDemand -- d80_1_1
d80_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d80_1_2.patient -- p80
p80.dayDemand -- d80_1_2
d80_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d80_2_0.patient -- p80
p80.dayDemand -- d80_2_0
d80_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d80_2_1.patient -- p80
p80.dayDemand -- d80_2_1
d80_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d80_2_2.patient -- p80
p80.dayDemand -- d80_2_2

p81: Patient { id = 81 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 4 }
p81.assignedSurgeonId -- s0
hospital.patients -- p81
p81.incompatibleRooms -- r6
d81_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d81_0_0.patient -- p81
p81.dayDemand -- d81_0_0
d81_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d81_0_1.patient -- p81
p81.dayDemand -- d81_0_1
d81_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d81_0_2.patient -- p81
p81.dayDemand -- d81_0_2
d81_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d81_1_0.patient -- p81
p81.dayDemand -- d81_1_0
d81_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d81_1_1.patient -- p81
p81.dayDemand -- d81_1_1
d81_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d81_1_2.patient -- p81
p81.dayDemand -- d81_1_2
d81_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d81_2_0.patient -- p81
p81.dayDemand -- d81_2_0
d81_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d81_2_1.patient -- p81
p81.dayDemand -- d81_2_1
d81_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d81_2_2.patient -- p81
p81.dayDemand -- d81_2_2
d81_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d81_3_0.patient -- p81
p81.dayDemand -- d81_3_0
d81_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d81_3_1.patient -- p81
p81.dayDemand -- d81_3_1
d81_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d81_3_2.patient -- p81
p81.dayDemand -- d81_3_2

p82: Patient { id = 82 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 9 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 7 }
p82.assignedSurgeonId -- s0
hospital.patients -- p82
p82.incompatibleRooms -- r6
d82_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d82_0_0.patient -- p82
p82.dayDemand -- d82_0_0
d82_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d82_0_1.patient -- p82
p82.dayDemand -- d82_0_1
d82_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d82_0_2.patient -- p82
p82.dayDemand -- d82_0_2
d82_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d82_1_0.patient -- p82
p82.dayDemand -- d82_1_0
d82_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d82_1_1.patient -- p82
p82.dayDemand -- d82_1_1
d82_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d82_1_2.patient -- p82
p82.dayDemand -- d82_1_2
d82_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d82_2_0.patient -- p82
p82.dayDemand -- d82_2_0
d82_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d82_2_1.patient -- p82
p82.dayDemand -- d82_2_1
d82_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d82_2_2.patient -- p82
p82.dayDemand -- d82_2_2
d82_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d82_3_0.patient -- p82
p82.dayDemand -- d82_3_0
d82_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d82_3_1.patient -- p82
p82.dayDemand -- d82_3_1
d82_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d82_3_2.patient -- p82
p82.dayDemand -- d82_3_2
d82_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d82_4_0.patient -- p82
p82.dayDemand -- d82_4_0
d82_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d82_4_1.patient -- p82
p82.dayDemand -- d82_4_1
d82_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d82_4_2.patient -- p82
p82.dayDemand -- d82_4_2
d82_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d82_5_0.patient -- p82
p82.dayDemand -- d82_5_0
d82_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d82_5_1.patient -- p82
p82.dayDemand -- d82_5_1
d82_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d82_5_2.patient -- p82
p82.dayDemand -- d82_5_2
d82_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d82_6_0.patient -- p82
p82.dayDemand -- d82_6_0
d82_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d82_6_1.patient -- p82
p82.dayDemand -- d82_6_1
d82_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d82_6_2.patient -- p82
p82.dayDemand -- d82_6_2

p83: Patient { id = 83 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 16 ageGroup = AgeGroup.CHILD surgeryDuration = 90 gender = Gender.F stayLength = 4 }
p83.assignedSurgeonId -- s1
hospital.patients -- p83
p83.incompatibleRooms -- r6
d83_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d83_0_0.patient -- p83
p83.dayDemand -- d83_0_0
d83_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d83_0_1.patient -- p83
p83.dayDemand -- d83_0_1
d83_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d83_0_2.patient -- p83
p83.dayDemand -- d83_0_2
d83_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d83_1_0.patient -- p83
p83.dayDemand -- d83_1_0
d83_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d83_1_1.patient -- p83
p83.dayDemand -- d83_1_1
d83_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d83_1_2.patient -- p83
p83.dayDemand -- d83_1_2
d83_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d83_2_0.patient -- p83
p83.dayDemand -- d83_2_0
d83_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d83_2_1.patient -- p83
p83.dayDemand -- d83_2_1
d83_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d83_2_2.patient -- p83
p83.dayDemand -- d83_2_2
d83_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d83_3_0.patient -- p83
p83.dayDemand -- d83_3_0
d83_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d83_3_1.patient -- p83
p83.dayDemand -- d83_3_1
d83_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d83_3_2.patient -- p83
p83.dayDemand -- d83_3_2

p84: Patient { id = 84 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 4 }
p84.assignedSurgeonId -- s0
hospital.patients -- p84
p84.incompatibleRooms -- r2
d84_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d84_0_0.patient -- p84
p84.dayDemand -- d84_0_0
d84_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d84_0_1.patient -- p84
p84.dayDemand -- d84_0_1
d84_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d84_0_2.patient -- p84
p84.dayDemand -- d84_0_2
d84_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d84_1_0.patient -- p84
p84.dayDemand -- d84_1_0
d84_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d84_1_1.patient -- p84
p84.dayDemand -- d84_1_1
d84_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d84_1_2.patient -- p84
p84.dayDemand -- d84_1_2
d84_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d84_2_0.patient -- p84
p84.dayDemand -- d84_2_0
d84_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d84_2_1.patient -- p84
p84.dayDemand -- d84_2_1
d84_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d84_2_2.patient -- p84
p84.dayDemand -- d84_2_2
d84_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d84_3_0.patient -- p84
p84.dayDemand -- d84_3_0
d84_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d84_3_1.patient -- p84
p84.dayDemand -- d84_3_1
d84_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d84_3_2.patient -- p84
p84.dayDemand -- d84_3_2

p85: Patient { id = 85 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 2 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.F stayLength = 4 }
p85.assignedSurgeonId -- s1
hospital.patients -- p85
p85.incompatibleRooms -- r3
p85.incompatibleRooms -- r4
d85_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d85_0_0.patient -- p85
p85.dayDemand -- d85_0_0
d85_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d85_0_1.patient -- p85
p85.dayDemand -- d85_0_1
d85_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d85_0_2.patient -- p85
p85.dayDemand -- d85_0_2
d85_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d85_1_0.patient -- p85
p85.dayDemand -- d85_1_0
d85_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d85_1_1.patient -- p85
p85.dayDemand -- d85_1_1
d85_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d85_1_2.patient -- p85
p85.dayDemand -- d85_1_2
d85_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d85_2_0.patient -- p85
p85.dayDemand -- d85_2_0
d85_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d85_2_1.patient -- p85
p85.dayDemand -- d85_2_1
d85_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d85_2_2.patient -- p85
p85.dayDemand -- d85_2_2
d85_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d85_3_0.patient -- p85
p85.dayDemand -- d85_3_0
d85_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d85_3_1.patient -- p85
p85.dayDemand -- d85_3_1
d85_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d85_3_2.patient -- p85
p85.dayDemand -- d85_3_2

p86: Patient { id = 86 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 7 }
p86.assignedSurgeonId -- s1
hospital.patients -- p86
d86_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d86_0_0.patient -- p86
p86.dayDemand -- d86_0_0
d86_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d86_0_1.patient -- p86
p86.dayDemand -- d86_0_1
d86_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d86_0_2.patient -- p86
p86.dayDemand -- d86_0_2
d86_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d86_1_0.patient -- p86
p86.dayDemand -- d86_1_0
d86_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d86_1_1.patient -- p86
p86.dayDemand -- d86_1_1
d86_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d86_1_2.patient -- p86
p86.dayDemand -- d86_1_2
d86_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d86_2_0.patient -- p86
p86.dayDemand -- d86_2_0
d86_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d86_2_1.patient -- p86
p86.dayDemand -- d86_2_1
d86_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d86_2_2.patient -- p86
p86.dayDemand -- d86_2_2
d86_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d86_3_0.patient -- p86
p86.dayDemand -- d86_3_0
d86_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d86_3_1.patient -- p86
p86.dayDemand -- d86_3_1
d86_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d86_3_2.patient -- p86
p86.dayDemand -- d86_3_2
d86_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d86_4_0.patient -- p86
p86.dayDemand -- d86_4_0
d86_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d86_4_1.patient -- p86
p86.dayDemand -- d86_4_1
d86_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d86_4_2.patient -- p86
p86.dayDemand -- d86_4_2
d86_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d86_5_0.patient -- p86
p86.dayDemand -- d86_5_0
d86_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d86_5_1.patient -- p86
p86.dayDemand -- d86_5_1
d86_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d86_5_2.patient -- p86
p86.dayDemand -- d86_5_2
d86_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d86_6_0.patient -- p86
p86.dayDemand -- d86_6_0
d86_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d86_6_1.patient -- p86
p86.dayDemand -- d86_6_1
d86_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d86_6_2.patient -- p86
p86.dayDemand -- d86_6_2

p87: Patient { id = 87 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.YOUNG surgeryDuration = 90 gender = Gender.M stayLength = 6 }
p87.assignedSurgeonId -- s0
hospital.patients -- p87
p87.incompatibleRooms -- r8
d87_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d87_0_0.patient -- p87
p87.dayDemand -- d87_0_0
d87_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d87_0_1.patient -- p87
p87.dayDemand -- d87_0_1
d87_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d87_0_2.patient -- p87
p87.dayDemand -- d87_0_2
d87_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d87_1_0.patient -- p87
p87.dayDemand -- d87_1_0
d87_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d87_1_1.patient -- p87
p87.dayDemand -- d87_1_1
d87_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d87_1_2.patient -- p87
p87.dayDemand -- d87_1_2
d87_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d87_2_0.patient -- p87
p87.dayDemand -- d87_2_0
d87_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d87_2_1.patient -- p87
p87.dayDemand -- d87_2_1
d87_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d87_2_2.patient -- p87
p87.dayDemand -- d87_2_2
d87_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d87_3_0.patient -- p87
p87.dayDemand -- d87_3_0
d87_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d87_3_1.patient -- p87
p87.dayDemand -- d87_3_1
d87_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d87_3_2.patient -- p87
p87.dayDemand -- d87_3_2
d87_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d87_4_0.patient -- p87
p87.dayDemand -- d87_4_0
d87_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d87_4_1.patient -- p87
p87.dayDemand -- d87_4_1
d87_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d87_4_2.patient -- p87
p87.dayDemand -- d87_4_2
d87_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d87_5_0.patient -- p87
p87.dayDemand -- d87_5_0
d87_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d87_5_1.patient -- p87
p87.dayDemand -- d87_5_1
d87_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d87_5_2.patient -- p87
p87.dayDemand -- d87_5_2

p88: Patient { id = 88 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 2 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 8 }
p88.assignedSurgeonId -- s1
hospital.patients -- p88
p88.incompatibleRooms -- r5
p88.incompatibleRooms -- r8
d88_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d88_0_0.patient -- p88
p88.dayDemand -- d88_0_0
d88_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d88_0_1.patient -- p88
p88.dayDemand -- d88_0_1
d88_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d88_0_2.patient -- p88
p88.dayDemand -- d88_0_2
d88_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d88_1_0.patient -- p88
p88.dayDemand -- d88_1_0
d88_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d88_1_1.patient -- p88
p88.dayDemand -- d88_1_1
d88_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d88_1_2.patient -- p88
p88.dayDemand -- d88_1_2
d88_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d88_2_0.patient -- p88
p88.dayDemand -- d88_2_0
d88_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d88_2_1.patient -- p88
p88.dayDemand -- d88_2_1
d88_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d88_2_2.patient -- p88
p88.dayDemand -- d88_2_2
d88_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d88_3_0.patient -- p88
p88.dayDemand -- d88_3_0
d88_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d88_3_1.patient -- p88
p88.dayDemand -- d88_3_1
d88_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d88_3_2.patient -- p88
p88.dayDemand -- d88_3_2
d88_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d88_4_0.patient -- p88
p88.dayDemand -- d88_4_0
d88_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d88_4_1.patient -- p88
p88.dayDemand -- d88_4_1
d88_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d88_4_2.patient -- p88
p88.dayDemand -- d88_4_2
d88_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d88_5_0.patient -- p88
p88.dayDemand -- d88_5_0
d88_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d88_5_1.patient -- p88
p88.dayDemand -- d88_5_1
d88_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d88_5_2.patient -- p88
p88.dayDemand -- d88_5_2
d88_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d88_6_0.patient -- p88
p88.dayDemand -- d88_6_0
d88_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d88_6_1.patient -- p88
p88.dayDemand -- d88_6_1
d88_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d88_6_2.patient -- p88
p88.dayDemand -- d88_6_2
d88_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d88_7_0.patient -- p88
p88.dayDemand -- d88_7_0
d88_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d88_7_1.patient -- p88
p88.dayDemand -- d88_7_1
d88_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d88_7_2.patient -- p88
p88.dayDemand -- d88_7_2

p89: Patient { id = 89 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.F stayLength = 8 }
p89.assignedSurgeonId -- s0
hospital.patients -- p89
p89.incompatibleRooms -- r7
d89_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d89_0_0.patient -- p89
p89.dayDemand -- d89_0_0
d89_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d89_0_1.patient -- p89
p89.dayDemand -- d89_0_1
d89_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d89_0_2.patient -- p89
p89.dayDemand -- d89_0_2
d89_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d89_1_0.patient -- p89
p89.dayDemand -- d89_1_0
d89_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d89_1_1.patient -- p89
p89.dayDemand -- d89_1_1
d89_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d89_1_2.patient -- p89
p89.dayDemand -- d89_1_2
d89_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d89_2_0.patient -- p89
p89.dayDemand -- d89_2_0
d89_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d89_2_1.patient -- p89
p89.dayDemand -- d89_2_1
d89_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d89_2_2.patient -- p89
p89.dayDemand -- d89_2_2
d89_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d89_3_0.patient -- p89
p89.dayDemand -- d89_3_0
d89_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d89_3_1.patient -- p89
p89.dayDemand -- d89_3_1
d89_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d89_3_2.patient -- p89
p89.dayDemand -- d89_3_2
d89_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d89_4_0.patient -- p89
p89.dayDemand -- d89_4_0
d89_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d89_4_1.patient -- p89
p89.dayDemand -- d89_4_1
d89_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d89_4_2.patient -- p89
p89.dayDemand -- d89_4_2
d89_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d89_5_0.patient -- p89
p89.dayDemand -- d89_5_0
d89_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d89_5_1.patient -- p89
p89.dayDemand -- d89_5_1
d89_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d89_5_2.patient -- p89
p89.dayDemand -- d89_5_2
d89_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d89_6_0.patient -- p89
p89.dayDemand -- d89_6_0
d89_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d89_6_1.patient -- p89
p89.dayDemand -- d89_6_1
d89_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d89_6_2.patient -- p89
p89.dayDemand -- d89_6_2
d89_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d89_7_0.patient -- p89
p89.dayDemand -- d89_7_0
d89_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d89_7_1.patient -- p89
p89.dayDemand -- d89_7_1
d89_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d89_7_2.patient -- p89
p89.dayDemand -- d89_7_2

p90: Patient { id = 90 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 2 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.F stayLength = 10 }
p90.assignedSurgeonId -- s1
hospital.patients -- p90
p90.incompatibleRooms -- r2
d90_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d90_0_0.patient -- p90
p90.dayDemand -- d90_0_0
d90_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d90_0_1.patient -- p90
p90.dayDemand -- d90_0_1
d90_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d90_0_2.patient -- p90
p90.dayDemand -- d90_0_2
d90_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d90_1_0.patient -- p90
p90.dayDemand -- d90_1_0
d90_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d90_1_1.patient -- p90
p90.dayDemand -- d90_1_1
d90_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d90_1_2.patient -- p90
p90.dayDemand -- d90_1_2
d90_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d90_2_0.patient -- p90
p90.dayDemand -- d90_2_0
d90_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d90_2_1.patient -- p90
p90.dayDemand -- d90_2_1
d90_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d90_2_2.patient -- p90
p90.dayDemand -- d90_2_2
d90_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d90_3_0.patient -- p90
p90.dayDemand -- d90_3_0
d90_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d90_3_1.patient -- p90
p90.dayDemand -- d90_3_1
d90_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d90_3_2.patient -- p90
p90.dayDemand -- d90_3_2
d90_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d90_4_0.patient -- p90
p90.dayDemand -- d90_4_0
d90_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d90_4_1.patient -- p90
p90.dayDemand -- d90_4_1
d90_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d90_4_2.patient -- p90
p90.dayDemand -- d90_4_2
d90_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d90_5_0.patient -- p90
p90.dayDemand -- d90_5_0
d90_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d90_5_1.patient -- p90
p90.dayDemand -- d90_5_1
d90_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d90_5_2.patient -- p90
p90.dayDemand -- d90_5_2
d90_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d90_6_0.patient -- p90
p90.dayDemand -- d90_6_0
d90_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d90_6_1.patient -- p90
p90.dayDemand -- d90_6_1
d90_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d90_6_2.patient -- p90
p90.dayDemand -- d90_6_2
d90_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d90_7_0.patient -- p90
p90.dayDemand -- d90_7_0
d90_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d90_7_1.patient -- p90
p90.dayDemand -- d90_7_1
d90_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d90_7_2.patient -- p90
p90.dayDemand -- d90_7_2
d90_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d90_8_0.patient -- p90
p90.dayDemand -- d90_8_0
d90_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d90_8_1.patient -- p90
p90.dayDemand -- d90_8_1
d90_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d90_8_2.patient -- p90
p90.dayDemand -- d90_8_2
d90_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d90_9_0.patient -- p90
p90.dayDemand -- d90_9_0
d90_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d90_9_1.patient -- p90
p90.dayDemand -- d90_9_1
d90_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d90_9_2.patient -- p90
p90.dayDemand -- d90_9_2

p91: Patient { id = 91 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 16 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 3 }
p91.assignedSurgeonId -- s1
hospital.patients -- p91
p91.incompatibleRooms -- r2
d91_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d91_0_0.patient -- p91
p91.dayDemand -- d91_0_0
d91_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d91_0_1.patient -- p91
p91.dayDemand -- d91_0_1
d91_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d91_0_2.patient -- p91
p91.dayDemand -- d91_0_2
d91_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d91_1_0.patient -- p91
p91.dayDemand -- d91_1_0
d91_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d91_1_1.patient -- p91
p91.dayDemand -- d91_1_1
d91_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d91_1_2.patient -- p91
p91.dayDemand -- d91_1_2
d91_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d91_2_0.patient -- p91
p91.dayDemand -- d91_2_0
d91_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d91_2_1.patient -- p91
p91.dayDemand -- d91_2_1
d91_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d91_2_2.patient -- p91
p91.dayDemand -- d91_2_2

p92: Patient { id = 92 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 16 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 4 }
p92.assignedSurgeonId -- s0
hospital.patients -- p92
p92.incompatibleRooms -- r5
p92.incompatibleRooms -- r8
d92_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d92_0_0.patient -- p92
p92.dayDemand -- d92_0_0
d92_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d92_0_1.patient -- p92
p92.dayDemand -- d92_0_1
d92_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d92_0_2.patient -- p92
p92.dayDemand -- d92_0_2
d92_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d92_1_0.patient -- p92
p92.dayDemand -- d92_1_0
d92_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d92_1_1.patient -- p92
p92.dayDemand -- d92_1_1
d92_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d92_1_2.patient -- p92
p92.dayDemand -- d92_1_2
d92_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d92_2_0.patient -- p92
p92.dayDemand -- d92_2_0
d92_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d92_2_1.patient -- p92
p92.dayDemand -- d92_2_1
d92_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d92_2_2.patient -- p92
p92.dayDemand -- d92_2_2
d92_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d92_3_0.patient -- p92
p92.dayDemand -- d92_3_0
d92_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d92_3_1.patient -- p92
p92.dayDemand -- d92_3_1
d92_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d92_3_2.patient -- p92
p92.dayDemand -- d92_3_2

p93: Patient { id = 93 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 17 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 3 }
p93.assignedSurgeonId -- s0
hospital.patients -- p93
p93.incompatibleRooms -- r0
d93_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d93_0_0.patient -- p93
p93.dayDemand -- d93_0_0
d93_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d93_0_1.patient -- p93
p93.dayDemand -- d93_0_1
d93_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d93_0_2.patient -- p93
p93.dayDemand -- d93_0_2
d93_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d93_1_0.patient -- p93
p93.dayDemand -- d93_1_0
d93_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d93_1_1.patient -- p93
p93.dayDemand -- d93_1_1
d93_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d93_1_2.patient -- p93
p93.dayDemand -- d93_1_2
d93_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d93_2_0.patient -- p93
p93.dayDemand -- d93_2_0
d93_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d93_2_1.patient -- p93
p93.dayDemand -- d93_2_1
d93_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d93_2_2.patient -- p93
p93.dayDemand -- d93_2_2

p94: Patient { id = 94 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.M stayLength = 4 }
p94.assignedSurgeonId -- s1
hospital.patients -- p94
d94_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d94_0_0.patient -- p94
p94.dayDemand -- d94_0_0
d94_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d94_0_1.patient -- p94
p94.dayDemand -- d94_0_1
d94_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d94_0_2.patient -- p94
p94.dayDemand -- d94_0_2
d94_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d94_1_0.patient -- p94
p94.dayDemand -- d94_1_0
d94_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d94_1_1.patient -- p94
p94.dayDemand -- d94_1_1
d94_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d94_1_2.patient -- p94
p94.dayDemand -- d94_1_2
d94_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d94_2_0.patient -- p94
p94.dayDemand -- d94_2_0
d94_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d94_2_1.patient -- p94
p94.dayDemand -- d94_2_1
d94_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d94_2_2.patient -- p94
p94.dayDemand -- d94_2_2
d94_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d94_3_0.patient -- p94
p94.dayDemand -- d94_3_0
d94_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d94_3_1.patient -- p94
p94.dayDemand -- d94_3_1
d94_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d94_3_2.patient -- p94
p94.dayDemand -- d94_3_2

p95: Patient { id = 95 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 6 }
p95.assignedSurgeonId -- s0
hospital.patients -- p95
d95_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d95_0_0.patient -- p95
p95.dayDemand -- d95_0_0
d95_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d95_0_1.patient -- p95
p95.dayDemand -- d95_0_1
d95_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d95_0_2.patient -- p95
p95.dayDemand -- d95_0_2
d95_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d95_1_0.patient -- p95
p95.dayDemand -- d95_1_0
d95_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d95_1_1.patient -- p95
p95.dayDemand -- d95_1_1
d95_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d95_1_2.patient -- p95
p95.dayDemand -- d95_1_2
d95_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d95_2_0.patient -- p95
p95.dayDemand -- d95_2_0
d95_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d95_2_1.patient -- p95
p95.dayDemand -- d95_2_1
d95_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d95_2_2.patient -- p95
p95.dayDemand -- d95_2_2
d95_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d95_3_0.patient -- p95
p95.dayDemand -- d95_3_0
d95_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d95_3_1.patient -- p95
p95.dayDemand -- d95_3_1
d95_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d95_3_2.patient -- p95
p95.dayDemand -- d95_3_2
d95_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d95_4_0.patient -- p95
p95.dayDemand -- d95_4_0
d95_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d95_4_1.patient -- p95
p95.dayDemand -- d95_4_1
d95_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d95_4_2.patient -- p95
p95.dayDemand -- d95_4_2
d95_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d95_5_0.patient -- p95
p95.dayDemand -- d95_5_0
d95_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d95_5_1.patient -- p95
p95.dayDemand -- d95_5_1
d95_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d95_5_2.patient -- p95
p95.dayDemand -- d95_5_2

p96: Patient { id = 96 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 16 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 3 }
p96.assignedSurgeonId -- s0
hospital.patients -- p96
p96.incompatibleRooms -- r8
d96_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d96_0_0.patient -- p96
p96.dayDemand -- d96_0_0
d96_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d96_0_1.patient -- p96
p96.dayDemand -- d96_0_1
d96_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d96_0_2.patient -- p96
p96.dayDemand -- d96_0_2
d96_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d96_1_0.patient -- p96
p96.dayDemand -- d96_1_0
d96_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d96_1_1.patient -- p96
p96.dayDemand -- d96_1_1
d96_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d96_1_2.patient -- p96
p96.dayDemand -- d96_1_2
d96_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d96_2_0.patient -- p96
p96.dayDemand -- d96_2_0
d96_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d96_2_1.patient -- p96
p96.dayDemand -- d96_2_1
d96_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d96_2_2.patient -- p96
p96.dayDemand -- d96_2_2

p97: Patient { id = 97 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 19 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.F stayLength = 8 }
p97.assignedSurgeonId -- s0
hospital.patients -- p97
p97.incompatibleRooms -- r1
d97_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d97_0_0.patient -- p97
p97.dayDemand -- d97_0_0
d97_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d97_0_1.patient -- p97
p97.dayDemand -- d97_0_1
d97_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d97_0_2.patient -- p97
p97.dayDemand -- d97_0_2
d97_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d97_1_0.patient -- p97
p97.dayDemand -- d97_1_0
d97_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d97_1_1.patient -- p97
p97.dayDemand -- d97_1_1
d97_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d97_1_2.patient -- p97
p97.dayDemand -- d97_1_2
d97_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d97_2_0.patient -- p97
p97.dayDemand -- d97_2_0
d97_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d97_2_1.patient -- p97
p97.dayDemand -- d97_2_1
d97_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d97_2_2.patient -- p97
p97.dayDemand -- d97_2_2
d97_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d97_3_0.patient -- p97
p97.dayDemand -- d97_3_0
d97_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d97_3_1.patient -- p97
p97.dayDemand -- d97_3_1
d97_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d97_3_2.patient -- p97
p97.dayDemand -- d97_3_2
d97_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d97_4_0.patient -- p97
p97.dayDemand -- d97_4_0
d97_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d97_4_1.patient -- p97
p97.dayDemand -- d97_4_1
d97_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d97_4_2.patient -- p97
p97.dayDemand -- d97_4_2
d97_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d97_5_0.patient -- p97
p97.dayDemand -- d97_5_0
d97_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d97_5_1.patient -- p97
p97.dayDemand -- d97_5_1
d97_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d97_5_2.patient -- p97
p97.dayDemand -- d97_5_2
d97_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d97_6_0.patient -- p97
p97.dayDemand -- d97_6_0
d97_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d97_6_1.patient -- p97
p97.dayDemand -- d97_6_1
d97_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d97_6_2.patient -- p97
p97.dayDemand -- d97_6_2
d97_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d97_7_0.patient -- p97
p97.dayDemand -- d97_7_0
d97_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d97_7_1.patient -- p97
p97.dayDemand -- d97_7_1
d97_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d97_7_2.patient -- p97
p97.dayDemand -- d97_7_2

p98: Patient { id = 98 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 5 }
p98.assignedSurgeonId -- s1
hospital.patients -- p98
d98_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d98_0_0.patient -- p98
p98.dayDemand -- d98_0_0
d98_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d98_0_1.patient -- p98
p98.dayDemand -- d98_0_1
d98_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d98_0_2.patient -- p98
p98.dayDemand -- d98_0_2
d98_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d98_1_0.patient -- p98
p98.dayDemand -- d98_1_0
d98_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d98_1_1.patient -- p98
p98.dayDemand -- d98_1_1
d98_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d98_1_2.patient -- p98
p98.dayDemand -- d98_1_2
d98_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d98_2_0.patient -- p98
p98.dayDemand -- d98_2_0
d98_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d98_2_1.patient -- p98
p98.dayDemand -- d98_2_1
d98_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d98_2_2.patient -- p98
p98.dayDemand -- d98_2_2
d98_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d98_3_0.patient -- p98
p98.dayDemand -- d98_3_0
d98_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d98_3_1.patient -- p98
p98.dayDemand -- d98_3_1
d98_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d98_3_2.patient -- p98
p98.dayDemand -- d98_3_2
d98_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d98_4_0.patient -- p98
p98.dayDemand -- d98_4_0
d98_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d98_4_1.patient -- p98
p98.dayDemand -- d98_4_1
d98_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d98_4_2.patient -- p98
p98.dayDemand -- d98_4_2

p99: Patient { id = 99 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 2 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 7 }
p99.assignedSurgeonId -- s1
hospital.patients -- p99
p99.incompatibleRooms -- r1
d99_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d99_0_0.patient -- p99
p99.dayDemand -- d99_0_0
d99_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d99_0_1.patient -- p99
p99.dayDemand -- d99_0_1
d99_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d99_0_2.patient -- p99
p99.dayDemand -- d99_0_2
d99_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d99_1_0.patient -- p99
p99.dayDemand -- d99_1_0
d99_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d99_1_1.patient -- p99
p99.dayDemand -- d99_1_1
d99_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d99_1_2.patient -- p99
p99.dayDemand -- d99_1_2
d99_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d99_2_0.patient -- p99
p99.dayDemand -- d99_2_0
d99_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d99_2_1.patient -- p99
p99.dayDemand -- d99_2_1
d99_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d99_2_2.patient -- p99
p99.dayDemand -- d99_2_2
d99_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d99_3_0.patient -- p99
p99.dayDemand -- d99_3_0
d99_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d99_3_1.patient -- p99
p99.dayDemand -- d99_3_1
d99_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d99_3_2.patient -- p99
p99.dayDemand -- d99_3_2
d99_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d99_4_0.patient -- p99
p99.dayDemand -- d99_4_0
d99_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d99_4_1.patient -- p99
p99.dayDemand -- d99_4_1
d99_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d99_4_2.patient -- p99
p99.dayDemand -- d99_4_2
d99_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d99_5_0.patient -- p99
p99.dayDemand -- d99_5_0
d99_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d99_5_1.patient -- p99
p99.dayDemand -- d99_5_1
d99_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d99_5_2.patient -- p99
p99.dayDemand -- d99_5_2
d99_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d99_6_0.patient -- p99
p99.dayDemand -- d99_6_0
d99_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d99_6_1.patient -- p99
p99.dayDemand -- d99_6_1
d99_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d99_6_2.patient -- p99
p99.dayDemand -- d99_6_2

p100: Patient { id = 100 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 11 }
p100.assignedSurgeonId -- s0
hospital.patients -- p100
p100.incompatibleRooms -- r5
d100_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d100_0_0.patient -- p100
p100.dayDemand -- d100_0_0
d100_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d100_0_1.patient -- p100
p100.dayDemand -- d100_0_1
d100_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d100_0_2.patient -- p100
p100.dayDemand -- d100_0_2
d100_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d100_1_0.patient -- p100
p100.dayDemand -- d100_1_0
d100_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d100_1_1.patient -- p100
p100.dayDemand -- d100_1_1
d100_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d100_1_2.patient -- p100
p100.dayDemand -- d100_1_2
d100_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d100_2_0.patient -- p100
p100.dayDemand -- d100_2_0
d100_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d100_2_1.patient -- p100
p100.dayDemand -- d100_2_1
d100_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d100_2_2.patient -- p100
p100.dayDemand -- d100_2_2
d100_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d100_3_0.patient -- p100
p100.dayDemand -- d100_3_0
d100_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d100_3_1.patient -- p100
p100.dayDemand -- d100_3_1
d100_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d100_3_2.patient -- p100
p100.dayDemand -- d100_3_2
d100_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d100_4_0.patient -- p100
p100.dayDemand -- d100_4_0
d100_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d100_4_1.patient -- p100
p100.dayDemand -- d100_4_1
d100_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d100_4_2.patient -- p100
p100.dayDemand -- d100_4_2
d100_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d100_5_0.patient -- p100
p100.dayDemand -- d100_5_0
d100_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d100_5_1.patient -- p100
p100.dayDemand -- d100_5_1
d100_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d100_5_2.patient -- p100
p100.dayDemand -- d100_5_2
d100_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d100_6_0.patient -- p100
p100.dayDemand -- d100_6_0
d100_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d100_6_1.patient -- p100
p100.dayDemand -- d100_6_1
d100_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d100_6_2.patient -- p100
p100.dayDemand -- d100_6_2
d100_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d100_7_0.patient -- p100
p100.dayDemand -- d100_7_0
d100_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d100_7_1.patient -- p100
p100.dayDemand -- d100_7_1
d100_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d100_7_2.patient -- p100
p100.dayDemand -- d100_7_2
d100_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d100_8_0.patient -- p100
p100.dayDemand -- d100_8_0
d100_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d100_8_1.patient -- p100
p100.dayDemand -- d100_8_1
d100_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d100_8_2.patient -- p100
p100.dayDemand -- d100_8_2
d100_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d100_9_0.patient -- p100
p100.dayDemand -- d100_9_0
d100_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d100_9_1.patient -- p100
p100.dayDemand -- d100_9_1
d100_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d100_9_2.patient -- p100
p100.dayDemand -- d100_9_2
d100_10_0: PatientDayDemand { relativeDay = 10 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d100_10_0.patient -- p100
p100.dayDemand -- d100_10_0
d100_10_1: PatientDayDemand { relativeDay = 10 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d100_10_1.patient -- p100
p100.dayDemand -- d100_10_1
d100_10_2: PatientDayDemand { relativeDay = 10 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d100_10_2.patient -- p100
p100.dayDemand -- d100_10_2

p101: Patient { id = 101 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 90 gender = Gender.F stayLength = 6 }
p101.assignedSurgeonId -- s0
hospital.patients -- p101
d101_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d101_0_0.patient -- p101
p101.dayDemand -- d101_0_0
d101_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d101_0_1.patient -- p101
p101.dayDemand -- d101_0_1
d101_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d101_0_2.patient -- p101
p101.dayDemand -- d101_0_2
d101_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d101_1_0.patient -- p101
p101.dayDemand -- d101_1_0
d101_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d101_1_1.patient -- p101
p101.dayDemand -- d101_1_1
d101_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d101_1_2.patient -- p101
p101.dayDemand -- d101_1_2
d101_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d101_2_0.patient -- p101
p101.dayDemand -- d101_2_0
d101_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d101_2_1.patient -- p101
p101.dayDemand -- d101_2_1
d101_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d101_2_2.patient -- p101
p101.dayDemand -- d101_2_2
d101_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d101_3_0.patient -- p101
p101.dayDemand -- d101_3_0
d101_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d101_3_1.patient -- p101
p101.dayDemand -- d101_3_1
d101_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d101_3_2.patient -- p101
p101.dayDemand -- d101_3_2
d101_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d101_4_0.patient -- p101
p101.dayDemand -- d101_4_0
d101_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d101_4_1.patient -- p101
p101.dayDemand -- d101_4_1
d101_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d101_4_2.patient -- p101
p101.dayDemand -- d101_4_2
d101_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d101_5_0.patient -- p101
p101.dayDemand -- d101_5_0
d101_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d101_5_1.patient -- p101
p101.dayDemand -- d101_5_1
d101_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d101_5_2.patient -- p101
p101.dayDemand -- d101_5_2

p102: Patient { id = 102 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 17 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 2 }
p102.assignedSurgeonId -- s0
hospital.patients -- p102
p102.incompatibleRooms -- r0
d102_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d102_0_0.patient -- p102
p102.dayDemand -- d102_0_0
d102_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d102_0_1.patient -- p102
p102.dayDemand -- d102_0_1
d102_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d102_0_2.patient -- p102
p102.dayDemand -- d102_0_2
d102_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d102_1_0.patient -- p102
p102.dayDemand -- d102_1_0
d102_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d102_1_1.patient -- p102
p102.dayDemand -- d102_1_1
d102_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d102_1_2.patient -- p102
p102.dayDemand -- d102_1_2

p103: Patient { id = 103 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.M stayLength = 8 }
p103.assignedSurgeonId -- s0
hospital.patients -- p103
d103_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d103_0_0.patient -- p103
p103.dayDemand -- d103_0_0
d103_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d103_0_1.patient -- p103
p103.dayDemand -- d103_0_1
d103_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d103_0_2.patient -- p103
p103.dayDemand -- d103_0_2
d103_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d103_1_0.patient -- p103
p103.dayDemand -- d103_1_0
d103_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d103_1_1.patient -- p103
p103.dayDemand -- d103_1_1
d103_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d103_1_2.patient -- p103
p103.dayDemand -- d103_1_2
d103_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d103_2_0.patient -- p103
p103.dayDemand -- d103_2_0
d103_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d103_2_1.patient -- p103
p103.dayDemand -- d103_2_1
d103_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d103_2_2.patient -- p103
p103.dayDemand -- d103_2_2
d103_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d103_3_0.patient -- p103
p103.dayDemand -- d103_3_0
d103_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d103_3_1.patient -- p103
p103.dayDemand -- d103_3_1
d103_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d103_3_2.patient -- p103
p103.dayDemand -- d103_3_2
d103_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d103_4_0.patient -- p103
p103.dayDemand -- d103_4_0
d103_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d103_4_1.patient -- p103
p103.dayDemand -- d103_4_1
d103_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d103_4_2.patient -- p103
p103.dayDemand -- d103_4_2
d103_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d103_5_0.patient -- p103
p103.dayDemand -- d103_5_0
d103_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d103_5_1.patient -- p103
p103.dayDemand -- d103_5_1
d103_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d103_5_2.patient -- p103
p103.dayDemand -- d103_5_2
d103_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d103_6_0.patient -- p103
p103.dayDemand -- d103_6_0
d103_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d103_6_1.patient -- p103
p103.dayDemand -- d103_6_1
d103_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d103_6_2.patient -- p103
p103.dayDemand -- d103_6_2
d103_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d103_7_0.patient -- p103
p103.dayDemand -- d103_7_0
d103_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d103_7_1.patient -- p103
p103.dayDemand -- d103_7_1
d103_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d103_7_2.patient -- p103
p103.dayDemand -- d103_7_2

p104: Patient { id = 104 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 16 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.M stayLength = 3 }
p104.assignedSurgeonId -- s0
hospital.patients -- p104
p104.incompatibleRooms -- r5
d104_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d104_0_0.patient -- p104
p104.dayDemand -- d104_0_0
d104_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d104_0_1.patient -- p104
p104.dayDemand -- d104_0_1
d104_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d104_0_2.patient -- p104
p104.dayDemand -- d104_0_2
d104_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d104_1_0.patient -- p104
p104.dayDemand -- d104_1_0
d104_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d104_1_1.patient -- p104
p104.dayDemand -- d104_1_1
d104_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d104_1_2.patient -- p104
p104.dayDemand -- d104_1_2
d104_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 4 }
d104_2_0.patient -- p104
p104.dayDemand -- d104_2_0
d104_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d104_2_1.patient -- p104
p104.dayDemand -- d104_2_1
d104_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d104_2_2.patient -- p104
p104.dayDemand -- d104_2_2

p105: Patient { id = 105 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.F stayLength = 5 }
p105.assignedSurgeonId -- s0
hospital.patients -- p105
p105.incompatibleRooms -- r3
d105_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d105_0_0.patient -- p105
p105.dayDemand -- d105_0_0
d105_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d105_0_1.patient -- p105
p105.dayDemand -- d105_0_1
d105_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d105_0_2.patient -- p105
p105.dayDemand -- d105_0_2
d105_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d105_1_0.patient -- p105
p105.dayDemand -- d105_1_0
d105_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d105_1_1.patient -- p105
p105.dayDemand -- d105_1_1
d105_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d105_1_2.patient -- p105
p105.dayDemand -- d105_1_2
d105_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 3 }
d105_2_0.patient -- p105
p105.dayDemand -- d105_2_0
d105_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d105_2_1.patient -- p105
p105.dayDemand -- d105_2_1
d105_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d105_2_2.patient -- p105
p105.dayDemand -- d105_2_2
d105_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d105_3_0.patient -- p105
p105.dayDemand -- d105_3_0
d105_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d105_3_1.patient -- p105
p105.dayDemand -- d105_3_1
d105_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d105_3_2.patient -- p105
p105.dayDemand -- d105_3_2
d105_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d105_4_0.patient -- p105
p105.dayDemand -- d105_4_0
d105_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d105_4_1.patient -- p105
p105.dayDemand -- d105_4_1
d105_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d105_4_2.patient -- p105
p105.dayDemand -- d105_4_2

p106: Patient { id = 106 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 9 ageGroup = AgeGroup.YOUNG surgeryDuration = 180 gender = Gender.F stayLength = 3 }
p106.assignedSurgeonId -- s0
hospital.patients -- p106
d106_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d106_0_0.patient -- p106
p106.dayDemand -- d106_0_0
d106_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d106_0_1.patient -- p106
p106.dayDemand -- d106_0_1
d106_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d106_0_2.patient -- p106
p106.dayDemand -- d106_0_2
d106_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d106_1_0.patient -- p106
p106.dayDemand -- d106_1_0
d106_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d106_1_1.patient -- p106
p106.dayDemand -- d106_1_1
d106_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d106_1_2.patient -- p106
p106.dayDemand -- d106_1_2
d106_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d106_2_0.patient -- p106
p106.dayDemand -- d106_2_0
d106_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 4 }
d106_2_1.patient -- p106
p106.dayDemand -- d106_2_1
d106_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d106_2_2.patient -- p106
p106.dayDemand -- d106_2_2

p107: Patient { id = 107 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 14 ageGroup = AgeGroup.ADULT surgeryDuration = 60 gender = Gender.F stayLength = 6 }
p107.assignedSurgeonId -- s0
hospital.patients -- p107
d107_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d107_0_0.patient -- p107
p107.dayDemand -- d107_0_0
d107_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d107_0_1.patient -- p107
p107.dayDemand -- d107_0_1
d107_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d107_0_2.patient -- p107
p107.dayDemand -- d107_0_2
d107_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d107_1_0.patient -- p107
p107.dayDemand -- d107_1_0
d107_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d107_1_1.patient -- p107
p107.dayDemand -- d107_1_1
d107_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d107_1_2.patient -- p107
p107.dayDemand -- d107_1_2
d107_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d107_2_0.patient -- p107
p107.dayDemand -- d107_2_0
d107_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d107_2_1.patient -- p107
p107.dayDemand -- d107_2_1
d107_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d107_2_2.patient -- p107
p107.dayDemand -- d107_2_2
d107_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d107_3_0.patient -- p107
p107.dayDemand -- d107_3_0
d107_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 3 }
d107_3_1.patient -- p107
p107.dayDemand -- d107_3_1
d107_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d107_3_2.patient -- p107
p107.dayDemand -- d107_3_2
d107_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d107_4_0.patient -- p107
p107.dayDemand -- d107_4_0
d107_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d107_4_1.patient -- p107
p107.dayDemand -- d107_4_1
d107_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d107_4_2.patient -- p107
p107.dayDemand -- d107_4_2
d107_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d107_5_0.patient -- p107
p107.dayDemand -- d107_5_0
d107_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d107_5_1.patient -- p107
p107.dayDemand -- d107_5_1
d107_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d107_5_2.patient -- p107
p107.dayDemand -- d107_5_2

p108: Patient { id = 108 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 3 }
p108.assignedSurgeonId -- s1
hospital.patients -- p108
p108.incompatibleRooms -- r3
d108_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d108_0_0.patient -- p108
p108.dayDemand -- d108_0_0
d108_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d108_0_1.patient -- p108
p108.dayDemand -- d108_0_1
d108_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d108_0_2.patient -- p108
p108.dayDemand -- d108_0_2
d108_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d108_1_0.patient -- p108
p108.dayDemand -- d108_1_0
d108_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d108_1_1.patient -- p108
p108.dayDemand -- d108_1_1
d108_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d108_1_2.patient -- p108
p108.dayDemand -- d108_1_2
d108_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 3 }
d108_2_0.patient -- p108
p108.dayDemand -- d108_2_0
d108_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d108_2_1.patient -- p108
p108.dayDemand -- d108_2_1
d108_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d108_2_2.patient -- p108
p108.dayDemand -- d108_2_2

p109: Patient { id = 109 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.CHILD surgeryDuration = 240 gender = Gender.F stayLength = 12 }
p109.assignedSurgeonId -- s0
hospital.patients -- p109
p109.incompatibleRooms -- r4
d109_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d109_0_0.patient -- p109
p109.dayDemand -- d109_0_0
d109_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d109_0_1.patient -- p109
p109.dayDemand -- d109_0_1
d109_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d109_0_2.patient -- p109
p109.dayDemand -- d109_0_2
d109_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d109_1_0.patient -- p109
p109.dayDemand -- d109_1_0
d109_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d109_1_1.patient -- p109
p109.dayDemand -- d109_1_1
d109_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d109_1_2.patient -- p109
p109.dayDemand -- d109_1_2
d109_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d109_2_0.patient -- p109
p109.dayDemand -- d109_2_0
d109_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d109_2_1.patient -- p109
p109.dayDemand -- d109_2_1
d109_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d109_2_2.patient -- p109
p109.dayDemand -- d109_2_2
d109_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d109_3_0.patient -- p109
p109.dayDemand -- d109_3_0
d109_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d109_3_1.patient -- p109
p109.dayDemand -- d109_3_1
d109_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d109_3_2.patient -- p109
p109.dayDemand -- d109_3_2
d109_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d109_4_0.patient -- p109
p109.dayDemand -- d109_4_0
d109_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d109_4_1.patient -- p109
p109.dayDemand -- d109_4_1
d109_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d109_4_2.patient -- p109
p109.dayDemand -- d109_4_2
d109_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d109_5_0.patient -- p109
p109.dayDemand -- d109_5_0
d109_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 4 }
d109_5_1.patient -- p109
p109.dayDemand -- d109_5_1
d109_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d109_5_2.patient -- p109
p109.dayDemand -- d109_5_2
d109_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d109_6_0.patient -- p109
p109.dayDemand -- d109_6_0
d109_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d109_6_1.patient -- p109
p109.dayDemand -- d109_6_1
d109_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d109_6_2.patient -- p109
p109.dayDemand -- d109_6_2
d109_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d109_7_0.patient -- p109
p109.dayDemand -- d109_7_0
d109_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d109_7_1.patient -- p109
p109.dayDemand -- d109_7_1
d109_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d109_7_2.patient -- p109
p109.dayDemand -- d109_7_2
d109_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d109_8_0.patient -- p109
p109.dayDemand -- d109_8_0
d109_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d109_8_1.patient -- p109
p109.dayDemand -- d109_8_1
d109_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d109_8_2.patient -- p109
p109.dayDemand -- d109_8_2
d109_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d109_9_0.patient -- p109
p109.dayDemand -- d109_9_0
d109_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d109_9_1.patient -- p109
p109.dayDemand -- d109_9_1
d109_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d109_9_2.patient -- p109
p109.dayDemand -- d109_9_2
d109_10_0: PatientDayDemand { relativeDay = 10 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d109_10_0.patient -- p109
p109.dayDemand -- d109_10_0
d109_10_1: PatientDayDemand { relativeDay = 10 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d109_10_1.patient -- p109
p109.dayDemand -- d109_10_1
d109_10_2: PatientDayDemand { relativeDay = 10 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d109_10_2.patient -- p109
p109.dayDemand -- d109_10_2
d109_11_0: PatientDayDemand { relativeDay = 11 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d109_11_0.patient -- p109
p109.dayDemand -- d109_11_0
d109_11_1: PatientDayDemand { relativeDay = 11 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d109_11_1.patient -- p109
p109.dayDemand -- d109_11_1
d109_11_2: PatientDayDemand { relativeDay = 11 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d109_11_2.patient -- p109
p109.dayDemand -- d109_11_2

p110: Patient { id = 110 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 16 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.F stayLength = 3 }
p110.assignedSurgeonId -- s0
hospital.patients -- p110
d110_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 4 }
d110_0_0.patient -- p110
p110.dayDemand -- d110_0_0
d110_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d110_0_1.patient -- p110
p110.dayDemand -- d110_0_1
d110_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d110_0_2.patient -- p110
p110.dayDemand -- d110_0_2
d110_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d110_1_0.patient -- p110
p110.dayDemand -- d110_1_0
d110_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 4 }
d110_1_1.patient -- p110
p110.dayDemand -- d110_1_1
d110_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d110_1_2.patient -- p110
p110.dayDemand -- d110_1_2
d110_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 3 }
d110_2_0.patient -- p110
p110.dayDemand -- d110_2_0
d110_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d110_2_1.patient -- p110
p110.dayDemand -- d110_2_1
d110_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d110_2_2.patient -- p110
p110.dayDemand -- d110_2_2

p111: Patient { id = 111 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 6 }
p111.assignedSurgeonId -- s0
hospital.patients -- p111
p111.incompatibleRooms -- r6
d111_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d111_0_0.patient -- p111
p111.dayDemand -- d111_0_0
d111_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d111_0_1.patient -- p111
p111.dayDemand -- d111_0_1
d111_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d111_0_2.patient -- p111
p111.dayDemand -- d111_0_2
d111_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d111_1_0.patient -- p111
p111.dayDemand -- d111_1_0
d111_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d111_1_1.patient -- p111
p111.dayDemand -- d111_1_1
d111_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 3 }
d111_1_2.patient -- p111
p111.dayDemand -- d111_1_2
d111_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d111_2_0.patient -- p111
p111.dayDemand -- d111_2_0
d111_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d111_2_1.patient -- p111
p111.dayDemand -- d111_2_1
d111_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d111_2_2.patient -- p111
p111.dayDemand -- d111_2_2
d111_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d111_3_0.patient -- p111
p111.dayDemand -- d111_3_0
d111_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d111_3_1.patient -- p111
p111.dayDemand -- d111_3_1
d111_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d111_3_2.patient -- p111
p111.dayDemand -- d111_3_2
d111_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d111_4_0.patient -- p111
p111.dayDemand -- d111_4_0
d111_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 3 }
d111_4_1.patient -- p111
p111.dayDemand -- d111_4_1
d111_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d111_4_2.patient -- p111
p111.dayDemand -- d111_4_2
d111_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d111_5_0.patient -- p111
p111.dayDemand -- d111_5_0
d111_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d111_5_1.patient -- p111
p111.dayDemand -- d111_5_1
d111_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d111_5_2.patient -- p111
p111.dayDemand -- d111_5_2

p112: Patient { id = 112 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 5 }
p112.assignedSurgeonId -- s0
hospital.patients -- p112
p112.incompatibleRooms -- r0
p112.incompatibleRooms -- r6
d112_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 4 }
d112_0_0.patient -- p112
p112.dayDemand -- d112_0_0
d112_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d112_0_1.patient -- p112
p112.dayDemand -- d112_0_1
d112_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d112_0_2.patient -- p112
p112.dayDemand -- d112_0_2
d112_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 3 }
d112_1_0.patient -- p112
p112.dayDemand -- d112_1_0
d112_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d112_1_1.patient -- p112
p112.dayDemand -- d112_1_1
d112_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 2 }
d112_1_2.patient -- p112
p112.dayDemand -- d112_1_2
d112_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d112_2_0.patient -- p112
p112.dayDemand -- d112_2_0
d112_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d112_2_1.patient -- p112
p112.dayDemand -- d112_2_1
d112_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d112_2_2.patient -- p112
p112.dayDemand -- d112_2_2
d112_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d112_3_0.patient -- p112
p112.dayDemand -- d112_3_0
d112_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 3 }
d112_3_1.patient -- p112
p112.dayDemand -- d112_3_1
d112_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 3 }
d112_3_2.patient -- p112
p112.dayDemand -- d112_3_2
d112_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d112_4_0.patient -- p112
p112.dayDemand -- d112_4_0
d112_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d112_4_1.patient -- p112
p112.dayDemand -- d112_4_1
d112_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 2 }
d112_4_2.patient -- p112
p112.dayDemand -- d112_4_2

a3: Admission { admissionDay = 1 }
a3.patientId -- p3
a3.roomId -- r2
a3.operationTheatreId -- ot0
hospital.admissions -- a3
a46: Admission { admissionDay = 14 }
a46.patientId -- p46
a46.roomId -- r0
a46.operationTheatreId -- ot0
hospital.admissions -- a46
a13: Admission { admissionDay = 13 }
a13.patientId -- p13
a13.roomId -- r0
a13.operationTheatreId -- ot0
hospital.admissions -- a13
a107: Admission { admissionDay = 14 }
a107.patientId -- p107
a107.roomId -- r1
a107.operationTheatreId -- ot0
hospital.admissions -- a107
a79: Admission { admissionDay = 18 }
a79.patientId -- p79
a79.roomId -- r0
a79.operationTheatreId -- ot0
hospital.admissions -- a79
a23: Admission { admissionDay = 11 }
a23.patientId -- p23
a23.roomId -- r0
a23.operationTheatreId -- ot0
hospital.admissions -- a23
a35: Admission { admissionDay = 13 }
a35.patientId -- p35
a35.roomId -- r2
a35.operationTheatreId -- ot0
hospital.admissions -- a35
a53: Admission { admissionDay = 7 }
a53.patientId -- p53
a53.roomId -- r0
a53.operationTheatreId -- ot0
hospital.admissions -- a53
a82: Admission { admissionDay = 9 }
a82.patientId -- p82
a82.roomId -- r2
a82.operationTheatreId -- ot0
hospital.admissions -- a82
a19: Admission { admissionDay = 2 }
a19.patientId -- p19
a19.roomId -- r4
a19.operationTheatreId -- ot0
hospital.admissions -- a19
a71: Admission { admissionDay = 17 }
a71.patientId -- p71
a71.roomId -- r2
a71.operationTheatreId -- ot0
hospital.admissions -- a71
a25: Admission { admissionDay = 11 }
a25.patientId -- p25
a25.roomId -- r3
a25.operationTheatreId -- ot0
hospital.admissions -- a25
a26: Admission { admissionDay = 11 }
a26.patientId -- p26
a26.roomId -- r3
a26.operationTheatreId -- ot1
hospital.admissions -- a26
a47: Admission { admissionDay = 8 }
a47.patientId -- p47
a47.roomId -- r1
a47.operationTheatreId -- ot0
hospital.admissions -- a47
a104: Admission { admissionDay = 16 }
a104.patientId -- p104
a104.roomId -- r1
a104.operationTheatreId -- ot0
hospital.admissions -- a104
a33: Admission { admissionDay = 7 }
a33.patientId -- p33
a33.roomId -- r3
a33.operationTheatreId -- ot0
hospital.admissions -- a33
a24: Admission { admissionDay = 4 }
a24.patientId -- p24
a24.roomId -- r0
a24.operationTheatreId -- ot1
hospital.admissions -- a24
a49: Admission { admissionDay = 9 }
a49.patientId -- p49
a49.roomId -- r4
a49.operationTheatreId -- ot0
hospital.admissions -- a49
a77: Admission { admissionDay = 14 }
a77.patientId -- p77
a77.roomId -- r4
a77.operationTheatreId -- ot0
hospital.admissions -- a77
a45: Admission { admissionDay = 15 }
a45.patientId -- p45
a45.roomId -- r5
a45.operationTheatreId -- ot2
hospital.admissions -- a45
a34: Admission { admissionDay = 7 }
a34.patientId -- p34
a34.roomId -- r0
a34.operationTheatreId -- ot0
hospital.admissions -- a34
a8: Admission { admissionDay = 1 }
a8.patientId -- p8
a8.roomId -- r3
a8.operationTheatreId -- ot0
hospital.admissions -- a8
a52: Admission { admissionDay = 5 }
a52.patientId -- p52
a52.roomId -- r1
a52.operationTheatreId -- ot1
hospital.admissions -- a52
a91: Admission { admissionDay = 16 }
a91.patientId -- p91
a91.roomId -- r0
a91.operationTheatreId -- ot0
hospital.admissions -- a91
a5: Admission { admissionDay = 0 }
a5.patientId -- p5
a5.roomId -- r5
a5.operationTheatreId -- ot2
hospital.admissions -- a5
a2: Admission { admissionDay = 1 }
a2.patientId -- p2
a2.roomId -- r6
a2.operationTheatreId -- ot0
hospital.admissions -- a2
a15: Admission { admissionDay = 3 }
a15.patientId -- p15
a15.roomId -- r0
a15.operationTheatreId -- ot0
hospital.admissions -- a15
a50: Admission { admissionDay = 3 }
a50.patientId -- p50
a50.roomId -- r1
a50.operationTheatreId -- ot0
hospital.admissions -- a50
a62: Admission { admissionDay = 14 }
a62.patientId -- p62
a62.roomId -- r7
a62.operationTheatreId -- ot0
hospital.admissions -- a62
a4: Admission { admissionDay = 8 }
a4.patientId -- p4
a4.roomId -- r2
a4.operationTheatreId -- ot0
hospital.admissions -- a4
a7: Admission { admissionDay = 0 }
a7.patientId -- p7
a7.roomId -- r5
a7.operationTheatreId -- ot2
hospital.admissions -- a7
a27: Admission { admissionDay = 11 }
a27.patientId -- p27
a27.roomId -- r0
a27.operationTheatreId -- ot0
hospital.admissions -- a27
a58: Admission { admissionDay = 5 }
a58.patientId -- p58
a58.roomId -- r3
a58.operationTheatreId -- ot1
hospital.admissions -- a58
a41: Admission { admissionDay = 9 }
a41.patientId -- p41
a41.roomId -- r1
a41.operationTheatreId -- ot0
hospital.admissions -- a41
a30: Admission { admissionDay = 11 }
a30.patientId -- p30
a30.roomId -- r1
a30.operationTheatreId -- ot0
hospital.admissions -- a30
a39: Admission { admissionDay = 4 }
a39.patientId -- p39
a39.roomId -- r2
a39.operationTheatreId -- ot1
hospital.admissions -- a39
a42: Admission { admissionDay = 5 }
a42.patientId -- p42
a42.roomId -- r4
a42.operationTheatreId -- ot1
hospital.admissions -- a42
a92: Admission { admissionDay = 16 }
a92.patientId -- p92
a92.roomId -- r2
a92.operationTheatreId -- ot0
hospital.admissions -- a92
a56: Admission { admissionDay = 7 }
a56.patientId -- p56
a56.roomId -- r8
a56.operationTheatreId -- ot0
hospital.admissions -- a56
a64: Admission { admissionDay = 14 }
a64.patientId -- p64
a64.roomId -- r4
a64.operationTheatreId -- ot1
hospital.admissions -- a64
a11: Admission { admissionDay = 2 }
a11.patientId -- p11
a11.roomId -- r4
a11.operationTheatreId -- ot0
hospital.admissions -- a11
a20: Admission { admissionDay = 3 }
a20.patientId -- p20
a20.roomId -- r1
a20.operationTheatreId -- ot0
hospital.admissions -- a20
a12: Admission { admissionDay = 4 }
a12.patientId -- p12
a12.roomId -- r1
a12.operationTheatreId -- ot1
hospital.admissions -- a12
a44: Admission { admissionDay = 17 }
a44.patientId -- p44
a44.roomId -- r6
a44.operationTheatreId -- ot0
hospital.admissions -- a44
a65: Admission { admissionDay = 8 }
a65.patientId -- p65
a65.roomId -- r1
a65.operationTheatreId -- ot0
hospital.admissions -- a65
a97: Admission { admissionDay = 19 }
a97.patientId -- p97
a97.roomId -- r0
a97.operationTheatreId -- ot0
hospital.admissions -- a97
a83: Admission { admissionDay = 16 }
a83.patientId -- p83
a83.roomId -- r5
a83.operationTheatreId -- ot0
hospital.admissions -- a83
a68: Admission { admissionDay = 5 }
a68.patientId -- p68
a68.roomId -- r1
a68.operationTheatreId -- ot1
hospital.admissions -- a68
a48: Admission { admissionDay = 14 }
a48.patientId -- p48
a48.roomId -- r4
a48.operationTheatreId -- ot1
hospital.admissions -- a48
a1: Admission { admissionDay = 8 }
a1.patientId -- p1
a1.roomId -- r7
a1.operationTheatreId -- ot0
hospital.admissions -- a1
a59: Admission { admissionDay = 14 }
a59.patientId -- p59
a59.roomId -- r8
a59.operationTheatreId -- ot1
hospital.admissions -- a59
a16: Admission { admissionDay = 3 }
a16.patientId -- p16
a16.roomId -- r5
a16.operationTheatreId -- ot0
hospital.admissions -- a16
a31: Admission { admissionDay = 8 }
a31.patientId -- p31
a31.roomId -- r4
a31.operationTheatreId -- ot1
hospital.admissions -- a31
a18: Admission { admissionDay = 8 }
a18.patientId -- p18
a18.roomId -- r8
a18.operationTheatreId -- ot1
hospital.admissions -- a18
a36: Admission { admissionDay = 11 }
a36.patientId -- p36
a36.roomId -- r6
a36.operationTheatreId -- ot1
hospital.admissions -- a36

sa0d0: SurgeonAvailability { day = 0 maxOperatingTime = 0 }
sa0d0.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d0
sa0d1: SurgeonAvailability { day = 1 maxOperatingTime = 600 }
sa0d1.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d1
sa0d2: SurgeonAvailability { day = 2 maxOperatingTime = 0 }
sa0d2.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d2
sa0d3: SurgeonAvailability { day = 3 maxOperatingTime = 600 }
sa0d3.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d3
sa0d4: SurgeonAvailability { day = 4 maxOperatingTime = 0 }
sa0d4.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d4
sa0d5: SurgeonAvailability { day = 5 maxOperatingTime = 0 }
sa0d5.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d5
sa0d6: SurgeonAvailability { day = 6 maxOperatingTime = 0 }
sa0d6.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d6
sa0d7: SurgeonAvailability { day = 7 maxOperatingTime = 480 }
sa0d7.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d7
sa0d8: SurgeonAvailability { day = 8 maxOperatingTime = 480 }
sa0d8.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d8
sa0d9: SurgeonAvailability { day = 9 maxOperatingTime = 480 }
sa0d9.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d9
sa0d10: SurgeonAvailability { day = 10 maxOperatingTime = 0 }
sa0d10.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d10
sa0d11: SurgeonAvailability { day = 11 maxOperatingTime = 600 }
sa0d11.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d11
sa0d12: SurgeonAvailability { day = 12 maxOperatingTime = 0 }
sa0d12.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d12
sa0d13: SurgeonAvailability { day = 13 maxOperatingTime = 0 }
sa0d13.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d13
sa0d14: SurgeonAvailability { day = 14 maxOperatingTime = 600 }
sa0d14.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d14
sa0d15: SurgeonAvailability { day = 15 maxOperatingTime = 0 }
sa0d15.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d15
sa0d16: SurgeonAvailability { day = 16 maxOperatingTime = 480 }
sa0d16.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d16
sa0d17: SurgeonAvailability { day = 17 maxOperatingTime = 360 }
sa0d17.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d17
sa0d18: SurgeonAvailability { day = 18 maxOperatingTime = 0 }
sa0d18.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d18
sa0d19: SurgeonAvailability { day = 19 maxOperatingTime = 480 }
sa0d19.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d19
sa0d20: SurgeonAvailability { day = 20 maxOperatingTime = 0 }
sa0d20.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d20
sa1d0: SurgeonAvailability { day = 0 maxOperatingTime = 480 }
sa1d0.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d0
sa1d1: SurgeonAvailability { day = 1 maxOperatingTime = 0 }
sa1d1.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d1
sa1d2: SurgeonAvailability { day = 2 maxOperatingTime = 360 }
sa1d2.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d2
sa1d3: SurgeonAvailability { day = 3 maxOperatingTime = 0 }
sa1d3.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d3
sa1d4: SurgeonAvailability { day = 4 maxOperatingTime = 360 }
sa1d4.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d4
sa1d5: SurgeonAvailability { day = 5 maxOperatingTime = 480 }
sa1d5.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d5
sa1d6: SurgeonAvailability { day = 6 maxOperatingTime = 0 }
sa1d6.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d6
sa1d7: SurgeonAvailability { day = 7 maxOperatingTime = 360 }
sa1d7.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d7
sa1d8: SurgeonAvailability { day = 8 maxOperatingTime = 600 }
sa1d8.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d8
sa1d9: SurgeonAvailability { day = 9 maxOperatingTime = 0 }
sa1d9.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d9
sa1d10: SurgeonAvailability { day = 10 maxOperatingTime = 0 }
sa1d10.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d10
sa1d11: SurgeonAvailability { day = 11 maxOperatingTime = 480 }
sa1d11.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d11
sa1d12: SurgeonAvailability { day = 12 maxOperatingTime = 0 }
sa1d12.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d12
sa1d13: SurgeonAvailability { day = 13 maxOperatingTime = 480 }
sa1d13.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d13
sa1d14: SurgeonAvailability { day = 14 maxOperatingTime = 480 }
sa1d14.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d14
sa1d15: SurgeonAvailability { day = 15 maxOperatingTime = 360 }
sa1d15.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d15
sa1d16: SurgeonAvailability { day = 16 maxOperatingTime = 360 }
sa1d16.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d16
sa1d17: SurgeonAvailability { day = 17 maxOperatingTime = 0 }
sa1d17.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d17
sa1d18: SurgeonAvailability { day = 18 maxOperatingTime = 360 }
sa1d18.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d18
sa1d19: SurgeonAvailability { day = 19 maxOperatingTime = 480 }
sa1d19.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d19
sa1d20: SurgeonAvailability { day = 20 maxOperatingTime = 0 }
sa1d20.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1d20
ota0d0: OperatingTheatreAvailability { day = 0 maxCapacity = 0 }
ota0d0.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d0
ota0d1: OperatingTheatreAvailability { day = 1 maxCapacity = 720 }
ota0d1.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d1
ota0d2: OperatingTheatreAvailability { day = 2 maxCapacity = 720 }
ota0d2.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d2
ota0d3: OperatingTheatreAvailability { day = 3 maxCapacity = 600 }
ota0d3.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d3
ota0d4: OperatingTheatreAvailability { day = 4 maxCapacity = 0 }
ota0d4.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d4
ota0d5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
ota0d5.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d5
ota0d6: OperatingTheatreAvailability { day = 6 maxCapacity = 480 }
ota0d6.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d6
ota0d7: OperatingTheatreAvailability { day = 7 maxCapacity = 600 }
ota0d7.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d7
ota0d8: OperatingTheatreAvailability { day = 8 maxCapacity = 720 }
ota0d8.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d8
ota0d9: OperatingTheatreAvailability { day = 9 maxCapacity = 600 }
ota0d9.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d9
ota0d10: OperatingTheatreAvailability { day = 10 maxCapacity = 0 }
ota0d10.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d10
ota0d11: OperatingTheatreAvailability { day = 11 maxCapacity = 600 }
ota0d11.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d11
ota0d12: OperatingTheatreAvailability { day = 12 maxCapacity = 480 }
ota0d12.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d12
ota0d13: OperatingTheatreAvailability { day = 13 maxCapacity = 720 }
ota0d13.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d13
ota0d14: OperatingTheatreAvailability { day = 14 maxCapacity = 720 }
ota0d14.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d14
ota0d15: OperatingTheatreAvailability { day = 15 maxCapacity = 0 }
ota0d15.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d15
ota0d16: OperatingTheatreAvailability { day = 16 maxCapacity = 600 }
ota0d16.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d16
ota0d17: OperatingTheatreAvailability { day = 17 maxCapacity = 600 }
ota0d17.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d17
ota0d18: OperatingTheatreAvailability { day = 18 maxCapacity = 600 }
ota0d18.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d18
ota0d19: OperatingTheatreAvailability { day = 19 maxCapacity = 720 }
ota0d19.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d19
ota0d20: OperatingTheatreAvailability { day = 20 maxCapacity = 0 }
ota0d20.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d20
ota1d0: OperatingTheatreAvailability { day = 0 maxCapacity = 0 }
ota1d0.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d0
ota1d1: OperatingTheatreAvailability { day = 1 maxCapacity = 720 }
ota1d1.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d1
ota1d2: OperatingTheatreAvailability { day = 2 maxCapacity = 600 }
ota1d2.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d2
ota1d3: OperatingTheatreAvailability { day = 3 maxCapacity = 720 }
ota1d3.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d3
ota1d4: OperatingTheatreAvailability { day = 4 maxCapacity = 600 }
ota1d4.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d4
ota1d5: OperatingTheatreAvailability { day = 5 maxCapacity = 480 }
ota1d5.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d5
ota1d6: OperatingTheatreAvailability { day = 6 maxCapacity = 0 }
ota1d6.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d6
ota1d7: OperatingTheatreAvailability { day = 7 maxCapacity = 600 }
ota1d7.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d7
ota1d8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
ota1d8.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d8
ota1d9: OperatingTheatreAvailability { day = 9 maxCapacity = 600 }
ota1d9.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d9
ota1d10: OperatingTheatreAvailability { day = 10 maxCapacity = 480 }
ota1d10.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d10
ota1d11: OperatingTheatreAvailability { day = 11 maxCapacity = 600 }
ota1d11.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d11
ota1d12: OperatingTheatreAvailability { day = 12 maxCapacity = 600 }
ota1d12.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d12
ota1d13: OperatingTheatreAvailability { day = 13 maxCapacity = 600 }
ota1d13.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d13
ota1d14: OperatingTheatreAvailability { day = 14 maxCapacity = 720 }
ota1d14.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d14
ota1d15: OperatingTheatreAvailability { day = 15 maxCapacity = 0 }
ota1d15.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d15
ota1d16: OperatingTheatreAvailability { day = 16 maxCapacity = 600 }
ota1d16.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d16
ota1d17: OperatingTheatreAvailability { day = 17 maxCapacity = 720 }
ota1d17.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d17
ota1d18: OperatingTheatreAvailability { day = 18 maxCapacity = 600 }
ota1d18.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d18
ota1d19: OperatingTheatreAvailability { day = 19 maxCapacity = 600 }
ota1d19.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d19
ota1d20: OperatingTheatreAvailability { day = 20 maxCapacity = 480 }
ota1d20.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d20
ota2d0: OperatingTheatreAvailability { day = 0 maxCapacity = 720 }
ota2d0.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d0
ota2d1: OperatingTheatreAvailability { day = 1 maxCapacity = 0 }
ota2d1.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d1
ota2d2: OperatingTheatreAvailability { day = 2 maxCapacity = 720 }
ota2d2.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d2
ota2d3: OperatingTheatreAvailability { day = 3 maxCapacity = 600 }
ota2d3.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d3
ota2d4: OperatingTheatreAvailability { day = 4 maxCapacity = 480 }
ota2d4.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d4
ota2d5: OperatingTheatreAvailability { day = 5 maxCapacity = 480 }
ota2d5.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d5
ota2d6: OperatingTheatreAvailability { day = 6 maxCapacity = 600 }
ota2d6.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d6
ota2d7: OperatingTheatreAvailability { day = 7 maxCapacity = 480 }
ota2d7.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d7
ota2d8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
ota2d8.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d8
ota2d9: OperatingTheatreAvailability { day = 9 maxCapacity = 600 }
ota2d9.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d9
ota2d10: OperatingTheatreAvailability { day = 10 maxCapacity = 0 }
ota2d10.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d10
ota2d11: OperatingTheatreAvailability { day = 11 maxCapacity = 600 }
ota2d11.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d11
ota2d12: OperatingTheatreAvailability { day = 12 maxCapacity = 720 }
ota2d12.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d12
ota2d13: OperatingTheatreAvailability { day = 13 maxCapacity = 720 }
ota2d13.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d13
ota2d14: OperatingTheatreAvailability { day = 14 maxCapacity = 720 }
ota2d14.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d14
ota2d15: OperatingTheatreAvailability { day = 15 maxCapacity = 720 }
ota2d15.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d15
ota2d16: OperatingTheatreAvailability { day = 16 maxCapacity = 720 }
ota2d16.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d16
ota2d17: OperatingTheatreAvailability { day = 17 maxCapacity = 720 }
ota2d17.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d17
ota2d18: OperatingTheatreAvailability { day = 18 maxCapacity = 600 }
ota2d18.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d18
ota2d19: OperatingTheatreAvailability { day = 19 maxCapacity = 720 }
ota2d19.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d19
ota2d20: OperatingTheatreAvailability { day = 20 maxCapacity = 720 }
ota2d20.operatingTheatreId -- ot2
hospital.operatingTheatreAvailabilities -- ota2d20
ra0d0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d0.roomId -- r0
hospital.roomAvailabilities -- ra0d0
ra0d1: RoomAvailability { day = 1 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d1.roomId -- r0
hospital.roomAvailabilities -- ra0d1
ra0d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d2.roomId -- r0
hospital.roomAvailabilities -- ra0d2
ra0d3: RoomAvailability { day = 3 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d3.roomId -- r0
hospital.roomAvailabilities -- ra0d3
ra0d4: RoomAvailability { day = 4 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d4.roomId -- r0
hospital.roomAvailabilities -- ra0d4
ra0d5: RoomAvailability { day = 5 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d5.roomId -- r0
hospital.roomAvailabilities -- ra0d5
ra0d6: RoomAvailability { day = 6 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d6.roomId -- r0
hospital.roomAvailabilities -- ra0d6
ra0d7: RoomAvailability { day = 7 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d7.roomId -- r0
hospital.roomAvailabilities -- ra0d7
ra0d8: RoomAvailability { day = 8 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d8.roomId -- r0
hospital.roomAvailabilities -- ra0d8
ra0d9: RoomAvailability { day = 9 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d9.roomId -- r0
hospital.roomAvailabilities -- ra0d9
ra0d10: RoomAvailability { day = 10 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d10.roomId -- r0
hospital.roomAvailabilities -- ra0d10
ra0d11: RoomAvailability { day = 11 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d11.roomId -- r0
hospital.roomAvailabilities -- ra0d11
ra0d12: RoomAvailability { day = 12 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d12.roomId -- r0
hospital.roomAvailabilities -- ra0d12
ra0d13: RoomAvailability { day = 13 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d13.roomId -- r0
hospital.roomAvailabilities -- ra0d13
ra0d14: RoomAvailability { day = 14 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d14.roomId -- r0
hospital.roomAvailabilities -- ra0d14
ra0d15: RoomAvailability { day = 15 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d15.roomId -- r0
hospital.roomAvailabilities -- ra0d15
ra0d16: RoomAvailability { day = 16 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d16.roomId -- r0
hospital.roomAvailabilities -- ra0d16
ra0d17: RoomAvailability { day = 17 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d17.roomId -- r0
hospital.roomAvailabilities -- ra0d17
ra0d18: RoomAvailability { day = 18 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d18.roomId -- r0
hospital.roomAvailabilities -- ra0d18
ra0d19: RoomAvailability { day = 19 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d19.roomId -- r0
hospital.roomAvailabilities -- ra0d19
ra0d20: RoomAvailability { day = 20 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d20.roomId -- r0
hospital.roomAvailabilities -- ra0d20
ra0d21: RoomAvailability { day = 21 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d21.roomId -- r0
hospital.roomAvailabilities -- ra0d21
ra0d22: RoomAvailability { day = 22 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d22.roomId -- r0
hospital.roomAvailabilities -- ra0d22
ra0d23: RoomAvailability { day = 23 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d23.roomId -- r0
hospital.roomAvailabilities -- ra0d23
ra0d24: RoomAvailability { day = 24 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d24.roomId -- r0
hospital.roomAvailabilities -- ra0d24
ra0d25: RoomAvailability { day = 25 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d25.roomId -- r0
hospital.roomAvailabilities -- ra0d25
ra0d26: RoomAvailability { day = 26 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d26.roomId -- r0
hospital.roomAvailabilities -- ra0d26
ra0d27: RoomAvailability { day = 27 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d27.roomId -- r0
hospital.roomAvailabilities -- ra0d27
ra0d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d28.roomId -- r0
hospital.roomAvailabilities -- ra0d28
ra0d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d29.roomId -- r0
hospital.roomAvailabilities -- ra0d29
ra0d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d30.roomId -- r0
hospital.roomAvailabilities -- ra0d30
ra0d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d31.roomId -- r0
hospital.roomAvailabilities -- ra0d31
ra1d0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d0.roomId -- r1
hospital.roomAvailabilities -- ra1d0
ra1d1: RoomAvailability { day = 1 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d1.roomId -- r1
hospital.roomAvailabilities -- ra1d1
ra1d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d2.roomId -- r1
hospital.roomAvailabilities -- ra1d2
ra1d3: RoomAvailability { day = 3 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d3.roomId -- r1
hospital.roomAvailabilities -- ra1d3
ra1d4: RoomAvailability { day = 4 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d4.roomId -- r1
hospital.roomAvailabilities -- ra1d4
ra1d5: RoomAvailability { day = 5 occupiedBeds = 4 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d5.roomId -- r1
hospital.roomAvailabilities -- ra1d5
ra1d6: RoomAvailability { day = 6 occupiedBeds = 4 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d6.roomId -- r1
hospital.roomAvailabilities -- ra1d6
ra1d7: RoomAvailability { day = 7 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d7.roomId -- r1
hospital.roomAvailabilities -- ra1d7
ra1d8: RoomAvailability { day = 8 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d8.roomId -- r1
hospital.roomAvailabilities -- ra1d8
ra1d9: RoomAvailability { day = 9 occupiedBeds = 3 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d9.roomId -- r1
hospital.roomAvailabilities -- ra1d9
ra1d10: RoomAvailability { day = 10 occupiedBeds = 3 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d10.roomId -- r1
hospital.roomAvailabilities -- ra1d10
ra1d11: RoomAvailability { day = 11 occupiedBeds = 4 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d11.roomId -- r1
hospital.roomAvailabilities -- ra1d11
ra1d12: RoomAvailability { day = 12 occupiedBeds = 4 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d12.roomId -- r1
hospital.roomAvailabilities -- ra1d12
ra1d13: RoomAvailability { day = 13 occupiedBeds = 3 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d13.roomId -- r1
hospital.roomAvailabilities -- ra1d13
ra1d14: RoomAvailability { day = 14 occupiedBeds = 3 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d14.roomId -- r1
hospital.roomAvailabilities -- ra1d14
ra1d15: RoomAvailability { day = 15 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d15.roomId -- r1
hospital.roomAvailabilities -- ra1d15
ra1d16: RoomAvailability { day = 16 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d16.roomId -- r1
hospital.roomAvailabilities -- ra1d16
ra1d17: RoomAvailability { day = 17 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d17.roomId -- r1
hospital.roomAvailabilities -- ra1d17
ra1d18: RoomAvailability { day = 18 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d18.roomId -- r1
hospital.roomAvailabilities -- ra1d18
ra1d19: RoomAvailability { day = 19 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1d19.roomId -- r1
hospital.roomAvailabilities -- ra1d19
ra1d20: RoomAvailability { day = 20 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d20.roomId -- r1
hospital.roomAvailabilities -- ra1d20
ra1d21: RoomAvailability { day = 21 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d21.roomId -- r1
hospital.roomAvailabilities -- ra1d21
ra1d22: RoomAvailability { day = 22 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d22.roomId -- r1
hospital.roomAvailabilities -- ra1d22
ra1d23: RoomAvailability { day = 23 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d23.roomId -- r1
hospital.roomAvailabilities -- ra1d23
ra1d24: RoomAvailability { day = 24 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d24.roomId -- r1
hospital.roomAvailabilities -- ra1d24
ra1d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d25.roomId -- r1
hospital.roomAvailabilities -- ra1d25
ra1d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d26.roomId -- r1
hospital.roomAvailabilities -- ra1d26
ra1d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d27.roomId -- r1
hospital.roomAvailabilities -- ra1d27
ra1d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d28.roomId -- r1
hospital.roomAvailabilities -- ra1d28
ra1d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d29.roomId -- r1
hospital.roomAvailabilities -- ra1d29
ra1d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d30.roomId -- r1
hospital.roomAvailabilities -- ra1d30
ra1d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d31.roomId -- r1
hospital.roomAvailabilities -- ra1d31
ra2d0: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d0.roomId -- r2
hospital.roomAvailabilities -- ra2d0
ra2d1: RoomAvailability { day = 1 occupiedBeds = 1 ageGroup = AgeGroup.BABY roomNumber = 2 }
ra2d1.roomId -- r2
hospital.roomAvailabilities -- ra2d1
ra2d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.BABY roomNumber = 2 }
ra2d2.roomId -- r2
hospital.roomAvailabilities -- ra2d2
ra2d3: RoomAvailability { day = 3 occupiedBeds = 1 ageGroup = AgeGroup.BABY roomNumber = 2 }
ra2d3.roomId -- r2
hospital.roomAvailabilities -- ra2d3
ra2d4: RoomAvailability { day = 4 occupiedBeds = 2 ageGroup = AgeGroup.BABY roomNumber = 2 }
ra2d4.roomId -- r2
hospital.roomAvailabilities -- ra2d4
ra2d5: RoomAvailability { day = 5 occupiedBeds = 2 ageGroup = AgeGroup.BABY roomNumber = 2 }
ra2d5.roomId -- r2
hospital.roomAvailabilities -- ra2d5
ra2d6: RoomAvailability { day = 6 occupiedBeds = 2 ageGroup = AgeGroup.BABY roomNumber = 2 }
ra2d6.roomId -- r2
hospital.roomAvailabilities -- ra2d6
ra2d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.BABY roomNumber = 2 }
ra2d7.roomId -- r2
hospital.roomAvailabilities -- ra2d7
ra2d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d8.roomId -- r2
hospital.roomAvailabilities -- ra2d8
ra2d9: RoomAvailability { day = 9 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d9.roomId -- r2
hospital.roomAvailabilities -- ra2d9
ra2d10: RoomAvailability { day = 10 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d10.roomId -- r2
hospital.roomAvailabilities -- ra2d10
ra2d11: RoomAvailability { day = 11 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d11.roomId -- r2
hospital.roomAvailabilities -- ra2d11
ra2d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d12.roomId -- r2
hospital.roomAvailabilities -- ra2d12
ra2d13: RoomAvailability { day = 13 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d13.roomId -- r2
hospital.roomAvailabilities -- ra2d13
ra2d14: RoomAvailability { day = 14 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d14.roomId -- r2
hospital.roomAvailabilities -- ra2d14
ra2d15: RoomAvailability { day = 15 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d15.roomId -- r2
hospital.roomAvailabilities -- ra2d15
ra2d16: RoomAvailability { day = 16 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d16.roomId -- r2
hospital.roomAvailabilities -- ra2d16
ra2d17: RoomAvailability { day = 17 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d17.roomId -- r2
hospital.roomAvailabilities -- ra2d17
ra2d18: RoomAvailability { day = 18 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d18.roomId -- r2
hospital.roomAvailabilities -- ra2d18
ra2d19: RoomAvailability { day = 19 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d19.roomId -- r2
hospital.roomAvailabilities -- ra2d19
ra2d20: RoomAvailability { day = 20 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d20.roomId -- r2
hospital.roomAvailabilities -- ra2d20
ra2d21: RoomAvailability { day = 21 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d21.roomId -- r2
hospital.roomAvailabilities -- ra2d21
ra2d22: RoomAvailability { day = 22 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d22.roomId -- r2
hospital.roomAvailabilities -- ra2d22
ra2d23: RoomAvailability { day = 23 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d23.roomId -- r2
hospital.roomAvailabilities -- ra2d23
ra2d24: RoomAvailability { day = 24 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d24.roomId -- r2
hospital.roomAvailabilities -- ra2d24
ra2d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d25.roomId -- r2
hospital.roomAvailabilities -- ra2d25
ra2d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d26.roomId -- r2
hospital.roomAvailabilities -- ra2d26
ra2d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d27.roomId -- r2
hospital.roomAvailabilities -- ra2d27
ra2d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d28.roomId -- r2
hospital.roomAvailabilities -- ra2d28
ra2d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d29.roomId -- r2
hospital.roomAvailabilities -- ra2d29
ra2d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d30.roomId -- r2
hospital.roomAvailabilities -- ra2d30
ra2d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d31.roomId -- r2
hospital.roomAvailabilities -- ra2d31
ra3d0: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 3 }
ra3d0.roomId -- r3
hospital.roomAvailabilities -- ra3d0
ra3d1: RoomAvailability { day = 1 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 3 }
ra3d1.roomId -- r3
hospital.roomAvailabilities -- ra3d1
ra3d2: RoomAvailability { day = 2 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 3 }
ra3d2.roomId -- r3
hospital.roomAvailabilities -- ra3d2
ra3d3: RoomAvailability { day = 3 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 3 }
ra3d3.roomId -- r3
hospital.roomAvailabilities -- ra3d3
ra3d4: RoomAvailability { day = 4 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 3 }
ra3d4.roomId -- r3
hospital.roomAvailabilities -- ra3d4
ra3d5: RoomAvailability { day = 5 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d5.roomId -- r3
hospital.roomAvailabilities -- ra3d5
ra3d6: RoomAvailability { day = 6 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d6.roomId -- r3
hospital.roomAvailabilities -- ra3d6
ra3d7: RoomAvailability { day = 7 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d7.roomId -- r3
hospital.roomAvailabilities -- ra3d7
ra3d8: RoomAvailability { day = 8 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d8.roomId -- r3
hospital.roomAvailabilities -- ra3d8
ra3d9: RoomAvailability { day = 9 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d9.roomId -- r3
hospital.roomAvailabilities -- ra3d9
ra3d10: RoomAvailability { day = 10 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d10.roomId -- r3
hospital.roomAvailabilities -- ra3d10
ra3d11: RoomAvailability { day = 11 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d11.roomId -- r3
hospital.roomAvailabilities -- ra3d11
ra3d12: RoomAvailability { day = 12 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d12.roomId -- r3
hospital.roomAvailabilities -- ra3d12
ra3d13: RoomAvailability { day = 13 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d13.roomId -- r3
hospital.roomAvailabilities -- ra3d13
ra3d14: RoomAvailability { day = 14 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d14.roomId -- r3
hospital.roomAvailabilities -- ra3d14
ra3d15: RoomAvailability { day = 15 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d15.roomId -- r3
hospital.roomAvailabilities -- ra3d15
ra3d16: RoomAvailability { day = 16 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d16.roomId -- r3
hospital.roomAvailabilities -- ra3d16
ra3d17: RoomAvailability { day = 17 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d17.roomId -- r3
hospital.roomAvailabilities -- ra3d17
ra3d18: RoomAvailability { day = 18 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d18.roomId -- r3
hospital.roomAvailabilities -- ra3d18
ra3d19: RoomAvailability { day = 19 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d19.roomId -- r3
hospital.roomAvailabilities -- ra3d19
ra3d20: RoomAvailability { day = 20 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d20.roomId -- r3
hospital.roomAvailabilities -- ra3d20
ra3d21: RoomAvailability { day = 21 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d21.roomId -- r3
hospital.roomAvailabilities -- ra3d21
ra3d22: RoomAvailability { day = 22 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d22.roomId -- r3
hospital.roomAvailabilities -- ra3d22
ra3d23: RoomAvailability { day = 23 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d23.roomId -- r3
hospital.roomAvailabilities -- ra3d23
ra3d24: RoomAvailability { day = 24 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d24.roomId -- r3
hospital.roomAvailabilities -- ra3d24
ra3d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d25.roomId -- r3
hospital.roomAvailabilities -- ra3d25
ra3d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d26.roomId -- r3
hospital.roomAvailabilities -- ra3d26
ra3d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d27.roomId -- r3
hospital.roomAvailabilities -- ra3d27
ra3d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d28.roomId -- r3
hospital.roomAvailabilities -- ra3d28
ra3d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d29.roomId -- r3
hospital.roomAvailabilities -- ra3d29
ra3d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d30.roomId -- r3
hospital.roomAvailabilities -- ra3d30
ra3d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d31.roomId -- r3
hospital.roomAvailabilities -- ra3d31
ra4d0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d0.roomId -- r4
hospital.roomAvailabilities -- ra4d0
ra4d1: RoomAvailability { day = 1 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d1.roomId -- r4
hospital.roomAvailabilities -- ra4d1
ra4d2: RoomAvailability { day = 2 occupiedBeds = 3 ageGroup = AgeGroup.YOUNG roomNumber = 4 }
ra4d2.roomId -- r4
hospital.roomAvailabilities -- ra4d2
ra4d3: RoomAvailability { day = 3 occupiedBeds = 3 ageGroup = AgeGroup.YOUNG roomNumber = 4 }
ra4d3.roomId -- r4
hospital.roomAvailabilities -- ra4d3
ra4d4: RoomAvailability { day = 4 occupiedBeds = 3 ageGroup = AgeGroup.YOUNG roomNumber = 4 }
ra4d4.roomId -- r4
hospital.roomAvailabilities -- ra4d4
ra4d5: RoomAvailability { day = 5 occupiedBeds = 3 ageGroup = AgeGroup.YOUNG roomNumber = 4 }
ra4d5.roomId -- r4
hospital.roomAvailabilities -- ra4d5
ra4d6: RoomAvailability { day = 6 occupiedBeds = 2 ageGroup = AgeGroup.YOUNG roomNumber = 4 }
ra4d6.roomId -- r4
hospital.roomAvailabilities -- ra4d6
ra4d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 4 }
ra4d7.roomId -- r4
hospital.roomAvailabilities -- ra4d7
ra4d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d8.roomId -- r4
hospital.roomAvailabilities -- ra4d8
ra4d9: RoomAvailability { day = 9 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d9.roomId -- r4
hospital.roomAvailabilities -- ra4d9
ra4d10: RoomAvailability { day = 10 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d10.roomId -- r4
hospital.roomAvailabilities -- ra4d10
ra4d11: RoomAvailability { day = 11 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d11.roomId -- r4
hospital.roomAvailabilities -- ra4d11
ra4d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d12.roomId -- r4
hospital.roomAvailabilities -- ra4d12
ra4d13: RoomAvailability { day = 13 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d13.roomId -- r4
hospital.roomAvailabilities -- ra4d13
ra4d14: RoomAvailability { day = 14 occupiedBeds = 4 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d14.roomId -- r4
hospital.roomAvailabilities -- ra4d14
ra4d15: RoomAvailability { day = 15 occupiedBeds = 4 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d15.roomId -- r4
hospital.roomAvailabilities -- ra4d15
ra4d16: RoomAvailability { day = 16 occupiedBeds = 4 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d16.roomId -- r4
hospital.roomAvailabilities -- ra4d16
ra4d17: RoomAvailability { day = 17 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d17.roomId -- r4
hospital.roomAvailabilities -- ra4d17
ra4d18: RoomAvailability { day = 18 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d18.roomId -- r4
hospital.roomAvailabilities -- ra4d18
ra4d19: RoomAvailability { day = 19 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d19.roomId -- r4
hospital.roomAvailabilities -- ra4d19
ra4d20: RoomAvailability { day = 20 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d20.roomId -- r4
hospital.roomAvailabilities -- ra4d20
ra4d21: RoomAvailability { day = 21 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d21.roomId -- r4
hospital.roomAvailabilities -- ra4d21
ra4d22: RoomAvailability { day = 22 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d22.roomId -- r4
hospital.roomAvailabilities -- ra4d22
ra4d23: RoomAvailability { day = 23 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d23.roomId -- r4
hospital.roomAvailabilities -- ra4d23
ra4d24: RoomAvailability { day = 24 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d24.roomId -- r4
hospital.roomAvailabilities -- ra4d24
ra4d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d25.roomId -- r4
hospital.roomAvailabilities -- ra4d25
ra4d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d26.roomId -- r4
hospital.roomAvailabilities -- ra4d26
ra4d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d27.roomId -- r4
hospital.roomAvailabilities -- ra4d27
ra4d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d28.roomId -- r4
hospital.roomAvailabilities -- ra4d28
ra4d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d29.roomId -- r4
hospital.roomAvailabilities -- ra4d29
ra4d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d30.roomId -- r4
hospital.roomAvailabilities -- ra4d30
ra4d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d31.roomId -- r4
hospital.roomAvailabilities -- ra4d31
ra5d0: RoomAvailability { day = 0 occupiedBeds = 3 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d0.roomId -- r5
hospital.roomAvailabilities -- ra5d0
ra5d1: RoomAvailability { day = 1 occupiedBeds = 3 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d1.roomId -- r5
hospital.roomAvailabilities -- ra5d1
ra5d2: RoomAvailability { day = 2 occupiedBeds = 3 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d2.roomId -- r5
hospital.roomAvailabilities -- ra5d2
ra5d3: RoomAvailability { day = 3 occupiedBeds = 4 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d3.roomId -- r5
hospital.roomAvailabilities -- ra5d3
ra5d4: RoomAvailability { day = 4 occupiedBeds = 4 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d4.roomId -- r5
hospital.roomAvailabilities -- ra5d4
ra5d5: RoomAvailability { day = 5 occupiedBeds = 4 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d5.roomId -- r5
hospital.roomAvailabilities -- ra5d5
ra5d6: RoomAvailability { day = 6 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d6.roomId -- r5
hospital.roomAvailabilities -- ra5d6
ra5d7: RoomAvailability { day = 7 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d7.roomId -- r5
hospital.roomAvailabilities -- ra5d7
ra5d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d8.roomId -- r5
hospital.roomAvailabilities -- ra5d8
ra5d9: RoomAvailability { day = 9 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d9.roomId -- r5
hospital.roomAvailabilities -- ra5d9
ra5d10: RoomAvailability { day = 10 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 5 }
ra5d10.roomId -- r5
hospital.roomAvailabilities -- ra5d10
ra5d11: RoomAvailability { day = 11 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d11.roomId -- r5
hospital.roomAvailabilities -- ra5d11
ra5d12: RoomAvailability { day = 12 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d12.roomId -- r5
hospital.roomAvailabilities -- ra5d12
ra5d13: RoomAvailability { day = 13 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d13.roomId -- r5
hospital.roomAvailabilities -- ra5d13
ra5d14: RoomAvailability { day = 14 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d14.roomId -- r5
hospital.roomAvailabilities -- ra5d14
ra5d15: RoomAvailability { day = 15 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 5 }
ra5d15.roomId -- r5
hospital.roomAvailabilities -- ra5d15
ra5d16: RoomAvailability { day = 16 occupiedBeds = 2 ageGroup = AgeGroup.CHILD roomNumber = 5 }
ra5d16.roomId -- r5
hospital.roomAvailabilities -- ra5d16
ra5d17: RoomAvailability { day = 17 occupiedBeds = 2 ageGroup = AgeGroup.CHILD roomNumber = 5 }
ra5d17.roomId -- r5
hospital.roomAvailabilities -- ra5d17
ra5d18: RoomAvailability { day = 18 occupiedBeds = 2 ageGroup = AgeGroup.CHILD roomNumber = 5 }
ra5d18.roomId -- r5
hospital.roomAvailabilities -- ra5d18
ra5d19: RoomAvailability { day = 19 occupiedBeds = 2 ageGroup = AgeGroup.CHILD roomNumber = 5 }
ra5d19.roomId -- r5
hospital.roomAvailabilities -- ra5d19
ra5d20: RoomAvailability { day = 20 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 5 }
ra5d20.roomId -- r5
hospital.roomAvailabilities -- ra5d20
ra5d21: RoomAvailability { day = 21 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d21.roomId -- r5
hospital.roomAvailabilities -- ra5d21
ra5d22: RoomAvailability { day = 22 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d22.roomId -- r5
hospital.roomAvailabilities -- ra5d22
ra5d23: RoomAvailability { day = 23 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d23.roomId -- r5
hospital.roomAvailabilities -- ra5d23
ra5d24: RoomAvailability { day = 24 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d24.roomId -- r5
hospital.roomAvailabilities -- ra5d24
ra5d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d25.roomId -- r5
hospital.roomAvailabilities -- ra5d25
ra5d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d26.roomId -- r5
hospital.roomAvailabilities -- ra5d26
ra5d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d27.roomId -- r5
hospital.roomAvailabilities -- ra5d27
ra5d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d28.roomId -- r5
hospital.roomAvailabilities -- ra5d28
ra5d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d29.roomId -- r5
hospital.roomAvailabilities -- ra5d29
ra5d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d30.roomId -- r5
hospital.roomAvailabilities -- ra5d30
ra5d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 5 }
ra5d31.roomId -- r5
hospital.roomAvailabilities -- ra5d31
ra6d0: RoomAvailability { day = 0 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d0.roomId -- r6
hospital.roomAvailabilities -- ra6d0
ra6d1: RoomAvailability { day = 1 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 6 }
ra6d1.roomId -- r6
hospital.roomAvailabilities -- ra6d1
ra6d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 6 }
ra6d2.roomId -- r6
hospital.roomAvailabilities -- ra6d2
ra6d3: RoomAvailability { day = 3 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 6 }
ra6d3.roomId -- r6
hospital.roomAvailabilities -- ra6d3
ra6d4: RoomAvailability { day = 4 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 6 }
ra6d4.roomId -- r6
hospital.roomAvailabilities -- ra6d4
ra6d5: RoomAvailability { day = 5 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 6 }
ra6d5.roomId -- r6
hospital.roomAvailabilities -- ra6d5
ra6d6: RoomAvailability { day = 6 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 6 }
ra6d6.roomId -- r6
hospital.roomAvailabilities -- ra6d6
ra6d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 6 }
ra6d7.roomId -- r6
hospital.roomAvailabilities -- ra6d7
ra6d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.CHILD roomNumber = 6 }
ra6d8.roomId -- r6
hospital.roomAvailabilities -- ra6d8
ra6d9: RoomAvailability { day = 9 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d9.roomId -- r6
hospital.roomAvailabilities -- ra6d9
ra6d10: RoomAvailability { day = 10 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d10.roomId -- r6
hospital.roomAvailabilities -- ra6d10
ra6d11: RoomAvailability { day = 11 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 6 }
ra6d11.roomId -- r6
hospital.roomAvailabilities -- ra6d11
ra6d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 6 }
ra6d12.roomId -- r6
hospital.roomAvailabilities -- ra6d12
ra6d13: RoomAvailability { day = 13 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 6 }
ra6d13.roomId -- r6
hospital.roomAvailabilities -- ra6d13
ra6d14: RoomAvailability { day = 14 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 6 }
ra6d14.roomId -- r6
hospital.roomAvailabilities -- ra6d14
ra6d15: RoomAvailability { day = 15 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d15.roomId -- r6
hospital.roomAvailabilities -- ra6d15
ra6d16: RoomAvailability { day = 16 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d16.roomId -- r6
hospital.roomAvailabilities -- ra6d16
ra6d17: RoomAvailability { day = 17 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 6 }
ra6d17.roomId -- r6
hospital.roomAvailabilities -- ra6d17
ra6d18: RoomAvailability { day = 18 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 6 }
ra6d18.roomId -- r6
hospital.roomAvailabilities -- ra6d18
ra6d19: RoomAvailability { day = 19 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 6 }
ra6d19.roomId -- r6
hospital.roomAvailabilities -- ra6d19
ra6d20: RoomAvailability { day = 20 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 6 }
ra6d20.roomId -- r6
hospital.roomAvailabilities -- ra6d20
ra6d21: RoomAvailability { day = 21 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 6 }
ra6d21.roomId -- r6
hospital.roomAvailabilities -- ra6d21
ra6d22: RoomAvailability { day = 22 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 6 }
ra6d22.roomId -- r6
hospital.roomAvailabilities -- ra6d22
ra6d23: RoomAvailability { day = 23 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 6 }
ra6d23.roomId -- r6
hospital.roomAvailabilities -- ra6d23
ra6d24: RoomAvailability { day = 24 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 6 }
ra6d24.roomId -- r6
hospital.roomAvailabilities -- ra6d24
ra6d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d25.roomId -- r6
hospital.roomAvailabilities -- ra6d25
ra6d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d26.roomId -- r6
hospital.roomAvailabilities -- ra6d26
ra6d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d27.roomId -- r6
hospital.roomAvailabilities -- ra6d27
ra6d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d28.roomId -- r6
hospital.roomAvailabilities -- ra6d28
ra6d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d29.roomId -- r6
hospital.roomAvailabilities -- ra6d29
ra6d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d30.roomId -- r6
hospital.roomAvailabilities -- ra6d30
ra6d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 6 }
ra6d31.roomId -- r6
hospital.roomAvailabilities -- ra6d31
ra7d0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 7 }
ra7d0.roomId -- r7
hospital.roomAvailabilities -- ra7d0
ra7d1: RoomAvailability { day = 1 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 7 }
ra7d1.roomId -- r7
hospital.roomAvailabilities -- ra7d1
ra7d2: RoomAvailability { day = 2 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 7 }
ra7d2.roomId -- r7
hospital.roomAvailabilities -- ra7d2
ra7d3: RoomAvailability { day = 3 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d3.roomId -- r7
hospital.roomAvailabilities -- ra7d3
ra7d4: RoomAvailability { day = 4 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d4.roomId -- r7
hospital.roomAvailabilities -- ra7d4
ra7d5: RoomAvailability { day = 5 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d5.roomId -- r7
hospital.roomAvailabilities -- ra7d5
ra7d6: RoomAvailability { day = 6 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d6.roomId -- r7
hospital.roomAvailabilities -- ra7d6
ra7d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d7.roomId -- r7
hospital.roomAvailabilities -- ra7d7
ra7d8: RoomAvailability { day = 8 occupiedBeds = 2 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d8.roomId -- r7
hospital.roomAvailabilities -- ra7d8
ra7d9: RoomAvailability { day = 9 occupiedBeds = 2 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d9.roomId -- r7
hospital.roomAvailabilities -- ra7d9
ra7d10: RoomAvailability { day = 10 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d10.roomId -- r7
hospital.roomAvailabilities -- ra7d10
ra7d11: RoomAvailability { day = 11 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d11.roomId -- r7
hospital.roomAvailabilities -- ra7d11
ra7d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d12.roomId -- r7
hospital.roomAvailabilities -- ra7d12
ra7d13: RoomAvailability { day = 13 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d13.roomId -- r7
hospital.roomAvailabilities -- ra7d13
ra7d14: RoomAvailability { day = 14 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d14.roomId -- r7
hospital.roomAvailabilities -- ra7d14
ra7d15: RoomAvailability { day = 15 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d15.roomId -- r7
hospital.roomAvailabilities -- ra7d15
ra7d16: RoomAvailability { day = 16 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d16.roomId -- r7
hospital.roomAvailabilities -- ra7d16
ra7d17: RoomAvailability { day = 17 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d17.roomId -- r7
hospital.roomAvailabilities -- ra7d17
ra7d18: RoomAvailability { day = 18 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d18.roomId -- r7
hospital.roomAvailabilities -- ra7d18
ra7d19: RoomAvailability { day = 19 occupiedBeds = 1 ageGroup = AgeGroup.YOUNG roomNumber = 7 }
ra7d19.roomId -- r7
hospital.roomAvailabilities -- ra7d19
ra7d20: RoomAvailability { day = 20 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d20.roomId -- r7
hospital.roomAvailabilities -- ra7d20
ra7d21: RoomAvailability { day = 21 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d21.roomId -- r7
hospital.roomAvailabilities -- ra7d21
ra7d22: RoomAvailability { day = 22 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d22.roomId -- r7
hospital.roomAvailabilities -- ra7d22
ra7d23: RoomAvailability { day = 23 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d23.roomId -- r7
hospital.roomAvailabilities -- ra7d23
ra7d24: RoomAvailability { day = 24 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d24.roomId -- r7
hospital.roomAvailabilities -- ra7d24
ra7d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d25.roomId -- r7
hospital.roomAvailabilities -- ra7d25
ra7d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d26.roomId -- r7
hospital.roomAvailabilities -- ra7d26
ra7d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d27.roomId -- r7
hospital.roomAvailabilities -- ra7d27
ra7d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d28.roomId -- r7
hospital.roomAvailabilities -- ra7d28
ra7d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d29.roomId -- r7
hospital.roomAvailabilities -- ra7d29
ra7d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d30.roomId -- r7
hospital.roomAvailabilities -- ra7d30
ra7d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 7 }
ra7d31.roomId -- r7
hospital.roomAvailabilities -- ra7d31
ra8d0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d0.roomId -- r8
hospital.roomAvailabilities -- ra8d0
ra8d1: RoomAvailability { day = 1 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d1.roomId -- r8
hospital.roomAvailabilities -- ra8d1
ra8d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d2.roomId -- r8
hospital.roomAvailabilities -- ra8d2
ra8d3: RoomAvailability { day = 3 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d3.roomId -- r8
hospital.roomAvailabilities -- ra8d3
ra8d4: RoomAvailability { day = 4 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d4.roomId -- r8
hospital.roomAvailabilities -- ra8d4
ra8d5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d5.roomId -- r8
hospital.roomAvailabilities -- ra8d5
ra8d6: RoomAvailability { day = 6 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d6.roomId -- r8
hospital.roomAvailabilities -- ra8d6
ra8d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d7.roomId -- r8
hospital.roomAvailabilities -- ra8d7
ra8d8: RoomAvailability { day = 8 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d8.roomId -- r8
hospital.roomAvailabilities -- ra8d8
ra8d9: RoomAvailability { day = 9 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d9.roomId -- r8
hospital.roomAvailabilities -- ra8d9
ra8d10: RoomAvailability { day = 10 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d10.roomId -- r8
hospital.roomAvailabilities -- ra8d10
ra8d11: RoomAvailability { day = 11 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d11.roomId -- r8
hospital.roomAvailabilities -- ra8d11
ra8d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d12.roomId -- r8
hospital.roomAvailabilities -- ra8d12
ra8d13: RoomAvailability { day = 13 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d13.roomId -- r8
hospital.roomAvailabilities -- ra8d13
ra8d14: RoomAvailability { day = 14 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d14.roomId -- r8
hospital.roomAvailabilities -- ra8d14
ra8d15: RoomAvailability { day = 15 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d15.roomId -- r8
hospital.roomAvailabilities -- ra8d15
ra8d16: RoomAvailability { day = 16 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d16.roomId -- r8
hospital.roomAvailabilities -- ra8d16
ra8d17: RoomAvailability { day = 17 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d17.roomId -- r8
hospital.roomAvailabilities -- ra8d17
ra8d18: RoomAvailability { day = 18 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d18.roomId -- r8
hospital.roomAvailabilities -- ra8d18
ra8d19: RoomAvailability { day = 19 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 8 }
ra8d19.roomId -- r8
hospital.roomAvailabilities -- ra8d19
ra8d20: RoomAvailability { day = 20 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d20.roomId -- r8
hospital.roomAvailabilities -- ra8d20
ra8d21: RoomAvailability { day = 21 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d21.roomId -- r8
hospital.roomAvailabilities -- ra8d21
ra8d22: RoomAvailability { day = 22 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d22.roomId -- r8
hospital.roomAvailabilities -- ra8d22
ra8d23: RoomAvailability { day = 23 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d23.roomId -- r8
hospital.roomAvailabilities -- ra8d23
ra8d24: RoomAvailability { day = 24 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d24.roomId -- r8
hospital.roomAvailabilities -- ra8d24
ra8d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d25.roomId -- r8
hospital.roomAvailabilities -- ra8d25
ra8d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d26.roomId -- r8
hospital.roomAvailabilities -- ra8d26
ra8d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d27.roomId -- r8
hospital.roomAvailabilities -- ra8d27
ra8d28: RoomAvailability { day = 28 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d28.roomId -- r8
hospital.roomAvailabilities -- ra8d28
ra8d29: RoomAvailability { day = 29 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d29.roomId -- r8
hospital.roomAvailabilities -- ra8d29
ra8d30: RoomAvailability { day = 30 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d30.roomId -- r8
hospital.roomAvailabilities -- ra8d30
ra8d31: RoomAvailability { day = 31 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 8 }
ra8d31.roomId -- r8
hospital.roomAvailabilities -- ra8d31
hs_r0_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r0_d0_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s0
hs_r0_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r0_d0_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s1
hs_r0_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r0_d0_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s2
hs_r0_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r0_d1_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d1_s0
hs_r0_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r0_d1_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d1_s1
hs_r0_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r0_d1_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d1_s2
hs_r0_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r0_d2_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d2_s0
hs_r0_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r0_d2_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d2_s1
hs_r0_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r0_d2_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d2_s2
hs_r0_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r0_d3_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d3_s0
hs_r0_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r0_d3_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d3_s1
hs_r0_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r0_d3_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d3_s2
hs_r0_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r0_d4_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d4_s0
hs_r0_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r0_d4_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d4_s1
hs_r0_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r0_d4_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d4_s2
hs_r0_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r0_d5_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d5_s0
hs_r0_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r0_d5_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d5_s1
hs_r0_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r0_d5_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d5_s2
hs_r0_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r0_d6_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d6_s0
hs_r0_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r0_d6_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d6_s1
hs_r0_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r0_d6_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d6_s2
hs_r0_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r0_d7_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d7_s0
hs_r0_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r0_d7_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d7_s1
hs_r0_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r0_d7_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d7_s2
hs_r0_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r0_d8_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d8_s0
hs_r0_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r0_d8_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d8_s1
hs_r0_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r0_d8_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d8_s2
hs_r0_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r0_d9_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d9_s0
hs_r0_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r0_d9_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d9_s1
hs_r0_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r0_d9_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d9_s2
hs_r0_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r0_d10_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d10_s0
hs_r0_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r0_d10_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d10_s1
hs_r0_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r0_d10_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d10_s2
hs_r0_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r0_d11_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d11_s0
hs_r0_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r0_d11_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d11_s1
hs_r0_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r0_d11_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d11_s2
hs_r0_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r0_d12_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d12_s0
hs_r0_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r0_d12_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d12_s1
hs_r0_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r0_d12_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d12_s2
hs_r0_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r0_d13_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d13_s0
hs_r0_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r0_d13_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d13_s1
hs_r0_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r0_d13_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d13_s2
hs_r0_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r0_d14_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d14_s0
hs_r0_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r0_d14_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d14_s1
hs_r0_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r0_d14_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d14_s2
hs_r0_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r0_d15_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d15_s0
hs_r0_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r0_d15_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d15_s1
hs_r0_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r0_d15_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d15_s2
hs_r0_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r0_d16_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d16_s0
hs_r0_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r0_d16_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d16_s1
hs_r0_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r0_d16_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d16_s2
hs_r0_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r0_d17_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d17_s0
hs_r0_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r0_d17_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d17_s1
hs_r0_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r0_d17_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d17_s2
hs_r0_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r0_d18_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d18_s0
hs_r0_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r0_d18_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d18_s1
hs_r0_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r0_d18_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d18_s2
hs_r0_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r0_d19_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d19_s0
hs_r0_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r0_d19_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d19_s1
hs_r0_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r0_d19_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d19_s2
hs_r0_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r0_d20_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d20_s0
hs_r0_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r0_d20_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d20_s1
hs_r0_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r0_d20_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d20_s2
hs_r0_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r0_d21_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d21_s0
hs_r0_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r0_d21_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d21_s1
hs_r0_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r0_d21_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d21_s2
hs_r0_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r0_d22_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d22_s0
hs_r0_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r0_d22_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d22_s1
hs_r0_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r0_d22_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d22_s2
hs_r0_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r0_d23_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d23_s0
hs_r0_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r0_d23_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d23_s1
hs_r0_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r0_d23_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d23_s2
hs_r0_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r0_d24_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d24_s0
hs_r0_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r0_d24_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d24_s1
hs_r0_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r0_d24_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d24_s2
hs_r0_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r0_d25_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d25_s0
hs_r0_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r0_d25_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d25_s1
hs_r0_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r0_d25_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d25_s2
hs_r0_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r0_d26_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d26_s0
hs_r0_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r0_d26_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d26_s1
hs_r0_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r0_d26_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d26_s2
hs_r0_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r0_d27_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d27_s0
hs_r0_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r0_d27_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d27_s1
hs_r0_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r0_d27_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d27_s2
hs_r0_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r0_d28_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d28_s0
hs_r0_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r0_d28_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d28_s1
hs_r0_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r0_d28_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d28_s2
hs_r0_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r0_d29_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d29_s0
hs_r0_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r0_d29_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d29_s1
hs_r0_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r0_d29_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d29_s2
hs_r0_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r0_d30_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d30_s0
hs_r0_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r0_d30_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d30_s1
hs_r0_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r0_d30_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d30_s2
hs_r0_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r0_d31_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d31_s0
hs_r0_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r0_d31_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d31_s1
hs_r0_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r0_d31_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d31_s2
hs_r1_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r1_d0_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s0
hs_r1_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r1_d0_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s1
hs_r1_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r1_d0_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s2
hs_r1_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r1_d1_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s0
hs_r1_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r1_d1_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s1
hs_r1_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r1_d1_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s2
hs_r1_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r1_d2_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s0
hs_r1_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r1_d2_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s1
hs_r1_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r1_d2_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s2
hs_r1_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r1_d3_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s0
hs_r1_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r1_d3_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s1
hs_r1_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r1_d3_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s2
hs_r1_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r1_d4_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s0
hs_r1_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r1_d4_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s1
hs_r1_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r1_d4_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s2
hs_r1_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r1_d5_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d5_s0
hs_r1_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r1_d5_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d5_s1
hs_r1_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r1_d5_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d5_s2
hs_r1_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r1_d6_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d6_s0
hs_r1_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r1_d6_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d6_s1
hs_r1_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r1_d6_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d6_s2
hs_r1_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r1_d7_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d7_s0
hs_r1_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r1_d7_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d7_s1
hs_r1_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r1_d7_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d7_s2
hs_r1_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r1_d8_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d8_s0
hs_r1_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r1_d8_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d8_s1
hs_r1_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r1_d8_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d8_s2
hs_r1_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r1_d9_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d9_s0
hs_r1_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r1_d9_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d9_s1
hs_r1_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r1_d9_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d9_s2
hs_r1_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r1_d10_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d10_s0
hs_r1_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r1_d10_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d10_s1
hs_r1_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r1_d10_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d10_s2
hs_r1_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r1_d11_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d11_s0
hs_r1_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r1_d11_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d11_s1
hs_r1_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r1_d11_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d11_s2
hs_r1_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r1_d12_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d12_s0
hs_r1_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r1_d12_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d12_s1
hs_r1_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r1_d12_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d12_s2
hs_r1_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r1_d13_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d13_s0
hs_r1_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r1_d13_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d13_s1
hs_r1_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r1_d13_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d13_s2
hs_r1_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r1_d14_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d14_s0
hs_r1_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r1_d14_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d14_s1
hs_r1_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r1_d14_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d14_s2
hs_r1_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r1_d15_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d15_s0
hs_r1_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r1_d15_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d15_s1
hs_r1_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r1_d15_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d15_s2
hs_r1_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r1_d16_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d16_s0
hs_r1_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r1_d16_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d16_s1
hs_r1_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r1_d16_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d16_s2
hs_r1_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r1_d17_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d17_s0
hs_r1_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r1_d17_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d17_s1
hs_r1_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r1_d17_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d17_s2
hs_r1_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r1_d18_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d18_s0
hs_r1_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r1_d18_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d18_s1
hs_r1_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r1_d18_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d18_s2
hs_r1_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r1_d19_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d19_s0
hs_r1_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r1_d19_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d19_s1
hs_r1_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r1_d19_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d19_s2
hs_r1_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r1_d20_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d20_s0
hs_r1_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r1_d20_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d20_s1
hs_r1_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r1_d20_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d20_s2
hs_r1_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r1_d21_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d21_s0
hs_r1_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r1_d21_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d21_s1
hs_r1_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r1_d21_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d21_s2
hs_r1_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r1_d22_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d22_s0
hs_r1_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r1_d22_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d22_s1
hs_r1_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r1_d22_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d22_s2
hs_r1_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r1_d23_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d23_s0
hs_r1_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r1_d23_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d23_s1
hs_r1_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r1_d23_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d23_s2
hs_r1_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r1_d24_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d24_s0
hs_r1_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r1_d24_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d24_s1
hs_r1_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r1_d24_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d24_s2
hs_r1_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r1_d25_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d25_s0
hs_r1_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r1_d25_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d25_s1
hs_r1_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r1_d25_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d25_s2
hs_r1_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r1_d26_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d26_s0
hs_r1_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r1_d26_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d26_s1
hs_r1_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r1_d26_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d26_s2
hs_r1_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r1_d27_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d27_s0
hs_r1_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r1_d27_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d27_s1
hs_r1_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r1_d27_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d27_s2
hs_r1_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r1_d28_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d28_s0
hs_r1_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r1_d28_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d28_s1
hs_r1_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r1_d28_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d28_s2
hs_r1_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r1_d29_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d29_s0
hs_r1_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r1_d29_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d29_s1
hs_r1_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r1_d29_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d29_s2
hs_r1_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r1_d30_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d30_s0
hs_r1_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r1_d30_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d30_s1
hs_r1_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r1_d30_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d30_s2
hs_r1_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r1_d31_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d31_s0
hs_r1_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r1_d31_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d31_s1
hs_r1_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r1_d31_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d31_s2
hs_r2_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r2_d0_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d0_s0
hs_r2_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r2_d0_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d0_s1
hs_r2_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r2_d0_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d0_s2
hs_r2_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r2_d1_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d1_s0
hs_r2_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r2_d1_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d1_s1
hs_r2_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r2_d1_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d1_s2
hs_r2_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r2_d2_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d2_s0
hs_r2_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r2_d2_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d2_s1
hs_r2_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r2_d2_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d2_s2
hs_r2_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r2_d3_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d3_s0
hs_r2_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r2_d3_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d3_s1
hs_r2_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r2_d3_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d3_s2
hs_r2_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r2_d4_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d4_s0
hs_r2_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r2_d4_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d4_s1
hs_r2_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r2_d4_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d4_s2
hs_r2_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r2_d5_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d5_s0
hs_r2_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r2_d5_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d5_s1
hs_r2_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r2_d5_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d5_s2
hs_r2_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r2_d6_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d6_s0
hs_r2_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r2_d6_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d6_s1
hs_r2_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r2_d6_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d6_s2
hs_r2_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r2_d7_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d7_s0
hs_r2_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r2_d7_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d7_s1
hs_r2_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r2_d7_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d7_s2
hs_r2_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r2_d8_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d8_s0
hs_r2_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r2_d8_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d8_s1
hs_r2_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r2_d8_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d8_s2
hs_r2_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r2_d9_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d9_s0
hs_r2_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r2_d9_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d9_s1
hs_r2_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r2_d9_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d9_s2
hs_r2_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r2_d10_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d10_s0
hs_r2_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r2_d10_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d10_s1
hs_r2_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r2_d10_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d10_s2
hs_r2_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r2_d11_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d11_s0
hs_r2_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r2_d11_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d11_s1
hs_r2_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r2_d11_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d11_s2
hs_r2_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r2_d12_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d12_s0
hs_r2_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r2_d12_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d12_s1
hs_r2_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r2_d12_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d12_s2
hs_r2_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r2_d13_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d13_s0
hs_r2_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r2_d13_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d13_s1
hs_r2_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r2_d13_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d13_s2
hs_r2_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r2_d14_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d14_s0
hs_r2_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r2_d14_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d14_s1
hs_r2_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r2_d14_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d14_s2
hs_r2_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r2_d15_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d15_s0
hs_r2_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r2_d15_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d15_s1
hs_r2_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r2_d15_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d15_s2
hs_r2_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r2_d16_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d16_s0
hs_r2_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r2_d16_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d16_s1
hs_r2_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r2_d16_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d16_s2
hs_r2_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r2_d17_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d17_s0
hs_r2_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r2_d17_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d17_s1
hs_r2_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r2_d17_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d17_s2
hs_r2_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r2_d18_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d18_s0
hs_r2_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r2_d18_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d18_s1
hs_r2_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r2_d18_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d18_s2
hs_r2_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r2_d19_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d19_s0
hs_r2_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r2_d19_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d19_s1
hs_r2_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r2_d19_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d19_s2
hs_r2_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r2_d20_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d20_s0
hs_r2_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r2_d20_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d20_s1
hs_r2_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r2_d20_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d20_s2
hs_r2_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r2_d21_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d21_s0
hs_r2_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r2_d21_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d21_s1
hs_r2_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r2_d21_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d21_s2
hs_r2_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r2_d22_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d22_s0
hs_r2_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r2_d22_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d22_s1
hs_r2_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r2_d22_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d22_s2
hs_r2_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r2_d23_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d23_s0
hs_r2_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r2_d23_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d23_s1
hs_r2_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r2_d23_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d23_s2
hs_r2_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r2_d24_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d24_s0
hs_r2_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r2_d24_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d24_s1
hs_r2_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r2_d24_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d24_s2
hs_r2_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r2_d25_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d25_s0
hs_r2_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r2_d25_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d25_s1
hs_r2_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r2_d25_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d25_s2
hs_r2_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r2_d26_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d26_s0
hs_r2_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r2_d26_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d26_s1
hs_r2_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r2_d26_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d26_s2
hs_r2_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r2_d27_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d27_s0
hs_r2_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r2_d27_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d27_s1
hs_r2_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r2_d27_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d27_s2
hs_r2_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r2_d28_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d28_s0
hs_r2_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r2_d28_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d28_s1
hs_r2_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r2_d28_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d28_s2
hs_r2_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r2_d29_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d29_s0
hs_r2_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r2_d29_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d29_s1
hs_r2_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r2_d29_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d29_s2
hs_r2_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r2_d30_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d30_s0
hs_r2_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r2_d30_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d30_s1
hs_r2_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r2_d30_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d30_s2
hs_r2_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r2_d31_s0.room -- r2
hospital.hospitalisationShifts -- hs_r2_d31_s0
hs_r2_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r2_d31_s1.room -- r2
hospital.hospitalisationShifts -- hs_r2_d31_s1
hs_r2_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r2_d31_s2.room -- r2
hospital.hospitalisationShifts -- hs_r2_d31_s2
hs_r3_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r3_d0_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d0_s0
hs_r3_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r3_d0_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d0_s1
hs_r3_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r3_d0_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d0_s2
hs_r3_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r3_d1_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d1_s0
hs_r3_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r3_d1_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d1_s1
hs_r3_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r3_d1_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d1_s2
hs_r3_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r3_d2_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d2_s0
hs_r3_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r3_d2_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d2_s1
hs_r3_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r3_d2_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d2_s2
hs_r3_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r3_d3_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d3_s0
hs_r3_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r3_d3_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d3_s1
hs_r3_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r3_d3_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d3_s2
hs_r3_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r3_d4_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d4_s0
hs_r3_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r3_d4_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d4_s1
hs_r3_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r3_d4_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d4_s2
hs_r3_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r3_d5_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d5_s0
hs_r3_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r3_d5_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d5_s1
hs_r3_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r3_d5_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d5_s2
hs_r3_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r3_d6_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d6_s0
hs_r3_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r3_d6_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d6_s1
hs_r3_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r3_d6_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d6_s2
hs_r3_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r3_d7_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d7_s0
hs_r3_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r3_d7_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d7_s1
hs_r3_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r3_d7_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d7_s2
hs_r3_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r3_d8_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d8_s0
hs_r3_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r3_d8_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d8_s1
hs_r3_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r3_d8_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d8_s2
hs_r3_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r3_d9_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d9_s0
hs_r3_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r3_d9_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d9_s1
hs_r3_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r3_d9_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d9_s2
hs_r3_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r3_d10_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d10_s0
hs_r3_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r3_d10_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d10_s1
hs_r3_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r3_d10_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d10_s2
hs_r3_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r3_d11_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d11_s0
hs_r3_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r3_d11_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d11_s1
hs_r3_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r3_d11_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d11_s2
hs_r3_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r3_d12_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d12_s0
hs_r3_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r3_d12_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d12_s1
hs_r3_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r3_d12_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d12_s2
hs_r3_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r3_d13_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d13_s0
hs_r3_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r3_d13_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d13_s1
hs_r3_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r3_d13_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d13_s2
hs_r3_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r3_d14_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d14_s0
hs_r3_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r3_d14_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d14_s1
hs_r3_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r3_d14_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d14_s2
hs_r3_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r3_d15_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d15_s0
hs_r3_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r3_d15_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d15_s1
hs_r3_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r3_d15_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d15_s2
hs_r3_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r3_d16_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d16_s0
hs_r3_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r3_d16_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d16_s1
hs_r3_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r3_d16_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d16_s2
hs_r3_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r3_d17_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d17_s0
hs_r3_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r3_d17_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d17_s1
hs_r3_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r3_d17_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d17_s2
hs_r3_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r3_d18_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d18_s0
hs_r3_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r3_d18_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d18_s1
hs_r3_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r3_d18_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d18_s2
hs_r3_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r3_d19_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d19_s0
hs_r3_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r3_d19_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d19_s1
hs_r3_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r3_d19_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d19_s2
hs_r3_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r3_d20_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d20_s0
hs_r3_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r3_d20_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d20_s1
hs_r3_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r3_d20_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d20_s2
hs_r3_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r3_d21_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d21_s0
hs_r3_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r3_d21_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d21_s1
hs_r3_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r3_d21_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d21_s2
hs_r3_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r3_d22_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d22_s0
hs_r3_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r3_d22_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d22_s1
hs_r3_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r3_d22_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d22_s2
hs_r3_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r3_d23_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d23_s0
hs_r3_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r3_d23_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d23_s1
hs_r3_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r3_d23_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d23_s2
hs_r3_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r3_d24_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d24_s0
hs_r3_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r3_d24_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d24_s1
hs_r3_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r3_d24_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d24_s2
hs_r3_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r3_d25_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d25_s0
hs_r3_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r3_d25_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d25_s1
hs_r3_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r3_d25_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d25_s2
hs_r3_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r3_d26_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d26_s0
hs_r3_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r3_d26_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d26_s1
hs_r3_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r3_d26_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d26_s2
hs_r3_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r3_d27_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d27_s0
hs_r3_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r3_d27_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d27_s1
hs_r3_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r3_d27_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d27_s2
hs_r3_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r3_d28_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d28_s0
hs_r3_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r3_d28_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d28_s1
hs_r3_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r3_d28_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d28_s2
hs_r3_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r3_d29_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d29_s0
hs_r3_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r3_d29_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d29_s1
hs_r3_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r3_d29_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d29_s2
hs_r3_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r3_d30_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d30_s0
hs_r3_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r3_d30_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d30_s1
hs_r3_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r3_d30_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d30_s2
hs_r3_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r3_d31_s0.room -- r3
hospital.hospitalisationShifts -- hs_r3_d31_s0
hs_r3_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r3_d31_s1.room -- r3
hospital.hospitalisationShifts -- hs_r3_d31_s1
hs_r3_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r3_d31_s2.room -- r3
hospital.hospitalisationShifts -- hs_r3_d31_s2
hs_r4_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r4_d0_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d0_s0
hs_r4_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r4_d0_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d0_s1
hs_r4_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r4_d0_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d0_s2
hs_r4_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r4_d1_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d1_s0
hs_r4_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r4_d1_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d1_s1
hs_r4_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r4_d1_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d1_s2
hs_r4_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r4_d2_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d2_s0
hs_r4_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r4_d2_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d2_s1
hs_r4_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r4_d2_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d2_s2
hs_r4_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r4_d3_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d3_s0
hs_r4_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r4_d3_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d3_s1
hs_r4_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r4_d3_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d3_s2
hs_r4_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r4_d4_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d4_s0
hs_r4_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r4_d4_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d4_s1
hs_r4_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r4_d4_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d4_s2
hs_r4_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r4_d5_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d5_s0
hs_r4_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r4_d5_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d5_s1
hs_r4_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r4_d5_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d5_s2
hs_r4_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r4_d6_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d6_s0
hs_r4_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r4_d6_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d6_s1
hs_r4_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r4_d6_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d6_s2
hs_r4_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r4_d7_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d7_s0
hs_r4_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r4_d7_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d7_s1
hs_r4_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r4_d7_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d7_s2
hs_r4_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r4_d8_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d8_s0
hs_r4_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r4_d8_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d8_s1
hs_r4_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r4_d8_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d8_s2
hs_r4_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r4_d9_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d9_s0
hs_r4_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r4_d9_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d9_s1
hs_r4_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r4_d9_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d9_s2
hs_r4_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r4_d10_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d10_s0
hs_r4_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r4_d10_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d10_s1
hs_r4_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r4_d10_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d10_s2
hs_r4_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r4_d11_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d11_s0
hs_r4_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r4_d11_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d11_s1
hs_r4_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r4_d11_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d11_s2
hs_r4_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r4_d12_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d12_s0
hs_r4_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r4_d12_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d12_s1
hs_r4_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r4_d12_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d12_s2
hs_r4_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r4_d13_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d13_s0
hs_r4_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r4_d13_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d13_s1
hs_r4_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r4_d13_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d13_s2
hs_r4_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r4_d14_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d14_s0
hs_r4_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r4_d14_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d14_s1
hs_r4_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r4_d14_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d14_s2
hs_r4_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r4_d15_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d15_s0
hs_r4_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r4_d15_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d15_s1
hs_r4_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r4_d15_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d15_s2
hs_r4_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r4_d16_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d16_s0
hs_r4_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r4_d16_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d16_s1
hs_r4_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r4_d16_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d16_s2
hs_r4_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r4_d17_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d17_s0
hs_r4_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r4_d17_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d17_s1
hs_r4_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r4_d17_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d17_s2
hs_r4_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r4_d18_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d18_s0
hs_r4_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r4_d18_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d18_s1
hs_r4_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r4_d18_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d18_s2
hs_r4_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r4_d19_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d19_s0
hs_r4_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r4_d19_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d19_s1
hs_r4_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r4_d19_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d19_s2
hs_r4_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r4_d20_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d20_s0
hs_r4_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r4_d20_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d20_s1
hs_r4_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r4_d20_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d20_s2
hs_r4_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r4_d21_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d21_s0
hs_r4_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r4_d21_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d21_s1
hs_r4_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r4_d21_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d21_s2
hs_r4_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r4_d22_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d22_s0
hs_r4_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r4_d22_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d22_s1
hs_r4_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r4_d22_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d22_s2
hs_r4_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r4_d23_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d23_s0
hs_r4_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r4_d23_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d23_s1
hs_r4_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r4_d23_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d23_s2
hs_r4_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r4_d24_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d24_s0
hs_r4_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r4_d24_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d24_s1
hs_r4_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r4_d24_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d24_s2
hs_r4_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r4_d25_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d25_s0
hs_r4_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r4_d25_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d25_s1
hs_r4_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r4_d25_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d25_s2
hs_r4_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r4_d26_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d26_s0
hs_r4_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r4_d26_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d26_s1
hs_r4_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r4_d26_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d26_s2
hs_r4_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r4_d27_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d27_s0
hs_r4_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r4_d27_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d27_s1
hs_r4_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r4_d27_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d27_s2
hs_r4_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r4_d28_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d28_s0
hs_r4_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r4_d28_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d28_s1
hs_r4_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r4_d28_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d28_s2
hs_r4_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r4_d29_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d29_s0
hs_r4_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r4_d29_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d29_s1
hs_r4_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r4_d29_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d29_s2
hs_r4_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r4_d30_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d30_s0
hs_r4_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r4_d30_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d30_s1
hs_r4_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r4_d30_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d30_s2
hs_r4_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r4_d31_s0.room -- r4
hospital.hospitalisationShifts -- hs_r4_d31_s0
hs_r4_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r4_d31_s1.room -- r4
hospital.hospitalisationShifts -- hs_r4_d31_s1
hs_r4_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r4_d31_s2.room -- r4
hospital.hospitalisationShifts -- hs_r4_d31_s2
hs_r5_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r5_d0_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d0_s0
hs_r5_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r5_d0_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d0_s1
hs_r5_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r5_d0_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d0_s2
hs_r5_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r5_d1_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d1_s0
hs_r5_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r5_d1_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d1_s1
hs_r5_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r5_d1_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d1_s2
hs_r5_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r5_d2_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d2_s0
hs_r5_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r5_d2_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d2_s1
hs_r5_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r5_d2_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d2_s2
hs_r5_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r5_d3_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d3_s0
hs_r5_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r5_d3_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d3_s1
hs_r5_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r5_d3_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d3_s2
hs_r5_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r5_d4_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d4_s0
hs_r5_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r5_d4_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d4_s1
hs_r5_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r5_d4_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d4_s2
hs_r5_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r5_d5_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d5_s0
hs_r5_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r5_d5_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d5_s1
hs_r5_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r5_d5_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d5_s2
hs_r5_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r5_d6_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d6_s0
hs_r5_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r5_d6_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d6_s1
hs_r5_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r5_d6_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d6_s2
hs_r5_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r5_d7_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d7_s0
hs_r5_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r5_d7_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d7_s1
hs_r5_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r5_d7_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d7_s2
hs_r5_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r5_d8_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d8_s0
hs_r5_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r5_d8_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d8_s1
hs_r5_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r5_d8_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d8_s2
hs_r5_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r5_d9_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d9_s0
hs_r5_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r5_d9_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d9_s1
hs_r5_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r5_d9_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d9_s2
hs_r5_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r5_d10_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d10_s0
hs_r5_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r5_d10_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d10_s1
hs_r5_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r5_d10_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d10_s2
hs_r5_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r5_d11_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d11_s0
hs_r5_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r5_d11_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d11_s1
hs_r5_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r5_d11_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d11_s2
hs_r5_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r5_d12_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d12_s0
hs_r5_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r5_d12_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d12_s1
hs_r5_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r5_d12_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d12_s2
hs_r5_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r5_d13_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d13_s0
hs_r5_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r5_d13_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d13_s1
hs_r5_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r5_d13_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d13_s2
hs_r5_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r5_d14_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d14_s0
hs_r5_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r5_d14_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d14_s1
hs_r5_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r5_d14_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d14_s2
hs_r5_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r5_d15_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d15_s0
hs_r5_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r5_d15_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d15_s1
hs_r5_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r5_d15_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d15_s2
hs_r5_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r5_d16_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d16_s0
hs_r5_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r5_d16_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d16_s1
hs_r5_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r5_d16_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d16_s2
hs_r5_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r5_d17_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d17_s0
hs_r5_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r5_d17_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d17_s1
hs_r5_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r5_d17_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d17_s2
hs_r5_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r5_d18_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d18_s0
hs_r5_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r5_d18_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d18_s1
hs_r5_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r5_d18_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d18_s2
hs_r5_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r5_d19_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d19_s0
hs_r5_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r5_d19_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d19_s1
hs_r5_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r5_d19_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d19_s2
hs_r5_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r5_d20_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d20_s0
hs_r5_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r5_d20_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d20_s1
hs_r5_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r5_d20_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d20_s2
hs_r5_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r5_d21_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d21_s0
hs_r5_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r5_d21_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d21_s1
hs_r5_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r5_d21_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d21_s2
hs_r5_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r5_d22_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d22_s0
hs_r5_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r5_d22_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d22_s1
hs_r5_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r5_d22_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d22_s2
hs_r5_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r5_d23_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d23_s0
hs_r5_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r5_d23_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d23_s1
hs_r5_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r5_d23_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d23_s2
hs_r5_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r5_d24_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d24_s0
hs_r5_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r5_d24_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d24_s1
hs_r5_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r5_d24_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d24_s2
hs_r5_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r5_d25_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d25_s0
hs_r5_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r5_d25_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d25_s1
hs_r5_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r5_d25_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d25_s2
hs_r5_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r5_d26_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d26_s0
hs_r5_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r5_d26_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d26_s1
hs_r5_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r5_d26_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d26_s2
hs_r5_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r5_d27_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d27_s0
hs_r5_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r5_d27_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d27_s1
hs_r5_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r5_d27_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d27_s2
hs_r5_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r5_d28_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d28_s0
hs_r5_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r5_d28_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d28_s1
hs_r5_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r5_d28_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d28_s2
hs_r5_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r5_d29_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d29_s0
hs_r5_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r5_d29_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d29_s1
hs_r5_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r5_d29_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d29_s2
hs_r5_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r5_d30_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d30_s0
hs_r5_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r5_d30_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d30_s1
hs_r5_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r5_d30_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d30_s2
hs_r5_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r5_d31_s0.room -- r5
hospital.hospitalisationShifts -- hs_r5_d31_s0
hs_r5_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r5_d31_s1.room -- r5
hospital.hospitalisationShifts -- hs_r5_d31_s1
hs_r5_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r5_d31_s2.room -- r5
hospital.hospitalisationShifts -- hs_r5_d31_s2
hs_r6_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r6_d0_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d0_s0
hs_r6_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r6_d0_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d0_s1
hs_r6_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r6_d0_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d0_s2
hs_r6_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r6_d1_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d1_s0
hs_r6_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r6_d1_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d1_s1
hs_r6_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r6_d1_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d1_s2
hs_r6_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r6_d2_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d2_s0
hs_r6_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r6_d2_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d2_s1
hs_r6_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r6_d2_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d2_s2
hs_r6_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r6_d3_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d3_s0
hs_r6_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r6_d3_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d3_s1
hs_r6_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r6_d3_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d3_s2
hs_r6_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r6_d4_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d4_s0
hs_r6_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r6_d4_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d4_s1
hs_r6_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r6_d4_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d4_s2
hs_r6_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r6_d5_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d5_s0
hs_r6_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r6_d5_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d5_s1
hs_r6_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r6_d5_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d5_s2
hs_r6_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r6_d6_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d6_s0
hs_r6_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r6_d6_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d6_s1
hs_r6_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r6_d6_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d6_s2
hs_r6_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r6_d7_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d7_s0
hs_r6_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r6_d7_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d7_s1
hs_r6_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r6_d7_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d7_s2
hs_r6_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r6_d8_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d8_s0
hs_r6_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r6_d8_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d8_s1
hs_r6_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r6_d8_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d8_s2
hs_r6_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r6_d9_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d9_s0
hs_r6_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r6_d9_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d9_s1
hs_r6_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r6_d9_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d9_s2
hs_r6_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r6_d10_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d10_s0
hs_r6_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r6_d10_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d10_s1
hs_r6_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r6_d10_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d10_s2
hs_r6_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r6_d11_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d11_s0
hs_r6_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r6_d11_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d11_s1
hs_r6_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r6_d11_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d11_s2
hs_r6_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r6_d12_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d12_s0
hs_r6_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r6_d12_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d12_s1
hs_r6_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r6_d12_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d12_s2
hs_r6_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r6_d13_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d13_s0
hs_r6_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r6_d13_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d13_s1
hs_r6_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r6_d13_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d13_s2
hs_r6_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r6_d14_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d14_s0
hs_r6_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r6_d14_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d14_s1
hs_r6_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r6_d14_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d14_s2
hs_r6_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r6_d15_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d15_s0
hs_r6_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r6_d15_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d15_s1
hs_r6_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r6_d15_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d15_s2
hs_r6_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r6_d16_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d16_s0
hs_r6_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r6_d16_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d16_s1
hs_r6_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r6_d16_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d16_s2
hs_r6_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r6_d17_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d17_s0
hs_r6_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r6_d17_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d17_s1
hs_r6_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r6_d17_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d17_s2
hs_r6_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r6_d18_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d18_s0
hs_r6_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r6_d18_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d18_s1
hs_r6_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r6_d18_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d18_s2
hs_r6_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r6_d19_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d19_s0
hs_r6_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r6_d19_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d19_s1
hs_r6_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r6_d19_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d19_s2
hs_r6_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r6_d20_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d20_s0
hs_r6_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r6_d20_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d20_s1
hs_r6_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r6_d20_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d20_s2
hs_r6_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r6_d21_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d21_s0
hs_r6_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r6_d21_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d21_s1
hs_r6_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r6_d21_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d21_s2
hs_r6_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r6_d22_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d22_s0
hs_r6_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r6_d22_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d22_s1
hs_r6_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r6_d22_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d22_s2
hs_r6_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r6_d23_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d23_s0
hs_r6_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r6_d23_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d23_s1
hs_r6_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r6_d23_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d23_s2
hs_r6_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r6_d24_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d24_s0
hs_r6_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r6_d24_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d24_s1
hs_r6_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r6_d24_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d24_s2
hs_r6_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r6_d25_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d25_s0
hs_r6_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r6_d25_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d25_s1
hs_r6_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r6_d25_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d25_s2
hs_r6_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r6_d26_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d26_s0
hs_r6_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r6_d26_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d26_s1
hs_r6_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r6_d26_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d26_s2
hs_r6_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r6_d27_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d27_s0
hs_r6_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r6_d27_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d27_s1
hs_r6_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r6_d27_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d27_s2
hs_r6_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r6_d28_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d28_s0
hs_r6_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r6_d28_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d28_s1
hs_r6_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r6_d28_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d28_s2
hs_r6_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r6_d29_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d29_s0
hs_r6_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r6_d29_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d29_s1
hs_r6_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r6_d29_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d29_s2
hs_r6_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r6_d30_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d30_s0
hs_r6_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r6_d30_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d30_s1
hs_r6_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r6_d30_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d30_s2
hs_r6_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r6_d31_s0.room -- r6
hospital.hospitalisationShifts -- hs_r6_d31_s0
hs_r6_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r6_d31_s1.room -- r6
hospital.hospitalisationShifts -- hs_r6_d31_s1
hs_r6_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r6_d31_s2.room -- r6
hospital.hospitalisationShifts -- hs_r6_d31_s2
hs_r7_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r7_d0_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d0_s0
hs_r7_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r7_d0_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d0_s1
hs_r7_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r7_d0_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d0_s2
hs_r7_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r7_d1_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d1_s0
hs_r7_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r7_d1_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d1_s1
hs_r7_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r7_d1_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d1_s2
hs_r7_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r7_d2_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d2_s0
hs_r7_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r7_d2_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d2_s1
hs_r7_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r7_d2_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d2_s2
hs_r7_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r7_d3_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d3_s0
hs_r7_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r7_d3_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d3_s1
hs_r7_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r7_d3_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d3_s2
hs_r7_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r7_d4_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d4_s0
hs_r7_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r7_d4_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d4_s1
hs_r7_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r7_d4_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d4_s2
hs_r7_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r7_d5_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d5_s0
hs_r7_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r7_d5_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d5_s1
hs_r7_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r7_d5_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d5_s2
hs_r7_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r7_d6_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d6_s0
hs_r7_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r7_d6_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d6_s1
hs_r7_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r7_d6_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d6_s2
hs_r7_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r7_d7_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d7_s0
hs_r7_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r7_d7_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d7_s1
hs_r7_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r7_d7_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d7_s2
hs_r7_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r7_d8_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d8_s0
hs_r7_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r7_d8_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d8_s1
hs_r7_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r7_d8_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d8_s2
hs_r7_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r7_d9_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d9_s0
hs_r7_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r7_d9_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d9_s1
hs_r7_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r7_d9_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d9_s2
hs_r7_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r7_d10_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d10_s0
hs_r7_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r7_d10_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d10_s1
hs_r7_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r7_d10_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d10_s2
hs_r7_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r7_d11_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d11_s0
hs_r7_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r7_d11_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d11_s1
hs_r7_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r7_d11_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d11_s2
hs_r7_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r7_d12_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d12_s0
hs_r7_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r7_d12_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d12_s1
hs_r7_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r7_d12_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d12_s2
hs_r7_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r7_d13_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d13_s0
hs_r7_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r7_d13_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d13_s1
hs_r7_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r7_d13_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d13_s2
hs_r7_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r7_d14_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d14_s0
hs_r7_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r7_d14_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d14_s1
hs_r7_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r7_d14_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d14_s2
hs_r7_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r7_d15_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d15_s0
hs_r7_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r7_d15_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d15_s1
hs_r7_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r7_d15_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d15_s2
hs_r7_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r7_d16_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d16_s0
hs_r7_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r7_d16_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d16_s1
hs_r7_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r7_d16_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d16_s2
hs_r7_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r7_d17_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d17_s0
hs_r7_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r7_d17_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d17_s1
hs_r7_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r7_d17_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d17_s2
hs_r7_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r7_d18_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d18_s0
hs_r7_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r7_d18_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d18_s1
hs_r7_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r7_d18_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d18_s2
hs_r7_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r7_d19_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d19_s0
hs_r7_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r7_d19_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d19_s1
hs_r7_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r7_d19_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d19_s2
hs_r7_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r7_d20_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d20_s0
hs_r7_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r7_d20_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d20_s1
hs_r7_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r7_d20_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d20_s2
hs_r7_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r7_d21_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d21_s0
hs_r7_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r7_d21_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d21_s1
hs_r7_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r7_d21_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d21_s2
hs_r7_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r7_d22_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d22_s0
hs_r7_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r7_d22_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d22_s1
hs_r7_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r7_d22_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d22_s2
hs_r7_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r7_d23_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d23_s0
hs_r7_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r7_d23_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d23_s1
hs_r7_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r7_d23_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d23_s2
hs_r7_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r7_d24_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d24_s0
hs_r7_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r7_d24_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d24_s1
hs_r7_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r7_d24_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d24_s2
hs_r7_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r7_d25_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d25_s0
hs_r7_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r7_d25_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d25_s1
hs_r7_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r7_d25_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d25_s2
hs_r7_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r7_d26_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d26_s0
hs_r7_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r7_d26_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d26_s1
hs_r7_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r7_d26_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d26_s2
hs_r7_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r7_d27_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d27_s0
hs_r7_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r7_d27_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d27_s1
hs_r7_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r7_d27_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d27_s2
hs_r7_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r7_d28_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d28_s0
hs_r7_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r7_d28_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d28_s1
hs_r7_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r7_d28_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d28_s2
hs_r7_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r7_d29_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d29_s0
hs_r7_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r7_d29_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d29_s1
hs_r7_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r7_d29_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d29_s2
hs_r7_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r7_d30_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d30_s0
hs_r7_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r7_d30_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d30_s1
hs_r7_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r7_d30_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d30_s2
hs_r7_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r7_d31_s0.room -- r7
hospital.hospitalisationShifts -- hs_r7_d31_s0
hs_r7_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r7_d31_s1.room -- r7
hospital.hospitalisationShifts -- hs_r7_d31_s1
hs_r7_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r7_d31_s2.room -- r7
hospital.hospitalisationShifts -- hs_r7_d31_s2
hs_r8_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r8_d0_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d0_s0
hs_r8_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r8_d0_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d0_s1
hs_r8_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r8_d0_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d0_s2
hs_r8_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r8_d1_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d1_s0
hs_r8_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r8_d1_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d1_s1
hs_r8_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r8_d1_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d1_s2
hs_r8_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r8_d2_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d2_s0
hs_r8_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r8_d2_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d2_s1
hs_r8_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r8_d2_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d2_s2
hs_r8_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r8_d3_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d3_s0
hs_r8_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r8_d3_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d3_s1
hs_r8_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r8_d3_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d3_s2
hs_r8_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r8_d4_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d4_s0
hs_r8_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r8_d4_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d4_s1
hs_r8_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r8_d4_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d4_s2
hs_r8_d5_s0: HospitalisationShift { day = 5 shift = 0 }
hs_r8_d5_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d5_s0
hs_r8_d5_s1: HospitalisationShift { day = 5 shift = 1 }
hs_r8_d5_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d5_s1
hs_r8_d5_s2: HospitalisationShift { day = 5 shift = 2 }
hs_r8_d5_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d5_s2
hs_r8_d6_s0: HospitalisationShift { day = 6 shift = 0 }
hs_r8_d6_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d6_s0
hs_r8_d6_s1: HospitalisationShift { day = 6 shift = 1 }
hs_r8_d6_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d6_s1
hs_r8_d6_s2: HospitalisationShift { day = 6 shift = 2 }
hs_r8_d6_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d6_s2
hs_r8_d7_s0: HospitalisationShift { day = 7 shift = 0 }
hs_r8_d7_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d7_s0
hs_r8_d7_s1: HospitalisationShift { day = 7 shift = 1 }
hs_r8_d7_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d7_s1
hs_r8_d7_s2: HospitalisationShift { day = 7 shift = 2 }
hs_r8_d7_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d7_s2
hs_r8_d8_s0: HospitalisationShift { day = 8 shift = 0 }
hs_r8_d8_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d8_s0
hs_r8_d8_s1: HospitalisationShift { day = 8 shift = 1 }
hs_r8_d8_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d8_s1
hs_r8_d8_s2: HospitalisationShift { day = 8 shift = 2 }
hs_r8_d8_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d8_s2
hs_r8_d9_s0: HospitalisationShift { day = 9 shift = 0 }
hs_r8_d9_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d9_s0
hs_r8_d9_s1: HospitalisationShift { day = 9 shift = 1 }
hs_r8_d9_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d9_s1
hs_r8_d9_s2: HospitalisationShift { day = 9 shift = 2 }
hs_r8_d9_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d9_s2
hs_r8_d10_s0: HospitalisationShift { day = 10 shift = 0 }
hs_r8_d10_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d10_s0
hs_r8_d10_s1: HospitalisationShift { day = 10 shift = 1 }
hs_r8_d10_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d10_s1
hs_r8_d10_s2: HospitalisationShift { day = 10 shift = 2 }
hs_r8_d10_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d10_s2
hs_r8_d11_s0: HospitalisationShift { day = 11 shift = 0 }
hs_r8_d11_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d11_s0
hs_r8_d11_s1: HospitalisationShift { day = 11 shift = 1 }
hs_r8_d11_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d11_s1
hs_r8_d11_s2: HospitalisationShift { day = 11 shift = 2 }
hs_r8_d11_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d11_s2
hs_r8_d12_s0: HospitalisationShift { day = 12 shift = 0 }
hs_r8_d12_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d12_s0
hs_r8_d12_s1: HospitalisationShift { day = 12 shift = 1 }
hs_r8_d12_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d12_s1
hs_r8_d12_s2: HospitalisationShift { day = 12 shift = 2 }
hs_r8_d12_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d12_s2
hs_r8_d13_s0: HospitalisationShift { day = 13 shift = 0 }
hs_r8_d13_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d13_s0
hs_r8_d13_s1: HospitalisationShift { day = 13 shift = 1 }
hs_r8_d13_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d13_s1
hs_r8_d13_s2: HospitalisationShift { day = 13 shift = 2 }
hs_r8_d13_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d13_s2
hs_r8_d14_s0: HospitalisationShift { day = 14 shift = 0 }
hs_r8_d14_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d14_s0
hs_r8_d14_s1: HospitalisationShift { day = 14 shift = 1 }
hs_r8_d14_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d14_s1
hs_r8_d14_s2: HospitalisationShift { day = 14 shift = 2 }
hs_r8_d14_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d14_s2
hs_r8_d15_s0: HospitalisationShift { day = 15 shift = 0 }
hs_r8_d15_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d15_s0
hs_r8_d15_s1: HospitalisationShift { day = 15 shift = 1 }
hs_r8_d15_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d15_s1
hs_r8_d15_s2: HospitalisationShift { day = 15 shift = 2 }
hs_r8_d15_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d15_s2
hs_r8_d16_s0: HospitalisationShift { day = 16 shift = 0 }
hs_r8_d16_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d16_s0
hs_r8_d16_s1: HospitalisationShift { day = 16 shift = 1 }
hs_r8_d16_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d16_s1
hs_r8_d16_s2: HospitalisationShift { day = 16 shift = 2 }
hs_r8_d16_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d16_s2
hs_r8_d17_s0: HospitalisationShift { day = 17 shift = 0 }
hs_r8_d17_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d17_s0
hs_r8_d17_s1: HospitalisationShift { day = 17 shift = 1 }
hs_r8_d17_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d17_s1
hs_r8_d17_s2: HospitalisationShift { day = 17 shift = 2 }
hs_r8_d17_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d17_s2
hs_r8_d18_s0: HospitalisationShift { day = 18 shift = 0 }
hs_r8_d18_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d18_s0
hs_r8_d18_s1: HospitalisationShift { day = 18 shift = 1 }
hs_r8_d18_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d18_s1
hs_r8_d18_s2: HospitalisationShift { day = 18 shift = 2 }
hs_r8_d18_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d18_s2
hs_r8_d19_s0: HospitalisationShift { day = 19 shift = 0 }
hs_r8_d19_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d19_s0
hs_r8_d19_s1: HospitalisationShift { day = 19 shift = 1 }
hs_r8_d19_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d19_s1
hs_r8_d19_s2: HospitalisationShift { day = 19 shift = 2 }
hs_r8_d19_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d19_s2
hs_r8_d20_s0: HospitalisationShift { day = 20 shift = 0 }
hs_r8_d20_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d20_s0
hs_r8_d20_s1: HospitalisationShift { day = 20 shift = 1 }
hs_r8_d20_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d20_s1
hs_r8_d20_s2: HospitalisationShift { day = 20 shift = 2 }
hs_r8_d20_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d20_s2
hs_r8_d21_s0: HospitalisationShift { day = 21 shift = 0 }
hs_r8_d21_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d21_s0
hs_r8_d21_s1: HospitalisationShift { day = 21 shift = 1 }
hs_r8_d21_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d21_s1
hs_r8_d21_s2: HospitalisationShift { day = 21 shift = 2 }
hs_r8_d21_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d21_s2
hs_r8_d22_s0: HospitalisationShift { day = 22 shift = 0 }
hs_r8_d22_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d22_s0
hs_r8_d22_s1: HospitalisationShift { day = 22 shift = 1 }
hs_r8_d22_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d22_s1
hs_r8_d22_s2: HospitalisationShift { day = 22 shift = 2 }
hs_r8_d22_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d22_s2
hs_r8_d23_s0: HospitalisationShift { day = 23 shift = 0 }
hs_r8_d23_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d23_s0
hs_r8_d23_s1: HospitalisationShift { day = 23 shift = 1 }
hs_r8_d23_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d23_s1
hs_r8_d23_s2: HospitalisationShift { day = 23 shift = 2 }
hs_r8_d23_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d23_s2
hs_r8_d24_s0: HospitalisationShift { day = 24 shift = 0 }
hs_r8_d24_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d24_s0
hs_r8_d24_s1: HospitalisationShift { day = 24 shift = 1 }
hs_r8_d24_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d24_s1
hs_r8_d24_s2: HospitalisationShift { day = 24 shift = 2 }
hs_r8_d24_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d24_s2
hs_r8_d25_s0: HospitalisationShift { day = 25 shift = 0 }
hs_r8_d25_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d25_s0
hs_r8_d25_s1: HospitalisationShift { day = 25 shift = 1 }
hs_r8_d25_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d25_s1
hs_r8_d25_s2: HospitalisationShift { day = 25 shift = 2 }
hs_r8_d25_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d25_s2
hs_r8_d26_s0: HospitalisationShift { day = 26 shift = 0 }
hs_r8_d26_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d26_s0
hs_r8_d26_s1: HospitalisationShift { day = 26 shift = 1 }
hs_r8_d26_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d26_s1
hs_r8_d26_s2: HospitalisationShift { day = 26 shift = 2 }
hs_r8_d26_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d26_s2
hs_r8_d27_s0: HospitalisationShift { day = 27 shift = 0 }
hs_r8_d27_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d27_s0
hs_r8_d27_s1: HospitalisationShift { day = 27 shift = 1 }
hs_r8_d27_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d27_s1
hs_r8_d27_s2: HospitalisationShift { day = 27 shift = 2 }
hs_r8_d27_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d27_s2
hs_r8_d28_s0: HospitalisationShift { day = 28 shift = 0 }
hs_r8_d28_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d28_s0
hs_r8_d28_s1: HospitalisationShift { day = 28 shift = 1 }
hs_r8_d28_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d28_s1
hs_r8_d28_s2: HospitalisationShift { day = 28 shift = 2 }
hs_r8_d28_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d28_s2
hs_r8_d29_s0: HospitalisationShift { day = 29 shift = 0 }
hs_r8_d29_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d29_s0
hs_r8_d29_s1: HospitalisationShift { day = 29 shift = 1 }
hs_r8_d29_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d29_s1
hs_r8_d29_s2: HospitalisationShift { day = 29 shift = 2 }
hs_r8_d29_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d29_s2
hs_r8_d30_s0: HospitalisationShift { day = 30 shift = 0 }
hs_r8_d30_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d30_s0
hs_r8_d30_s1: HospitalisationShift { day = 30 shift = 1 }
hs_r8_d30_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d30_s1
hs_r8_d30_s2: HospitalisationShift { day = 30 shift = 2 }
hs_r8_d30_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d30_s2
hs_r8_d31_s0: HospitalisationShift { day = 31 shift = 0 }
hs_r8_d31_s0.room -- r8
hospital.hospitalisationShifts -- hs_r8_d31_s0
hs_r8_d31_s1: HospitalisationShift { day = 31 shift = 1 }
hs_r8_d31_s1.room -- r8
hospital.hospitalisationShifts -- hs_r8_d31_s1
hs_r8_d31_s2: HospitalisationShift { day = 31 shift = 2 }
hs_r8_d31_s2.room -- r8
hospital.hospitalisationShifts -- hs_r8_d31_s2
nws0_0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 5 }
nws0_0.nurse -- n0
hospital.nurseWorkingShifts -- nws0_0
nws0_1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 5 }
nws0_1.nurse -- n0
hospital.nurseWorkingShifts -- nws0_1
nws0_2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 5 }
nws0_2.nurse -- n0
hospital.nurseWorkingShifts -- nws0_2
nws0_3: NurseWorkingShift { day = 3 shift = 1 maxLoad = 15 }
nws0_3.nurse -- n0
hospital.nurseWorkingShifts -- nws0_3
nws0_4: NurseWorkingShift { day = 4 shift = 2 maxLoad = 15 }
nws0_4.nurse -- n0
hospital.nurseWorkingShifts -- nws0_4
nws0_5: NurseWorkingShift { day = 5 shift = 2 maxLoad = 5 }
nws0_5.nurse -- n0
hospital.nurseWorkingShifts -- nws0_5
nws0_6: NurseWorkingShift { day = 6 shift = 2 maxLoad = 15 }
nws0_6.nurse -- n0
hospital.nurseWorkingShifts -- nws0_6
nws0_7: NurseWorkingShift { day = 7 shift = 2 maxLoad = 15 }
nws0_7.nurse -- n0
hospital.nurseWorkingShifts -- nws0_7
nws0_8: NurseWorkingShift { day = 9 shift = 1 maxLoad = 15 }
nws0_8.nurse -- n0
hospital.nurseWorkingShifts -- nws0_8
nws0_9: NurseWorkingShift { day = 10 shift = 1 maxLoad = 15 }
nws0_9.nurse -- n0
hospital.nurseWorkingShifts -- nws0_9
nws0_10: NurseWorkingShift { day = 11 shift = 1 maxLoad = 5 }
nws0_10.nurse -- n0
hospital.nurseWorkingShifts -- nws0_10
nws0_11: NurseWorkingShift { day = 13 shift = 0 maxLoad = 15 }
nws0_11.nurse -- n0
hospital.nurseWorkingShifts -- nws0_11
nws0_12: NurseWorkingShift { day = 14 shift = 0 maxLoad = 5 }
nws0_12.nurse -- n0
hospital.nurseWorkingShifts -- nws0_12
nws0_13: NurseWorkingShift { day = 15 shift = 1 maxLoad = 15 }
nws0_13.nurse -- n0
hospital.nurseWorkingShifts -- nws0_13
nws0_14: NurseWorkingShift { day = 16 shift = 1 maxLoad = 15 }
nws0_14.nurse -- n0
hospital.nurseWorkingShifts -- nws0_14
nws0_15: NurseWorkingShift { day = 18 shift = 0 maxLoad = 15 }
nws0_15.nurse -- n0
hospital.nurseWorkingShifts -- nws0_15
nws0_16: NurseWorkingShift { day = 19 shift = 0 maxLoad = 15 }
nws0_16.nurse -- n0
hospital.nurseWorkingShifts -- nws0_16
nws0_17: NurseWorkingShift { day = 20 shift = 0 maxLoad = 15 }
nws0_17.nurse -- n0
hospital.nurseWorkingShifts -- nws0_17
nws1_0: NurseWorkingShift { day = 0 shift = 2 maxLoad = 15 }
nws1_0.nurse -- n1
hospital.nurseWorkingShifts -- nws1_0
nws1_1: NurseWorkingShift { day = 2 shift = 0 maxLoad = 15 }
nws1_1.nurse -- n1
hospital.nurseWorkingShifts -- nws1_1
nws1_2: NurseWorkingShift { day = 3 shift = 1 maxLoad = 15 }
nws1_2.nurse -- n1
hospital.nurseWorkingShifts -- nws1_2
nws1_3: NurseWorkingShift { day = 4 shift = 1 maxLoad = 15 }
nws1_3.nurse -- n1
hospital.nurseWorkingShifts -- nws1_3
nws1_4: NurseWorkingShift { day = 5 shift = 2 maxLoad = 15 }
nws1_4.nurse -- n1
hospital.nurseWorkingShifts -- nws1_4
nws1_5: NurseWorkingShift { day = 6 shift = 2 maxLoad = 15 }
nws1_5.nurse -- n1
hospital.nurseWorkingShifts -- nws1_5
nws1_6: NurseWorkingShift { day = 8 shift = 0 maxLoad = 15 }
nws1_6.nurse -- n1
hospital.nurseWorkingShifts -- nws1_6
nws1_7: NurseWorkingShift { day = 10 shift = 0 maxLoad = 15 }
nws1_7.nurse -- n1
hospital.nurseWorkingShifts -- nws1_7
nws1_8: NurseWorkingShift { day = 11 shift = 0 maxLoad = 5 }
nws1_8.nurse -- n1
hospital.nurseWorkingShifts -- nws1_8
nws1_9: NurseWorkingShift { day = 12 shift = 2 maxLoad = 15 }
nws1_9.nurse -- n1
hospital.nurseWorkingShifts -- nws1_9
nws1_10: NurseWorkingShift { day = 13 shift = 2 maxLoad = 15 }
nws1_10.nurse -- n1
hospital.nurseWorkingShifts -- nws1_10
nws1_11: NurseWorkingShift { day = 14 shift = 2 maxLoad = 15 }
nws1_11.nurse -- n1
hospital.nurseWorkingShifts -- nws1_11
nws1_12: NurseWorkingShift { day = 15 shift = 2 maxLoad = 5 }
nws1_12.nurse -- n1
hospital.nurseWorkingShifts -- nws1_12
nws1_13: NurseWorkingShift { day = 17 shift = 0 maxLoad = 15 }
nws1_13.nurse -- n1
hospital.nurseWorkingShifts -- nws1_13
nws1_14: NurseWorkingShift { day = 18 shift = 0 maxLoad = 15 }
nws1_14.nurse -- n1
hospital.nurseWorkingShifts -- nws1_14
nws1_15: NurseWorkingShift { day = 19 shift = 0 maxLoad = 5 }
nws1_15.nurse -- n1
hospital.nurseWorkingShifts -- nws1_15
nws1_16: NurseWorkingShift { day = 20 shift = 0 maxLoad = 5 }
nws1_16.nurse -- n1
hospital.nurseWorkingShifts -- nws1_16
nws2_0: NurseWorkingShift { day = 0 shift = 2 maxLoad = 12 }
nws2_0.nurse -- n2
hospital.nurseWorkingShifts -- nws2_0
nws2_1: NurseWorkingShift { day = 1 shift = 2 maxLoad = 12 }
nws2_1.nurse -- n2
hospital.nurseWorkingShifts -- nws2_1
nws2_2: NurseWorkingShift { day = 3 shift = 0 maxLoad = 12 }
nws2_2.nurse -- n2
hospital.nurseWorkingShifts -- nws2_2
nws2_3: NurseWorkingShift { day = 4 shift = 0 maxLoad = 12 }
nws2_3.nurse -- n2
hospital.nurseWorkingShifts -- nws2_3
nws2_4: NurseWorkingShift { day = 5 shift = 0 maxLoad = 12 }
nws2_4.nurse -- n2
hospital.nurseWorkingShifts -- nws2_4
nws2_5: NurseWorkingShift { day = 6 shift = 0 maxLoad = 12 }
nws2_5.nurse -- n2
hospital.nurseWorkingShifts -- nws2_5
nws2_6: NurseWorkingShift { day = 7 shift = 2 maxLoad = 12 }
nws2_6.nurse -- n2
hospital.nurseWorkingShifts -- nws2_6
nws2_7: NurseWorkingShift { day = 9 shift = 0 maxLoad = 12 }
nws2_7.nurse -- n2
hospital.nurseWorkingShifts -- nws2_7
nws2_8: NurseWorkingShift { day = 10 shift = 1 maxLoad = 12 }
nws2_8.nurse -- n2
hospital.nurseWorkingShifts -- nws2_8
nws2_9: NurseWorkingShift { day = 11 shift = 1 maxLoad = 12 }
nws2_9.nurse -- n2
hospital.nurseWorkingShifts -- nws2_9
nws2_10: NurseWorkingShift { day = 12 shift = 1 maxLoad = 12 }
nws2_10.nurse -- n2
hospital.nurseWorkingShifts -- nws2_10
nws2_11: NurseWorkingShift { day = 14 shift = 2 maxLoad = 12 }
nws2_11.nurse -- n2
hospital.nurseWorkingShifts -- nws2_11
nws2_12: NurseWorkingShift { day = 16 shift = 1 maxLoad = 12 }
nws2_12.nurse -- n2
hospital.nurseWorkingShifts -- nws2_12
nws2_13: NurseWorkingShift { day = 17 shift = 1 maxLoad = 12 }
nws2_13.nurse -- n2
hospital.nurseWorkingShifts -- nws2_13
nws2_14: NurseWorkingShift { day = 18 shift = 2 maxLoad = 12 }
nws2_14.nurse -- n2
hospital.nurseWorkingShifts -- nws2_14
nws2_15: NurseWorkingShift { day = 19 shift = 2 maxLoad = 12 }
nws2_15.nurse -- n2
hospital.nurseWorkingShifts -- nws2_15
nws2_16: NurseWorkingShift { day = 20 shift = 2 maxLoad = 12 }
nws2_16.nurse -- n2
hospital.nurseWorkingShifts -- nws2_16
nws3_0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 15 }
nws3_0.nurse -- n3
hospital.nurseWorkingShifts -- nws3_0
nws3_1: NurseWorkingShift { day = 1 shift = 2 maxLoad = 5 }
nws3_1.nurse -- n3
hospital.nurseWorkingShifts -- nws3_1
nws3_2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 15 }
nws3_2.nurse -- n3
hospital.nurseWorkingShifts -- nws3_2
nws3_3: NurseWorkingShift { day = 3 shift = 2 maxLoad = 15 }
nws3_3.nurse -- n3
hospital.nurseWorkingShifts -- nws3_3
nws3_4: NurseWorkingShift { day = 5 shift = 0 maxLoad = 15 }
nws3_4.nurse -- n3
hospital.nurseWorkingShifts -- nws3_4
nws3_5: NurseWorkingShift { day = 6 shift = 1 maxLoad = 15 }
nws3_5.nurse -- n3
hospital.nurseWorkingShifts -- nws3_5
nws3_6: NurseWorkingShift { day = 7 shift = 1 maxLoad = 15 }
nws3_6.nurse -- n3
hospital.nurseWorkingShifts -- nws3_6
nws3_7: NurseWorkingShift { day = 8 shift = 2 maxLoad = 15 }
nws3_7.nurse -- n3
hospital.nurseWorkingShifts -- nws3_7
nws3_8: NurseWorkingShift { day = 10 shift = 0 maxLoad = 15 }
nws3_8.nurse -- n3
hospital.nurseWorkingShifts -- nws3_8
nws3_9: NurseWorkingShift { day = 11 shift = 0 maxLoad = 15 }
nws3_9.nurse -- n3
hospital.nurseWorkingShifts -- nws3_9
nws3_10: NurseWorkingShift { day = 12 shift = 1 maxLoad = 15 }
nws3_10.nurse -- n3
hospital.nurseWorkingShifts -- nws3_10
nws3_11: NurseWorkingShift { day = 13 shift = 1 maxLoad = 15 }
nws3_11.nurse -- n3
hospital.nurseWorkingShifts -- nws3_11
nws3_12: NurseWorkingShift { day = 14 shift = 1 maxLoad = 15 }
nws3_12.nurse -- n3
hospital.nurseWorkingShifts -- nws3_12
nws3_13: NurseWorkingShift { day = 15 shift = 1 maxLoad = 15 }
nws3_13.nurse -- n3
hospital.nurseWorkingShifts -- nws3_13
nws3_14: NurseWorkingShift { day = 16 shift = 1 maxLoad = 15 }
nws3_14.nurse -- n3
hospital.nurseWorkingShifts -- nws3_14
nws3_15: NurseWorkingShift { day = 17 shift = 1 maxLoad = 15 }
nws3_15.nurse -- n3
hospital.nurseWorkingShifts -- nws3_15
nws3_16: NurseWorkingShift { day = 19 shift = 0 maxLoad = 15 }
nws3_16.nurse -- n3
hospital.nurseWorkingShifts -- nws3_16
nws3_17: NurseWorkingShift { day = 20 shift = 0 maxLoad = 15 }
nws3_17.nurse -- n3
hospital.nurseWorkingShifts -- nws3_17
nws4_0: NurseWorkingShift { day = 0 shift = 2 maxLoad = 15 }
nws4_0.nurse -- n4
hospital.nurseWorkingShifts -- nws4_0
nws4_1: NurseWorkingShift { day = 1 shift = 2 maxLoad = 15 }
nws4_1.nurse -- n4
hospital.nurseWorkingShifts -- nws4_1
nws4_2: NurseWorkingShift { day = 3 shift = 1 maxLoad = 15 }
nws4_2.nurse -- n4
hospital.nurseWorkingShifts -- nws4_2
nws4_3: NurseWorkingShift { day = 4 shift = 2 maxLoad = 15 }
nws4_3.nurse -- n4
hospital.nurseWorkingShifts -- nws4_3
nws4_4: NurseWorkingShift { day = 6 shift = 0 maxLoad = 15 }
nws4_4.nurse -- n4
hospital.nurseWorkingShifts -- nws4_4
nws4_5: NurseWorkingShift { day = 7 shift = 1 maxLoad = 15 }
nws4_5.nurse -- n4
hospital.nurseWorkingShifts -- nws4_5
nws4_6: NurseWorkingShift { day = 9 shift = 1 maxLoad = 5 }
nws4_6.nurse -- n4
hospital.nurseWorkingShifts -- nws4_6
nws4_7: NurseWorkingShift { day = 11 shift = 0 maxLoad = 15 }
nws4_7.nurse -- n4
hospital.nurseWorkingShifts -- nws4_7
nws4_8: NurseWorkingShift { day = 12 shift = 2 maxLoad = 15 }
nws4_8.nurse -- n4
hospital.nurseWorkingShifts -- nws4_8
nws4_9: NurseWorkingShift { day = 13 shift = 2 maxLoad = 15 }
nws4_9.nurse -- n4
hospital.nurseWorkingShifts -- nws4_9
nws4_10: NurseWorkingShift { day = 14 shift = 2 maxLoad = 5 }
nws4_10.nurse -- n4
hospital.nurseWorkingShifts -- nws4_10
nws4_11: NurseWorkingShift { day = 16 shift = 0 maxLoad = 15 }
nws4_11.nurse -- n4
hospital.nurseWorkingShifts -- nws4_11
nws4_12: NurseWorkingShift { day = 17 shift = 0 maxLoad = 15 }
nws4_12.nurse -- n4
hospital.nurseWorkingShifts -- nws4_12
nws4_13: NurseWorkingShift { day = 18 shift = 0 maxLoad = 15 }
nws4_13.nurse -- n4
hospital.nurseWorkingShifts -- nws4_13
nws4_14: NurseWorkingShift { day = 19 shift = 0 maxLoad = 15 }
nws4_14.nurse -- n4
hospital.nurseWorkingShifts -- nws4_14
nws4_15: NurseWorkingShift { day = 20 shift = 0 maxLoad = 5 }
nws4_15.nurse -- n4
hospital.nurseWorkingShifts -- nws4_15
nws5_0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 15 }
nws5_0.nurse -- n5
hospital.nurseWorkingShifts -- nws5_0
nws5_1: NurseWorkingShift { day = 1 shift = 2 maxLoad = 15 }
nws5_1.nurse -- n5
hospital.nurseWorkingShifts -- nws5_1
nws5_2: NurseWorkingShift { day = 3 shift = 1 maxLoad = 15 }
nws5_2.nurse -- n5
hospital.nurseWorkingShifts -- nws5_2
nws5_3: NurseWorkingShift { day = 4 shift = 1 maxLoad = 5 }
nws5_3.nurse -- n5
hospital.nurseWorkingShifts -- nws5_3
nws5_4: NurseWorkingShift { day = 5 shift = 2 maxLoad = 15 }
nws5_4.nurse -- n5
hospital.nurseWorkingShifts -- nws5_4
nws5_5: NurseWorkingShift { day = 7 shift = 2 maxLoad = 15 }
nws5_5.nurse -- n5
hospital.nurseWorkingShifts -- nws5_5
nws5_6: NurseWorkingShift { day = 9 shift = 1 maxLoad = 15 }
nws5_6.nurse -- n5
hospital.nurseWorkingShifts -- nws5_6
nws5_7: NurseWorkingShift { day = 10 shift = 1 maxLoad = 15 }
nws5_7.nurse -- n5
hospital.nurseWorkingShifts -- nws5_7
nws5_8: NurseWorkingShift { day = 11 shift = 1 maxLoad = 15 }
nws5_8.nurse -- n5
hospital.nurseWorkingShifts -- nws5_8
nws5_9: NurseWorkingShift { day = 12 shift = 2 maxLoad = 15 }
nws5_9.nurse -- n5
hospital.nurseWorkingShifts -- nws5_9
nws5_10: NurseWorkingShift { day = 14 shift = 2 maxLoad = 15 }
nws5_10.nurse -- n5
hospital.nurseWorkingShifts -- nws5_10
nws5_11: NurseWorkingShift { day = 15 shift = 2 maxLoad = 15 }
nws5_11.nurse -- n5
hospital.nurseWorkingShifts -- nws5_11
nws5_12: NurseWorkingShift { day = 16 shift = 2 maxLoad = 5 }
nws5_12.nurse -- n5
hospital.nurseWorkingShifts -- nws5_12
nws5_13: NurseWorkingShift { day = 17 shift = 2 maxLoad = 15 }
nws5_13.nurse -- n5
hospital.nurseWorkingShifts -- nws5_13
nws5_14: NurseWorkingShift { day = 19 shift = 0 maxLoad = 5 }
nws5_14.nurse -- n5
hospital.nurseWorkingShifts -- nws5_14
nws5_15: NurseWorkingShift { day = 20 shift = 1 maxLoad = 15 }
nws5_15.nurse -- n5
hospital.nurseWorkingShifts -- nws5_15
nws6_0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 15 }
nws6_0.nurse -- n6
hospital.nurseWorkingShifts -- nws6_0
nws6_1: NurseWorkingShift { day = 2 shift = 0 maxLoad = 15 }
nws6_1.nurse -- n6
hospital.nurseWorkingShifts -- nws6_1
nws6_2: NurseWorkingShift { day = 3 shift = 0 maxLoad = 5 }
nws6_2.nurse -- n6
hospital.nurseWorkingShifts -- nws6_2
nws6_3: NurseWorkingShift { day = 4 shift = 0 maxLoad = 15 }
nws6_3.nurse -- n6
hospital.nurseWorkingShifts -- nws6_3
nws6_4: NurseWorkingShift { day = 5 shift = 2 maxLoad = 15 }
nws6_4.nurse -- n6
hospital.nurseWorkingShifts -- nws6_4
nws6_5: NurseWorkingShift { day = 6 shift = 2 maxLoad = 15 }
nws6_5.nurse -- n6
hospital.nurseWorkingShifts -- nws6_5
nws6_6: NurseWorkingShift { day = 8 shift = 0 maxLoad = 15 }
nws6_6.nurse -- n6
hospital.nurseWorkingShifts -- nws6_6
nws6_7: NurseWorkingShift { day = 9 shift = 2 maxLoad = 15 }
nws6_7.nurse -- n6
hospital.nurseWorkingShifts -- nws6_7
nws6_8: NurseWorkingShift { day = 10 shift = 2 maxLoad = 15 }
nws6_8.nurse -- n6
hospital.nurseWorkingShifts -- nws6_8
nws6_9: NurseWorkingShift { day = 11 shift = 2 maxLoad = 15 }
nws6_9.nurse -- n6
hospital.nurseWorkingShifts -- nws6_9
nws6_10: NurseWorkingShift { day = 13 shift = 0 maxLoad = 15 }
nws6_10.nurse -- n6
hospital.nurseWorkingShifts -- nws6_10
nws6_11: NurseWorkingShift { day = 14 shift = 0 maxLoad = 15 }
nws6_11.nurse -- n6
hospital.nurseWorkingShifts -- nws6_11
nws6_12: NurseWorkingShift { day = 15 shift = 0 maxLoad = 15 }
nws6_12.nurse -- n6
hospital.nurseWorkingShifts -- nws6_12
nws6_13: NurseWorkingShift { day = 16 shift = 0 maxLoad = 15 }
nws6_13.nurse -- n6
hospital.nurseWorkingShifts -- nws6_13
nws6_14: NurseWorkingShift { day = 17 shift = 0 maxLoad = 5 }
nws6_14.nurse -- n6
hospital.nurseWorkingShifts -- nws6_14
nws6_15: NurseWorkingShift { day = 18 shift = 0 maxLoad = 15 }
nws6_15.nurse -- n6
hospital.nurseWorkingShifts -- nws6_15
nws6_16: NurseWorkingShift { day = 19 shift = 1 maxLoad = 15 }
nws6_16.nurse -- n6
hospital.nurseWorkingShifts -- nws6_16
nws6_17: NurseWorkingShift { day = 20 shift = 1 maxLoad = 5 }
nws6_17.nurse -- n6
hospital.nurseWorkingShifts -- nws6_17
nws7_0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 10 }
nws7_0.nurse -- n7
hospital.nurseWorkingShifts -- nws7_0
nws7_1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 10 }
nws7_1.nurse -- n7
hospital.nurseWorkingShifts -- nws7_1
nws7_2: NurseWorkingShift { day = 2 shift = 1 maxLoad = 10 }
nws7_2.nurse -- n7
hospital.nurseWorkingShifts -- nws7_2
nws7_3: NurseWorkingShift { day = 4 shift = 0 maxLoad = 10 }
nws7_3.nurse -- n7
hospital.nurseWorkingShifts -- nws7_3
nws7_4: NurseWorkingShift { day = 5 shift = 0 maxLoad = 10 }
nws7_4.nurse -- n7
hospital.nurseWorkingShifts -- nws7_4
nws7_5: NurseWorkingShift { day = 6 shift = 0 maxLoad = 10 }
nws7_5.nurse -- n7
hospital.nurseWorkingShifts -- nws7_5
nws7_6: NurseWorkingShift { day = 7 shift = 0 maxLoad = 10 }
nws7_6.nurse -- n7
hospital.nurseWorkingShifts -- nws7_6
nws7_7: NurseWorkingShift { day = 8 shift = 0 maxLoad = 10 }
nws7_7.nurse -- n7
hospital.nurseWorkingShifts -- nws7_7
nws7_8: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
nws7_8.nurse -- n7
hospital.nurseWorkingShifts -- nws7_8
nws7_9: NurseWorkingShift { day = 11 shift = 0 maxLoad = 10 }
nws7_9.nurse -- n7
hospital.nurseWorkingShifts -- nws7_9
nws7_10: NurseWorkingShift { day = 13 shift = 0 maxLoad = 10 }
nws7_10.nurse -- n7
hospital.nurseWorkingShifts -- nws7_10
nws7_11: NurseWorkingShift { day = 14 shift = 0 maxLoad = 10 }
nws7_11.nurse -- n7
hospital.nurseWorkingShifts -- nws7_11
nws7_12: NurseWorkingShift { day = 15 shift = 0 maxLoad = 10 }
nws7_12.nurse -- n7
hospital.nurseWorkingShifts -- nws7_12
nws7_13: NurseWorkingShift { day = 16 shift = 0 maxLoad = 10 }
nws7_13.nurse -- n7
hospital.nurseWorkingShifts -- nws7_13
nws7_14: NurseWorkingShift { day = 17 shift = 0 maxLoad = 10 }
nws7_14.nurse -- n7
hospital.nurseWorkingShifts -- nws7_14
nws7_15: NurseWorkingShift { day = 18 shift = 1 maxLoad = 10 }
nws7_15.nurse -- n7
hospital.nurseWorkingShifts -- nws7_15
nws7_16: NurseWorkingShift { day = 19 shift = 1 maxLoad = 10 }
nws7_16.nurse -- n7
hospital.nurseWorkingShifts -- nws7_16
nws8_0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 15 }
nws8_0.nurse -- n8
hospital.nurseWorkingShifts -- nws8_0
nws8_1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 15 }
nws8_1.nurse -- n8
hospital.nurseWorkingShifts -- nws8_1
nws8_2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 15 }
nws8_2.nurse -- n8
hospital.nurseWorkingShifts -- nws8_2
nws8_3: NurseWorkingShift { day = 3 shift = 2 maxLoad = 15 }
nws8_3.nurse -- n8
hospital.nurseWorkingShifts -- nws8_3
nws8_4: NurseWorkingShift { day = 5 shift = 0 maxLoad = 5 }
nws8_4.nurse -- n8
hospital.nurseWorkingShifts -- nws8_4
nws8_5: NurseWorkingShift { day = 6 shift = 0 maxLoad = 15 }
nws8_5.nurse -- n8
hospital.nurseWorkingShifts -- nws8_5
nws8_6: NurseWorkingShift { day = 7 shift = 1 maxLoad = 15 }
nws8_6.nurse -- n8
hospital.nurseWorkingShifts -- nws8_6
nws8_7: NurseWorkingShift { day = 8 shift = 1 maxLoad = 5 }
nws8_7.nurse -- n8
hospital.nurseWorkingShifts -- nws8_7
nws8_8: NurseWorkingShift { day = 9 shift = 2 maxLoad = 15 }
nws8_8.nurse -- n8
hospital.nurseWorkingShifts -- nws8_8
nws8_9: NurseWorkingShift { day = 11 shift = 0 maxLoad = 5 }
nws8_9.nurse -- n8
hospital.nurseWorkingShifts -- nws8_9
nws8_10: NurseWorkingShift { day = 12 shift = 0 maxLoad = 15 }
nws8_10.nurse -- n8
hospital.nurseWorkingShifts -- nws8_10
nws8_11: NurseWorkingShift { day = 13 shift = 1 maxLoad = 5 }
nws8_11.nurse -- n8
hospital.nurseWorkingShifts -- nws8_11
nws8_12: NurseWorkingShift { day = 15 shift = 0 maxLoad = 5 }
nws8_12.nurse -- n8
hospital.nurseWorkingShifts -- nws8_12
nws8_13: NurseWorkingShift { day = 16 shift = 0 maxLoad = 15 }
nws8_13.nurse -- n8
hospital.nurseWorkingShifts -- nws8_13
nws8_14: NurseWorkingShift { day = 17 shift = 2 maxLoad = 15 }
nws8_14.nurse -- n8
hospital.nurseWorkingShifts -- nws8_14
nws8_15: NurseWorkingShift { day = 19 shift = 1 maxLoad = 15 }
nws8_15.nurse -- n8
hospital.nurseWorkingShifts -- nws8_15
nws8_16: NurseWorkingShift { day = 20 shift = 2 maxLoad = 5 }
nws8_16.nurse -- n8
hospital.nurseWorkingShifts -- nws8_16
nws9_0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 12 }
nws9_0.nurse -- n9
hospital.nurseWorkingShifts -- nws9_0
nws9_1: NurseWorkingShift { day = 2 shift = 0 maxLoad = 12 }
nws9_1.nurse -- n9
hospital.nurseWorkingShifts -- nws9_1
nws9_2: NurseWorkingShift { day = 3 shift = 2 maxLoad = 12 }
nws9_2.nurse -- n9
hospital.nurseWorkingShifts -- nws9_2
nws9_3: NurseWorkingShift { day = 5 shift = 0 maxLoad = 12 }
nws9_3.nurse -- n9
hospital.nurseWorkingShifts -- nws9_3
nws9_4: NurseWorkingShift { day = 6 shift = 0 maxLoad = 12 }
nws9_4.nurse -- n9
hospital.nurseWorkingShifts -- nws9_4
nws9_5: NurseWorkingShift { day = 7 shift = 0 maxLoad = 12 }
nws9_5.nurse -- n9
hospital.nurseWorkingShifts -- nws9_5
nws9_6: NurseWorkingShift { day = 8 shift = 1 maxLoad = 12 }
nws9_6.nurse -- n9
hospital.nurseWorkingShifts -- nws9_6
nws9_7: NurseWorkingShift { day = 9 shift = 1 maxLoad = 12 }
nws9_7.nurse -- n9
hospital.nurseWorkingShifts -- nws9_7
nws9_8: NurseWorkingShift { day = 10 shift = 1 maxLoad = 12 }
nws9_8.nurse -- n9
hospital.nurseWorkingShifts -- nws9_8
nws9_9: NurseWorkingShift { day = 11 shift = 1 maxLoad = 12 }
nws9_9.nurse -- n9
hospital.nurseWorkingShifts -- nws9_9
nws9_10: NurseWorkingShift { day = 12 shift = 1 maxLoad = 12 }
nws9_10.nurse -- n9
hospital.nurseWorkingShifts -- nws9_10
nws9_11: NurseWorkingShift { day = 13 shift = 1 maxLoad = 12 }
nws9_11.nurse -- n9
hospital.nurseWorkingShifts -- nws9_11
nws9_12: NurseWorkingShift { day = 14 shift = 1 maxLoad = 12 }
nws9_12.nurse -- n9
hospital.nurseWorkingShifts -- nws9_12
nws9_13: NurseWorkingShift { day = 16 shift = 1 maxLoad = 12 }
nws9_13.nurse -- n9
hospital.nurseWorkingShifts -- nws9_13
nws9_14: NurseWorkingShift { day = 18 shift = 1 maxLoad = 12 }
nws9_14.nurse -- n9
hospital.nurseWorkingShifts -- nws9_14
nws9_15: NurseWorkingShift { day = 19 shift = 2 maxLoad = 12 }
nws9_15.nurse -- n9
hospital.nurseWorkingShifts -- nws9_15
nws9_16: NurseWorkingShift { day = 20 shift = 2 maxLoad = 12 }
nws9_16.nurse -- n9
hospital.nurseWorkingShifts -- nws9_16
nws10_0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 10 }
nws10_0.nurse -- n10
hospital.nurseWorkingShifts -- nws10_0
nws10_1: NurseWorkingShift { day = 2 shift = 2 maxLoad = 10 }
nws10_1.nurse -- n10
hospital.nurseWorkingShifts -- nws10_1
nws10_2: NurseWorkingShift { day = 4 shift = 0 maxLoad = 10 }
nws10_2.nurse -- n10
hospital.nurseWorkingShifts -- nws10_2
nws10_3: NurseWorkingShift { day = 5 shift = 1 maxLoad = 10 }
nws10_3.nurse -- n10
hospital.nurseWorkingShifts -- nws10_3
nws10_4: NurseWorkingShift { day = 6 shift = 1 maxLoad = 10 }
nws10_4.nurse -- n10
hospital.nurseWorkingShifts -- nws10_4
nws10_5: NurseWorkingShift { day = 7 shift = 1 maxLoad = 10 }
nws10_5.nurse -- n10
hospital.nurseWorkingShifts -- nws10_5
nws10_6: NurseWorkingShift { day = 8 shift = 1 maxLoad = 10 }
nws10_6.nurse -- n10
hospital.nurseWorkingShifts -- nws10_6
nws10_7: NurseWorkingShift { day = 9 shift = 2 maxLoad = 10 }
nws10_7.nurse -- n10
hospital.nurseWorkingShifts -- nws10_7
nws10_8: NurseWorkingShift { day = 10 shift = 2 maxLoad = 10 }
nws10_8.nurse -- n10
hospital.nurseWorkingShifts -- nws10_8
nws10_9: NurseWorkingShift { day = 11 shift = 2 maxLoad = 10 }
nws10_9.nurse -- n10
hospital.nurseWorkingShifts -- nws10_9
nws10_10: NurseWorkingShift { day = 13 shift = 0 maxLoad = 10 }
nws10_10.nurse -- n10
hospital.nurseWorkingShifts -- nws10_10
nws10_11: NurseWorkingShift { day = 14 shift = 0 maxLoad = 10 }
nws10_11.nurse -- n10
hospital.nurseWorkingShifts -- nws10_11
nws10_12: NurseWorkingShift { day = 15 shift = 0 maxLoad = 10 }
nws10_12.nurse -- n10
hospital.nurseWorkingShifts -- nws10_12
nws10_13: NurseWorkingShift { day = 16 shift = 2 maxLoad = 10 }
nws10_13.nurse -- n10
hospital.nurseWorkingShifts -- nws10_13
nws10_14: NurseWorkingShift { day = 18 shift = 2 maxLoad = 10 }
nws10_14.nurse -- n10
hospital.nurseWorkingShifts -- nws10_14
nws10_15: NurseWorkingShift { day = 19 shift = 2 maxLoad = 10 }
nws10_15.nurse -- n10
hospital.nurseWorkingShifts -- nws10_15
nws10_16: NurseWorkingShift { day = 20 shift = 2 maxLoad = 10 }
nws10_16.nurse -- n10
hospital.nurseWorkingShifts -- nws10_16
nws11_0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 15 }
nws11_0.nurse -- n11
hospital.nurseWorkingShifts -- nws11_0
nws11_1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 15 }
nws11_1.nurse -- n11
hospital.nurseWorkingShifts -- nws11_1
nws11_2: NurseWorkingShift { day = 2 shift = 1 maxLoad = 5 }
nws11_2.nurse -- n11
hospital.nurseWorkingShifts -- nws11_2
nws11_3: NurseWorkingShift { day = 4 shift = 0 maxLoad = 5 }
nws11_3.nurse -- n11
hospital.nurseWorkingShifts -- nws11_3
nws11_4: NurseWorkingShift { day = 5 shift = 1 maxLoad = 15 }
nws11_4.nurse -- n11
hospital.nurseWorkingShifts -- nws11_4
nws11_5: NurseWorkingShift { day = 6 shift = 1 maxLoad = 15 }
nws11_5.nurse -- n11
hospital.nurseWorkingShifts -- nws11_5
nws11_6: NurseWorkingShift { day = 8 shift = 1 maxLoad = 15 }
nws11_6.nurse -- n11
hospital.nurseWorkingShifts -- nws11_6
nws11_7: NurseWorkingShift { day = 9 shift = 2 maxLoad = 15 }
nws11_7.nurse -- n11
hospital.nurseWorkingShifts -- nws11_7
nws11_8: NurseWorkingShift { day = 11 shift = 0 maxLoad = 15 }
nws11_8.nurse -- n11
hospital.nurseWorkingShifts -- nws11_8
nws11_9: NurseWorkingShift { day = 12 shift = 1 maxLoad = 15 }
nws11_9.nurse -- n11
hospital.nurseWorkingShifts -- nws11_9
nws11_10: NurseWorkingShift { day = 13 shift = 1 maxLoad = 15 }
nws11_10.nurse -- n11
hospital.nurseWorkingShifts -- nws11_10
nws11_11: NurseWorkingShift { day = 14 shift = 1 maxLoad = 15 }
nws11_11.nurse -- n11
hospital.nurseWorkingShifts -- nws11_11
nws11_12: NurseWorkingShift { day = 15 shift = 2 maxLoad = 5 }
nws11_12.nurse -- n11
hospital.nurseWorkingShifts -- nws11_12
nws11_13: NurseWorkingShift { day = 17 shift = 0 maxLoad = 15 }
nws11_13.nurse -- n11
hospital.nurseWorkingShifts -- nws11_13
nws11_14: NurseWorkingShift { day = 18 shift = 1 maxLoad = 15 }
nws11_14.nurse -- n11
hospital.nurseWorkingShifts -- nws11_14
nws11_15: NurseWorkingShift { day = 19 shift = 2 maxLoad = 15 }
nws11_15.nurse -- n11
hospital.nurseWorkingShifts -- nws11_15
nws12_0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 10 }
nws12_0.nurse -- n12
hospital.nurseWorkingShifts -- nws12_0
nws12_1: NurseWorkingShift { day = 2 shift = 0 maxLoad = 10 }
nws12_1.nurse -- n12
hospital.nurseWorkingShifts -- nws12_1
nws12_2: NurseWorkingShift { day = 3 shift = 0 maxLoad = 10 }
nws12_2.nurse -- n12
hospital.nurseWorkingShifts -- nws12_2
nws12_3: NurseWorkingShift { day = 4 shift = 1 maxLoad = 10 }
nws12_3.nurse -- n12
hospital.nurseWorkingShifts -- nws12_3
nws12_4: NurseWorkingShift { day = 5 shift = 1 maxLoad = 10 }
nws12_4.nurse -- n12
hospital.nurseWorkingShifts -- nws12_4
nws12_5: NurseWorkingShift { day = 7 shift = 0 maxLoad = 10 }
nws12_5.nurse -- n12
hospital.nurseWorkingShifts -- nws12_5
nws12_6: NurseWorkingShift { day = 8 shift = 1 maxLoad = 10 }
nws12_6.nurse -- n12
hospital.nurseWorkingShifts -- nws12_6
nws12_7: NurseWorkingShift { day = 10 shift = 0 maxLoad = 10 }
nws12_7.nurse -- n12
hospital.nurseWorkingShifts -- nws12_7
nws12_8: NurseWorkingShift { day = 11 shift = 1 maxLoad = 10 }
nws12_8.nurse -- n12
hospital.nurseWorkingShifts -- nws12_8
nws12_9: NurseWorkingShift { day = 13 shift = 0 maxLoad = 10 }
nws12_9.nurse -- n12
hospital.nurseWorkingShifts -- nws12_9
nws12_10: NurseWorkingShift { day = 14 shift = 0 maxLoad = 10 }
nws12_10.nurse -- n12
hospital.nurseWorkingShifts -- nws12_10
nws12_11: NurseWorkingShift { day = 15 shift = 1 maxLoad = 10 }
nws12_11.nurse -- n12
hospital.nurseWorkingShifts -- nws12_11
nws12_12: NurseWorkingShift { day = 16 shift = 2 maxLoad = 10 }
nws12_12.nurse -- n12
hospital.nurseWorkingShifts -- nws12_12
nws12_13: NurseWorkingShift { day = 17 shift = 2 maxLoad = 10 }
nws12_13.nurse -- n12
hospital.nurseWorkingShifts -- nws12_13
nws12_14: NurseWorkingShift { day = 18 shift = 2 maxLoad = 10 }
nws12_14.nurse -- n12
hospital.nurseWorkingShifts -- nws12_14
nws12_15: NurseWorkingShift { day = 20 shift = 0 maxLoad = 10 }
nws12_15.nurse -- n12
hospital.nurseWorkingShifts -- nws12_15
nws13_0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 5 }
nws13_0.nurse -- n13
hospital.nurseWorkingShifts -- nws13_0
nws13_1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 5 }
nws13_1.nurse -- n13
hospital.nurseWorkingShifts -- nws13_1
nws13_2: NurseWorkingShift { day = 4 shift = 0 maxLoad = 15 }
nws13_2.nurse -- n13
hospital.nurseWorkingShifts -- nws13_2
nws13_3: NurseWorkingShift { day = 6 shift = 1 maxLoad = 15 }
nws13_3.nurse -- n13
hospital.nurseWorkingShifts -- nws13_3
nws13_4: NurseWorkingShift { day = 8 shift = 0 maxLoad = 15 }
nws13_4.nurse -- n13
hospital.nurseWorkingShifts -- nws13_4
nws13_5: NurseWorkingShift { day = 9 shift = 0 maxLoad = 5 }
nws13_5.nurse -- n13
hospital.nurseWorkingShifts -- nws13_5
nws13_6: NurseWorkingShift { day = 10 shift = 0 maxLoad = 5 }
nws13_6.nurse -- n13
hospital.nurseWorkingShifts -- nws13_6
nws13_7: NurseWorkingShift { day = 11 shift = 2 maxLoad = 15 }
nws13_7.nurse -- n13
hospital.nurseWorkingShifts -- nws13_7
nws13_8: NurseWorkingShift { day = 13 shift = 1 maxLoad = 15 }
nws13_8.nurse -- n13
hospital.nurseWorkingShifts -- nws13_8
nws13_9: NurseWorkingShift { day = 14 shift = 1 maxLoad = 15 }
nws13_9.nurse -- n13
hospital.nurseWorkingShifts -- nws13_9
nws13_10: NurseWorkingShift { day = 15 shift = 1 maxLoad = 5 }
nws13_10.nurse -- n13
hospital.nurseWorkingShifts -- nws13_10
nws13_11: NurseWorkingShift { day = 16 shift = 2 maxLoad = 15 }
nws13_11.nurse -- n13
hospital.nurseWorkingShifts -- nws13_11
nws13_12: NurseWorkingShift { day = 18 shift = 1 maxLoad = 5 }
nws13_12.nurse -- n13
hospital.nurseWorkingShifts -- nws13_12
nws13_13: NurseWorkingShift { day = 19 shift = 1 maxLoad = 5 }
nws13_13.nurse -- n13
hospital.nurseWorkingShifts -- nws13_13
nws13_14: NurseWorkingShift { day = 20 shift = 1 maxLoad = 15 }
nws13_14.nurse -- n13
hospital.nurseWorkingShifts -- nws13_14
nws14_0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 15 }
nws14_0.nurse -- n14
hospital.nurseWorkingShifts -- nws14_0
nws14_1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 15 }
nws14_1.nurse -- n14
hospital.nurseWorkingShifts -- nws14_1
nws14_2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 15 }
nws14_2.nurse -- n14
hospital.nurseWorkingShifts -- nws14_2
nws14_3: NurseWorkingShift { day = 4 shift = 1 maxLoad = 15 }
nws14_3.nurse -- n14
hospital.nurseWorkingShifts -- nws14_3
nws14_4: NurseWorkingShift { day = 5 shift = 1 maxLoad = 15 }
nws14_4.nurse -- n14
hospital.nurseWorkingShifts -- nws14_4
nws14_5: NurseWorkingShift { day = 7 shift = 0 maxLoad = 5 }
nws14_5.nurse -- n14
hospital.nurseWorkingShifts -- nws14_5
nws14_6: NurseWorkingShift { day = 8 shift = 1 maxLoad = 15 }
nws14_6.nurse -- n14
hospital.nurseWorkingShifts -- nws14_6
nws14_7: NurseWorkingShift { day = 10 shift = 0 maxLoad = 15 }
nws14_7.nurse -- n14
hospital.nurseWorkingShifts -- nws14_7
nws14_8: NurseWorkingShift { day = 11 shift = 2 maxLoad = 15 }
nws14_8.nurse -- n14
hospital.nurseWorkingShifts -- nws14_8
nws14_9: NurseWorkingShift { day = 13 shift = 2 maxLoad = 15 }
nws14_9.nurse -- n14
hospital.nurseWorkingShifts -- nws14_9
nws14_10: NurseWorkingShift { day = 15 shift = 0 maxLoad = 15 }
nws14_10.nurse -- n14
hospital.nurseWorkingShifts -- nws14_10
nws14_11: NurseWorkingShift { day = 16 shift = 2 maxLoad = 5 }
nws14_11.nurse -- n14
hospital.nurseWorkingShifts -- nws14_11
nws14_12: NurseWorkingShift { day = 18 shift = 1 maxLoad = 5 }
nws14_12.nurse -- n14
hospital.nurseWorkingShifts -- nws14_12
nws14_13: NurseWorkingShift { day = 20 shift = 0 maxLoad = 15 }
nws14_13.nurse -- n14
hospital.nurseWorkingShifts -- nws14_13
nws15_0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 10 }
nws15_0.nurse -- n15
hospital.nurseWorkingShifts -- nws15_0
nws15_1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 10 }
nws15_1.nurse -- n15
hospital.nurseWorkingShifts -- nws15_1
nws15_2: NurseWorkingShift { day = 2 shift = 1 maxLoad = 10 }
nws15_2.nurse -- n15
hospital.nurseWorkingShifts -- nws15_2
nws15_3: NurseWorkingShift { day = 4 shift = 1 maxLoad = 10 }
nws15_3.nurse -- n15
hospital.nurseWorkingShifts -- nws15_3
nws15_4: NurseWorkingShift { day = 5 shift = 1 maxLoad = 10 }
nws15_4.nurse -- n15
hospital.nurseWorkingShifts -- nws15_4
nws15_5: NurseWorkingShift { day = 7 shift = 0 maxLoad = 10 }
nws15_5.nurse -- n15
hospital.nurseWorkingShifts -- nws15_5
nws15_6: NurseWorkingShift { day = 8 shift = 2 maxLoad = 10 }
nws15_6.nurse -- n15
hospital.nurseWorkingShifts -- nws15_6
nws15_7: NurseWorkingShift { day = 10 shift = 2 maxLoad = 10 }
nws15_7.nurse -- n15
hospital.nurseWorkingShifts -- nws15_7
nws15_8: NurseWorkingShift { day = 12 shift = 0 maxLoad = 10 }
nws15_8.nurse -- n15
hospital.nurseWorkingShifts -- nws15_8
nws15_9: NurseWorkingShift { day = 14 shift = 0 maxLoad = 10 }
nws15_9.nurse -- n15
hospital.nurseWorkingShifts -- nws15_9
nws15_10: NurseWorkingShift { day = 15 shift = 1 maxLoad = 10 }
nws15_10.nurse -- n15
hospital.nurseWorkingShifts -- nws15_10
nws15_11: NurseWorkingShift { day = 17 shift = 1 maxLoad = 10 }
nws15_11.nurse -- n15
hospital.nurseWorkingShifts -- nws15_11
nws15_12: NurseWorkingShift { day = 19 shift = 1 maxLoad = 10 }
nws15_12.nurse -- n15
hospital.nurseWorkingShifts -- nws15_12
nws15_13: NurseWorkingShift { day = 20 shift = 1 maxLoad = 10 }
nws15_13.nurse -- n15
hospital.nurseWorkingShifts -- nws15_13
nws16_0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 15 }
nws16_0.nurse -- n16
hospital.nurseWorkingShifts -- nws16_0
nws16_1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 15 }
nws16_1.nurse -- n16
hospital.nurseWorkingShifts -- nws16_1
nws16_2: NurseWorkingShift { day = 4 shift = 2 maxLoad = 15 }
nws16_2.nurse -- n16
hospital.nurseWorkingShifts -- nws16_2
nws16_3: NurseWorkingShift { day = 7 shift = 0 maxLoad = 15 }
nws16_3.nurse -- n16
hospital.nurseWorkingShifts -- nws16_3
nws16_4: NurseWorkingShift { day = 9 shift = 0 maxLoad = 5 }
nws16_4.nurse -- n16
hospital.nurseWorkingShifts -- nws16_4
nws16_5: NurseWorkingShift { day = 10 shift = 2 maxLoad = 5 }
nws16_5.nurse -- n16
hospital.nurseWorkingShifts -- nws16_5
nws16_6: NurseWorkingShift { day = 15 shift = 2 maxLoad = 15 }
nws16_6.nurse -- n16
hospital.nurseWorkingShifts -- nws16_6
nws16_7: NurseWorkingShift { day = 17 shift = 1 maxLoad = 15 }
nws16_7.nurse -- n16
hospital.nurseWorkingShifts -- nws16_7
nws16_8: NurseWorkingShift { day = 18 shift = 2 maxLoad = 15 }
nws16_8.nurse -- n16
hospital.nurseWorkingShifts -- nws16_8
nws16_9: NurseWorkingShift { day = 20 shift = 1 maxLoad = 15 }
nws16_9.nurse -- n16
hospital.nurseWorkingShifts -- nws16_9
nws17_0: NurseWorkingShift { day = 2 shift = 1 maxLoad = 15 }
nws17_0.nurse -- n17
hospital.nurseWorkingShifts -- nws17_0
nws17_1: NurseWorkingShift { day = 8 shift = 2 maxLoad = 15 }
nws17_1.nurse -- n17
hospital.nurseWorkingShifts -- nws17_1
nws17_2: NurseWorkingShift { day = 10 shift = 2 maxLoad = 15 }
nws17_2.nurse -- n17
hospital.nurseWorkingShifts -- nws17_2
nws17_3: NurseWorkingShift { day = 12 shift = 0 maxLoad = 5 }
nws17_3.nurse -- n17
hospital.nurseWorkingShifts -- nws17_3
nws17_4: NurseWorkingShift { day = 15 shift = 2 maxLoad = 5 }
nws17_4.nurse -- n17
hospital.nurseWorkingShifts -- nws17_4
nws17_5: NurseWorkingShift { day = 17 shift = 1 maxLoad = 15 }
nws17_5.nurse -- n17
hospital.nurseWorkingShifts -- nws17_5
nws17_6: NurseWorkingShift { day = 20 shift = 2 maxLoad = 15 }
nws17_6.nurse -- n17
hospital.nurseWorkingShifts -- nws17_6
nws18_0: NurseWorkingShift { day = 3 shift = 0 maxLoad = 15 }
nws18_0.nurse -- n18
hospital.nurseWorkingShifts -- nws18_0
nws18_1: NurseWorkingShift { day = 8 shift = 2 maxLoad = 15 }
nws18_1.nurse -- n18
hospital.nurseWorkingShifts -- nws18_1
nws18_2: NurseWorkingShift { day = 12 shift = 0 maxLoad = 15 }
nws18_2.nurse -- n18
hospital.nurseWorkingShifts -- nws18_2
nws18_3: NurseWorkingShift { day = 17 shift = 2 maxLoad = 15 }
nws18_3.nurse -- n18
hospital.nurseWorkingShifts -- nws18_3
nws19_0: NurseWorkingShift { day = 3 shift = 0 maxLoad = 15 }
nws19_0.nurse -- n19
hospital.nurseWorkingShifts -- nws19_0
nws19_1: NurseWorkingShift { day = 9 shift = 0 maxLoad = 15 }
nws19_1.nurse -- n19
hospital.nurseWorkingShifts -- nws19_1
nws19_2: NurseWorkingShift { day = 12 shift = 0 maxLoad = 15 }
nws19_2.nurse -- n19
hospital.nurseWorkingShifts -- nws19_2
nws19_3: NurseWorkingShift { day = 18 shift = 1 maxLoad = 15 }
nws19_3.nurse -- n19
hospital.nurseWorkingShifts -- nws19_3
nws20_0: NurseWorkingShift { day = 9 shift = 0 maxLoad = 15 }
nws20_0.nurse -- n20
hospital.nurseWorkingShifts -- nws20_0
nws21_0: NurseWorkingShift { day = 9 shift = 0 maxLoad = 15 }
nws21_0.nurse -- n21
hospital.nurseWorkingShifts -- nws21_0
