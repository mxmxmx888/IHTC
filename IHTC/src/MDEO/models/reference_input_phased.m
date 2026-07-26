using "../ihtc.mm"

// Derived from references/ihtc_input_reference.json.
// A/B gender values map to M/F because the current metamodel has two gender literals.
// Day 14 is a derived post-horizon bed-stay day required by mandatory patient p5.

hospital: HospitalInstance { decisionHorizon = 15 }
state: OptimisationState { phase = OptimisationPhase.PATIENTS }
hospital.optimisationState -- state

s0: Surgeon { id = 0 }
hospital.surgeons -- s0
r0: Room { id = 0 maxCapacity = 2 }
hospital.rooms -- r0
r1: Room { id = 1 maxCapacity = 2 }
hospital.rooms -- r1
ot0: OperatingTheatre { id = 0 }
hospital.operatingtheatres -- ot0
ot1: OperatingTheatre { id = 1 }
hospital.operatingtheatres -- ot1
n0: Nurse { id = 0 skillLevel = 0 }
hospital.nurses -- n0
n1: Nurse { id = 1 skillLevel = 0 }
hospital.nurses -- n1
n2: Nurse { id = 2 skillLevel = 1 }
hospital.nurses -- n2
n3: Nurse { id = 3 skillLevel = 1 }
hospital.nurses -- n3
n4: Nurse { id = 4 skillLevel = 0 }
hospital.nurses -- n4
n5: Nurse { id = 5 skillLevel = 1 }
hospital.nurses -- n5
n6: Nurse { id = 6 skillLevel = 0 }
hospital.nurses -- n6

p0: Patient { id = 0 isMandatory = true isScheduled = true dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 5 }
p0.assignedSurgeonId -- s0
hospital.patients -- p0
d0_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d0_0_0.patient -- p0
p0.dayDemand -- d0_0_0
d0_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d0_0_1.patient -- p0
p0.dayDemand -- d0_0_1
d0_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d0_0_2.patient -- p0
p0.dayDemand -- d0_0_2
d0_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d0_1_0.patient -- p0
p0.dayDemand -- d0_1_0
d0_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d0_1_1.patient -- p0
p0.dayDemand -- d0_1_1
d0_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d0_1_2.patient -- p0
p0.dayDemand -- d0_1_2
d0_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d0_2_0.patient -- p0
p0.dayDemand -- d0_2_0
d0_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d0_2_1.patient -- p0
p0.dayDemand -- d0_2_1
d0_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d0_2_2.patient -- p0
p0.dayDemand -- d0_2_2
d0_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d0_3_0.patient -- p0
p0.dayDemand -- d0_3_0
d0_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d0_3_1.patient -- p0
p0.dayDemand -- d0_3_1
d0_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d0_3_2.patient -- p0
p0.dayDemand -- d0_3_2
d0_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d0_4_0.patient -- p0
p0.dayDemand -- d0_4_0
d0_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d0_4_1.patient -- p0
p0.dayDemand -- d0_4_1
d0_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d0_4_2.patient -- p0
p0.dayDemand -- d0_4_2
p1: Patient { id = 1 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 5 }
p1.assignedSurgeonId -- s0
hospital.patients -- p1
d1_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d1_0_0.patient -- p1
p1.dayDemand -- d1_0_0
d1_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d1_0_1.patient -- p1
p1.dayDemand -- d1_0_1
d1_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d1_0_2.patient -- p1
p1.dayDemand -- d1_0_2
d1_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d1_1_0.patient -- p1
p1.dayDemand -- d1_1_0
d1_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d1_1_1.patient -- p1
p1.dayDemand -- d1_1_1
d1_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d1_1_2.patient -- p1
p1.dayDemand -- d1_1_2
d1_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
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
d1_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d1_3_1.patient -- p1
p1.dayDemand -- d1_3_1
d1_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d1_3_2.patient -- p1
p1.dayDemand -- d1_3_2
d1_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d1_4_0.patient -- p1
p1.dayDemand -- d1_4_0
d1_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d1_4_1.patient -- p1
p1.dayDemand -- d1_4_1
d1_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d1_4_2.patient -- p1
p1.dayDemand -- d1_4_2
p2: Patient { id = 2 isMandatory = true isScheduled = true dueDate = 13 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 6 }
p2.assignedSurgeonId -- s0
hospital.patients -- p2
d2_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d2_0_0.patient -- p2
p2.dayDemand -- d2_0_0
d2_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d2_0_1.patient -- p2
p2.dayDemand -- d2_0_1
d2_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d2_0_2.patient -- p2
p2.dayDemand -- d2_0_2
d2_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d2_1_0.patient -- p2
p2.dayDemand -- d2_1_0
d2_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_1_1.patient -- p2
p2.dayDemand -- d2_1_1
d2_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d2_1_2.patient -- p2
p2.dayDemand -- d2_1_2
d2_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2_2_0.patient -- p2
p2.dayDemand -- d2_2_0
d2_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_2_1.patient -- p2
p2.dayDemand -- d2_2_1
d2_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d2_2_2.patient -- p2
p2.dayDemand -- d2_2_2
d2_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d2_3_0.patient -- p2
p2.dayDemand -- d2_3_0
d2_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d2_3_1.patient -- p2
p2.dayDemand -- d2_3_1
d2_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d2_3_2.patient -- p2
p2.dayDemand -- d2_3_2
d2_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d2_4_0.patient -- p2
p2.dayDemand -- d2_4_0
d2_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d2_4_1.patient -- p2
p2.dayDemand -- d2_4_1
d2_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d2_4_2.patient -- p2
p2.dayDemand -- d2_4_2
d2_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d2_5_0.patient -- p2
p2.dayDemand -- d2_5_0
d2_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d2_5_1.patient -- p2
p2.dayDemand -- d2_5_1
d2_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d2_5_2.patient -- p2
p2.dayDemand -- d2_5_2
p3: Patient { id = 3 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 5 }
p3.assignedSurgeonId -- s0
hospital.patients -- p3
d3_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d3_0_0.patient -- p3
p3.dayDemand -- d3_0_0
d3_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d3_0_1.patient -- p3
p3.dayDemand -- d3_0_1
d3_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d3_0_2.patient -- p3
p3.dayDemand -- d3_0_2
d3_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d3_1_0.patient -- p3
p3.dayDemand -- d3_1_0
d3_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d3_1_1.patient -- p3
p3.dayDemand -- d3_1_1
d3_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d3_1_2.patient -- p3
p3.dayDemand -- d3_1_2
d3_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d3_2_0.patient -- p3
p3.dayDemand -- d3_2_0
d3_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d3_2_1.patient -- p3
p3.dayDemand -- d3_2_1
d3_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d3_2_2.patient -- p3
p3.dayDemand -- d3_2_2
d3_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d3_3_0.patient -- p3
p3.dayDemand -- d3_3_0
d3_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d3_3_1.patient -- p3
p3.dayDemand -- d3_3_1
d3_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d3_3_2.patient -- p3
p3.dayDemand -- d3_3_2
d3_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d3_4_0.patient -- p3
p3.dayDemand -- d3_4_0
d3_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d3_4_1.patient -- p3
p3.dayDemand -- d3_4_1
d3_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d3_4_2.patient -- p3
p3.dayDemand -- d3_4_2
p4: Patient { id = 4 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 2 }
p4.assignedSurgeonId -- s0
hospital.patients -- p4
d4_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d4_0_0.patient -- p4
p4.dayDemand -- d4_0_0
d4_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d4_0_1.patient -- p4
p4.dayDemand -- d4_0_1
d4_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d4_0_2.patient -- p4
p4.dayDemand -- d4_0_2
d4_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d4_1_0.patient -- p4
p4.dayDemand -- d4_1_0
d4_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d4_1_1.patient -- p4
p4.dayDemand -- d4_1_1
d4_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d4_1_2.patient -- p4
p4.dayDemand -- d4_1_2
p5: Patient { id = 5 isMandatory = true isScheduled = true dueDate = 13 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 4 }
p5.assignedSurgeonId -- s0
hospital.patients -- p5
d5_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d5_0_0.patient -- p5
p5.dayDemand -- d5_0_0
d5_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d5_0_1.patient -- p5
p5.dayDemand -- d5_0_1
d5_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d5_0_2.patient -- p5
p5.dayDemand -- d5_0_2
d5_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d5_1_0.patient -- p5
p5.dayDemand -- d5_1_0
d5_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d5_1_1.patient -- p5
p5.dayDemand -- d5_1_1
d5_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d5_1_2.patient -- p5
p5.dayDemand -- d5_1_2
d5_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d5_2_0.patient -- p5
p5.dayDemand -- d5_2_0
d5_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d5_2_1.patient -- p5
p5.dayDemand -- d5_2_1
d5_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d5_2_2.patient -- p5
p5.dayDemand -- d5_2_2
d5_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d5_3_0.patient -- p5
p5.dayDemand -- d5_3_0
d5_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d5_3_1.patient -- p5
p5.dayDemand -- d5_3_1
d5_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d5_3_2.patient -- p5
p5.dayDemand -- d5_3_2
p6: Patient { id = 6 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p6.assignedSurgeonId -- s0
hospital.patients -- p6
d6_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d6_0_0.patient -- p6
p6.dayDemand -- d6_0_0
d6_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d6_0_1.patient -- p6
p6.dayDemand -- d6_0_1
d6_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d6_0_2.patient -- p6
p6.dayDemand -- d6_0_2
d6_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d6_1_0.patient -- p6
p6.dayDemand -- d6_1_0
d6_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d6_1_1.patient -- p6
p6.dayDemand -- d6_1_1
d6_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d6_1_2.patient -- p6
p6.dayDemand -- d6_1_2
d6_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d6_2_0.patient -- p6
p6.dayDemand -- d6_2_0
d6_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d6_2_1.patient -- p6
p6.dayDemand -- d6_2_1
d6_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d6_2_2.patient -- p6
p6.dayDemand -- d6_2_2
d6_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d6_3_0.patient -- p6
p6.dayDemand -- d6_3_0
d6_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d6_3_1.patient -- p6
p6.dayDemand -- d6_3_1
d6_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d6_3_2.patient -- p6
p6.dayDemand -- d6_3_2
p7: Patient { id = 7 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.M stayLength = 7 }
p7.assignedSurgeonId -- s0
hospital.patients -- p7
d7_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d7_0_0.patient -- p7
p7.dayDemand -- d7_0_0
d7_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d7_0_1.patient -- p7
p7.dayDemand -- d7_0_1
d7_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d7_0_2.patient -- p7
p7.dayDemand -- d7_0_2
d7_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d7_1_0.patient -- p7
p7.dayDemand -- d7_1_0
d7_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d7_1_1.patient -- p7
p7.dayDemand -- d7_1_1
d7_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d7_1_2.patient -- p7
p7.dayDemand -- d7_1_2
d7_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d7_2_0.patient -- p7
p7.dayDemand -- d7_2_0
d7_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d7_2_1.patient -- p7
p7.dayDemand -- d7_2_1
d7_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d7_2_2.patient -- p7
p7.dayDemand -- d7_2_2
d7_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d7_3_0.patient -- p7
p7.dayDemand -- d7_3_0
d7_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d7_3_1.patient -- p7
p7.dayDemand -- d7_3_1
d7_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d7_3_2.patient -- p7
p7.dayDemand -- d7_3_2
d7_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d7_4_0.patient -- p7
p7.dayDemand -- d7_4_0
d7_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d7_4_1.patient -- p7
p7.dayDemand -- d7_4_1
d7_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d7_4_2.patient -- p7
p7.dayDemand -- d7_4_2
d7_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d7_5_0.patient -- p7
p7.dayDemand -- d7_5_0
d7_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d7_5_1.patient -- p7
p7.dayDemand -- d7_5_1
d7_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d7_5_2.patient -- p7
p7.dayDemand -- d7_5_2
d7_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d7_6_0.patient -- p7
p7.dayDemand -- d7_6_0
d7_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d7_6_1.patient -- p7
p7.dayDemand -- d7_6_1
d7_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d7_6_2.patient -- p7
p7.dayDemand -- d7_6_2
p8: Patient { id = 8 isMandatory = true isScheduled = true dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 7 }
p8.assignedSurgeonId -- s0
hospital.patients -- p8
d8_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d8_0_0.patient -- p8
p8.dayDemand -- d8_0_0
d8_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d8_0_1.patient -- p8
p8.dayDemand -- d8_0_1
d8_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d8_0_2.patient -- p8
p8.dayDemand -- d8_0_2
d8_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 1 }
d8_1_0.patient -- p8
p8.dayDemand -- d8_1_0
d8_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
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
d8_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
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
d8_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 3 skillLevelRequired = 1 }
d8_4_1.patient -- p8
p8.dayDemand -- d8_4_1
d8_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d8_4_2.patient -- p8
p8.dayDemand -- d8_4_2
d8_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d8_5_0.patient -- p8
p8.dayDemand -- d8_5_0
d8_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 1 skillLevelRequired = 0 }
d8_5_1.patient -- p8
p8.dayDemand -- d8_5_1
d8_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d8_5_2.patient -- p8
p8.dayDemand -- d8_5_2
d8_6_0: PatientDayDemand { relativeDay = 6 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d8_6_0.patient -- p8
p8.dayDemand -- d8_6_0
d8_6_1: PatientDayDemand { relativeDay = 6 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d8_6_1.patient -- p8
p8.dayDemand -- d8_6_1
d8_6_2: PatientDayDemand { relativeDay = 6 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d8_6_2.patient -- p8
p8.dayDemand -- d8_6_2
p9: Patient { id = 9 isMandatory = true isScheduled = true dueDate = 11 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.M stayLength = 6 }
p9.assignedSurgeonId -- s0
hospital.patients -- p9
d9_0_0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 0 }
d9_0_0.patient -- p9
p9.dayDemand -- d9_0_0
d9_0_1: PatientDayDemand { relativeDay = 0 shift = 1 workloadProduced = 3 skillLevelRequired = 0 }
d9_0_1.patient -- p9
p9.dayDemand -- d9_0_1
d9_0_2: PatientDayDemand { relativeDay = 0 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d9_0_2.patient -- p9
p9.dayDemand -- d9_0_2
d9_1_0: PatientDayDemand { relativeDay = 1 shift = 0 workloadProduced = 3 skillLevelRequired = 0 }
d9_1_0.patient -- p9
p9.dayDemand -- d9_1_0
d9_1_1: PatientDayDemand { relativeDay = 1 shift = 1 workloadProduced = 2 skillLevelRequired = 0 }
d9_1_1.patient -- p9
p9.dayDemand -- d9_1_1
d9_1_2: PatientDayDemand { relativeDay = 1 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_1_2.patient -- p9
p9.dayDemand -- d9_1_2
d9_2_0: PatientDayDemand { relativeDay = 2 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d9_2_0.patient -- p9
p9.dayDemand -- d9_2_0
d9_2_1: PatientDayDemand { relativeDay = 2 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d9_2_1.patient -- p9
p9.dayDemand -- d9_2_1
d9_2_2: PatientDayDemand { relativeDay = 2 shift = 2 workloadProduced = 2 skillLevelRequired = 0 }
d9_2_2.patient -- p9
p9.dayDemand -- d9_2_2
d9_3_0: PatientDayDemand { relativeDay = 3 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d9_3_0.patient -- p9
p9.dayDemand -- d9_3_0
d9_3_1: PatientDayDemand { relativeDay = 3 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d9_3_1.patient -- p9
p9.dayDemand -- d9_3_1
d9_3_2: PatientDayDemand { relativeDay = 3 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_3_2.patient -- p9
p9.dayDemand -- d9_3_2
d9_4_0: PatientDayDemand { relativeDay = 4 shift = 0 workloadProduced = 1 skillLevelRequired = 0 }
d9_4_0.patient -- p9
p9.dayDemand -- d9_4_0
d9_4_1: PatientDayDemand { relativeDay = 4 shift = 1 workloadProduced = 1 skillLevelRequired = 1 }
d9_4_1.patient -- p9
p9.dayDemand -- d9_4_1
d9_4_2: PatientDayDemand { relativeDay = 4 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_4_2.patient -- p9
p9.dayDemand -- d9_4_2
d9_5_0: PatientDayDemand { relativeDay = 5 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
d9_5_0.patient -- p9
p9.dayDemand -- d9_5_0
d9_5_1: PatientDayDemand { relativeDay = 5 shift = 1 workloadProduced = 2 skillLevelRequired = 1 }
d9_5_1.patient -- p9
p9.dayDemand -- d9_5_1
d9_5_2: PatientDayDemand { relativeDay = 5 shift = 2 workloadProduced = 1 skillLevelRequired = 0 }
d9_5_2.patient -- p9
p9.dayDemand -- d9_5_2

a0: Admission { admissionDay = 0 }
a0.patientId -- p0
a0.roomId -- r1
a0.operationTheatreId -- ot0
hospital.admissions -- a0
a2: Admission { admissionDay = 4 }
a2.patientId -- p2
a2.roomId -- r0
a2.operationTheatreId -- ot0
hospital.admissions -- a2
a5: Admission { admissionDay = 11 }
a5.patientId -- p5
a5.roomId -- r0
a5.operationTheatreId -- ot1
hospital.admissions -- a5
a8: Admission { admissionDay = 0 }
a8.patientId -- p8
a8.roomId -- r1
a8.operationTheatreId -- ot1
hospital.admissions -- a8
a9: Admission { admissionDay = 7 }
a9.patientId -- p9
a9.roomId -- r1
a9.operationTheatreId -- ot0
hospital.admissions -- a9

sa0d0: SurgeonAvailability { day = 0 maxOperatingTime = 480 }
sa0d0.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d0
sa0d1: SurgeonAvailability { day = 1 maxOperatingTime = 0 }
sa0d1.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d1
sa0d2: SurgeonAvailability { day = 2 maxOperatingTime = 0 }
sa0d2.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d2
sa0d3: SurgeonAvailability { day = 3 maxOperatingTime = 0 }
sa0d3.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d3
sa0d4: SurgeonAvailability { day = 4 maxOperatingTime = 480 }
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
sa0d8: SurgeonAvailability { day = 8 maxOperatingTime = 0 }
sa0d8.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d8
sa0d9: SurgeonAvailability { day = 9 maxOperatingTime = 0 }
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
sa0d13: SurgeonAvailability { day = 13 maxOperatingTime = 480 }
sa0d13.surgeonId -- s0
hospital.surgeonAvailabilities -- sa0d13
ota0d0: OperatingTheatreAvailability { day = 0 maxCapacity = 480 }
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
ota0d4: OperatingTheatreAvailability { day = 4 maxCapacity = 600 }
ota0d4.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d4
ota0d5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
ota0d5.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d5
ota0d6: OperatingTheatreAvailability { day = 6 maxCapacity = 480 }
ota0d6.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d6
ota0d7: OperatingTheatreAvailability { day = 7 maxCapacity = 720 }
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
ota0d11: OperatingTheatreAvailability { day = 11 maxCapacity = 0 }
ota0d11.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d11
ota0d12: OperatingTheatreAvailability { day = 12 maxCapacity = 480 }
ota0d12.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d12
ota0d13: OperatingTheatreAvailability { day = 13 maxCapacity = 720 }
ota0d13.operatingTheatreId -- ot0
hospital.operatingTheatreAvailabilities -- ota0d13
ota1d0: OperatingTheatreAvailability { day = 0 maxCapacity = 720 }
ota1d0.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d0
ota1d1: OperatingTheatreAvailability { day = 1 maxCapacity = 600 }
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
ota1d5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
ota1d5.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d5
ota1d6: OperatingTheatreAvailability { day = 6 maxCapacity = 0 }
ota1d6.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d6
ota1d7: OperatingTheatreAvailability { day = 7 maxCapacity = 0 }
ota1d7.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d7
ota1d8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
ota1d8.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d8
ota1d9: OperatingTheatreAvailability { day = 9 maxCapacity = 720 }
ota1d9.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d9
ota1d10: OperatingTheatreAvailability { day = 10 maxCapacity = 480 }
ota1d10.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d10
ota1d11: OperatingTheatreAvailability { day = 11 maxCapacity = 600 }
ota1d11.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d11
ota1d12: OperatingTheatreAvailability { day = 12 maxCapacity = 0 }
ota1d12.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d12
ota1d13: OperatingTheatreAvailability { day = 13 maxCapacity = 600 }
ota1d13.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1d13

ra0d0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d0.roomId -- r0
hospital.roomAvailabilities -- ra0d0
ra0d1: RoomAvailability { day = 1 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d1.roomId -- r0
hospital.roomAvailabilities -- ra0d1
ra0d2: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d2.roomId -- r0
hospital.roomAvailabilities -- ra0d2
ra0d3: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d3.roomId -- r0
hospital.roomAvailabilities -- ra0d3
ra0d4: RoomAvailability { day = 4 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d4.roomId -- r0
hospital.roomAvailabilities -- ra0d4
ra0d5: RoomAvailability { day = 5 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d5.roomId -- r0
hospital.roomAvailabilities -- ra0d5
ra0d6: RoomAvailability { day = 6 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d6.roomId -- r0
hospital.roomAvailabilities -- ra0d6
ra0d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d7.roomId -- r0
hospital.roomAvailabilities -- ra0d7
ra0d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d8.roomId -- r0
hospital.roomAvailabilities -- ra0d8
ra0d9: RoomAvailability { day = 9 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d9.roomId -- r0
hospital.roomAvailabilities -- ra0d9
ra0d10: RoomAvailability { day = 10 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
ra0d10.roomId -- r0
hospital.roomAvailabilities -- ra0d10
ra0d11: RoomAvailability { day = 11 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d11.roomId -- r0
hospital.roomAvailabilities -- ra0d11
ra0d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d12.roomId -- r0
hospital.roomAvailabilities -- ra0d12
ra0d13: RoomAvailability { day = 13 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d13.roomId -- r0
hospital.roomAvailabilities -- ra0d13
ra0d14: RoomAvailability { day = 14 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
ra0d14.roomId -- r0
hospital.roomAvailabilities -- ra0d14
ra1d0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d0.roomId -- r1
hospital.roomAvailabilities -- ra1d0
ra1d1: RoomAvailability { day = 1 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d1.roomId -- r1
hospital.roomAvailabilities -- ra1d1
ra1d2: RoomAvailability { day = 2 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d2.roomId -- r1
hospital.roomAvailabilities -- ra1d2
ra1d3: RoomAvailability { day = 3 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d3.roomId -- r1
hospital.roomAvailabilities -- ra1d3
ra1d4: RoomAvailability { day = 4 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d4.roomId -- r1
hospital.roomAvailabilities -- ra1d4
ra1d5: RoomAvailability { day = 5 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d5.roomId -- r1
hospital.roomAvailabilities -- ra1d5
ra1d6: RoomAvailability { day = 6 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d6.roomId -- r1
hospital.roomAvailabilities -- ra1d6
ra1d7: RoomAvailability { day = 7 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d7.roomId -- r1
hospital.roomAvailabilities -- ra1d7
ra1d8: RoomAvailability { day = 8 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d8.roomId -- r1
hospital.roomAvailabilities -- ra1d8
ra1d9: RoomAvailability { day = 9 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d9.roomId -- r1
hospital.roomAvailabilities -- ra1d9
ra1d10: RoomAvailability { day = 10 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d10.roomId -- r1
hospital.roomAvailabilities -- ra1d10
ra1d11: RoomAvailability { day = 11 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d11.roomId -- r1
hospital.roomAvailabilities -- ra1d11
ra1d12: RoomAvailability { day = 12 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 1 }
ra1d12.roomId -- r1
hospital.roomAvailabilities -- ra1d12
ra1d13: RoomAvailability { day = 13 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d13.roomId -- r1
hospital.roomAvailabilities -- ra1d13
ra1d14: RoomAvailability { day = 14 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra1d14.roomId -- r1
hospital.roomAvailabilities -- ra1d14

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

nws0d0s1: NurseWorkingShift { day = 0 shift = 1 maxLoad = 10 }
nws0d0s1.nurse -- n0
hospital.nurseWorkingShifts -- nws0d0s1
nws0d1s2: NurseWorkingShift { day = 1 shift = 2 maxLoad = 10 }
nws0d1s2.nurse -- n0
hospital.nurseWorkingShifts -- nws0d1s2
nws0d2s2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 10 }
nws0d2s2.nurse -- n0
hospital.nurseWorkingShifts -- nws0d2s2
nws0d3s2: NurseWorkingShift { day = 3 shift = 2 maxLoad = 10 }
nws0d3s2.nurse -- n0
hospital.nurseWorkingShifts -- nws0d3s2
nws0d5s0: NurseWorkingShift { day = 5 shift = 0 maxLoad = 10 }
nws0d5s0.nurse -- n0
hospital.nurseWorkingShifts -- nws0d5s0
nws0d6s2: NurseWorkingShift { day = 6 shift = 2 maxLoad = 10 }
nws0d6s2.nurse -- n0
hospital.nurseWorkingShifts -- nws0d6s2
nws0d7s2: NurseWorkingShift { day = 7 shift = 2 maxLoad = 10 }
nws0d7s2.nurse -- n0
hospital.nurseWorkingShifts -- nws0d7s2
nws0d9s2: NurseWorkingShift { day = 9 shift = 2 maxLoad = 10 }
nws0d9s2.nurse -- n0
hospital.nurseWorkingShifts -- nws0d9s2
nws0d10s2: NurseWorkingShift { day = 10 shift = 2 maxLoad = 10 }
nws0d10s2.nurse -- n0
hospital.nurseWorkingShifts -- nws0d10s2
nws0d11s2: NurseWorkingShift { day = 11 shift = 2 maxLoad = 10 }
nws0d11s2.nurse -- n0
hospital.nurseWorkingShifts -- nws0d11s2
nws0d13s0: NurseWorkingShift { day = 13 shift = 0 maxLoad = 10 }
nws0d13s0.nurse -- n0
hospital.nurseWorkingShifts -- nws0d13s0
nws1d0s1: NurseWorkingShift { day = 0 shift = 1 maxLoad = 10 }
nws1d0s1.nurse -- n1
hospital.nurseWorkingShifts -- nws1d0s1
nws1d1s1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 10 }
nws1d1s1.nurse -- n1
hospital.nurseWorkingShifts -- nws1d1s1
nws1d3s1: NurseWorkingShift { day = 3 shift = 1 maxLoad = 10 }
nws1d3s1.nurse -- n1
hospital.nurseWorkingShifts -- nws1d3s1
nws1d5s0: NurseWorkingShift { day = 5 shift = 0 maxLoad = 10 }
nws1d5s0.nurse -- n1
hospital.nurseWorkingShifts -- nws1d5s0
nws1d6s0: NurseWorkingShift { day = 6 shift = 0 maxLoad = 10 }
nws1d6s0.nurse -- n1
hospital.nurseWorkingShifts -- nws1d6s0
nws1d7s1: NurseWorkingShift { day = 7 shift = 1 maxLoad = 10 }
nws1d7s1.nurse -- n1
hospital.nurseWorkingShifts -- nws1d7s1
nws1d9s1: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
nws1d9s1.nurse -- n1
hospital.nurseWorkingShifts -- nws1d9s1
nws1d11s0: NurseWorkingShift { day = 11 shift = 0 maxLoad = 10 }
nws1d11s0.nurse -- n1
hospital.nurseWorkingShifts -- nws1d11s0
nws1d12s2: NurseWorkingShift { day = 12 shift = 2 maxLoad = 10 }
nws1d12s2.nurse -- n1
hospital.nurseWorkingShifts -- nws1d12s2
nws2d0s0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 12 }
nws2d0s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d0s0
nws2d1s0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 12 }
nws2d1s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d1s0
nws2d2s0: NurseWorkingShift { day = 2 shift = 0 maxLoad = 12 }
nws2d2s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d2s0
nws2d3s0: NurseWorkingShift { day = 3 shift = 0 maxLoad = 12 }
nws2d3s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d3s0
nws2d4s1: NurseWorkingShift { day = 4 shift = 1 maxLoad = 12 }
nws2d4s1.nurse -- n2
hospital.nurseWorkingShifts -- nws2d4s1
nws2d5s1: NurseWorkingShift { day = 5 shift = 1 maxLoad = 12 }
nws2d5s1.nurse -- n2
hospital.nurseWorkingShifts -- nws2d5s1
nws2d7s0: NurseWorkingShift { day = 7 shift = 0 maxLoad = 12 }
nws2d7s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d7s0
nws2d8s0: NurseWorkingShift { day = 8 shift = 0 maxLoad = 12 }
nws2d8s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d8s0
nws2d9s0: NurseWorkingShift { day = 9 shift = 0 maxLoad = 12 }
nws2d9s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d9s0
nws2d10s0: NurseWorkingShift { day = 10 shift = 0 maxLoad = 12 }
nws2d10s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d10s0
nws2d11s1: NurseWorkingShift { day = 11 shift = 1 maxLoad = 12 }
nws2d11s1.nurse -- n2
hospital.nurseWorkingShifts -- nws2d11s1
nws2d13s0: NurseWorkingShift { day = 13 shift = 0 maxLoad = 12 }
nws2d13s0.nurse -- n2
hospital.nurseWorkingShifts -- nws2d13s0
nws3d1s1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 12 }
nws3d1s1.nurse -- n3
hospital.nurseWorkingShifts -- nws3d1s1
nws3d2s1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 12 }
nws3d2s1.nurse -- n3
hospital.nurseWorkingShifts -- nws3d2s1
nws3d4s0: NurseWorkingShift { day = 4 shift = 0 maxLoad = 12 }
nws3d4s0.nurse -- n3
hospital.nurseWorkingShifts -- nws3d4s0
nws3d5s2: NurseWorkingShift { day = 5 shift = 2 maxLoad = 12 }
nws3d5s2.nurse -- n3
hospital.nurseWorkingShifts -- nws3d5s2
nws3d7s1: NurseWorkingShift { day = 7 shift = 1 maxLoad = 12 }
nws3d7s1.nurse -- n3
hospital.nurseWorkingShifts -- nws3d7s1
nws3d8s2: NurseWorkingShift { day = 8 shift = 2 maxLoad = 12 }
nws3d8s2.nurse -- n3
hospital.nurseWorkingShifts -- nws3d8s2
nws3d10s1: NurseWorkingShift { day = 10 shift = 1 maxLoad = 12 }
nws3d10s1.nurse -- n3
hospital.nurseWorkingShifts -- nws3d10s1
nws3d12s0: NurseWorkingShift { day = 12 shift = 0 maxLoad = 12 }
nws3d12s0.nurse -- n3
hospital.nurseWorkingShifts -- nws3d12s0
nws3d13s2: NurseWorkingShift { day = 13 shift = 2 maxLoad = 12 }
nws3d13s2.nurse -- n3
hospital.nurseWorkingShifts -- nws3d13s2
nws4d0s2: NurseWorkingShift { day = 0 shift = 2 maxLoad = 10 }
nws4d0s2.nurse -- n4
hospital.nurseWorkingShifts -- nws4d0s2
nws4d3s1: NurseWorkingShift { day = 3 shift = 1 maxLoad = 10 }
nws4d3s1.nurse -- n4
hospital.nurseWorkingShifts -- nws4d3s1
nws4d4s2: NurseWorkingShift { day = 4 shift = 2 maxLoad = 10 }
nws4d4s2.nurse -- n4
hospital.nurseWorkingShifts -- nws4d4s2
nws4d6s0: NurseWorkingShift { day = 6 shift = 0 maxLoad = 10 }
nws4d6s0.nurse -- n4
hospital.nurseWorkingShifts -- nws4d6s0
nws4d8s1: NurseWorkingShift { day = 8 shift = 1 maxLoad = 10 }
nws4d8s1.nurse -- n4
hospital.nurseWorkingShifts -- nws4d8s1
nws4d11s0: NurseWorkingShift { day = 11 shift = 0 maxLoad = 10 }
nws4d11s0.nurse -- n4
hospital.nurseWorkingShifts -- nws4d11s0
nws4d12s1: NurseWorkingShift { day = 12 shift = 1 maxLoad = 10 }
nws4d12s1.nurse -- n4
hospital.nurseWorkingShifts -- nws4d12s1
nws4d13s1: NurseWorkingShift { day = 13 shift = 1 maxLoad = 10 }
nws4d13s1.nurse -- n4
hospital.nurseWorkingShifts -- nws4d13s1
nws5d6s1: NurseWorkingShift { day = 6 shift = 1 maxLoad = 12 }
nws5d6s1.nurse -- n5
hospital.nurseWorkingShifts -- nws5d6s1
nws5d8s1: NurseWorkingShift { day = 8 shift = 1 maxLoad = 12 }
nws5d8s1.nurse -- n5
hospital.nurseWorkingShifts -- nws5d8s1
nws5d12s1: NurseWorkingShift { day = 12 shift = 1 maxLoad = 12 }
nws5d12s1.nurse -- n5
hospital.nurseWorkingShifts -- nws5d12s1
nws5d13s1: NurseWorkingShift { day = 13 shift = 1 maxLoad = 12 }
nws5d13s1.nurse -- n5
hospital.nurseWorkingShifts -- nws5d13s1
nws6d9s1: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
nws6d9s1.nurse -- n6
hospital.nurseWorkingShifts -- nws6d9s1
