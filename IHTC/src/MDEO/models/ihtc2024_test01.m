using "../ihtc.mm"

// Generated from test01.json.
// A/B genders map to M/F and infant maps to BABY in the current metamodel.
// Existing occupants are represented in RoomAvailability because the Occupant class
// cannot store source age-group or shift-level nursing demand independently.

hospital: HospitalInstance { decisionHorizon = 32 }
state: OptimisationState { phase = OptimisationPhase.PATIENTS }
hospital.optimisationState -- state

s0: Surgeon { id = 0 }
hospital.surgeons -- s0
ot0: OperatingTheatre { id = 0 }
hospital.operatingtheatres -- ot0
ot1: OperatingTheatre { id = 1 }
hospital.operatingtheatres -- ot1
r0: Room { id = 0 maxCapacity = 3 }
hospital.rooms -- r0
r1: Room { id = 1 maxCapacity = 2 }
hospital.rooms -- r1
r2: Room { id = 2 maxCapacity = 3 }
hospital.rooms -- r2
r3: Room { id = 3 maxCapacity = 3 }
hospital.rooms -- r3
r4: Room { id = 4 maxCapacity = 2 }
hospital.rooms -- r4
n0: Nurse { id = 0 skillLevel = 1 }
hospital.nurses -- n0
n1: Nurse { id = 1 skillLevel = 2 }
hospital.nurses -- n1
n2: Nurse { id = 2 skillLevel = 0 }
hospital.nurses -- n2
n3: Nurse { id = 3 skillLevel = 2 }
hospital.nurses -- n3
n4: Nurse { id = 4 skillLevel = 2 }
hospital.nurses -- n4
n5: Nurse { id = 5 skillLevel = 2 }
hospital.nurses -- n5
n6: Nurse { id = 6 skillLevel = 0 }
hospital.nurses -- n6
n7: Nurse { id = 7 skillLevel = 2 }
hospital.nurses -- n7
n8: Nurse { id = 8 skillLevel = 2 }
hospital.nurses -- n8
n9: Nurse { id = 9 skillLevel = 0 }
hospital.nurses -- n9
n10: Nurse { id = 10 skillLevel = 2 }
hospital.nurses -- n10
n11: Nurse { id = 11 skillLevel = 0 }
hospital.nurses -- n11
n12: Nurse { id = 12 skillLevel = 2 }
hospital.nurses -- n12

p0: Patient { id = 0 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 3 }
p0.assignedSurgeonId -- s0
hospital.patients -- p0
d0_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d0_0_0.patient -- p0
p0.dayDemand -- d0_0_0
d0_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d0_0_1.patient -- p0
p0.dayDemand -- d0_0_1
d0_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d0_0_2.patient -- p0
p0.dayDemand -- d0_0_2
d0_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d0_1_0.patient -- p0
p0.dayDemand -- d0_1_0
d0_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d0_1_1.patient -- p0
p0.dayDemand -- d0_1_1
d0_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d0_1_2.patient -- p0
p0.dayDemand -- d0_1_2
d0_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d0_2_0.patient -- p0
p0.dayDemand -- d0_2_0
d0_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d0_2_1.patient -- p0
p0.dayDemand -- d0_2_1
d0_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d0_2_2.patient -- p0
p0.dayDemand -- d0_2_2

p1: Patient { id = 1 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 4 }
p1.assignedSurgeonId -- s0
hospital.patients -- p1
d1_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d1_0_0.patient -- p1
p1.dayDemand -- d1_0_0
d1_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d1_0_1.patient -- p1
p1.dayDemand -- d1_0_1
d1_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d1_0_2.patient -- p1
p1.dayDemand -- d1_0_2
d1_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d1_1_0.patient -- p1
p1.dayDemand -- d1_1_0
d1_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d1_1_1.patient -- p1
p1.dayDemand -- d1_1_1
d1_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d1_1_2.patient -- p1
p1.dayDemand -- d1_1_2
d1_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d1_2_0.patient -- p1
p1.dayDemand -- d1_2_0
d1_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d1_2_1.patient -- p1
p1.dayDemand -- d1_2_1
d1_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d1_2_2.patient -- p1
p1.dayDemand -- d1_2_2
d1_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d1_3_0.patient -- p1
p1.dayDemand -- d1_3_0
d1_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d1_3_1.patient -- p1
p1.dayDemand -- d1_3_1
d1_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d1_3_2.patient -- p1
p1.dayDemand -- d1_3_2

p2: Patient { id = 2 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 11 }
p2.assignedSurgeonId -- s0
hospital.patients -- p2
d2_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d2_0_0.patient -- p2
p2.dayDemand -- d2_0_0
d2_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d2_0_1.patient -- p2
p2.dayDemand -- d2_0_1
d2_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d2_0_2.patient -- p2
p2.dayDemand -- d2_0_2
d2_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d2_1_0.patient -- p2
p2.dayDemand -- d2_1_0
d2_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d2_1_1.patient -- p2
p2.dayDemand -- d2_1_1
d2_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d2_1_2.patient -- p2
p2.dayDemand -- d2_1_2
d2_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d2_2_0.patient -- p2
p2.dayDemand -- d2_2_0
d2_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d2_2_1.patient -- p2
p2.dayDemand -- d2_2_1
d2_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d2_2_2.patient -- p2
p2.dayDemand -- d2_2_2
d2_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2_3_0.patient -- p2
p2.dayDemand -- d2_3_0
d2_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d2_3_1.patient -- p2
p2.dayDemand -- d2_3_1
d2_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d2_3_2.patient -- p2
p2.dayDemand -- d2_3_2
d2_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d2_4_0.patient -- p2
p2.dayDemand -- d2_4_0
d2_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d2_4_1.patient -- p2
p2.dayDemand -- d2_4_1
d2_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d2_4_2.patient -- p2
p2.dayDemand -- d2_4_2
d2_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2_5_0.patient -- p2
p2.dayDemand -- d2_5_0
d2_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_5_1.patient -- p2
p2.dayDemand -- d2_5_1
d2_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d2_5_2.patient -- p2
p2.dayDemand -- d2_5_2
d2_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2_6_0.patient -- p2
p2.dayDemand -- d2_6_0
d2_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_6_1.patient -- p2
p2.dayDemand -- d2_6_1
d2_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d2_6_2.patient -- p2
p2.dayDemand -- d2_6_2
d2_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d2_7_0.patient -- p2
p2.dayDemand -- d2_7_0
d2_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_7_1.patient -- p2
p2.dayDemand -- d2_7_1
d2_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d2_7_2.patient -- p2
p2.dayDemand -- d2_7_2
d2_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d2_8_0.patient -- p2
p2.dayDemand -- d2_8_0
d2_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d2_8_1.patient -- p2
p2.dayDemand -- d2_8_1
d2_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d2_8_2.patient -- p2
p2.dayDemand -- d2_8_2
d2_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d2_9_0.patient -- p2
p2.dayDemand -- d2_9_0
d2_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d2_9_1.patient -- p2
p2.dayDemand -- d2_9_1
d2_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d2_9_2.patient -- p2
p2.dayDemand -- d2_9_2
d2_10_0: PatientDayDemand { relativeDay = 10 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d2_10_0.patient -- p2
p2.dayDemand -- d2_10_0
d2_10_1: PatientDayDemand { relativeDay = 10 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_10_1.patient -- p2
p2.dayDemand -- d2_10_1
d2_10_2: PatientDayDemand { relativeDay = 10 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d2_10_2.patient -- p2
p2.dayDemand -- d2_10_2

p3: Patient { id = 3 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.M stayLength = 8 }
p3.assignedSurgeonId -- s0
hospital.patients -- p3
d3_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d3_0_0.patient -- p3
p3.dayDemand -- d3_0_0
d3_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d3_0_1.patient -- p3
p3.dayDemand -- d3_0_1
d3_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d3_0_2.patient -- p3
p3.dayDemand -- d3_0_2
d3_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d3_1_0.patient -- p3
p3.dayDemand -- d3_1_0
d3_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d3_1_1.patient -- p3
p3.dayDemand -- d3_1_1
d3_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d3_1_2.patient -- p3
p3.dayDemand -- d3_1_2
d3_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d3_2_0.patient -- p3
p3.dayDemand -- d3_2_0
d3_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d3_2_1.patient -- p3
p3.dayDemand -- d3_2_1
d3_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d3_2_2.patient -- p3
p3.dayDemand -- d3_2_2
d3_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d3_3_0.patient -- p3
p3.dayDemand -- d3_3_0
d3_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d3_3_1.patient -- p3
p3.dayDemand -- d3_3_1
d3_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d3_3_2.patient -- p3
p3.dayDemand -- d3_3_2
d3_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d3_4_0.patient -- p3
p3.dayDemand -- d3_4_0
d3_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d3_4_1.patient -- p3
p3.dayDemand -- d3_4_1
d3_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d3_4_2.patient -- p3
p3.dayDemand -- d3_4_2
d3_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d3_5_0.patient -- p3
p3.dayDemand -- d3_5_0
d3_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d3_5_1.patient -- p3
p3.dayDemand -- d3_5_1
d3_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d3_5_2.patient -- p3
p3.dayDemand -- d3_5_2
d3_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d3_6_0.patient -- p3
p3.dayDemand -- d3_6_0
d3_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d3_6_1.patient -- p3
p3.dayDemand -- d3_6_1
d3_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d3_6_2.patient -- p3
p3.dayDemand -- d3_6_2
d3_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d3_7_0.patient -- p3
p3.dayDemand -- d3_7_0
d3_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d3_7_1.patient -- p3
p3.dayDemand -- d3_7_1
d3_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d3_7_2.patient -- p3
p3.dayDemand -- d3_7_2

p4: Patient { id = 4 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 6 }
p4.assignedSurgeonId -- s0
hospital.patients -- p4
d4_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d4_0_0.patient -- p4
p4.dayDemand -- d4_0_0
d4_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d4_0_1.patient -- p4
p4.dayDemand -- d4_0_1
d4_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d4_0_2.patient -- p4
p4.dayDemand -- d4_0_2
d4_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d4_1_0.patient -- p4
p4.dayDemand -- d4_1_0
d4_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d4_1_1.patient -- p4
p4.dayDemand -- d4_1_1
d4_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d4_1_2.patient -- p4
p4.dayDemand -- d4_1_2
d4_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d4_2_0.patient -- p4
p4.dayDemand -- d4_2_0
d4_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d4_2_1.patient -- p4
p4.dayDemand -- d4_2_1
d4_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d4_2_2.patient -- p4
p4.dayDemand -- d4_2_2
d4_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d4_3_0.patient -- p4
p4.dayDemand -- d4_3_0
d4_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d4_3_1.patient -- p4
p4.dayDemand -- d4_3_1
d4_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d4_3_2.patient -- p4
p4.dayDemand -- d4_3_2
d4_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d4_4_0.patient -- p4
p4.dayDemand -- d4_4_0
d4_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d4_4_1.patient -- p4
p4.dayDemand -- d4_4_1
d4_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d4_4_2.patient -- p4
p4.dayDemand -- d4_4_2
d4_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d4_5_0.patient -- p4
p4.dayDemand -- d4_5_0
d4_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d4_5_1.patient -- p4
p4.dayDemand -- d4_5_1
d4_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d4_5_2.patient -- p4
p4.dayDemand -- d4_5_2

p5: Patient { id = 5 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.F stayLength = 4 }
p5.assignedSurgeonId -- s0
hospital.patients -- p5
d5_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d5_0_0.patient -- p5
p5.dayDemand -- d5_0_0
d5_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d5_0_1.patient -- p5
p5.dayDemand -- d5_0_1
d5_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d5_0_2.patient -- p5
p5.dayDemand -- d5_0_2
d5_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d5_1_0.patient -- p5
p5.dayDemand -- d5_1_0
d5_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d5_1_1.patient -- p5
p5.dayDemand -- d5_1_1
d5_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d5_1_2.patient -- p5
p5.dayDemand -- d5_1_2
d5_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d5_2_0.patient -- p5
p5.dayDemand -- d5_2_0
d5_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d5_2_1.patient -- p5
p5.dayDemand -- d5_2_1
d5_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d5_2_2.patient -- p5
p5.dayDemand -- d5_2_2
d5_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d5_3_0.patient -- p5
p5.dayDemand -- d5_3_0
d5_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d5_3_1.patient -- p5
p5.dayDemand -- d5_3_1
d5_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d5_3_2.patient -- p5
p5.dayDemand -- d5_3_2

p6: Patient { id = 6 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 16 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 4 }
p6.assignedSurgeonId -- s0
hospital.patients -- p6
p6.incompatibleRooms -- r1
d6_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d6_0_0.patient -- p6
p6.dayDemand -- d6_0_0
d6_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d6_0_1.patient -- p6
p6.dayDemand -- d6_0_1
d6_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d6_0_2.patient -- p6
p6.dayDemand -- d6_0_2
d6_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d6_1_0.patient -- p6
p6.dayDemand -- d6_1_0
d6_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d6_1_1.patient -- p6
p6.dayDemand -- d6_1_1
d6_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d6_1_2.patient -- p6
p6.dayDemand -- d6_1_2
d6_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d6_2_0.patient -- p6
p6.dayDemand -- d6_2_0
d6_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d6_2_1.patient -- p6
p6.dayDemand -- d6_2_1
d6_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d6_2_2.patient -- p6
p6.dayDemand -- d6_2_2
d6_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d6_3_0.patient -- p6
p6.dayDemand -- d6_3_0
d6_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d6_3_1.patient -- p6
p6.dayDemand -- d6_3_1
d6_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d6_3_2.patient -- p6
p6.dayDemand -- d6_3_2

p7: Patient { id = 7 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 6 }
p7.assignedSurgeonId -- s0
hospital.patients -- p7
d7_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d7_0_0.patient -- p7
p7.dayDemand -- d7_0_0
d7_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d7_0_1.patient -- p7
p7.dayDemand -- d7_0_1
d7_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d7_0_2.patient -- p7
p7.dayDemand -- d7_0_2
d7_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d7_1_0.patient -- p7
p7.dayDemand -- d7_1_0
d7_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d7_1_1.patient -- p7
p7.dayDemand -- d7_1_1
d7_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d7_1_2.patient -- p7
p7.dayDemand -- d7_1_2
d7_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d7_2_0.patient -- p7
p7.dayDemand -- d7_2_0
d7_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d7_2_1.patient -- p7
p7.dayDemand -- d7_2_1
d7_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d7_2_2.patient -- p7
p7.dayDemand -- d7_2_2
d7_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d7_3_0.patient -- p7
p7.dayDemand -- d7_3_0
d7_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d7_3_1.patient -- p7
p7.dayDemand -- d7_3_1
d7_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d7_3_2.patient -- p7
p7.dayDemand -- d7_3_2
d7_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d7_4_0.patient -- p7
p7.dayDemand -- d7_4_0
d7_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d7_4_1.patient -- p7
p7.dayDemand -- d7_4_1
d7_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d7_4_2.patient -- p7
p7.dayDemand -- d7_4_2
d7_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d7_5_0.patient -- p7
p7.dayDemand -- d7_5_0
d7_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d7_5_1.patient -- p7
p7.dayDemand -- d7_5_1
d7_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d7_5_2.patient -- p7
p7.dayDemand -- d7_5_2

p8: Patient { id = 8 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 5 }
p8.assignedSurgeonId -- s0
hospital.patients -- p8
d8_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d8_0_0.patient -- p8
p8.dayDemand -- d8_0_0
d8_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d8_0_1.patient -- p8
p8.dayDemand -- d8_0_1
d8_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d8_0_2.patient -- p8
p8.dayDemand -- d8_0_2
d8_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d8_1_0.patient -- p8
p8.dayDemand -- d8_1_0
d8_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d8_1_1.patient -- p8
p8.dayDemand -- d8_1_1
d8_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d8_1_2.patient -- p8
p8.dayDemand -- d8_1_2
d8_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d8_2_0.patient -- p8
p8.dayDemand -- d8_2_0
d8_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d8_2_1.patient -- p8
p8.dayDemand -- d8_2_1
d8_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d8_2_2.patient -- p8
p8.dayDemand -- d8_2_2
d8_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d8_3_0.patient -- p8
p8.dayDemand -- d8_3_0
d8_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d8_3_1.patient -- p8
p8.dayDemand -- d8_3_1
d8_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d8_3_2.patient -- p8
p8.dayDemand -- d8_3_2
d8_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d8_4_0.patient -- p8
p8.dayDemand -- d8_4_0
d8_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d8_4_1.patient -- p8
p8.dayDemand -- d8_4_1
d8_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d8_4_2.patient -- p8
p8.dayDemand -- d8_4_2

p9: Patient { id = 9 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 240 gender = Gender.F stayLength = 6 }
p9.assignedSurgeonId -- s0
hospital.patients -- p9
d9_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d9_0_0.patient -- p9
p9.dayDemand -- d9_0_0
d9_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d9_0_1.patient -- p9
p9.dayDemand -- d9_0_1
d9_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d9_0_2.patient -- p9
p9.dayDemand -- d9_0_2
d9_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d9_1_0.patient -- p9
p9.dayDemand -- d9_1_0
d9_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d9_1_1.patient -- p9
p9.dayDemand -- d9_1_1
d9_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d9_1_2.patient -- p9
p9.dayDemand -- d9_1_2
d9_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d9_2_0.patient -- p9
p9.dayDemand -- d9_2_0
d9_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d9_2_1.patient -- p9
p9.dayDemand -- d9_2_1
d9_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_2_2.patient -- p9
p9.dayDemand -- d9_2_2
d9_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d9_3_0.patient -- p9
p9.dayDemand -- d9_3_0
d9_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d9_3_1.patient -- p9
p9.dayDemand -- d9_3_1
d9_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_3_2.patient -- p9
p9.dayDemand -- d9_3_2
d9_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d9_4_0.patient -- p9
p9.dayDemand -- d9_4_0
d9_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d9_4_1.patient -- p9
p9.dayDemand -- d9_4_1
d9_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_4_2.patient -- p9
p9.dayDemand -- d9_4_2
d9_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d9_5_0.patient -- p9
p9.dayDemand -- d9_5_0
d9_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d9_5_1.patient -- p9
p9.dayDemand -- d9_5_1
d9_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d9_5_2.patient -- p9
p9.dayDemand -- d9_5_2

p10: Patient { id = 10 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 10 }
p10.assignedSurgeonId -- s0
hospital.patients -- p10
d10_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d10_0_0.patient -- p10
p10.dayDemand -- d10_0_0
d10_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d10_0_1.patient -- p10
p10.dayDemand -- d10_0_1
d10_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d10_0_2.patient -- p10
p10.dayDemand -- d10_0_2
d10_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d10_1_0.patient -- p10
p10.dayDemand -- d10_1_0
d10_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d10_1_1.patient -- p10
p10.dayDemand -- d10_1_1
d10_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d10_1_2.patient -- p10
p10.dayDemand -- d10_1_2
d10_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d10_2_0.patient -- p10
p10.dayDemand -- d10_2_0
d10_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d10_2_1.patient -- p10
p10.dayDemand -- d10_2_1
d10_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d10_2_2.patient -- p10
p10.dayDemand -- d10_2_2
d10_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d10_3_0.patient -- p10
p10.dayDemand -- d10_3_0
d10_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d10_3_1.patient -- p10
p10.dayDemand -- d10_3_1
d10_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d10_3_2.patient -- p10
p10.dayDemand -- d10_3_2
d10_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d10_4_0.patient -- p10
p10.dayDemand -- d10_4_0
d10_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d10_4_1.patient -- p10
p10.dayDemand -- d10_4_1
d10_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d10_4_2.patient -- p10
p10.dayDemand -- d10_4_2
d10_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d10_5_0.patient -- p10
p10.dayDemand -- d10_5_0
d10_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d10_5_1.patient -- p10
p10.dayDemand -- d10_5_1
d10_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d10_5_2.patient -- p10
p10.dayDemand -- d10_5_2
d10_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d10_6_0.patient -- p10
p10.dayDemand -- d10_6_0
d10_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d10_6_1.patient -- p10
p10.dayDemand -- d10_6_1
d10_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d10_6_2.patient -- p10
p10.dayDemand -- d10_6_2
d10_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d10_7_0.patient -- p10
p10.dayDemand -- d10_7_0
d10_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d10_7_1.patient -- p10
p10.dayDemand -- d10_7_1
d10_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d10_7_2.patient -- p10
p10.dayDemand -- d10_7_2
d10_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d10_8_0.patient -- p10
p10.dayDemand -- d10_8_0
d10_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d10_8_1.patient -- p10
p10.dayDemand -- d10_8_1
d10_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d10_8_2.patient -- p10
p10.dayDemand -- d10_8_2
d10_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d10_9_0.patient -- p10
p10.dayDemand -- d10_9_0
d10_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d10_9_1.patient -- p10
p10.dayDemand -- d10_9_1
d10_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d10_9_2.patient -- p10
p10.dayDemand -- d10_9_2

p11: Patient { id = 11 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p11.assignedSurgeonId -- s0
hospital.patients -- p11
d11_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d11_0_0.patient -- p11
p11.dayDemand -- d11_0_0
d11_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d11_0_1.patient -- p11
p11.dayDemand -- d11_0_1
d11_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d11_0_2.patient -- p11
p11.dayDemand -- d11_0_2
d11_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d11_1_0.patient -- p11
p11.dayDemand -- d11_1_0
d11_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d11_1_1.patient -- p11
p11.dayDemand -- d11_1_1
d11_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d11_1_2.patient -- p11
p11.dayDemand -- d11_1_2
d11_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d11_2_0.patient -- p11
p11.dayDemand -- d11_2_0
d11_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d11_2_1.patient -- p11
p11.dayDemand -- d11_2_1
d11_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d11_2_2.patient -- p11
p11.dayDemand -- d11_2_2
d11_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d11_3_0.patient -- p11
p11.dayDemand -- d11_3_0
d11_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d11_3_1.patient -- p11
p11.dayDemand -- d11_3_1
d11_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d11_3_2.patient -- p11
p11.dayDemand -- d11_3_2

p12: Patient { id = 12 isMandatory = true isScheduled = true dueDate = 14 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p12.assignedSurgeonId -- s0
hospital.patients -- p12
d12_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d12_0_0.patient -- p12
p12.dayDemand -- d12_0_0
d12_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d12_0_1.patient -- p12
p12.dayDemand -- d12_0_1
d12_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d12_0_2.patient -- p12
p12.dayDemand -- d12_0_2
d12_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d12_1_0.patient -- p12
p12.dayDemand -- d12_1_0
d12_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d12_1_1.patient -- p12
p12.dayDemand -- d12_1_1
d12_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d12_1_2.patient -- p12
p12.dayDemand -- d12_1_2
d12_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d12_2_0.patient -- p12
p12.dayDemand -- d12_2_0
d12_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d12_2_1.patient -- p12
p12.dayDemand -- d12_2_1
d12_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d12_2_2.patient -- p12
p12.dayDemand -- d12_2_2
d12_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d12_3_0.patient -- p12
p12.dayDemand -- d12_3_0
d12_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d12_3_1.patient -- p12
p12.dayDemand -- d12_3_1
d12_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d12_3_2.patient -- p12
p12.dayDemand -- d12_3_2

p13: Patient { id = 13 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 4 }
p13.assignedSurgeonId -- s0
hospital.patients -- p13
p13.incompatibleRooms -- r4
d13_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d13_0_0.patient -- p13
p13.dayDemand -- d13_0_0
d13_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d13_0_1.patient -- p13
p13.dayDemand -- d13_0_1
d13_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d13_0_2.patient -- p13
p13.dayDemand -- d13_0_2
d13_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d13_1_0.patient -- p13
p13.dayDemand -- d13_1_0
d13_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d13_1_1.patient -- p13
p13.dayDemand -- d13_1_1
d13_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d13_1_2.patient -- p13
p13.dayDemand -- d13_1_2
d13_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d13_2_0.patient -- p13
p13.dayDemand -- d13_2_0
d13_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d13_2_1.patient -- p13
p13.dayDemand -- d13_2_1
d13_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d13_2_2.patient -- p13
p13.dayDemand -- d13_2_2
d13_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d13_3_0.patient -- p13
p13.dayDemand -- d13_3_0
d13_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d13_3_1.patient -- p13
p13.dayDemand -- d13_3_1
d13_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d13_3_2.patient -- p13
p13.dayDemand -- d13_3_2

p14: Patient { id = 14 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 7 }
p14.assignedSurgeonId -- s0
hospital.patients -- p14
d14_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d14_0_0.patient -- p14
p14.dayDemand -- d14_0_0
d14_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d14_0_1.patient -- p14
p14.dayDemand -- d14_0_1
d14_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d14_0_2.patient -- p14
p14.dayDemand -- d14_0_2
d14_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d14_1_0.patient -- p14
p14.dayDemand -- d14_1_0
d14_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d14_1_1.patient -- p14
p14.dayDemand -- d14_1_1
d14_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d14_1_2.patient -- p14
p14.dayDemand -- d14_1_2
d14_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d14_2_0.patient -- p14
p14.dayDemand -- d14_2_0
d14_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d14_2_1.patient -- p14
p14.dayDemand -- d14_2_1
d14_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d14_2_2.patient -- p14
p14.dayDemand -- d14_2_2
d14_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d14_3_0.patient -- p14
p14.dayDemand -- d14_3_0
d14_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d14_3_1.patient -- p14
p14.dayDemand -- d14_3_1
d14_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d14_3_2.patient -- p14
p14.dayDemand -- d14_3_2
d14_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d14_4_0.patient -- p14
p14.dayDemand -- d14_4_0
d14_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d14_4_1.patient -- p14
p14.dayDemand -- d14_4_1
d14_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d14_4_2.patient -- p14
p14.dayDemand -- d14_4_2
d14_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d14_5_0.patient -- p14
p14.dayDemand -- d14_5_0
d14_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d14_5_1.patient -- p14
p14.dayDemand -- d14_5_1
d14_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d14_5_2.patient -- p14
p14.dayDemand -- d14_5_2
d14_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d14_6_0.patient -- p14
p14.dayDemand -- d14_6_0
d14_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d14_6_1.patient -- p14
p14.dayDemand -- d14_6_1
d14_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d14_6_2.patient -- p14
p14.dayDemand -- d14_6_2

p15: Patient { id = 15 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.M stayLength = 7 }
p15.assignedSurgeonId -- s0
hospital.patients -- p15
d15_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d15_0_0.patient -- p15
p15.dayDemand -- d15_0_0
d15_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d15_0_1.patient -- p15
p15.dayDemand -- d15_0_1
d15_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d15_0_2.patient -- p15
p15.dayDemand -- d15_0_2
d15_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d15_1_0.patient -- p15
p15.dayDemand -- d15_1_0
d15_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d15_1_1.patient -- p15
p15.dayDemand -- d15_1_1
d15_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d15_1_2.patient -- p15
p15.dayDemand -- d15_1_2
d15_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d15_2_0.patient -- p15
p15.dayDemand -- d15_2_0
d15_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d15_2_1.patient -- p15
p15.dayDemand -- d15_2_1
d15_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d15_2_2.patient -- p15
p15.dayDemand -- d15_2_2
d15_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d15_3_0.patient -- p15
p15.dayDemand -- d15_3_0
d15_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d15_3_1.patient -- p15
p15.dayDemand -- d15_3_1
d15_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d15_3_2.patient -- p15
p15.dayDemand -- d15_3_2
d15_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d15_4_0.patient -- p15
p15.dayDemand -- d15_4_0
d15_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d15_4_1.patient -- p15
p15.dayDemand -- d15_4_1
d15_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d15_4_2.patient -- p15
p15.dayDemand -- d15_4_2
d15_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d15_5_0.patient -- p15
p15.dayDemand -- d15_5_0
d15_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d15_5_1.patient -- p15
p15.dayDemand -- d15_5_1
d15_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d15_5_2.patient -- p15
p15.dayDemand -- d15_5_2
d15_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d15_6_0.patient -- p15
p15.dayDemand -- d15_6_0
d15_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d15_6_1.patient -- p15
p15.dayDemand -- d15_6_1
d15_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d15_6_2.patient -- p15
p15.dayDemand -- d15_6_2

p16: Patient { id = 16 isMandatory = true isScheduled = true dueDate = 16 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.M stayLength = 4 }
p16.assignedSurgeonId -- s0
hospital.patients -- p16
d16_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d16_0_0.patient -- p16
p16.dayDemand -- d16_0_0
d16_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d16_0_1.patient -- p16
p16.dayDemand -- d16_0_1
d16_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d16_0_2.patient -- p16
p16.dayDemand -- d16_0_2
d16_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d16_1_0.patient -- p16
p16.dayDemand -- d16_1_0
d16_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d16_1_1.patient -- p16
p16.dayDemand -- d16_1_1
d16_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d16_1_2.patient -- p16
p16.dayDemand -- d16_1_2
d16_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d16_2_0.patient -- p16
p16.dayDemand -- d16_2_0
d16_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d16_2_1.patient -- p16
p16.dayDemand -- d16_2_1
d16_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d16_2_2.patient -- p16
p16.dayDemand -- d16_2_2
d16_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d16_3_0.patient -- p16
p16.dayDemand -- d16_3_0
d16_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d16_3_1.patient -- p16
p16.dayDemand -- d16_3_1
d16_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d16_3_2.patient -- p16
p16.dayDemand -- d16_3_2

p17: Patient { id = 17 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 4 }
p17.assignedSurgeonId -- s0
hospital.patients -- p17
p17.incompatibleRooms -- r2
d17_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d17_0_0.patient -- p17
p17.dayDemand -- d17_0_0
d17_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d17_0_1.patient -- p17
p17.dayDemand -- d17_0_1
d17_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d17_0_2.patient -- p17
p17.dayDemand -- d17_0_2
d17_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d17_1_0.patient -- p17
p17.dayDemand -- d17_1_0
d17_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d17_1_1.patient -- p17
p17.dayDemand -- d17_1_1
d17_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d17_1_2.patient -- p17
p17.dayDemand -- d17_1_2
d17_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d17_2_0.patient -- p17
p17.dayDemand -- d17_2_0
d17_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d17_2_1.patient -- p17
p17.dayDemand -- d17_2_1
d17_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d17_2_2.patient -- p17
p17.dayDemand -- d17_2_2
d17_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d17_3_0.patient -- p17
p17.dayDemand -- d17_3_0
d17_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d17_3_1.patient -- p17
p17.dayDemand -- d17_3_1
d17_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d17_3_2.patient -- p17
p17.dayDemand -- d17_3_2

p18: Patient { id = 18 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 6 }
p18.assignedSurgeonId -- s0
hospital.patients -- p18
p18.incompatibleRooms -- r2
d18_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d18_0_0.patient -- p18
p18.dayDemand -- d18_0_0
d18_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d18_0_1.patient -- p18
p18.dayDemand -- d18_0_1
d18_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d18_0_2.patient -- p18
p18.dayDemand -- d18_0_2
d18_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d18_1_0.patient -- p18
p18.dayDemand -- d18_1_0
d18_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d18_1_1.patient -- p18
p18.dayDemand -- d18_1_1
d18_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d18_1_2.patient -- p18
p18.dayDemand -- d18_1_2
d18_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d18_2_0.patient -- p18
p18.dayDemand -- d18_2_0
d18_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d18_2_1.patient -- p18
p18.dayDemand -- d18_2_1
d18_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d18_2_2.patient -- p18
p18.dayDemand -- d18_2_2
d18_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d18_3_0.patient -- p18
p18.dayDemand -- d18_3_0
d18_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d18_3_1.patient -- p18
p18.dayDemand -- d18_3_1
d18_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d18_3_2.patient -- p18
p18.dayDemand -- d18_3_2
d18_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d18_4_0.patient -- p18
p18.dayDemand -- d18_4_0
d18_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d18_4_1.patient -- p18
p18.dayDemand -- d18_4_1
d18_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d18_4_2.patient -- p18
p18.dayDemand -- d18_4_2
d18_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d18_5_0.patient -- p18
p18.dayDemand -- d18_5_0
d18_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d18_5_1.patient -- p18
p18.dayDemand -- d18_5_1
d18_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d18_5_2.patient -- p18
p18.dayDemand -- d18_5_2

p19: Patient { id = 19 isMandatory = true isScheduled = true dueDate = 17 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p19.assignedSurgeonId -- s0
hospital.patients -- p19
d19_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d19_0_0.patient -- p19
p19.dayDemand -- d19_0_0
d19_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d19_0_1.patient -- p19
p19.dayDemand -- d19_0_1
d19_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d19_0_2.patient -- p19
p19.dayDemand -- d19_0_2
d19_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d19_1_0.patient -- p19
p19.dayDemand -- d19_1_0
d19_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d19_1_1.patient -- p19
p19.dayDemand -- d19_1_1
d19_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d19_1_2.patient -- p19
p19.dayDemand -- d19_1_2
d19_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d19_2_0.patient -- p19
p19.dayDemand -- d19_2_0
d19_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d19_2_1.patient -- p19
p19.dayDemand -- d19_2_1
d19_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d19_2_2.patient -- p19
p19.dayDemand -- d19_2_2
d19_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d19_3_0.patient -- p19
p19.dayDemand -- d19_3_0
d19_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d19_3_1.patient -- p19
p19.dayDemand -- d19_3_1
d19_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d19_3_2.patient -- p19
p19.dayDemand -- d19_3_2

p20: Patient { id = 20 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 4 }
p20.assignedSurgeonId -- s0
hospital.patients -- p20
d20_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d20_0_0.patient -- p20
p20.dayDemand -- d20_0_0
d20_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d20_0_1.patient -- p20
p20.dayDemand -- d20_0_1
d20_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d20_0_2.patient -- p20
p20.dayDemand -- d20_0_2
d20_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d20_1_0.patient -- p20
p20.dayDemand -- d20_1_0
d20_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d20_1_1.patient -- p20
p20.dayDemand -- d20_1_1
d20_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d20_1_2.patient -- p20
p20.dayDemand -- d20_1_2
d20_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d20_2_0.patient -- p20
p20.dayDemand -- d20_2_0
d20_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d20_2_1.patient -- p20
p20.dayDemand -- d20_2_1
d20_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d20_2_2.patient -- p20
p20.dayDemand -- d20_2_2
d20_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d20_3_0.patient -- p20
p20.dayDemand -- d20_3_0
d20_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d20_3_1.patient -- p20
p20.dayDemand -- d20_3_1
d20_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d20_3_2.patient -- p20
p20.dayDemand -- d20_3_2

p21: Patient { id = 21 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 60 gender = Gender.F stayLength = 4 }
p21.assignedSurgeonId -- s0
hospital.patients -- p21
d21_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d21_0_0.patient -- p21
p21.dayDemand -- d21_0_0
d21_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d21_0_1.patient -- p21
p21.dayDemand -- d21_0_1
d21_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d21_0_2.patient -- p21
p21.dayDemand -- d21_0_2
d21_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d21_1_0.patient -- p21
p21.dayDemand -- d21_1_0
d21_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d21_1_1.patient -- p21
p21.dayDemand -- d21_1_1
d21_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d21_1_2.patient -- p21
p21.dayDemand -- d21_1_2
d21_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d21_2_0.patient -- p21
p21.dayDemand -- d21_2_0
d21_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d21_2_1.patient -- p21
p21.dayDemand -- d21_2_1
d21_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d21_2_2.patient -- p21
p21.dayDemand -- d21_2_2
d21_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d21_3_0.patient -- p21
p21.dayDemand -- d21_3_0
d21_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d21_3_1.patient -- p21
p21.dayDemand -- d21_3_1
d21_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d21_3_2.patient -- p21
p21.dayDemand -- d21_3_2

p22: Patient { id = 22 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 12 }
p22.assignedSurgeonId -- s0
hospital.patients -- p22
d22_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_0_0.patient -- p22
p22.dayDemand -- d22_0_0
d22_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_0_1.patient -- p22
p22.dayDemand -- d22_0_1
d22_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d22_0_2.patient -- p22
p22.dayDemand -- d22_0_2
d22_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_1_0.patient -- p22
p22.dayDemand -- d22_1_0
d22_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d22_1_1.patient -- p22
p22.dayDemand -- d22_1_1
d22_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d22_1_2.patient -- p22
p22.dayDemand -- d22_1_2
d22_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d22_2_0.patient -- p22
p22.dayDemand -- d22_2_0
d22_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d22_2_1.patient -- p22
p22.dayDemand -- d22_2_1
d22_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d22_2_2.patient -- p22
p22.dayDemand -- d22_2_2
d22_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d22_3_0.patient -- p22
p22.dayDemand -- d22_3_0
d22_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d22_3_1.patient -- p22
p22.dayDemand -- d22_3_1
d22_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d22_3_2.patient -- p22
p22.dayDemand -- d22_3_2
d22_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d22_4_0.patient -- p22
p22.dayDemand -- d22_4_0
d22_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_4_1.patient -- p22
p22.dayDemand -- d22_4_1
d22_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d22_4_2.patient -- p22
p22.dayDemand -- d22_4_2
d22_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_5_0.patient -- p22
p22.dayDemand -- d22_5_0
d22_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d22_5_1.patient -- p22
p22.dayDemand -- d22_5_1
d22_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d22_5_2.patient -- p22
p22.dayDemand -- d22_5_2
d22_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d22_6_0.patient -- p22
p22.dayDemand -- d22_6_0
d22_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_6_1.patient -- p22
p22.dayDemand -- d22_6_1
d22_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d22_6_2.patient -- p22
p22.dayDemand -- d22_6_2
d22_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d22_7_0.patient -- p22
p22.dayDemand -- d22_7_0
d22_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_7_1.patient -- p22
p22.dayDemand -- d22_7_1
d22_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d22_7_2.patient -- p22
p22.dayDemand -- d22_7_2
d22_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d22_8_0.patient -- p22
p22.dayDemand -- d22_8_0
d22_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d22_8_1.patient -- p22
p22.dayDemand -- d22_8_1
d22_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d22_8_2.patient -- p22
p22.dayDemand -- d22_8_2
d22_9_0: PatientDayDemand { relativeDay = 9 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d22_9_0.patient -- p22
p22.dayDemand -- d22_9_0
d22_9_1: PatientDayDemand { relativeDay = 9 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d22_9_1.patient -- p22
p22.dayDemand -- d22_9_1
d22_9_2: PatientDayDemand { relativeDay = 9 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d22_9_2.patient -- p22
p22.dayDemand -- d22_9_2
d22_10_0: PatientDayDemand { relativeDay = 10 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d22_10_0.patient -- p22
p22.dayDemand -- d22_10_0
d22_10_1: PatientDayDemand { relativeDay = 10 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d22_10_1.patient -- p22
p22.dayDemand -- d22_10_1
d22_10_2: PatientDayDemand { relativeDay = 10 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d22_10_2.patient -- p22
p22.dayDemand -- d22_10_2
d22_11_0: PatientDayDemand { relativeDay = 11 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d22_11_0.patient -- p22
p22.dayDemand -- d22_11_0
d22_11_1: PatientDayDemand { relativeDay = 11 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d22_11_1.patient -- p22
p22.dayDemand -- d22_11_1
d22_11_2: PatientDayDemand { relativeDay = 11 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d22_11_2.patient -- p22
p22.dayDemand -- d22_11_2

p23: Patient { id = 23 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.F stayLength = 6 }
p23.assignedSurgeonId -- s0
hospital.patients -- p23
p23.incompatibleRooms -- r1
d23_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d23_0_0.patient -- p23
p23.dayDemand -- d23_0_0
d23_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d23_0_1.patient -- p23
p23.dayDemand -- d23_0_1
d23_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d23_0_2.patient -- p23
p23.dayDemand -- d23_0_2
d23_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d23_1_0.patient -- p23
p23.dayDemand -- d23_1_0
d23_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d23_1_1.patient -- p23
p23.dayDemand -- d23_1_1
d23_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d23_1_2.patient -- p23
p23.dayDemand -- d23_1_2
d23_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d23_2_0.patient -- p23
p23.dayDemand -- d23_2_0
d23_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d23_2_1.patient -- p23
p23.dayDemand -- d23_2_1
d23_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d23_2_2.patient -- p23
p23.dayDemand -- d23_2_2
d23_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d23_3_0.patient -- p23
p23.dayDemand -- d23_3_0
d23_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d23_3_1.patient -- p23
p23.dayDemand -- d23_3_1
d23_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d23_3_2.patient -- p23
p23.dayDemand -- d23_3_2
d23_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d23_4_0.patient -- p23
p23.dayDemand -- d23_4_0
d23_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d23_4_1.patient -- p23
p23.dayDemand -- d23_4_1
d23_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d23_4_2.patient -- p23
p23.dayDemand -- d23_4_2
d23_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d23_5_0.patient -- p23
p23.dayDemand -- d23_5_0
d23_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d23_5_1.patient -- p23
p23.dayDemand -- d23_5_1
d23_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d23_5_2.patient -- p23
p23.dayDemand -- d23_5_2

p24: Patient { id = 24 isMandatory = true isScheduled = true dueDate = 13 releaseDate = 7 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.F stayLength = 2 }
p24.assignedSurgeonId -- s0
hospital.patients -- p24
d24_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d24_0_0.patient -- p24
p24.dayDemand -- d24_0_0
d24_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d24_0_1.patient -- p24
p24.dayDemand -- d24_0_1
d24_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d24_0_2.patient -- p24
p24.dayDemand -- d24_0_2
d24_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d24_1_0.patient -- p24
p24.dayDemand -- d24_1_0
d24_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d24_1_1.patient -- p24
p24.dayDemand -- d24_1_1
d24_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d24_1_2.patient -- p24
p24.dayDemand -- d24_1_2

p25: Patient { id = 25 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 6 }
p25.assignedSurgeonId -- s0
hospital.patients -- p25
p25.incompatibleRooms -- r4
d25_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d25_0_0.patient -- p25
p25.dayDemand -- d25_0_0
d25_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d25_0_1.patient -- p25
p25.dayDemand -- d25_0_1
d25_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d25_0_2.patient -- p25
p25.dayDemand -- d25_0_2
d25_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d25_1_0.patient -- p25
p25.dayDemand -- d25_1_0
d25_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d25_1_1.patient -- p25
p25.dayDemand -- d25_1_1
d25_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d25_1_2.patient -- p25
p25.dayDemand -- d25_1_2
d25_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d25_2_0.patient -- p25
p25.dayDemand -- d25_2_0
d25_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d25_2_1.patient -- p25
p25.dayDemand -- d25_2_1
d25_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d25_2_2.patient -- p25
p25.dayDemand -- d25_2_2
d25_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d25_3_0.patient -- p25
p25.dayDemand -- d25_3_0
d25_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d25_3_1.patient -- p25
p25.dayDemand -- d25_3_1
d25_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d25_3_2.patient -- p25
p25.dayDemand -- d25_3_2
d25_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d25_4_0.patient -- p25
p25.dayDemand -- d25_4_0
d25_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d25_4_1.patient -- p25
p25.dayDemand -- d25_4_1
d25_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d25_4_2.patient -- p25
p25.dayDemand -- d25_4_2
d25_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d25_5_0.patient -- p25
p25.dayDemand -- d25_5_0
d25_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d25_5_1.patient -- p25
p25.dayDemand -- d25_5_1
d25_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d25_5_2.patient -- p25
p25.dayDemand -- d25_5_2

p26: Patient { id = 26 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 11 ageGroup = AgeGroup.ADULT surgeryDuration = 240 gender = Gender.F stayLength = 8 }
p26.assignedSurgeonId -- s0
hospital.patients -- p26
p26.incompatibleRooms -- r1
p26.incompatibleRooms -- r2
d26_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d26_0_0.patient -- p26
p26.dayDemand -- d26_0_0
d26_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d26_0_1.patient -- p26
p26.dayDemand -- d26_0_1
d26_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d26_0_2.patient -- p26
p26.dayDemand -- d26_0_2
d26_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d26_1_0.patient -- p26
p26.dayDemand -- d26_1_0
d26_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d26_1_1.patient -- p26
p26.dayDemand -- d26_1_1
d26_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d26_1_2.patient -- p26
p26.dayDemand -- d26_1_2
d26_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d26_2_0.patient -- p26
p26.dayDemand -- d26_2_0
d26_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d26_2_1.patient -- p26
p26.dayDemand -- d26_2_1
d26_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d26_2_2.patient -- p26
p26.dayDemand -- d26_2_2
d26_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d26_3_0.patient -- p26
p26.dayDemand -- d26_3_0
d26_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d26_3_1.patient -- p26
p26.dayDemand -- d26_3_1
d26_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d26_3_2.patient -- p26
p26.dayDemand -- d26_3_2
d26_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d26_4_0.patient -- p26
p26.dayDemand -- d26_4_0
d26_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d26_4_1.patient -- p26
p26.dayDemand -- d26_4_1
d26_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d26_4_2.patient -- p26
p26.dayDemand -- d26_4_2
d26_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d26_5_0.patient -- p26
p26.dayDemand -- d26_5_0
d26_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d26_5_1.patient -- p26
p26.dayDemand -- d26_5_1
d26_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d26_5_2.patient -- p26
p26.dayDemand -- d26_5_2
d26_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d26_6_0.patient -- p26
p26.dayDemand -- d26_6_0
d26_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d26_6_1.patient -- p26
p26.dayDemand -- d26_6_1
d26_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d26_6_2.patient -- p26
p26.dayDemand -- d26_6_2
d26_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d26_7_0.patient -- p26
p26.dayDemand -- d26_7_0
d26_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d26_7_1.patient -- p26
p26.dayDemand -- d26_7_1
d26_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d26_7_2.patient -- p26
p26.dayDemand -- d26_7_2

p27: Patient { id = 27 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 60 gender = Gender.F stayLength = 3 }
p27.assignedSurgeonId -- s0
hospital.patients -- p27
p27.incompatibleRooms -- r4
d27_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d27_0_0.patient -- p27
p27.dayDemand -- d27_0_0
d27_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d27_0_1.patient -- p27
p27.dayDemand -- d27_0_1
d27_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d27_0_2.patient -- p27
p27.dayDemand -- d27_0_2
d27_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d27_1_0.patient -- p27
p27.dayDemand -- d27_1_0
d27_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d27_1_1.patient -- p27
p27.dayDemand -- d27_1_1
d27_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d27_1_2.patient -- p27
p27.dayDemand -- d27_1_2
d27_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d27_2_0.patient -- p27
p27.dayDemand -- d27_2_0
d27_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d27_2_1.patient -- p27
p27.dayDemand -- d27_2_1
d27_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d27_2_2.patient -- p27
p27.dayDemand -- d27_2_2

p28: Patient { id = 28 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 14 ageGroup = AgeGroup.ADULT surgeryDuration = 180 gender = Gender.F stayLength = 6 }
p28.assignedSurgeonId -- s0
hospital.patients -- p28
d28_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d28_0_0.patient -- p28
p28.dayDemand -- d28_0_0
d28_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d28_0_1.patient -- p28
p28.dayDemand -- d28_0_1
d28_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d28_0_2.patient -- p28
p28.dayDemand -- d28_0_2
d28_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d28_1_0.patient -- p28
p28.dayDemand -- d28_1_0
d28_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d28_1_1.patient -- p28
p28.dayDemand -- d28_1_1
d28_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d28_1_2.patient -- p28
p28.dayDemand -- d28_1_2
d28_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d28_2_0.patient -- p28
p28.dayDemand -- d28_2_0
d28_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d28_2_1.patient -- p28
p28.dayDemand -- d28_2_1
d28_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d28_2_2.patient -- p28
p28.dayDemand -- d28_2_2
d28_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d28_3_0.patient -- p28
p28.dayDemand -- d28_3_0
d28_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d28_3_1.patient -- p28
p28.dayDemand -- d28_3_1
d28_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d28_3_2.patient -- p28
p28.dayDemand -- d28_3_2
d28_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d28_4_0.patient -- p28
p28.dayDemand -- d28_4_0
d28_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d28_4_1.patient -- p28
p28.dayDemand -- d28_4_1
d28_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d28_4_2.patient -- p28
p28.dayDemand -- d28_4_2
d28_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d28_5_0.patient -- p28
p28.dayDemand -- d28_5_0
d28_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d28_5_1.patient -- p28
p28.dayDemand -- d28_5_1
d28_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d28_5_2.patient -- p28
p28.dayDemand -- d28_5_2

p29: Patient { id = 29 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ADULT surgeryDuration = 60 gender = Gender.M stayLength = 2 }
p29.assignedSurgeonId -- s0
hospital.patients -- p29
d29_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d29_0_0.patient -- p29
p29.dayDemand -- d29_0_0
d29_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d29_0_1.patient -- p29
p29.dayDemand -- d29_0_1
d29_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d29_0_2.patient -- p29
p29.dayDemand -- d29_0_2
d29_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d29_1_0.patient -- p29
p29.dayDemand -- d29_1_0
d29_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d29_1_1.patient -- p29
p29.dayDemand -- d29_1_1
d29_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d29_1_2.patient -- p29
p29.dayDemand -- d29_1_2

p30: Patient { id = 30 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.F stayLength = 4 }
p30.assignedSurgeonId -- s0
hospital.patients -- p30
d30_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d30_0_0.patient -- p30
p30.dayDemand -- d30_0_0
d30_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d30_0_1.patient -- p30
p30.dayDemand -- d30_0_1
d30_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d30_0_2.patient -- p30
p30.dayDemand -- d30_0_2
d30_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d30_1_0.patient -- p30
p30.dayDemand -- d30_1_0
d30_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d30_1_1.patient -- p30
p30.dayDemand -- d30_1_1
d30_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d30_1_2.patient -- p30
p30.dayDemand -- d30_1_2
d30_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d30_2_0.patient -- p30
p30.dayDemand -- d30_2_0
d30_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d30_2_1.patient -- p30
p30.dayDemand -- d30_2_1
d30_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d30_2_2.patient -- p30
p30.dayDemand -- d30_2_2
d30_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d30_3_0.patient -- p30
p30.dayDemand -- d30_3_0
d30_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d30_3_1.patient -- p30
p30.dayDemand -- d30_3_1
d30_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d30_3_2.patient -- p30
p30.dayDemand -- d30_3_2

p31: Patient { id = 31 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 4 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.M stayLength = 2 }
p31.assignedSurgeonId -- s0
hospital.patients -- p31
d31_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d31_0_0.patient -- p31
p31.dayDemand -- d31_0_0
d31_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d31_0_1.patient -- p31
p31.dayDemand -- d31_0_1
d31_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d31_0_2.patient -- p31
p31.dayDemand -- d31_0_2
d31_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d31_1_0.patient -- p31
p31.dayDemand -- d31_1_0
d31_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d31_1_1.patient -- p31
p31.dayDemand -- d31_1_1
d31_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d31_1_2.patient -- p31
p31.dayDemand -- d31_1_2

p32: Patient { id = 32 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 6 }
p32.assignedSurgeonId -- s0
hospital.patients -- p32
d32_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d32_0_0.patient -- p32
p32.dayDemand -- d32_0_0
d32_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d32_0_1.patient -- p32
p32.dayDemand -- d32_0_1
d32_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d32_0_2.patient -- p32
p32.dayDemand -- d32_0_2
d32_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d32_1_0.patient -- p32
p32.dayDemand -- d32_1_0
d32_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d32_1_1.patient -- p32
p32.dayDemand -- d32_1_1
d32_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d32_1_2.patient -- p32
p32.dayDemand -- d32_1_2
d32_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d32_2_0.patient -- p32
p32.dayDemand -- d32_2_0
d32_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d32_2_1.patient -- p32
p32.dayDemand -- d32_2_1
d32_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d32_2_2.patient -- p32
p32.dayDemand -- d32_2_2
d32_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d32_3_0.patient -- p32
p32.dayDemand -- d32_3_0
d32_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d32_3_1.patient -- p32
p32.dayDemand -- d32_3_1
d32_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d32_3_2.patient -- p32
p32.dayDemand -- d32_3_2
d32_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d32_4_0.patient -- p32
p32.dayDemand -- d32_4_0
d32_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d32_4_1.patient -- p32
p32.dayDemand -- d32_4_1
d32_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d32_4_2.patient -- p32
p32.dayDemand -- d32_4_2
d32_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d32_5_0.patient -- p32
p32.dayDemand -- d32_5_0
d32_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d32_5_1.patient -- p32
p32.dayDemand -- d32_5_1
d32_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d32_5_2.patient -- p32
p32.dayDemand -- d32_5_2

p33: Patient { id = 33 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 8 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 3 }
p33.assignedSurgeonId -- s0
hospital.patients -- p33
p33.incompatibleRooms -- r1
d33_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d33_0_0.patient -- p33
p33.dayDemand -- d33_0_0
d33_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d33_0_1.patient -- p33
p33.dayDemand -- d33_0_1
d33_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d33_0_2.patient -- p33
p33.dayDemand -- d33_0_2
d33_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d33_1_0.patient -- p33
p33.dayDemand -- d33_1_0
d33_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d33_1_1.patient -- p33
p33.dayDemand -- d33_1_1
d33_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d33_1_2.patient -- p33
p33.dayDemand -- d33_1_2
d33_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d33_2_0.patient -- p33
p33.dayDemand -- d33_2_0
d33_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d33_2_1.patient -- p33
p33.dayDemand -- d33_2_1
d33_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d33_2_2.patient -- p33
p33.dayDemand -- d33_2_2

p34: Patient { id = 34 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 11 ageGroup = AgeGroup.BABY surgeryDuration = 300 gender = Gender.F stayLength = 8 }
p34.assignedSurgeonId -- s0
hospital.patients -- p34
d34_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d34_0_0.patient -- p34
p34.dayDemand -- d34_0_0
d34_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d34_0_1.patient -- p34
p34.dayDemand -- d34_0_1
d34_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d34_0_2.patient -- p34
p34.dayDemand -- d34_0_2
d34_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d34_1_0.patient -- p34
p34.dayDemand -- d34_1_0
d34_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d34_1_1.patient -- p34
p34.dayDemand -- d34_1_1
d34_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d34_1_2.patient -- p34
p34.dayDemand -- d34_1_2
d34_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d34_2_0.patient -- p34
p34.dayDemand -- d34_2_0
d34_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d34_2_1.patient -- p34
p34.dayDemand -- d34_2_1
d34_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d34_2_2.patient -- p34
p34.dayDemand -- d34_2_2
d34_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d34_3_0.patient -- p34
p34.dayDemand -- d34_3_0
d34_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d34_3_1.patient -- p34
p34.dayDemand -- d34_3_1
d34_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d34_3_2.patient -- p34
p34.dayDemand -- d34_3_2
d34_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d34_4_0.patient -- p34
p34.dayDemand -- d34_4_0
d34_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d34_4_1.patient -- p34
p34.dayDemand -- d34_4_1
d34_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d34_4_2.patient -- p34
p34.dayDemand -- d34_4_2
d34_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d34_5_0.patient -- p34
p34.dayDemand -- d34_5_0
d34_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d34_5_1.patient -- p34
p34.dayDemand -- d34_5_1
d34_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d34_5_2.patient -- p34
p34.dayDemand -- d34_5_2
d34_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d34_6_0.patient -- p34
p34.dayDemand -- d34_6_0
d34_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d34_6_1.patient -- p34
p34.dayDemand -- d34_6_1
d34_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d34_6_2.patient -- p34
p34.dayDemand -- d34_6_2
d34_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d34_7_0.patient -- p34
p34.dayDemand -- d34_7_0
d34_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d34_7_1.patient -- p34
p34.dayDemand -- d34_7_1
d34_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d34_7_2.patient -- p34
p34.dayDemand -- d34_7_2

p35: Patient { id = 35 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 180 gender = Gender.F stayLength = 3 }
p35.assignedSurgeonId -- s0
hospital.patients -- p35
p35.incompatibleRooms -- r1
d35_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d35_0_0.patient -- p35
p35.dayDemand -- d35_0_0
d35_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d35_0_1.patient -- p35
p35.dayDemand -- d35_0_1
d35_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d35_0_2.patient -- p35
p35.dayDemand -- d35_0_2
d35_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d35_1_0.patient -- p35
p35.dayDemand -- d35_1_0
d35_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d35_1_1.patient -- p35
p35.dayDemand -- d35_1_1
d35_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d35_1_2.patient -- p35
p35.dayDemand -- d35_1_2
d35_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d35_2_0.patient -- p35
p35.dayDemand -- d35_2_0
d35_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d35_2_1.patient -- p35
p35.dayDemand -- d35_2_1
d35_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d35_2_2.patient -- p35
p35.dayDemand -- d35_2_2

p36: Patient { id = 36 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 13 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.M stayLength = 6 }
p36.assignedSurgeonId -- s0
hospital.patients -- p36
d36_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d36_0_0.patient -- p36
p36.dayDemand -- d36_0_0
d36_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d36_0_1.patient -- p36
p36.dayDemand -- d36_0_1
d36_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d36_0_2.patient -- p36
p36.dayDemand -- d36_0_2
d36_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d36_1_0.patient -- p36
p36.dayDemand -- d36_1_0
d36_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d36_1_1.patient -- p36
p36.dayDemand -- d36_1_1
d36_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d36_1_2.patient -- p36
p36.dayDemand -- d36_1_2
d36_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d36_2_0.patient -- p36
p36.dayDemand -- d36_2_0
d36_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d36_2_1.patient -- p36
p36.dayDemand -- d36_2_1
d36_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d36_2_2.patient -- p36
p36.dayDemand -- d36_2_2
d36_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d36_3_0.patient -- p36
p36.dayDemand -- d36_3_0
d36_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d36_3_1.patient -- p36
p36.dayDemand -- d36_3_1
d36_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d36_3_2.patient -- p36
p36.dayDemand -- d36_3_2
d36_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d36_4_0.patient -- p36
p36.dayDemand -- d36_4_0
d36_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d36_4_1.patient -- p36
p36.dayDemand -- d36_4_1
d36_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d36_4_2.patient -- p36
p36.dayDemand -- d36_4_2
d36_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 2 }
d36_5_0.patient -- p36
p36.dayDemand -- d36_5_0
d36_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d36_5_1.patient -- p36
p36.dayDemand -- d36_5_1
d36_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d36_5_2.patient -- p36
p36.dayDemand -- d36_5_2

p37: Patient { id = 37 isMandatory = true isScheduled = true dueDate = 7 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 8 }
p37.assignedSurgeonId -- s0
hospital.patients -- p37
d37_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d37_0_0.patient -- p37
p37.dayDemand -- d37_0_0
d37_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d37_0_1.patient -- p37
p37.dayDemand -- d37_0_1
d37_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d37_0_2.patient -- p37
p37.dayDemand -- d37_0_2
d37_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d37_1_0.patient -- p37
p37.dayDemand -- d37_1_0
d37_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d37_1_1.patient -- p37
p37.dayDemand -- d37_1_1
d37_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d37_1_2.patient -- p37
p37.dayDemand -- d37_1_2
d37_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d37_2_0.patient -- p37
p37.dayDemand -- d37_2_0
d37_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d37_2_1.patient -- p37
p37.dayDemand -- d37_2_1
d37_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d37_2_2.patient -- p37
p37.dayDemand -- d37_2_2
d37_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d37_3_0.patient -- p37
p37.dayDemand -- d37_3_0
d37_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d37_3_1.patient -- p37
p37.dayDemand -- d37_3_1
d37_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d37_3_2.patient -- p37
p37.dayDemand -- d37_3_2
d37_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d37_4_0.patient -- p37
p37.dayDemand -- d37_4_0
d37_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d37_4_1.patient -- p37
p37.dayDemand -- d37_4_1
d37_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d37_4_2.patient -- p37
p37.dayDemand -- d37_4_2
d37_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d37_5_0.patient -- p37
p37.dayDemand -- d37_5_0
d37_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d37_5_1.patient -- p37
p37.dayDemand -- d37_5_1
d37_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d37_5_2.patient -- p37
p37.dayDemand -- d37_5_2
d37_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d37_6_0.patient -- p37
p37.dayDemand -- d37_6_0
d37_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d37_6_1.patient -- p37
p37.dayDemand -- d37_6_1
d37_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d37_6_2.patient -- p37
p37.dayDemand -- d37_6_2
d37_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d37_7_0.patient -- p37
p37.dayDemand -- d37_7_0
d37_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d37_7_1.patient -- p37
p37.dayDemand -- d37_7_1
d37_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d37_7_2.patient -- p37
p37.dayDemand -- d37_7_2

p38: Patient { id = 38 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 7 ageGroup = AgeGroup.ADULT surgeryDuration = 240 gender = Gender.M stayLength = 6 }
p38.assignedSurgeonId -- s0
hospital.patients -- p38
d38_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d38_0_0.patient -- p38
p38.dayDemand -- d38_0_0
d38_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d38_0_1.patient -- p38
p38.dayDemand -- d38_0_1
d38_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d38_0_2.patient -- p38
p38.dayDemand -- d38_0_2
d38_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d38_1_0.patient -- p38
p38.dayDemand -- d38_1_0
d38_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d38_1_1.patient -- p38
p38.dayDemand -- d38_1_1
d38_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d38_1_2.patient -- p38
p38.dayDemand -- d38_1_2
d38_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d38_2_0.patient -- p38
p38.dayDemand -- d38_2_0
d38_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d38_2_1.patient -- p38
p38.dayDemand -- d38_2_1
d38_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d38_2_2.patient -- p38
p38.dayDemand -- d38_2_2
d38_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d38_3_0.patient -- p38
p38.dayDemand -- d38_3_0
d38_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d38_3_1.patient -- p38
p38.dayDemand -- d38_3_1
d38_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d38_3_2.patient -- p38
p38.dayDemand -- d38_3_2
d38_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d38_4_0.patient -- p38
p38.dayDemand -- d38_4_0
d38_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d38_4_1.patient -- p38
p38.dayDemand -- d38_4_1
d38_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d38_4_2.patient -- p38
p38.dayDemand -- d38_4_2
d38_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d38_5_0.patient -- p38
p38.dayDemand -- d38_5_0
d38_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d38_5_1.patient -- p38
p38.dayDemand -- d38_5_1
d38_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d38_5_2.patient -- p38
p38.dayDemand -- d38_5_2

p39: Patient { id = 39 isMandatory = false isScheduled = false dueDate = 20 releaseDate = 3 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 6 }
p39.assignedSurgeonId -- s0
hospital.patients -- p39
p39.incompatibleRooms -- r2
p39.incompatibleRooms -- r4
d39_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d39_0_0.patient -- p39
p39.dayDemand -- d39_0_0
d39_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d39_0_1.patient -- p39
p39.dayDemand -- d39_0_1
d39_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d39_0_2.patient -- p39
p39.dayDemand -- d39_0_2
d39_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d39_1_0.patient -- p39
p39.dayDemand -- d39_1_0
d39_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d39_1_1.patient -- p39
p39.dayDemand -- d39_1_1
d39_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d39_1_2.patient -- p39
p39.dayDemand -- d39_1_2
d39_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d39_2_0.patient -- p39
p39.dayDemand -- d39_2_0
d39_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 2 }
d39_2_1.patient -- p39
p39.dayDemand -- d39_2_1
d39_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d39_2_2.patient -- p39
p39.dayDemand -- d39_2_2
d39_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d39_3_0.patient -- p39
p39.dayDemand -- d39_3_0
d39_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d39_3_1.patient -- p39
p39.dayDemand -- d39_3_1
d39_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d39_3_2.patient -- p39
p39.dayDemand -- d39_3_2
d39_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d39_4_0.patient -- p39
p39.dayDemand -- d39_4_0
d39_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d39_4_1.patient -- p39
p39.dayDemand -- d39_4_1
d39_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d39_4_2.patient -- p39
p39.dayDemand -- d39_4_2
d39_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d39_5_0.patient -- p39
p39.dayDemand -- d39_5_0
d39_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d39_5_1.patient -- p39
p39.dayDemand -- d39_5_1
d39_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d39_5_2.patient -- p39
p39.dayDemand -- d39_5_2

p40: Patient { id = 40 isMandatory = true isScheduled = true dueDate = 17 releaseDate = 1 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.F stayLength = 9 }
p40.assignedSurgeonId -- s0
hospital.patients -- p40
p40.incompatibleRooms -- r0
d40_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d40_0_0.patient -- p40
p40.dayDemand -- d40_0_0
d40_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d40_0_1.patient -- p40
p40.dayDemand -- d40_0_1
d40_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d40_0_2.patient -- p40
p40.dayDemand -- d40_0_2
d40_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d40_1_0.patient -- p40
p40.dayDemand -- d40_1_0
d40_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d40_1_1.patient -- p40
p40.dayDemand -- d40_1_1
d40_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d40_1_2.patient -- p40
p40.dayDemand -- d40_1_2
d40_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d40_2_0.patient -- p40
p40.dayDemand -- d40_2_0
d40_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d40_2_1.patient -- p40
p40.dayDemand -- d40_2_1
d40_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d40_2_2.patient -- p40
p40.dayDemand -- d40_2_2
d40_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d40_3_0.patient -- p40
p40.dayDemand -- d40_3_0
d40_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d40_3_1.patient -- p40
p40.dayDemand -- d40_3_1
d40_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d40_3_2.patient -- p40
p40.dayDemand -- d40_3_2
d40_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d40_4_0.patient -- p40
p40.dayDemand -- d40_4_0
d40_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d40_4_1.patient -- p40
p40.dayDemand -- d40_4_1
d40_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d40_4_2.patient -- p40
p40.dayDemand -- d40_4_2
d40_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d40_5_0.patient -- p40
p40.dayDemand -- d40_5_0
d40_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d40_5_1.patient -- p40
p40.dayDemand -- d40_5_1
d40_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d40_5_2.patient -- p40
p40.dayDemand -- d40_5_2
d40_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d40_6_0.patient -- p40
p40.dayDemand -- d40_6_0
d40_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d40_6_1.patient -- p40
p40.dayDemand -- d40_6_1
d40_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d40_6_2.patient -- p40
p40.dayDemand -- d40_6_2
d40_7_0: PatientDayDemand { relativeDay = 7 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d40_7_0.patient -- p40
p40.dayDemand -- d40_7_0
d40_7_1: PatientDayDemand { relativeDay = 7 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d40_7_1.patient -- p40
p40.dayDemand -- d40_7_1
d40_7_2: PatientDayDemand { relativeDay = 7 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d40_7_2.patient -- p40
p40.dayDemand -- d40_7_2
d40_8_0: PatientDayDemand { relativeDay = 8 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d40_8_0.patient -- p40
p40.dayDemand -- d40_8_0
d40_8_1: PatientDayDemand { relativeDay = 8 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d40_8_1.patient -- p40
p40.dayDemand -- d40_8_1
d40_8_2: PatientDayDemand { relativeDay = 8 shift = 2 workloadProduced = 1 skillLevelRequired = 1 }
d40_8_2.patient -- p40
p40.dayDemand -- d40_8_2

p41: Patient { id = 41 isMandatory = true isScheduled = true dueDate = 19 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 4 }
p41.assignedSurgeonId -- s0
hospital.patients -- p41
p41.incompatibleRooms -- r1
p41.incompatibleRooms -- r2
d41_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d41_0_0.patient -- p41
p41.dayDemand -- d41_0_0
d41_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d41_0_1.patient -- p41
p41.dayDemand -- d41_0_1
d41_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d41_0_2.patient -- p41
p41.dayDemand -- d41_0_2
d41_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d41_1_0.patient -- p41
p41.dayDemand -- d41_1_0
d41_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 2 }
d41_1_1.patient -- p41
p41.dayDemand -- d41_1_1
d41_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d41_1_2.patient -- p41
p41.dayDemand -- d41_1_2
d41_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d41_2_0.patient -- p41
p41.dayDemand -- d41_2_0
d41_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d41_2_1.patient -- p41
p41.dayDemand -- d41_2_1
d41_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 1 }
d41_2_2.patient -- p41
p41.dayDemand -- d41_2_2
d41_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 2 }
d41_3_0.patient -- p41
p41.dayDemand -- d41_3_0
d41_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 2 }
d41_3_1.patient -- p41
p41.dayDemand -- d41_3_1
d41_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d41_3_2.patient -- p41
p41.dayDemand -- d41_3_2

a37: Admission { admissionDay = 4 }
a37.patientId -- p37
a37.roomId -- r1
a37.operationTheatreId -- ot0
hospital.admissions -- a37
a24: Admission { admissionDay = 7 }
a24.patientId -- p24
a24.roomId -- r0
a24.operationTheatreId -- ot0
hospital.admissions -- a24
a41: Admission { admissionDay = 13 }
a41.patientId -- p41
a41.roomId -- r0
a41.operationTheatreId -- ot0
hospital.admissions -- a41
a12: Admission { admissionDay = 3 }
a12.patientId -- p12
a12.roomId -- r1
a12.operationTheatreId -- ot0
hospital.admissions -- a12
a22: Admission { admissionDay = 8 }
a22.patientId -- p22
a22.roomId -- r1
a22.operationTheatreId -- ot0
hospital.admissions -- a22
a35: Admission { admissionDay = 7 }
a35.patientId -- p35
a35.roomId -- r2
a35.operationTheatreId -- ot0
hospital.admissions -- a35
a16: Admission { admissionDay = 1 }
a16.patientId -- p16
a16.roomId -- r2
a16.operationTheatreId -- ot0
hospital.admissions -- a16
a10: Admission { admissionDay = 4 }
a10.patientId -- p10
a10.roomId -- r3
a10.operationTheatreId -- ot0
hospital.admissions -- a10
a40: Admission { admissionDay = 1 }
a40.patientId -- p40
a40.roomId -- r3
a40.operationTheatreId -- ot0
hospital.admissions -- a40
a19: Admission { admissionDay = 1 }
a19.patientId -- p19
a19.roomId -- r3
a19.operationTheatreId -- ot0
hospital.admissions -- a19
a4: Admission { admissionDay = 3 }
a4.patientId -- p4
a4.roomId -- r4
a4.operationTheatreId -- ot0
hospital.admissions -- a4

sa0d0: SurgeonAvailability { day = 0 maxOperatingTime = 0 }
sa0d0.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d0
sa0d1: SurgeonAvailability { day = 1 maxOperatingTime = 480 }
sa0d1.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d1
sa0d2: SurgeonAvailability { day = 2 maxOperatingTime = 0 }
sa0d2.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d2
sa0d3: SurgeonAvailability { day = 3 maxOperatingTime = 480 }
sa0d3.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d3
sa0d4: SurgeonAvailability { day = 4 maxOperatingTime = 360 }
sa0d4.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d4
sa0d5: SurgeonAvailability { day = 5 maxOperatingTime = 0 }
sa0d5.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d5
sa0d6: SurgeonAvailability { day = 6 maxOperatingTime = 0 }
sa0d6.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d6
sa0d7: SurgeonAvailability { day = 7 maxOperatingTime = 600 }
sa0d7.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d7
sa0d8: SurgeonAvailability { day = 8 maxOperatingTime = 360 }
sa0d8.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d8
sa0d9: SurgeonAvailability { day = 9 maxOperatingTime = 0 }
sa0d9.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d9
sa0d10: SurgeonAvailability { day = 10 maxOperatingTime = 0 }
sa0d10.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d10
sa0d11: SurgeonAvailability { day = 11 maxOperatingTime = 480 }
sa0d11.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d11
sa0d12: SurgeonAvailability { day = 12 maxOperatingTime = 0 }
sa0d12.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d12
sa0d13: SurgeonAvailability { day = 13 maxOperatingTime = 600 }
sa0d13.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d13
sa0d14: SurgeonAvailability { day = 14 maxOperatingTime = 480 }
sa0d14.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d14
sa0d15: SurgeonAvailability { day = 15 maxOperatingTime = 0 }
sa0d15.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d15
sa0d16: SurgeonAvailability { day = 16 maxOperatingTime = 480 }
sa0d16.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d16
sa0d17: SurgeonAvailability { day = 17 maxOperatingTime = 480 }
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
ota0d0: OperatingTheatreAvailability { day = 0 maxCapacity = 600 }
ota0d0.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d0
ota0d1: OperatingTheatreAvailability { day = 1 maxCapacity = 720 }
ota0d1.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d1
ota0d2: OperatingTheatreAvailability { day = 2 maxCapacity = 600 }
ota0d2.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d2
ota0d3: OperatingTheatreAvailability { day = 3 maxCapacity = 600 }
ota0d3.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d3
ota0d4: OperatingTheatreAvailability { day = 4 maxCapacity = 480 }
ota0d4.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d4
ota0d5: OperatingTheatreAvailability { day = 5 maxCapacity = 720 }
ota0d5.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d5
ota0d6: OperatingTheatreAvailability { day = 6 maxCapacity = 600 }
ota0d6.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d6
ota0d7: OperatingTheatreAvailability { day = 7 maxCapacity = 600 }
ota0d7.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d7
ota0d8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
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
ota0d12: OperatingTheatreAvailability { day = 12 maxCapacity = 720 }
ota0d12.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d12
ota0d13: OperatingTheatreAvailability { day = 13 maxCapacity = 480 }
ota0d13.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d13
ota0d14: OperatingTheatreAvailability { day = 14 maxCapacity = 720 }
ota0d14.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d14
ota0d15: OperatingTheatreAvailability { day = 15 maxCapacity = 0 }
ota0d15.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d15
ota0d16: OperatingTheatreAvailability { day = 16 maxCapacity = 720 }
ota0d16.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d16
ota0d17: OperatingTheatreAvailability { day = 17 maxCapacity = 600 }
ota0d17.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d17
ota0d18: OperatingTheatreAvailability { day = 18 maxCapacity = 720 }
ota0d18.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d18
ota0d19: OperatingTheatreAvailability { day = 19 maxCapacity = 720 }
ota0d19.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d19
ota0d20: OperatingTheatreAvailability { day = 20 maxCapacity = 600 }
ota0d20.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d20
ota1d0: OperatingTheatreAvailability { day = 0 maxCapacity = 0 }
ota1d0.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d0
ota1d1: OperatingTheatreAvailability { day = 1 maxCapacity = 600 }
ota1d1.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d1
ota1d2: OperatingTheatreAvailability { day = 2 maxCapacity = 600 }
ota1d2.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d2
ota1d3: OperatingTheatreAvailability { day = 3 maxCapacity = 600 }
ota1d3.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d3
ota1d4: OperatingTheatreAvailability { day = 4 maxCapacity = 720 }
ota1d4.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d4
ota1d5: OperatingTheatreAvailability { day = 5 maxCapacity = 720 }
ota1d5.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d5
ota1d6: OperatingTheatreAvailability { day = 6 maxCapacity = 720 }
ota1d6.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d6
ota1d7: OperatingTheatreAvailability { day = 7 maxCapacity = 600 }
ota1d7.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d7
ota1d8: OperatingTheatreAvailability { day = 8 maxCapacity = 480 }
ota1d8.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d8
ota1d9: OperatingTheatreAvailability { day = 9 maxCapacity = 600 }
ota1d9.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d9
ota1d10: OperatingTheatreAvailability { day = 10 maxCapacity = 600 }
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
ota1d14: OperatingTheatreAvailability { day = 14 maxCapacity = 600 }
ota1d14.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d14
ota1d15: OperatingTheatreAvailability { day = 15 maxCapacity = 720 }
ota1d15.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d15
ota1d16: OperatingTheatreAvailability { day = 16 maxCapacity = 720 }
ota1d16.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d16
ota1d17: OperatingTheatreAvailability { day = 17 maxCapacity = 600 }
ota1d17.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d17
ota1d18: OperatingTheatreAvailability { day = 18 maxCapacity = 600 }
ota1d18.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d18
ota1d19: OperatingTheatreAvailability { day = 19 maxCapacity = 720 }
ota1d19.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d19
ota1d20: OperatingTheatreAvailability { day = 20 maxCapacity = 720 }
ota1d20.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d20
ra0d0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d0.roomId -- r0
hospital.roomAvailabilities -- ra0d0
ra0d1: RoomAvailability { day = 1 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d1.roomId -- r0
hospital.roomAvailabilities -- ra0d1
ra0d2: RoomAvailability { day = 2 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d2.roomId -- r0
hospital.roomAvailabilities -- ra0d2
ra0d3: RoomAvailability { day = 3 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d3.roomId -- r0
hospital.roomAvailabilities -- ra0d3
ra0d4: RoomAvailability { day = 4 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d4.roomId -- r0
hospital.roomAvailabilities -- ra0d4
ra0d5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d5.roomId -- r0
hospital.roomAvailabilities -- ra0d5
ra0d6: RoomAvailability { day = 6 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d6.roomId -- r0
hospital.roomAvailabilities -- ra0d6
ra0d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d7.roomId -- r0
hospital.roomAvailabilities -- ra0d7
ra0d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 0 }
ra0d8.roomId -- r0
hospital.roomAvailabilities -- ra0d8
ra0d9: RoomAvailability { day = 9 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d9.roomId -- r0
hospital.roomAvailabilities -- ra0d9
ra0d10: RoomAvailability { day = 10 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d10.roomId -- r0
hospital.roomAvailabilities -- ra0d10
ra0d11: RoomAvailability { day = 11 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d11.roomId -- r0
hospital.roomAvailabilities -- ra0d11
ra0d12: RoomAvailability { day = 12 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d12.roomId -- r0
hospital.roomAvailabilities -- ra0d12
ra0d13: RoomAvailability { day = 13 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d13.roomId -- r0
hospital.roomAvailabilities -- ra0d13
ra0d14: RoomAvailability { day = 14 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d14.roomId -- r0
hospital.roomAvailabilities -- ra0d14
ra0d15: RoomAvailability { day = 15 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d15.roomId -- r0
hospital.roomAvailabilities -- ra0d15
ra0d16: RoomAvailability { day = 16 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d16.roomId -- r0
hospital.roomAvailabilities -- ra0d16
ra0d17: RoomAvailability { day = 17 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d17.roomId -- r0
hospital.roomAvailabilities -- ra0d17
ra0d18: RoomAvailability { day = 18 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d18.roomId -- r0
hospital.roomAvailabilities -- ra0d18
ra0d19: RoomAvailability { day = 19 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d19.roomId -- r0
hospital.roomAvailabilities -- ra0d19
ra0d20: RoomAvailability { day = 20 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d20.roomId -- r0
hospital.roomAvailabilities -- ra0d20
ra0d21: RoomAvailability { day = 21 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d21.roomId -- r0
hospital.roomAvailabilities -- ra0d21
ra0d22: RoomAvailability { day = 22 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d22.roomId -- r0
hospital.roomAvailabilities -- ra0d22
ra0d23: RoomAvailability { day = 23 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d23.roomId -- r0
hospital.roomAvailabilities -- ra0d23
ra0d24: RoomAvailability { day = 24 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d24.roomId -- r0
hospital.roomAvailabilities -- ra0d24
ra0d25: RoomAvailability { day = 25 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d25.roomId -- r0
hospital.roomAvailabilities -- ra0d25
ra0d26: RoomAvailability { day = 26 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d26.roomId -- r0
hospital.roomAvailabilities -- ra0d26
ra0d27: RoomAvailability { day = 27 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
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
ra1d4: RoomAvailability { day = 4 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d4.roomId -- r1
hospital.roomAvailabilities -- ra1d4
ra1d5: RoomAvailability { day = 5 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d5.roomId -- r1
hospital.roomAvailabilities -- ra1d5
ra1d6: RoomAvailability { day = 6 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d6.roomId -- r1
hospital.roomAvailabilities -- ra1d6
ra1d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d7.roomId -- r1
hospital.roomAvailabilities -- ra1d7
ra1d8: RoomAvailability { day = 8 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d8.roomId -- r1
hospital.roomAvailabilities -- ra1d8
ra1d9: RoomAvailability { day = 9 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d9.roomId -- r1
hospital.roomAvailabilities -- ra1d9
ra1d10: RoomAvailability { day = 10 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d10.roomId -- r1
hospital.roomAvailabilities -- ra1d10
ra1d11: RoomAvailability { day = 11 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d11.roomId -- r1
hospital.roomAvailabilities -- ra1d11
ra1d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d12.roomId -- r1
hospital.roomAvailabilities -- ra1d12
ra1d13: RoomAvailability { day = 13 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d13.roomId -- r1
hospital.roomAvailabilities -- ra1d13
ra1d14: RoomAvailability { day = 14 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d14.roomId -- r1
hospital.roomAvailabilities -- ra1d14
ra1d15: RoomAvailability { day = 15 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d15.roomId -- r1
hospital.roomAvailabilities -- ra1d15
ra1d16: RoomAvailability { day = 16 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d16.roomId -- r1
hospital.roomAvailabilities -- ra1d16
ra1d17: RoomAvailability { day = 17 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d17.roomId -- r1
hospital.roomAvailabilities -- ra1d17
ra1d18: RoomAvailability { day = 18 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d18.roomId -- r1
hospital.roomAvailabilities -- ra1d18
ra1d19: RoomAvailability { day = 19 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
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
ra2d0: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 2 }
ra2d0.roomId -- r2
hospital.roomAvailabilities -- ra2d0
ra2d1: RoomAvailability { day = 1 occupiedBeds = 2 ageGroup = AgeGroup.ADULT roomNumber = 2 }
ra2d1.roomId -- r2
hospital.roomAvailabilities -- ra2d1
ra2d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 2 }
ra2d2.roomId -- r2
hospital.roomAvailabilities -- ra2d2
ra2d3: RoomAvailability { day = 3 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 2 }
ra2d3.roomId -- r2
hospital.roomAvailabilities -- ra2d3
ra2d4: RoomAvailability { day = 4 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 2 }
ra2d4.roomId -- r2
hospital.roomAvailabilities -- ra2d4
ra2d5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d5.roomId -- r2
hospital.roomAvailabilities -- ra2d5
ra2d6: RoomAvailability { day = 6 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d6.roomId -- r2
hospital.roomAvailabilities -- ra2d6
ra2d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d7.roomId -- r2
hospital.roomAvailabilities -- ra2d7
ra2d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d8.roomId -- r2
hospital.roomAvailabilities -- ra2d8
ra2d9: RoomAvailability { day = 9 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra2d9.roomId -- r2
hospital.roomAvailabilities -- ra2d9
ra2d10: RoomAvailability { day = 10 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d10.roomId -- r2
hospital.roomAvailabilities -- ra2d10
ra2d11: RoomAvailability { day = 11 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d11.roomId -- r2
hospital.roomAvailabilities -- ra2d11
ra2d12: RoomAvailability { day = 12 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d12.roomId -- r2
hospital.roomAvailabilities -- ra2d12
ra2d13: RoomAvailability { day = 13 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d13.roomId -- r2
hospital.roomAvailabilities -- ra2d13
ra2d14: RoomAvailability { day = 14 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d14.roomId -- r2
hospital.roomAvailabilities -- ra2d14
ra2d15: RoomAvailability { day = 15 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d15.roomId -- r2
hospital.roomAvailabilities -- ra2d15
ra2d16: RoomAvailability { day = 16 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d16.roomId -- r2
hospital.roomAvailabilities -- ra2d16
ra2d17: RoomAvailability { day = 17 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d17.roomId -- r2
hospital.roomAvailabilities -- ra2d17
ra2d18: RoomAvailability { day = 18 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra2d18.roomId -- r2
hospital.roomAvailabilities -- ra2d18
ra2d19: RoomAvailability { day = 19 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
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
ra3d0: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d0.roomId -- r3
hospital.roomAvailabilities -- ra3d0
ra3d1: RoomAvailability { day = 1 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d1.roomId -- r3
hospital.roomAvailabilities -- ra3d1
ra3d2: RoomAvailability { day = 2 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d2.roomId -- r3
hospital.roomAvailabilities -- ra3d2
ra3d3: RoomAvailability { day = 3 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d3.roomId -- r3
hospital.roomAvailabilities -- ra3d3
ra3d4: RoomAvailability { day = 4 occupiedBeds = 3 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d4.roomId -- r3
hospital.roomAvailabilities -- ra3d4
ra3d5: RoomAvailability { day = 5 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d5.roomId -- r3
hospital.roomAvailabilities -- ra3d5
ra3d6: RoomAvailability { day = 6 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
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
ra3d10: RoomAvailability { day = 10 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d10.roomId -- r3
hospital.roomAvailabilities -- ra3d10
ra3d11: RoomAvailability { day = 11 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d11.roomId -- r3
hospital.roomAvailabilities -- ra3d11
ra3d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d12.roomId -- r3
hospital.roomAvailabilities -- ra3d12
ra3d13: RoomAvailability { day = 13 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 3 }
ra3d13.roomId -- r3
hospital.roomAvailabilities -- ra3d13
ra3d14: RoomAvailability { day = 14 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d14.roomId -- r3
hospital.roomAvailabilities -- ra3d14
ra3d15: RoomAvailability { day = 15 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d15.roomId -- r3
hospital.roomAvailabilities -- ra3d15
ra3d16: RoomAvailability { day = 16 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d16.roomId -- r3
hospital.roomAvailabilities -- ra3d16
ra3d17: RoomAvailability { day = 17 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d17.roomId -- r3
hospital.roomAvailabilities -- ra3d17
ra3d18: RoomAvailability { day = 18 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d18.roomId -- r3
hospital.roomAvailabilities -- ra3d18
ra3d19: RoomAvailability { day = 19 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d19.roomId -- r3
hospital.roomAvailabilities -- ra3d19
ra3d20: RoomAvailability { day = 20 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d20.roomId -- r3
hospital.roomAvailabilities -- ra3d20
ra3d21: RoomAvailability { day = 21 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra3d21.roomId -- r3
hospital.roomAvailabilities -- ra3d21
ra3d22: RoomAvailability { day = 22 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
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
ra4d0: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d0.roomId -- r4
hospital.roomAvailabilities -- ra4d0
ra4d1: RoomAvailability { day = 1 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d1.roomId -- r4
hospital.roomAvailabilities -- ra4d1
ra4d2: RoomAvailability { day = 2 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d2.roomId -- r4
hospital.roomAvailabilities -- ra4d2
ra4d3: RoomAvailability { day = 3 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d3.roomId -- r4
hospital.roomAvailabilities -- ra4d3
ra4d4: RoomAvailability { day = 4 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d4.roomId -- r4
hospital.roomAvailabilities -- ra4d4
ra4d5: RoomAvailability { day = 5 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d5.roomId -- r4
hospital.roomAvailabilities -- ra4d5
ra4d6: RoomAvailability { day = 6 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d6.roomId -- r4
hospital.roomAvailabilities -- ra4d6
ra4d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d7.roomId -- r4
hospital.roomAvailabilities -- ra4d7
ra4d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 4 }
ra4d8.roomId -- r4
hospital.roomAvailabilities -- ra4d8
ra4d9: RoomAvailability { day = 9 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d9.roomId -- r4
hospital.roomAvailabilities -- ra4d9
ra4d10: RoomAvailability { day = 10 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d10.roomId -- r4
hospital.roomAvailabilities -- ra4d10
ra4d11: RoomAvailability { day = 11 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d11.roomId -- r4
hospital.roomAvailabilities -- ra4d11
ra4d12: RoomAvailability { day = 12 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d12.roomId -- r4
hospital.roomAvailabilities -- ra4d12
ra4d13: RoomAvailability { day = 13 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d13.roomId -- r4
hospital.roomAvailabilities -- ra4d13
ra4d14: RoomAvailability { day = 14 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d14.roomId -- r4
hospital.roomAvailabilities -- ra4d14
ra4d15: RoomAvailability { day = 15 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d15.roomId -- r4
hospital.roomAvailabilities -- ra4d15
ra4d16: RoomAvailability { day = 16 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
ra4d16.roomId -- r4
hospital.roomAvailabilities -- ra4d16
ra4d17: RoomAvailability { day = 17 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 4 }
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
nws0_0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 12 }
nws0_0.nurse -- n0
hospital.nurseWorkingShifts -- nws0_0
nws0_1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 12 }
nws0_1.nurse -- n0
hospital.nurseWorkingShifts -- nws0_1
nws0_2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 12 }
nws0_2.nurse -- n0
hospital.nurseWorkingShifts -- nws0_2
nws0_3: NurseWorkingShift { day = 4 shift = 2 maxLoad = 12 }
nws0_3.nurse -- n0
hospital.nurseWorkingShifts -- nws0_3
nws0_4: NurseWorkingShift { day = 5 shift = 2 maxLoad = 12 }
nws0_4.nurse -- n0
hospital.nurseWorkingShifts -- nws0_4
nws0_5: NurseWorkingShift { day = 7 shift = 2 maxLoad = 12 }
nws0_5.nurse -- n0
hospital.nurseWorkingShifts -- nws0_5
nws0_6: NurseWorkingShift { day = 9 shift = 0 maxLoad = 12 }
nws0_6.nurse -- n0
hospital.nurseWorkingShifts -- nws0_6
nws0_7: NurseWorkingShift { day = 10 shift = 0 maxLoad = 12 }
nws0_7.nurse -- n0
hospital.nurseWorkingShifts -- nws0_7
nws0_8: NurseWorkingShift { day = 11 shift = 0 maxLoad = 12 }
nws0_8.nurse -- n0
hospital.nurseWorkingShifts -- nws0_8
nws0_9: NurseWorkingShift { day = 12 shift = 0 maxLoad = 12 }
nws0_9.nurse -- n0
hospital.nurseWorkingShifts -- nws0_9
nws0_10: NurseWorkingShift { day = 13 shift = 0 maxLoad = 12 }
nws0_10.nurse -- n0
hospital.nurseWorkingShifts -- nws0_10
nws0_11: NurseWorkingShift { day = 14 shift = 0 maxLoad = 12 }
nws0_11.nurse -- n0
hospital.nurseWorkingShifts -- nws0_11
nws0_12: NurseWorkingShift { day = 15 shift = 0 maxLoad = 12 }
nws0_12.nurse -- n0
hospital.nurseWorkingShifts -- nws0_12
nws0_13: NurseWorkingShift { day = 16 shift = 1 maxLoad = 12 }
nws0_13.nurse -- n0
hospital.nurseWorkingShifts -- nws0_13
nws0_14: NurseWorkingShift { day = 17 shift = 1 maxLoad = 12 }
nws0_14.nurse -- n0
hospital.nurseWorkingShifts -- nws0_14
nws0_15: NurseWorkingShift { day = 18 shift = 1 maxLoad = 12 }
nws0_15.nurse -- n0
hospital.nurseWorkingShifts -- nws0_15
nws0_16: NurseWorkingShift { day = 19 shift = 1 maxLoad = 12 }
nws0_16.nurse -- n0
hospital.nurseWorkingShifts -- nws0_16
nws0_17: NurseWorkingShift { day = 20 shift = 1 maxLoad = 12 }
nws0_17.nurse -- n0
hospital.nurseWorkingShifts -- nws0_17
nws1_0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 15 }
nws1_0.nurse -- n1
hospital.nurseWorkingShifts -- nws1_0
nws1_1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 5 }
nws1_1.nurse -- n1
hospital.nurseWorkingShifts -- nws1_1
nws1_2: NurseWorkingShift { day = 2 shift = 1 maxLoad = 5 }
nws1_2.nurse -- n1
hospital.nurseWorkingShifts -- nws1_2
nws1_3: NurseWorkingShift { day = 3 shift = 2 maxLoad = 5 }
nws1_3.nurse -- n1
hospital.nurseWorkingShifts -- nws1_3
nws1_4: NurseWorkingShift { day = 5 shift = 1 maxLoad = 15 }
nws1_4.nurse -- n1
hospital.nurseWorkingShifts -- nws1_4
nws1_5: NurseWorkingShift { day = 6 shift = 1 maxLoad = 15 }
nws1_5.nurse -- n1
hospital.nurseWorkingShifts -- nws1_5
nws1_6: NurseWorkingShift { day = 7 shift = 2 maxLoad = 5 }
nws1_6.nurse -- n1
hospital.nurseWorkingShifts -- nws1_6
nws1_7: NurseWorkingShift { day = 8 shift = 2 maxLoad = 15 }
nws1_7.nurse -- n1
hospital.nurseWorkingShifts -- nws1_7
nws1_8: NurseWorkingShift { day = 9 shift = 2 maxLoad = 15 }
nws1_8.nurse -- n1
hospital.nurseWorkingShifts -- nws1_8
nws1_9: NurseWorkingShift { day = 10 shift = 2 maxLoad = 15 }
nws1_9.nurse -- n1
hospital.nurseWorkingShifts -- nws1_9
nws1_10: NurseWorkingShift { day = 11 shift = 2 maxLoad = 15 }
nws1_10.nurse -- n1
hospital.nurseWorkingShifts -- nws1_10
nws1_11: NurseWorkingShift { day = 12 shift = 2 maxLoad = 15 }
nws1_11.nurse -- n1
hospital.nurseWorkingShifts -- nws1_11
nws1_12: NurseWorkingShift { day = 13 shift = 2 maxLoad = 15 }
nws1_12.nurse -- n1
hospital.nurseWorkingShifts -- nws1_12
nws1_13: NurseWorkingShift { day = 15 shift = 0 maxLoad = 5 }
nws1_13.nurse -- n1
hospital.nurseWorkingShifts -- nws1_13
nws1_14: NurseWorkingShift { day = 16 shift = 0 maxLoad = 15 }
nws1_14.nurse -- n1
hospital.nurseWorkingShifts -- nws1_14
nws1_15: NurseWorkingShift { day = 17 shift = 0 maxLoad = 5 }
nws1_15.nurse -- n1
hospital.nurseWorkingShifts -- nws1_15
nws1_16: NurseWorkingShift { day = 18 shift = 0 maxLoad = 15 }
nws1_16.nurse -- n1
hospital.nurseWorkingShifts -- nws1_16
nws1_17: NurseWorkingShift { day = 19 shift = 1 maxLoad = 15 }
nws1_17.nurse -- n1
hospital.nurseWorkingShifts -- nws1_17
nws2_0: NurseWorkingShift { day = 0 shift = 2 maxLoad = 10 }
nws2_0.nurse -- n2
hospital.nurseWorkingShifts -- nws2_0
nws2_1: NurseWorkingShift { day = 2 shift = 0 maxLoad = 10 }
nws2_1.nurse -- n2
hospital.nurseWorkingShifts -- nws2_1
nws2_2: NurseWorkingShift { day = 3 shift = 2 maxLoad = 10 }
nws2_2.nurse -- n2
hospital.nurseWorkingShifts -- nws2_2
nws2_3: NurseWorkingShift { day = 4 shift = 2 maxLoad = 10 }
nws2_3.nurse -- n2
hospital.nurseWorkingShifts -- nws2_3
nws2_4: NurseWorkingShift { day = 5 shift = 2 maxLoad = 10 }
nws2_4.nurse -- n2
hospital.nurseWorkingShifts -- nws2_4
nws2_5: NurseWorkingShift { day = 7 shift = 0 maxLoad = 10 }
nws2_5.nurse -- n2
hospital.nurseWorkingShifts -- nws2_5
nws2_6: NurseWorkingShift { day = 8 shift = 1 maxLoad = 10 }
nws2_6.nurse -- n2
hospital.nurseWorkingShifts -- nws2_6
nws2_7: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
nws2_7.nurse -- n2
hospital.nurseWorkingShifts -- nws2_7
nws2_8: NurseWorkingShift { day = 10 shift = 1 maxLoad = 10 }
nws2_8.nurse -- n2
hospital.nurseWorkingShifts -- nws2_8
nws2_9: NurseWorkingShift { day = 11 shift = 1 maxLoad = 10 }
nws2_9.nurse -- n2
hospital.nurseWorkingShifts -- nws2_9
nws2_10: NurseWorkingShift { day = 12 shift = 1 maxLoad = 10 }
nws2_10.nurse -- n2
hospital.nurseWorkingShifts -- nws2_10
nws2_11: NurseWorkingShift { day = 13 shift = 1 maxLoad = 10 }
nws2_11.nurse -- n2
hospital.nurseWorkingShifts -- nws2_11
nws2_12: NurseWorkingShift { day = 14 shift = 2 maxLoad = 10 }
nws2_12.nurse -- n2
hospital.nurseWorkingShifts -- nws2_12
nws2_13: NurseWorkingShift { day = 15 shift = 2 maxLoad = 10 }
nws2_13.nurse -- n2
hospital.nurseWorkingShifts -- nws2_13
nws2_14: NurseWorkingShift { day = 17 shift = 0 maxLoad = 10 }
nws2_14.nurse -- n2
hospital.nurseWorkingShifts -- nws2_14
nws2_15: NurseWorkingShift { day = 18 shift = 1 maxLoad = 10 }
nws2_15.nurse -- n2
hospital.nurseWorkingShifts -- nws2_15
nws2_16: NurseWorkingShift { day = 20 shift = 0 maxLoad = 10 }
nws2_16.nurse -- n2
hospital.nurseWorkingShifts -- nws2_16
nws3_0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 15 }
nws3_0.nurse -- n3
hospital.nurseWorkingShifts -- nws3_0
nws3_1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 15 }
nws3_1.nurse -- n3
hospital.nurseWorkingShifts -- nws3_1
nws3_2: NurseWorkingShift { day = 2 shift = 1 maxLoad = 15 }
nws3_2.nurse -- n3
hospital.nurseWorkingShifts -- nws3_2
nws3_3: NurseWorkingShift { day = 3 shift = 1 maxLoad = 15 }
nws3_3.nurse -- n3
hospital.nurseWorkingShifts -- nws3_3
nws3_4: NurseWorkingShift { day = 4 shift = 2 maxLoad = 15 }
nws3_4.nurse -- n3
hospital.nurseWorkingShifts -- nws3_4
nws3_5: NurseWorkingShift { day = 5 shift = 2 maxLoad = 5 }
nws3_5.nurse -- n3
hospital.nurseWorkingShifts -- nws3_5
nws3_6: NurseWorkingShift { day = 6 shift = 2 maxLoad = 5 }
nws3_6.nurse -- n3
hospital.nurseWorkingShifts -- nws3_6
nws3_7: NurseWorkingShift { day = 7 shift = 2 maxLoad = 5 }
nws3_7.nurse -- n3
hospital.nurseWorkingShifts -- nws3_7
nws3_8: NurseWorkingShift { day = 8 shift = 2 maxLoad = 15 }
nws3_8.nurse -- n3
hospital.nurseWorkingShifts -- nws3_8
nws3_9: NurseWorkingShift { day = 10 shift = 0 maxLoad = 15 }
nws3_9.nurse -- n3
hospital.nurseWorkingShifts -- nws3_9
nws3_10: NurseWorkingShift { day = 11 shift = 0 maxLoad = 5 }
nws3_10.nurse -- n3
hospital.nurseWorkingShifts -- nws3_10
nws3_11: NurseWorkingShift { day = 12 shift = 0 maxLoad = 15 }
nws3_11.nurse -- n3
hospital.nurseWorkingShifts -- nws3_11
nws3_12: NurseWorkingShift { day = 13 shift = 1 maxLoad = 5 }
nws3_12.nurse -- n3
hospital.nurseWorkingShifts -- nws3_12
nws3_13: NurseWorkingShift { day = 15 shift = 0 maxLoad = 5 }
nws3_13.nurse -- n3
hospital.nurseWorkingShifts -- nws3_13
nws3_14: NurseWorkingShift { day = 16 shift = 1 maxLoad = 15 }
nws3_14.nurse -- n3
hospital.nurseWorkingShifts -- nws3_14
nws3_15: NurseWorkingShift { day = 17 shift = 1 maxLoad = 5 }
nws3_15.nurse -- n3
hospital.nurseWorkingShifts -- nws3_15
nws3_16: NurseWorkingShift { day = 18 shift = 1 maxLoad = 5 }
nws3_16.nurse -- n3
hospital.nurseWorkingShifts -- nws3_16
nws3_17: NurseWorkingShift { day = 19 shift = 1 maxLoad = 15 }
nws3_17.nurse -- n3
hospital.nurseWorkingShifts -- nws3_17
nws3_18: NurseWorkingShift { day = 20 shift = 1 maxLoad = 15 }
nws3_18.nurse -- n3
hospital.nurseWorkingShifts -- nws3_18
nws4_0: NurseWorkingShift { day = 0 shift = 2 maxLoad = 15 }
nws4_0.nurse -- n4
hospital.nurseWorkingShifts -- nws4_0
nws4_1: NurseWorkingShift { day = 1 shift = 2 maxLoad = 15 }
nws4_1.nurse -- n4
hospital.nurseWorkingShifts -- nws4_1
nws4_2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 15 }
nws4_2.nurse -- n4
hospital.nurseWorkingShifts -- nws4_2
nws4_3: NurseWorkingShift { day = 3 shift = 2 maxLoad = 15 }
nws4_3.nurse -- n4
hospital.nurseWorkingShifts -- nws4_3
nws4_4: NurseWorkingShift { day = 5 shift = 0 maxLoad = 5 }
nws4_4.nurse -- n4
hospital.nurseWorkingShifts -- nws4_4
nws4_5: NurseWorkingShift { day = 6 shift = 0 maxLoad = 15 }
nws4_5.nurse -- n4
hospital.nurseWorkingShifts -- nws4_5
nws4_6: NurseWorkingShift { day = 7 shift = 1 maxLoad = 15 }
nws4_6.nurse -- n4
hospital.nurseWorkingShifts -- nws4_6
nws4_7: NurseWorkingShift { day = 9 shift = 0 maxLoad = 5 }
nws4_7.nurse -- n4
hospital.nurseWorkingShifts -- nws4_7
nws4_8: NurseWorkingShift { day = 10 shift = 0 maxLoad = 5 }
nws4_8.nurse -- n4
hospital.nurseWorkingShifts -- nws4_8
nws4_9: NurseWorkingShift { day = 11 shift = 1 maxLoad = 15 }
nws4_9.nurse -- n4
hospital.nurseWorkingShifts -- nws4_9
nws4_10: NurseWorkingShift { day = 12 shift = 1 maxLoad = 15 }
nws4_10.nurse -- n4
hospital.nurseWorkingShifts -- nws4_10
nws4_11: NurseWorkingShift { day = 13 shift = 2 maxLoad = 15 }
nws4_11.nurse -- n4
hospital.nurseWorkingShifts -- nws4_11
nws4_12: NurseWorkingShift { day = 15 shift = 0 maxLoad = 15 }
nws4_12.nurse -- n4
hospital.nurseWorkingShifts -- nws4_12
nws4_13: NurseWorkingShift { day = 16 shift = 0 maxLoad = 15 }
nws4_13.nurse -- n4
hospital.nurseWorkingShifts -- nws4_13
nws4_14: NurseWorkingShift { day = 17 shift = 0 maxLoad = 15 }
nws4_14.nurse -- n4
hospital.nurseWorkingShifts -- nws4_14
nws4_15: NurseWorkingShift { day = 18 shift = 0 maxLoad = 15 }
nws4_15.nurse -- n4
hospital.nurseWorkingShifts -- nws4_15
nws4_16: NurseWorkingShift { day = 19 shift = 0 maxLoad = 15 }
nws4_16.nurse -- n4
hospital.nurseWorkingShifts -- nws4_16
nws5_0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 15 }
nws5_0.nurse -- n5
hospital.nurseWorkingShifts -- nws5_0
nws5_1: NurseWorkingShift { day = 2 shift = 0 maxLoad = 15 }
nws5_1.nurse -- n5
hospital.nurseWorkingShifts -- nws5_1
nws5_2: NurseWorkingShift { day = 3 shift = 1 maxLoad = 15 }
nws5_2.nurse -- n5
hospital.nurseWorkingShifts -- nws5_2
nws5_3: NurseWorkingShift { day = 5 shift = 0 maxLoad = 5 }
nws5_3.nurse -- n5
hospital.nurseWorkingShifts -- nws5_3
nws5_4: NurseWorkingShift { day = 6 shift = 1 maxLoad = 15 }
nws5_4.nurse -- n5
hospital.nurseWorkingShifts -- nws5_4
nws5_5: NurseWorkingShift { day = 7 shift = 1 maxLoad = 15 }
nws5_5.nurse -- n5
hospital.nurseWorkingShifts -- nws5_5
nws5_6: NurseWorkingShift { day = 8 shift = 1 maxLoad = 5 }
nws5_6.nurse -- n5
hospital.nurseWorkingShifts -- nws5_6
nws5_7: NurseWorkingShift { day = 9 shift = 1 maxLoad = 15 }
nws5_7.nurse -- n5
hospital.nurseWorkingShifts -- nws5_7
nws5_8: NurseWorkingShift { day = 10 shift = 2 maxLoad = 5 }
nws5_8.nurse -- n5
hospital.nurseWorkingShifts -- nws5_8
nws5_9: NurseWorkingShift { day = 12 shift = 2 maxLoad = 15 }
nws5_9.nurse -- n5
hospital.nurseWorkingShifts -- nws5_9
nws5_10: NurseWorkingShift { day = 14 shift = 0 maxLoad = 15 }
nws5_10.nurse -- n5
hospital.nurseWorkingShifts -- nws5_10
nws5_11: NurseWorkingShift { day = 15 shift = 1 maxLoad = 15 }
nws5_11.nurse -- n5
hospital.nurseWorkingShifts -- nws5_11
nws5_12: NurseWorkingShift { day = 16 shift = 1 maxLoad = 15 }
nws5_12.nurse -- n5
hospital.nurseWorkingShifts -- nws5_12
nws5_13: NurseWorkingShift { day = 17 shift = 1 maxLoad = 15 }
nws5_13.nurse -- n5
hospital.nurseWorkingShifts -- nws5_13
nws5_14: NurseWorkingShift { day = 19 shift = 0 maxLoad = 15 }
nws5_14.nurse -- n5
hospital.nurseWorkingShifts -- nws5_14
nws5_15: NurseWorkingShift { day = 20 shift = 1 maxLoad = 5 }
nws5_15.nurse -- n5
hospital.nurseWorkingShifts -- nws5_15
nws6_0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 10 }
nws6_0.nurse -- n6
hospital.nurseWorkingShifts -- nws6_0
nws6_1: NurseWorkingShift { day = 1 shift = 2 maxLoad = 10 }
nws6_1.nurse -- n6
hospital.nurseWorkingShifts -- nws6_1
nws6_2: NurseWorkingShift { day = 3 shift = 0 maxLoad = 10 }
nws6_2.nurse -- n6
hospital.nurseWorkingShifts -- nws6_2
nws6_3: NurseWorkingShift { day = 4 shift = 0 maxLoad = 10 }
nws6_3.nurse -- n6
hospital.nurseWorkingShifts -- nws6_3
nws6_4: NurseWorkingShift { day = 5 shift = 0 maxLoad = 10 }
nws6_4.nurse -- n6
hospital.nurseWorkingShifts -- nws6_4
nws6_5: NurseWorkingShift { day = 6 shift = 0 maxLoad = 10 }
nws6_5.nurse -- n6
hospital.nurseWorkingShifts -- nws6_5
nws6_6: NurseWorkingShift { day = 7 shift = 0 maxLoad = 10 }
nws6_6.nurse -- n6
hospital.nurseWorkingShifts -- nws6_6
nws6_7: NurseWorkingShift { day = 8 shift = 0 maxLoad = 10 }
nws6_7.nurse -- n6
hospital.nurseWorkingShifts -- nws6_7
nws6_8: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
nws6_8.nurse -- n6
hospital.nurseWorkingShifts -- nws6_8
nws6_9: NurseWorkingShift { day = 10 shift = 2 maxLoad = 10 }
nws6_9.nurse -- n6
hospital.nurseWorkingShifts -- nws6_9
nws6_10: NurseWorkingShift { day = 11 shift = 2 maxLoad = 10 }
nws6_10.nurse -- n6
hospital.nurseWorkingShifts -- nws6_10
nws6_11: NurseWorkingShift { day = 13 shift = 0 maxLoad = 10 }
nws6_11.nurse -- n6
hospital.nurseWorkingShifts -- nws6_11
nws6_12: NurseWorkingShift { day = 14 shift = 0 maxLoad = 10 }
nws6_12.nurse -- n6
hospital.nurseWorkingShifts -- nws6_12
nws6_13: NurseWorkingShift { day = 16 shift = 2 maxLoad = 10 }
nws6_13.nurse -- n6
hospital.nurseWorkingShifts -- nws6_13
nws6_14: NurseWorkingShift { day = 17 shift = 2 maxLoad = 10 }
nws6_14.nurse -- n6
hospital.nurseWorkingShifts -- nws6_14
nws6_15: NurseWorkingShift { day = 19 shift = 2 maxLoad = 10 }
nws6_15.nurse -- n6
hospital.nurseWorkingShifts -- nws6_15
nws6_16: NurseWorkingShift { day = 20 shift = 2 maxLoad = 10 }
nws6_16.nurse -- n6
hospital.nurseWorkingShifts -- nws6_16
nws7_0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 15 }
nws7_0.nurse -- n7
hospital.nurseWorkingShifts -- nws7_0
nws7_1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 15 }
nws7_1.nurse -- n7
hospital.nurseWorkingShifts -- nws7_1
nws7_2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 15 }
nws7_2.nurse -- n7
hospital.nurseWorkingShifts -- nws7_2
nws7_3: NurseWorkingShift { day = 3 shift = 0 maxLoad = 15 }
nws7_3.nurse -- n7
hospital.nurseWorkingShifts -- nws7_3
nws7_4: NurseWorkingShift { day = 4 shift = 0 maxLoad = 15 }
nws7_4.nurse -- n7
hospital.nurseWorkingShifts -- nws7_4
nws7_5: NurseWorkingShift { day = 5 shift = 1 maxLoad = 15 }
nws7_5.nurse -- n7
hospital.nurseWorkingShifts -- nws7_5
nws7_6: NurseWorkingShift { day = 6 shift = 2 maxLoad = 5 }
nws7_6.nurse -- n7
hospital.nurseWorkingShifts -- nws7_6
nws7_7: NurseWorkingShift { day = 7 shift = 2 maxLoad = 15 }
nws7_7.nurse -- n7
hospital.nurseWorkingShifts -- nws7_7
nws7_8: NurseWorkingShift { day = 9 shift = 0 maxLoad = 15 }
nws7_8.nurse -- n7
hospital.nurseWorkingShifts -- nws7_8
nws7_9: NurseWorkingShift { day = 10 shift = 1 maxLoad = 15 }
nws7_9.nurse -- n7
hospital.nurseWorkingShifts -- nws7_9
nws7_10: NurseWorkingShift { day = 12 shift = 0 maxLoad = 15 }
nws7_10.nurse -- n7
hospital.nurseWorkingShifts -- nws7_10
nws7_11: NurseWorkingShift { day = 14 shift = 1 maxLoad = 15 }
nws7_11.nurse -- n7
hospital.nurseWorkingShifts -- nws7_11
nws7_12: NurseWorkingShift { day = 15 shift = 1 maxLoad = 15 }
nws7_12.nurse -- n7
hospital.nurseWorkingShifts -- nws7_12
nws7_13: NurseWorkingShift { day = 16 shift = 2 maxLoad = 15 }
nws7_13.nurse -- n7
hospital.nurseWorkingShifts -- nws7_13
nws7_14: NurseWorkingShift { day = 18 shift = 1 maxLoad = 15 }
nws7_14.nurse -- n7
hospital.nurseWorkingShifts -- nws7_14
nws7_15: NurseWorkingShift { day = 19 shift = 2 maxLoad = 15 }
nws7_15.nurse -- n7
hospital.nurseWorkingShifts -- nws7_15
nws7_16: NurseWorkingShift { day = 20 shift = 2 maxLoad = 15 }
nws7_16.nurse -- n7
hospital.nurseWorkingShifts -- nws7_16
nws8_0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 15 }
nws8_0.nurse -- n8
hospital.nurseWorkingShifts -- nws8_0
nws8_1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 5 }
nws8_1.nurse -- n8
hospital.nurseWorkingShifts -- nws8_1
nws8_2: NurseWorkingShift { day = 4 shift = 0 maxLoad = 15 }
nws8_2.nurse -- n8
hospital.nurseWorkingShifts -- nws8_2
nws8_3: NurseWorkingShift { day = 5 shift = 0 maxLoad = 15 }
nws8_3.nurse -- n8
hospital.nurseWorkingShifts -- nws8_3
nws8_4: NurseWorkingShift { day = 6 shift = 0 maxLoad = 15 }
nws8_4.nurse -- n8
hospital.nurseWorkingShifts -- nws8_4
nws8_5: NurseWorkingShift { day = 7 shift = 0 maxLoad = 5 }
nws8_5.nurse -- n8
hospital.nurseWorkingShifts -- nws8_5
nws8_6: NurseWorkingShift { day = 8 shift = 0 maxLoad = 15 }
nws8_6.nurse -- n8
hospital.nurseWorkingShifts -- nws8_6
nws8_7: NurseWorkingShift { day = 9 shift = 2 maxLoad = 15 }
nws8_7.nurse -- n8
hospital.nurseWorkingShifts -- nws8_7
nws8_8: NurseWorkingShift { day = 11 shift = 0 maxLoad = 15 }
nws8_8.nurse -- n8
hospital.nurseWorkingShifts -- nws8_8
nws8_9: NurseWorkingShift { day = 12 shift = 1 maxLoad = 15 }
nws8_9.nurse -- n8
hospital.nurseWorkingShifts -- nws8_9
nws8_10: NurseWorkingShift { day = 13 shift = 1 maxLoad = 15 }
nws8_10.nurse -- n8
hospital.nurseWorkingShifts -- nws8_10
nws8_11: NurseWorkingShift { day = 14 shift = 1 maxLoad = 15 }
nws8_11.nurse -- n8
hospital.nurseWorkingShifts -- nws8_11
nws8_12: NurseWorkingShift { day = 15 shift = 2 maxLoad = 5 }
nws8_12.nurse -- n8
hospital.nurseWorkingShifts -- nws8_12
nws8_13: NurseWorkingShift { day = 17 shift = 2 maxLoad = 15 }
nws8_13.nurse -- n8
hospital.nurseWorkingShifts -- nws8_13
nws8_14: NurseWorkingShift { day = 20 shift = 0 maxLoad = 15 }
nws8_14.nurse -- n8
hospital.nurseWorkingShifts -- nws8_14
nws9_0: NurseWorkingShift { day = 3 shift = 0 maxLoad = 10 }
nws9_0.nurse -- n9
hospital.nurseWorkingShifts -- nws9_0
nws9_1: NurseWorkingShift { day = 6 shift = 2 maxLoad = 10 }
nws9_1.nurse -- n9
hospital.nurseWorkingShifts -- nws9_1
nws9_2: NurseWorkingShift { day = 8 shift = 0 maxLoad = 10 }
nws9_2.nurse -- n9
hospital.nurseWorkingShifts -- nws9_2
nws9_3: NurseWorkingShift { day = 10 shift = 1 maxLoad = 10 }
nws9_3.nurse -- n9
hospital.nurseWorkingShifts -- nws9_3
nws9_4: NurseWorkingShift { day = 11 shift = 1 maxLoad = 10 }
nws9_4.nurse -- n9
hospital.nurseWorkingShifts -- nws9_4
nws9_5: NurseWorkingShift { day = 13 shift = 0 maxLoad = 10 }
nws9_5.nurse -- n9
hospital.nurseWorkingShifts -- nws9_5
nws9_6: NurseWorkingShift { day = 14 shift = 2 maxLoad = 10 }
nws9_6.nurse -- n9
hospital.nurseWorkingShifts -- nws9_6
nws9_7: NurseWorkingShift { day = 15 shift = 2 maxLoad = 10 }
nws9_7.nurse -- n9
hospital.nurseWorkingShifts -- nws9_7
nws9_8: NurseWorkingShift { day = 18 shift = 2 maxLoad = 10 }
nws9_8.nurse -- n9
hospital.nurseWorkingShifts -- nws9_8
nws9_9: NurseWorkingShift { day = 20 shift = 0 maxLoad = 10 }
nws9_9.nurse -- n9
hospital.nurseWorkingShifts -- nws9_9
nws10_0: NurseWorkingShift { day = 2 shift = 1 maxLoad = 15 }
nws10_0.nurse -- n10
hospital.nurseWorkingShifts -- nws10_0
nws10_1: NurseWorkingShift { day = 4 shift = 1 maxLoad = 15 }
nws10_1.nurse -- n10
hospital.nurseWorkingShifts -- nws10_1
nws10_2: NurseWorkingShift { day = 6 shift = 2 maxLoad = 15 }
nws10_2.nurse -- n10
hospital.nurseWorkingShifts -- nws10_2
nws10_3: NurseWorkingShift { day = 8 shift = 1 maxLoad = 15 }
nws10_3.nurse -- n10
hospital.nurseWorkingShifts -- nws10_3
nws10_4: NurseWorkingShift { day = 14 shift = 2 maxLoad = 15 }
nws10_4.nurse -- n10
hospital.nurseWorkingShifts -- nws10_4
nws10_5: NurseWorkingShift { day = 18 shift = 2 maxLoad = 15 }
nws10_5.nurse -- n10
hospital.nurseWorkingShifts -- nws10_5
nws11_0: NurseWorkingShift { day = 4 shift = 1 maxLoad = 10 }
nws11_0.nurse -- n11
hospital.nurseWorkingShifts -- nws11_0
nws11_1: NurseWorkingShift { day = 7 shift = 0 maxLoad = 10 }
nws11_1.nurse -- n11
hospital.nurseWorkingShifts -- nws11_1
nws12_0: NurseWorkingShift { day = 4 shift = 1 maxLoad = 15 }
nws12_0.nurse -- n12
hospital.nurseWorkingShifts -- nws12_0
