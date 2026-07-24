using "./ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 14 }

s0: Surgeon { id = 0 }
hospital.surgeons -- s0

t0: OperatingTheatre { id = 0 }
hospital.operatingtheatres -- t0
t1: OperatingTheatre { id = 1 }
hospital.operatingtheatres -- t1

r0: Room { id = 0 maxCapacity = 2 }
hospital.rooms -- r0
r1: Room { id = 1 maxCapacity = 2 }
hospital.rooms -- r1

p0: Patient { id = 0 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 5 }
p0.assignedSurgeonId -- s0
hospital.patients -- p0
p0d0: PatientDayDemand { relativeDay = 0 workloadProduced = 2 skillLevelRequired = 0 }
p0d0.patient -- p0
p0.dayDemand -- p0d0
p0d1: PatientDayDemand { relativeDay = 1 workloadProduced = 2 skillLevelRequired = 0 }
p0d1.patient -- p0
p0.dayDemand -- p0d1
p0d2: PatientDayDemand { relativeDay = 2 workloadProduced = 1 skillLevelRequired = 0 }
p0d2.patient -- p0
p0.dayDemand -- p0d2
p0d3: PatientDayDemand { relativeDay = 3 workloadProduced = 2 skillLevelRequired = 0 }
p0d3.patient -- p0
p0.dayDemand -- p0d3
p0d4: PatientDayDemand { relativeDay = 4 workloadProduced = 3 skillLevelRequired = 0 }
p0d4.patient -- p0
p0.dayDemand -- p0d4
p0d5: PatientDayDemand { relativeDay = 5 workloadProduced = 2 skillLevelRequired = 0 }
p0d5.patient -- p0
p0.dayDemand -- p0d5
p0d6: PatientDayDemand { relativeDay = 6 workloadProduced = 3 skillLevelRequired = 1 }
p0d6.patient -- p0
p0.dayDemand -- p0d6
p0d7: PatientDayDemand { relativeDay = 7 workloadProduced = 2 skillLevelRequired = 0 }
p0d7.patient -- p0
p0.dayDemand -- p0d7
p0d8: PatientDayDemand { relativeDay = 8 workloadProduced = 1 skillLevelRequired = 0 }
p0d8.patient -- p0
p0.dayDemand -- p0d8
p0d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 1 }
p0d9.patient -- p0
p0.dayDemand -- p0d9
p0d10: PatientDayDemand { relativeDay = 10 workloadProduced = 1 skillLevelRequired = 0 }
p0d10.patient -- p0
p0.dayDemand -- p0d10
p0d11: PatientDayDemand { relativeDay = 11 workloadProduced = 2 skillLevelRequired = 0 }
p0d11.patient -- p0
p0.dayDemand -- p0d11
p0d12: PatientDayDemand { relativeDay = 12 workloadProduced = 2 skillLevelRequired = 0 }
p0d12.patient -- p0
p0.dayDemand -- p0d12
p0d13: PatientDayDemand { relativeDay = 13 workloadProduced = 3 skillLevelRequired = 1 }
p0d13.patient -- p0
p0.dayDemand -- p0d13
p0d14: PatientDayDemand { relativeDay = 14 workloadProduced = 1 skillLevelRequired = 0 }
p0d14.patient -- p0
p0.dayDemand -- p0d14

p1: Patient { id = 1 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 5 }
p1.assignedSurgeonId -- s0
hospital.patients -- p1
p1d0: PatientDayDemand { relativeDay = 0 workloadProduced = 2 skillLevelRequired = 0 }
p1d0.patient -- p1
p1.dayDemand -- p1d0
p1d1: PatientDayDemand { relativeDay = 1 workloadProduced = 2 skillLevelRequired = 1 }
p1d1.patient -- p1
p1.dayDemand -- p1d1
p1d2: PatientDayDemand { relativeDay = 2 workloadProduced = 1 skillLevelRequired = 0 }
p1d2.patient -- p1
p1.dayDemand -- p1d2
p1d3: PatientDayDemand { relativeDay = 3 workloadProduced = 3 skillLevelRequired = 0 }
p1d3.patient -- p1
p1.dayDemand -- p1d3
p1d4: PatientDayDemand { relativeDay = 4 workloadProduced = 2 skillLevelRequired = 0 }
p1d4.patient -- p1
p1.dayDemand -- p1d4
p1d5: PatientDayDemand { relativeDay = 5 workloadProduced = 2 skillLevelRequired = 0 }
p1d5.patient -- p1
p1.dayDemand -- p1d5
p1d6: PatientDayDemand { relativeDay = 6 workloadProduced = 3 skillLevelRequired = 0 }
p1d6.patient -- p1
p1.dayDemand -- p1d6
p1d7: PatientDayDemand { relativeDay = 7 workloadProduced = 3 skillLevelRequired = 1 }
p1d7.patient -- p1
p1.dayDemand -- p1d7
p1d8: PatientDayDemand { relativeDay = 8 workloadProduced = 2 skillLevelRequired = 0 }
p1d8.patient -- p1
p1.dayDemand -- p1d8
p1d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 0 }
p1d9.patient -- p1
p1.dayDemand -- p1d9
p1d10: PatientDayDemand { relativeDay = 10 workloadProduced = 1 skillLevelRequired = 0 }
p1d10.patient -- p1
p1.dayDemand -- p1d10
p1d11: PatientDayDemand { relativeDay = 11 workloadProduced = 2 skillLevelRequired = 0 }
p1d11.patient -- p1
p1.dayDemand -- p1d11
p1d12: PatientDayDemand { relativeDay = 12 workloadProduced = 1 skillLevelRequired = 0 }
p1d12.patient -- p1
p1.dayDemand -- p1d12
p1d13: PatientDayDemand { relativeDay = 13 workloadProduced = 2 skillLevelRequired = 0 }
p1d13.patient -- p1
p1.dayDemand -- p1d13
p1d14: PatientDayDemand { relativeDay = 14 workloadProduced = 1 skillLevelRequired = 0 }
p1d14.patient -- p1
p1.dayDemand -- p1d14

p2: Patient { id = 2 isMandatory = true isScheduled = false dueDate = 13 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 6 }
p2.assignedSurgeonId -- s0
hospital.patients -- p2
p2d0: PatientDayDemand { relativeDay = 0 workloadProduced = 2 skillLevelRequired = 0 }
p2d0.patient -- p2
p2.dayDemand -- p2d0
p2d1: PatientDayDemand { relativeDay = 1 workloadProduced = 3 skillLevelRequired = 1 }
p2d1.patient -- p2
p2.dayDemand -- p2d1
p2d2: PatientDayDemand { relativeDay = 2 workloadProduced = 1 skillLevelRequired = 0 }
p2d2.patient -- p2
p2.dayDemand -- p2d2
p2d3: PatientDayDemand { relativeDay = 3 workloadProduced = 2 skillLevelRequired = 0 }
p2d3.patient -- p2
p2.dayDemand -- p2d3
p2d4: PatientDayDemand { relativeDay = 4 workloadProduced = 2 skillLevelRequired = 0 }
p2d4.patient -- p2
p2.dayDemand -- p2d4
p2d5: PatientDayDemand { relativeDay = 5 workloadProduced = 1 skillLevelRequired = 0 }
p2d5.patient -- p2
p2.dayDemand -- p2d5
p2d6: PatientDayDemand { relativeDay = 6 workloadProduced = 2 skillLevelRequired = 1 }
p2d6.patient -- p2
p2.dayDemand -- p2d6
p2d7: PatientDayDemand { relativeDay = 7 workloadProduced = 2 skillLevelRequired = 0 }
p2d7.patient -- p2
p2.dayDemand -- p2d7
p2d8: PatientDayDemand { relativeDay = 8 workloadProduced = 2 skillLevelRequired = 0 }
p2d8.patient -- p2
p2.dayDemand -- p2d8
p2d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 0 }
p2d9.patient -- p2
p2.dayDemand -- p2d9
p2d10: PatientDayDemand { relativeDay = 10 workloadProduced = 2 skillLevelRequired = 1 }
p2d10.patient -- p2
p2.dayDemand -- p2d10
p2d11: PatientDayDemand { relativeDay = 11 workloadProduced = 2 skillLevelRequired = 0 }
p2d11.patient -- p2
p2.dayDemand -- p2d11
p2d12: PatientDayDemand { relativeDay = 12 workloadProduced = 3 skillLevelRequired = 1 }
p2d12.patient -- p2
p2.dayDemand -- p2d12
p2d13: PatientDayDemand { relativeDay = 13 workloadProduced = 2 skillLevelRequired = 0 }
p2d13.patient -- p2
p2.dayDemand -- p2d13
p2d14: PatientDayDemand { relativeDay = 14 workloadProduced = 2 skillLevelRequired = 0 }
p2d14.patient -- p2
p2.dayDemand -- p2d14
p2d15: PatientDayDemand { relativeDay = 15 workloadProduced = 2 skillLevelRequired = 1 }
p2d15.patient -- p2
p2.dayDemand -- p2d15
p2d16: PatientDayDemand { relativeDay = 16 workloadProduced = 3 skillLevelRequired = 0 }
p2d16.patient -- p2
p2.dayDemand -- p2d16
p2d17: PatientDayDemand { relativeDay = 17 workloadProduced = 1 skillLevelRequired = 0 }
p2d17.patient -- p2
p2.dayDemand -- p2d17

p3: Patient { id = 3 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 5 }
p3.assignedSurgeonId -- s0
hospital.patients -- p3
p3d0: PatientDayDemand { relativeDay = 0 workloadProduced = 2 skillLevelRequired = 1 }
p3d0.patient -- p3
p3.dayDemand -- p3d0
p3d1: PatientDayDemand { relativeDay = 1 workloadProduced = 3 skillLevelRequired = 1 }
p3d1.patient -- p3
p3.dayDemand -- p3d1
p3d2: PatientDayDemand { relativeDay = 2 workloadProduced = 2 skillLevelRequired = 0 }
p3d2.patient -- p3
p3.dayDemand -- p3d2
p3d3: PatientDayDemand { relativeDay = 3 workloadProduced = 3 skillLevelRequired = 1 }
p3d3.patient -- p3
p3.dayDemand -- p3d3
p3d4: PatientDayDemand { relativeDay = 4 workloadProduced = 3 skillLevelRequired = 1 }
p3d4.patient -- p3
p3.dayDemand -- p3d4
p3d5: PatientDayDemand { relativeDay = 5 workloadProduced = 2 skillLevelRequired = 0 }
p3d5.patient -- p3
p3.dayDemand -- p3d5
p3d6: PatientDayDemand { relativeDay = 6 workloadProduced = 3 skillLevelRequired = 1 }
p3d6.patient -- p3
p3.dayDemand -- p3d6
p3d7: PatientDayDemand { relativeDay = 7 workloadProduced = 3 skillLevelRequired = 1 }
p3d7.patient -- p3
p3.dayDemand -- p3d7
p3d8: PatientDayDemand { relativeDay = 8 workloadProduced = 2 skillLevelRequired = 0 }
p3d8.patient -- p3
p3.dayDemand -- p3d8
p3d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 1 }
p3d9.patient -- p3
p3.dayDemand -- p3d9
p3d10: PatientDayDemand { relativeDay = 10 workloadProduced = 3 skillLevelRequired = 0 }
p3d10.patient -- p3
p3.dayDemand -- p3d10
p3d11: PatientDayDemand { relativeDay = 11 workloadProduced = 2 skillLevelRequired = 0 }
p3d11.patient -- p3
p3.dayDemand -- p3d11
p3d12: PatientDayDemand { relativeDay = 12 workloadProduced = 3 skillLevelRequired = 0 }
p3d12.patient -- p3
p3.dayDemand -- p3d12
p3d13: PatientDayDemand { relativeDay = 13 workloadProduced = 1 skillLevelRequired = 0 }
p3d13.patient -- p3
p3.dayDemand -- p3d13
p3d14: PatientDayDemand { relativeDay = 14 workloadProduced = 2 skillLevelRequired = 0 }
p3d14.patient -- p3
p3.dayDemand -- p3d14

p4: Patient { id = 4 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 2 }
p4.assignedSurgeonId -- s0
hospital.patients -- p4
p4d0: PatientDayDemand { relativeDay = 0 workloadProduced = 3 skillLevelRequired = 1 }
p4d0.patient -- p4
p4.dayDemand -- p4d0
p4d1: PatientDayDemand { relativeDay = 1 workloadProduced = 1 skillLevelRequired = 0 }
p4d1.patient -- p4
p4.dayDemand -- p4d1
p4d2: PatientDayDemand { relativeDay = 2 workloadProduced = 2 skillLevelRequired = 0 }
p4d2.patient -- p4
p4.dayDemand -- p4d2
p4d3: PatientDayDemand { relativeDay = 3 workloadProduced = 3 skillLevelRequired = 0 }
p4d3.patient -- p4
p4.dayDemand -- p4d3
p4d4: PatientDayDemand { relativeDay = 4 workloadProduced = 2 skillLevelRequired = 1 }
p4d4.patient -- p4
p4.dayDemand -- p4d4
p4d5: PatientDayDemand { relativeDay = 5 workloadProduced = 2 skillLevelRequired = 0 }
p4d5.patient -- p4
p4.dayDemand -- p4d5

p5: Patient { id = 5 isMandatory = true isScheduled = false dueDate = 13 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p5.assignedSurgeonId -- s0
hospital.patients -- p5
p5d0: PatientDayDemand { relativeDay = 0 workloadProduced = 3 skillLevelRequired = 1 }
p5d0.patient -- p5
p5.dayDemand -- p5d0
p5d1: PatientDayDemand { relativeDay = 1 workloadProduced = 3 skillLevelRequired = 0 }
p5d1.patient -- p5
p5.dayDemand -- p5d1
p5d2: PatientDayDemand { relativeDay = 2 workloadProduced = 1 skillLevelRequired = 0 }
p5d2.patient -- p5
p5.dayDemand -- p5d2
p5d3: PatientDayDemand { relativeDay = 3 workloadProduced = 2 skillLevelRequired = 0 }
p5d3.patient -- p5
p5.dayDemand -- p5d3
p5d4: PatientDayDemand { relativeDay = 4 workloadProduced = 2 skillLevelRequired = 0 }
p5d4.patient -- p5
p5.dayDemand -- p5d4
p5d5: PatientDayDemand { relativeDay = 5 workloadProduced = 2 skillLevelRequired = 0 }
p5d5.patient -- p5
p5.dayDemand -- p5d5
p5d6: PatientDayDemand { relativeDay = 6 workloadProduced = 3 skillLevelRequired = 0 }
p5d6.patient -- p5
p5.dayDemand -- p5d6
p5d7: PatientDayDemand { relativeDay = 7 workloadProduced = 1 skillLevelRequired = 1 }
p5d7.patient -- p5
p5.dayDemand -- p5d7
p5d8: PatientDayDemand { relativeDay = 8 workloadProduced = 2 skillLevelRequired = 0 }
p5d8.patient -- p5
p5.dayDemand -- p5d8
p5d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 1 }
p5d9.patient -- p5
p5.dayDemand -- p5d9
p5d10: PatientDayDemand { relativeDay = 10 workloadProduced = 3 skillLevelRequired = 0 }
p5d10.patient -- p5
p5.dayDemand -- p5d10
p5d11: PatientDayDemand { relativeDay = 11 workloadProduced = 1 skillLevelRequired = 0 }
p5d11.patient -- p5
p5.dayDemand -- p5d11

p6: Patient { id = 6 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 4 }
p6.assignedSurgeonId -- s0
hospital.patients -- p6
p6d0: PatientDayDemand { relativeDay = 0 workloadProduced = 3 skillLevelRequired = 0 }
p6d0.patient -- p6
p6.dayDemand -- p6d0
p6d1: PatientDayDemand { relativeDay = 1 workloadProduced = 3 skillLevelRequired = 1 }
p6d1.patient -- p6
p6.dayDemand -- p6d1
p6d2: PatientDayDemand { relativeDay = 2 workloadProduced = 1 skillLevelRequired = 0 }
p6d2.patient -- p6
p6.dayDemand -- p6d2
p6d3: PatientDayDemand { relativeDay = 3 workloadProduced = 2 skillLevelRequired = 1 }
p6d3.patient -- p6
p6.dayDemand -- p6d3
p6d4: PatientDayDemand { relativeDay = 4 workloadProduced = 2 skillLevelRequired = 1 }
p6d4.patient -- p6
p6.dayDemand -- p6d4
p6d5: PatientDayDemand { relativeDay = 5 workloadProduced = 2 skillLevelRequired = 0 }
p6d5.patient -- p6
p6.dayDemand -- p6d5
p6d6: PatientDayDemand { relativeDay = 6 workloadProduced = 2 skillLevelRequired = 0 }
p6d6.patient -- p6
p6.dayDemand -- p6d6
p6d7: PatientDayDemand { relativeDay = 7 workloadProduced = 1 skillLevelRequired = 0 }
p6d7.patient -- p6
p6.dayDemand -- p6d7
p6d8: PatientDayDemand { relativeDay = 8 workloadProduced = 2 skillLevelRequired = 0 }
p6d8.patient -- p6
p6.dayDemand -- p6d8
p6d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 1 }
p6d9.patient -- p6
p6.dayDemand -- p6d9
p6d10: PatientDayDemand { relativeDay = 10 workloadProduced = 1 skillLevelRequired = 0 }
p6d10.patient -- p6
p6.dayDemand -- p6d10
p6d11: PatientDayDemand { relativeDay = 11 workloadProduced = 2 skillLevelRequired = 0 }
p6d11.patient -- p6
p6.dayDemand -- p6d11

p7: Patient { id = 7 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.F stayLength = 7 }
p7.assignedSurgeonId -- s0
hospital.patients -- p7
p7d0: PatientDayDemand { relativeDay = 0 workloadProduced = 3 skillLevelRequired = 0 }
p7d0.patient -- p7
p7.dayDemand -- p7d0
p7d1: PatientDayDemand { relativeDay = 1 workloadProduced = 3 skillLevelRequired = 1 }
p7d1.patient -- p7
p7.dayDemand -- p7d1
p7d2: PatientDayDemand { relativeDay = 2 workloadProduced = 1 skillLevelRequired = 0 }
p7d2.patient -- p7
p7.dayDemand -- p7d2
p7d3: PatientDayDemand { relativeDay = 3 workloadProduced = 2 skillLevelRequired = 0 }
p7d3.patient -- p7
p7.dayDemand -- p7d3
p7d4: PatientDayDemand { relativeDay = 4 workloadProduced = 3 skillLevelRequired = 0 }
p7d4.patient -- p7
p7.dayDemand -- p7d4
p7d5: PatientDayDemand { relativeDay = 5 workloadProduced = 2 skillLevelRequired = 0 }
p7d5.patient -- p7
p7.dayDemand -- p7d5
p7d6: PatientDayDemand { relativeDay = 6 workloadProduced = 2 skillLevelRequired = 1 }
p7d6.patient -- p7
p7.dayDemand -- p7d6
p7d7: PatientDayDemand { relativeDay = 7 workloadProduced = 2 skillLevelRequired = 0 }
p7d7.patient -- p7
p7.dayDemand -- p7d7
p7d8: PatientDayDemand { relativeDay = 8 workloadProduced = 1 skillLevelRequired = 0 }
p7d8.patient -- p7
p7.dayDemand -- p7d8
p7d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 0 }
p7d9.patient -- p7
p7.dayDemand -- p7d9
p7d10: PatientDayDemand { relativeDay = 10 workloadProduced = 2 skillLevelRequired = 0 }
p7d10.patient -- p7
p7.dayDemand -- p7d10
p7d11: PatientDayDemand { relativeDay = 11 workloadProduced = 1 skillLevelRequired = 0 }
p7d11.patient -- p7
p7.dayDemand -- p7d11
p7d12: PatientDayDemand { relativeDay = 12 workloadProduced = 2 skillLevelRequired = 0 }
p7d12.patient -- p7
p7.dayDemand -- p7d12
p7d13: PatientDayDemand { relativeDay = 13 workloadProduced = 3 skillLevelRequired = 0 }
p7d13.patient -- p7
p7.dayDemand -- p7d13
p7d14: PatientDayDemand { relativeDay = 14 workloadProduced = 2 skillLevelRequired = 0 }
p7d14.patient -- p7
p7.dayDemand -- p7d14
p7d15: PatientDayDemand { relativeDay = 15 workloadProduced = 2 skillLevelRequired = 0 }
p7d15.patient -- p7
p7.dayDemand -- p7d15
p7d16: PatientDayDemand { relativeDay = 16 workloadProduced = 3 skillLevelRequired = 1 }
p7d16.patient -- p7
p7.dayDemand -- p7d16
p7d17: PatientDayDemand { relativeDay = 17 workloadProduced = 1 skillLevelRequired = 0 }
p7d17.patient -- p7
p7.dayDemand -- p7d17
p7d18: PatientDayDemand { relativeDay = 18 workloadProduced = 2 skillLevelRequired = 1 }
p7d18.patient -- p7
p7.dayDemand -- p7d18
p7d19: PatientDayDemand { relativeDay = 19 workloadProduced = 2 skillLevelRequired = 0 }
p7d19.patient -- p7
p7.dayDemand -- p7d19
p7d20: PatientDayDemand { relativeDay = 20 workloadProduced = 2 skillLevelRequired = 0 }
p7d20.patient -- p7
p7.dayDemand -- p7d20

p8: Patient { id = 8 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 7 }
p8.assignedSurgeonId -- s0
hospital.patients -- p8
p8d0: PatientDayDemand { relativeDay = 0 workloadProduced = 2 skillLevelRequired = 0 }
p8d0.patient -- p8
p8.dayDemand -- p8d0
p8d1: PatientDayDemand { relativeDay = 1 workloadProduced = 3 skillLevelRequired = 1 }
p8d1.patient -- p8
p8.dayDemand -- p8d1
p8d2: PatientDayDemand { relativeDay = 2 workloadProduced = 1 skillLevelRequired = 0 }
p8d2.patient -- p8
p8.dayDemand -- p8d2
p8d3: PatientDayDemand { relativeDay = 3 workloadProduced = 3 skillLevelRequired = 1 }
p8d3.patient -- p8
p8.dayDemand -- p8d3
p8d4: PatientDayDemand { relativeDay = 4 workloadProduced = 3 skillLevelRequired = 0 }
p8d4.patient -- p8
p8.dayDemand -- p8d4
p8d5: PatientDayDemand { relativeDay = 5 workloadProduced = 2 skillLevelRequired = 0 }
p8d5.patient -- p8
p8.dayDemand -- p8d5
p8d6: PatientDayDemand { relativeDay = 6 workloadProduced = 2 skillLevelRequired = 1 }
p8d6.patient -- p8
p8.dayDemand -- p8d6
p8d7: PatientDayDemand { relativeDay = 7 workloadProduced = 2 skillLevelRequired = 0 }
p8d7.patient -- p8
p8.dayDemand -- p8d7
p8d8: PatientDayDemand { relativeDay = 8 workloadProduced = 2 skillLevelRequired = 0 }
p8d8.patient -- p8
p8.dayDemand -- p8d8
p8d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 0 }
p8d9.patient -- p8
p8.dayDemand -- p8d9
p8d10: PatientDayDemand { relativeDay = 10 workloadProduced = 3 skillLevelRequired = 1 }
p8d10.patient -- p8
p8.dayDemand -- p8d10
p8d11: PatientDayDemand { relativeDay = 11 workloadProduced = 1 skillLevelRequired = 0 }
p8d11.patient -- p8
p8.dayDemand -- p8d11
p8d12: PatientDayDemand { relativeDay = 12 workloadProduced = 2 skillLevelRequired = 1 }
p8d12.patient -- p8
p8.dayDemand -- p8d12
p8d13: PatientDayDemand { relativeDay = 13 workloadProduced = 3 skillLevelRequired = 1 }
p8d13.patient -- p8
p8.dayDemand -- p8d13
p8d14: PatientDayDemand { relativeDay = 14 workloadProduced = 2 skillLevelRequired = 0 }
p8d14.patient -- p8
p8.dayDemand -- p8d14
p8d15: PatientDayDemand { relativeDay = 15 workloadProduced = 2 skillLevelRequired = 0 }
p8d15.patient -- p8
p8.dayDemand -- p8d15
p8d16: PatientDayDemand { relativeDay = 16 workloadProduced = 1 skillLevelRequired = 0 }
p8d16.patient -- p8
p8.dayDemand -- p8d16
p8d17: PatientDayDemand { relativeDay = 17 workloadProduced = 1 skillLevelRequired = 0 }
p8d17.patient -- p8
p8.dayDemand -- p8d17
p8d18: PatientDayDemand { relativeDay = 18 workloadProduced = 3 skillLevelRequired = 0 }
p8d18.patient -- p8
p8.dayDemand -- p8d18
p8d19: PatientDayDemand { relativeDay = 19 workloadProduced = 2 skillLevelRequired = 0 }
p8d19.patient -- p8
p8.dayDemand -- p8d19
p8d20: PatientDayDemand { relativeDay = 20 workloadProduced = 2 skillLevelRequired = 0 }
p8d20.patient -- p8
p8.dayDemand -- p8d20

p9: Patient { id = 9 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.F stayLength = 6 }
p9.assignedSurgeonId -- s0
hospital.patients -- p9
p9d0: PatientDayDemand { relativeDay = 0 workloadProduced = 2 skillLevelRequired = 0 }
p9d0.patient -- p9
p9.dayDemand -- p9d0
p9d1: PatientDayDemand { relativeDay = 1 workloadProduced = 3 skillLevelRequired = 0 }
p9d1.patient -- p9
p9.dayDemand -- p9d1
p9d2: PatientDayDemand { relativeDay = 2 workloadProduced = 2 skillLevelRequired = 0 }
p9d2.patient -- p9
p9.dayDemand -- p9d2
p9d3: PatientDayDemand { relativeDay = 3 workloadProduced = 3 skillLevelRequired = 0 }
p9d3.patient -- p9
p9.dayDemand -- p9d3
p9d4: PatientDayDemand { relativeDay = 4 workloadProduced = 2 skillLevelRequired = 0 }
p9d4.patient -- p9
p9.dayDemand -- p9d4
p9d5: PatientDayDemand { relativeDay = 5 workloadProduced = 1 skillLevelRequired = 0 }
p9d5.patient -- p9
p9.dayDemand -- p9d5
p9d6: PatientDayDemand { relativeDay = 6 workloadProduced = 2 skillLevelRequired = 1 }
p9d6.patient -- p9
p9.dayDemand -- p9d6
p9d7: PatientDayDemand { relativeDay = 7 workloadProduced = 2 skillLevelRequired = 1 }
p9d7.patient -- p9
p9.dayDemand -- p9d7
p9d8: PatientDayDemand { relativeDay = 8 workloadProduced = 2 skillLevelRequired = 0 }
p9d8.patient -- p9
p9.dayDemand -- p9d8
p9d9: PatientDayDemand { relativeDay = 9 workloadProduced = 2 skillLevelRequired = 1 }
p9d9.patient -- p9
p9.dayDemand -- p9d9
p9d10: PatientDayDemand { relativeDay = 10 workloadProduced = 1 skillLevelRequired = 1 }
p9d10.patient -- p9
p9.dayDemand -- p9d10
p9d11: PatientDayDemand { relativeDay = 11 workloadProduced = 1 skillLevelRequired = 0 }
p9d11.patient -- p9
p9.dayDemand -- p9d11
p9d12: PatientDayDemand { relativeDay = 12 workloadProduced = 1 skillLevelRequired = 0 }
p9d12.patient -- p9
p9.dayDemand -- p9d12
p9d13: PatientDayDemand { relativeDay = 13 workloadProduced = 1 skillLevelRequired = 1 }
p9d13.patient -- p9
p9.dayDemand -- p9d13
p9d14: PatientDayDemand { relativeDay = 14 workloadProduced = 1 skillLevelRequired = 0 }
p9d14.patient -- p9
p9.dayDemand -- p9d14
p9d15: PatientDayDemand { relativeDay = 15 workloadProduced = 1 skillLevelRequired = 1 }
p9d15.patient -- p9
p9.dayDemand -- p9d15
p9d16: PatientDayDemand { relativeDay = 16 workloadProduced = 2 skillLevelRequired = 1 }
p9d16.patient -- p9
p9.dayDemand -- p9d16
p9d17: PatientDayDemand { relativeDay = 17 workloadProduced = 1 skillLevelRequired = 0 }
p9d17.patient -- p9
p9.dayDemand -- p9d17

s0a0: SurgeonAvailability { day = 0 maxOperatingTime = 480 }
s0a0.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a0
s0a1: SurgeonAvailability { day = 1 maxOperatingTime = 0 }
s0a1.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a1
s0a2: SurgeonAvailability { day = 2 maxOperatingTime = 0 }
s0a2.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a2
s0a3: SurgeonAvailability { day = 3 maxOperatingTime = 0 }
s0a3.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a3
s0a4: SurgeonAvailability { day = 4 maxOperatingTime = 480 }
s0a4.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a4
s0a5: SurgeonAvailability { day = 5 maxOperatingTime = 0 }
s0a5.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a5
s0a6: SurgeonAvailability { day = 6 maxOperatingTime = 0 }
s0a6.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a6
s0a7: SurgeonAvailability { day = 7 maxOperatingTime = 480 }
s0a7.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a7
s0a8: SurgeonAvailability { day = 8 maxOperatingTime = 0 }
s0a8.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a8
s0a9: SurgeonAvailability { day = 9 maxOperatingTime = 0 }
s0a9.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a9
s0a10: SurgeonAvailability { day = 10 maxOperatingTime = 0 }
s0a10.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a10
s0a11: SurgeonAvailability { day = 11 maxOperatingTime = 600 }
s0a11.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a11
s0a12: SurgeonAvailability { day = 12 maxOperatingTime = 0 }
s0a12.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a12
s0a13: SurgeonAvailability { day = 13 maxOperatingTime = 480 }
s0a13.surgeonId -- s0
hospital.surgeonAvailabilities -- s0a13

t0a0: OperatingTheatreAvailability { day = 0 maxCapacity = 480 }
t0a0.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a0
t0a1: OperatingTheatreAvailability { day = 1 maxCapacity = 720 }
t0a1.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a1
t0a2: OperatingTheatreAvailability { day = 2 maxCapacity = 720 }
t0a2.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a2
t0a3: OperatingTheatreAvailability { day = 3 maxCapacity = 600 }
t0a3.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a3
t0a4: OperatingTheatreAvailability { day = 4 maxCapacity = 600 }
t0a4.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a4
t0a5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
t0a5.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a5
t0a6: OperatingTheatreAvailability { day = 6 maxCapacity = 480 }
t0a6.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a6
t0a7: OperatingTheatreAvailability { day = 7 maxCapacity = 720 }
t0a7.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a7
t0a8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
t0a8.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a8
t0a9: OperatingTheatreAvailability { day = 9 maxCapacity = 600 }
t0a9.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a9
t0a10: OperatingTheatreAvailability { day = 10 maxCapacity = 0 }
t0a10.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a10
t0a11: OperatingTheatreAvailability { day = 11 maxCapacity = 0 }
t0a11.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a11
t0a12: OperatingTheatreAvailability { day = 12 maxCapacity = 480 }
t0a12.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a12
t0a13: OperatingTheatreAvailability { day = 13 maxCapacity = 720 }
t0a13.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- t0a13
t1a0: OperatingTheatreAvailability { day = 0 maxCapacity = 720 }
t1a0.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a0
t1a1: OperatingTheatreAvailability { day = 1 maxCapacity = 600 }
t1a1.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a1
t1a2: OperatingTheatreAvailability { day = 2 maxCapacity = 600 }
t1a2.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a2
t1a3: OperatingTheatreAvailability { day = 3 maxCapacity = 720 }
t1a3.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a3
t1a4: OperatingTheatreAvailability { day = 4 maxCapacity = 600 }
t1a4.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a4
t1a5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
t1a5.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a5
t1a6: OperatingTheatreAvailability { day = 6 maxCapacity = 0 }
t1a6.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a6
t1a7: OperatingTheatreAvailability { day = 7 maxCapacity = 0 }
t1a7.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a7
t1a8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
t1a8.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a8
t1a9: OperatingTheatreAvailability { day = 9 maxCapacity = 720 }
t1a9.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a9
t1a10: OperatingTheatreAvailability { day = 10 maxCapacity = 480 }
t1a10.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a10
t1a11: OperatingTheatreAvailability { day = 11 maxCapacity = 600 }
t1a11.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a11
t1a12: OperatingTheatreAvailability { day = 12 maxCapacity = 0 }
t1a12.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a12
t1a13: OperatingTheatreAvailability { day = 13 maxCapacity = 600 }
t1a13.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- t1a13

r0a0: RoomAvailability { day = 0 occupiedBeds = 2 }
r0a0.roomId -- r0
hospital.roomAvailabilities -- r0a0
r0a1: RoomAvailability { day = 1 occupiedBeds = 0 }
r0a1.roomId -- r0
hospital.roomAvailabilities -- r0a1
r0a2: RoomAvailability { day = 2 occupiedBeds = 0 }
r0a2.roomId -- r0
hospital.roomAvailabilities -- r0a2
r0a3: RoomAvailability { day = 3 occupiedBeds = 0 }
r0a3.roomId -- r0
hospital.roomAvailabilities -- r0a3
r0a4: RoomAvailability { day = 4 occupiedBeds = 0 }
r0a4.roomId -- r0
hospital.roomAvailabilities -- r0a4
r0a5: RoomAvailability { day = 5 occupiedBeds = 0 }
r0a5.roomId -- r0
hospital.roomAvailabilities -- r0a5
r0a6: RoomAvailability { day = 6 occupiedBeds = 0 }
r0a6.roomId -- r0
hospital.roomAvailabilities -- r0a6
r0a7: RoomAvailability { day = 7 occupiedBeds = 0 }
r0a7.roomId -- r0
hospital.roomAvailabilities -- r0a7
r0a8: RoomAvailability { day = 8 occupiedBeds = 0 }
r0a8.roomId -- r0
hospital.roomAvailabilities -- r0a8
r0a9: RoomAvailability { day = 9 occupiedBeds = 0 }
r0a9.roomId -- r0
hospital.roomAvailabilities -- r0a9
r0a10: RoomAvailability { day = 10 occupiedBeds = 0 }
r0a10.roomId -- r0
hospital.roomAvailabilities -- r0a10
r0a11: RoomAvailability { day = 11 occupiedBeds = 0 }
r0a11.roomId -- r0
hospital.roomAvailabilities -- r0a11
r0a12: RoomAvailability { day = 12 occupiedBeds = 0 }
r0a12.roomId -- r0
hospital.roomAvailabilities -- r0a12
r0a13: RoomAvailability { day = 13 occupiedBeds = 0 }
r0a13.roomId -- r0
hospital.roomAvailabilities -- r0a13
r1a0: RoomAvailability { day = 0 occupiedBeds = 0 }
r1a0.roomId -- r1
hospital.roomAvailabilities -- r1a0
r1a1: RoomAvailability { day = 1 occupiedBeds = 0 }
r1a1.roomId -- r1
hospital.roomAvailabilities -- r1a1
r1a2: RoomAvailability { day = 2 occupiedBeds = 0 }
r1a2.roomId -- r1
hospital.roomAvailabilities -- r1a2
r1a3: RoomAvailability { day = 3 occupiedBeds = 0 }
r1a3.roomId -- r1
hospital.roomAvailabilities -- r1a3
r1a4: RoomAvailability { day = 4 occupiedBeds = 0 }
r1a4.roomId -- r1
hospital.roomAvailabilities -- r1a4
r1a5: RoomAvailability { day = 5 occupiedBeds = 0 }
r1a5.roomId -- r1
hospital.roomAvailabilities -- r1a5
r1a6: RoomAvailability { day = 6 occupiedBeds = 0 }
r1a6.roomId -- r1
hospital.roomAvailabilities -- r1a6
r1a7: RoomAvailability { day = 7 occupiedBeds = 0 }
r1a7.roomId -- r1
hospital.roomAvailabilities -- r1a7
r1a8: RoomAvailability { day = 8 occupiedBeds = 0 }
r1a8.roomId -- r1
hospital.roomAvailabilities -- r1a8
r1a9: RoomAvailability { day = 9 occupiedBeds = 0 }
r1a9.roomId -- r1
hospital.roomAvailabilities -- r1a9
r1a10: RoomAvailability { day = 10 occupiedBeds = 0 }
r1a10.roomId -- r1
hospital.roomAvailabilities -- r1a10
r1a11: RoomAvailability { day = 11 occupiedBeds = 0 }
r1a11.roomId -- r1
hospital.roomAvailabilities -- r1a11
r1a12: RoomAvailability { day = 12 occupiedBeds = 0 }
r1a12.roomId -- r1
hospital.roomAvailabilities -- r1a12
r1a13: RoomAvailability { day = 13 occupiedBeds = 0 }
r1a13.roomId -- r1
hospital.roomAvailabilities -- r1a13

n0: Nurse { id = 0 skillLevel = 0 }
hospital.nurses -- n0
n0ws0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 10 }
n0ws0.nurse -- n0
hospital.nurseWorkingShifts -- n0ws0
n0ws1: NurseWorkingShift { day = 1 shift = 2 maxLoad = 10 }
n0ws1.nurse -- n0
hospital.nurseWorkingShifts -- n0ws1
n0ws2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 10 }
n0ws2.nurse -- n0
hospital.nurseWorkingShifts -- n0ws2
n0ws3: NurseWorkingShift { day = 3 shift = 2 maxLoad = 10 }
n0ws3.nurse -- n0
hospital.nurseWorkingShifts -- n0ws3
n0ws4: NurseWorkingShift { day = 5 shift = 0 maxLoad = 10 }
n0ws4.nurse -- n0
hospital.nurseWorkingShifts -- n0ws4
n0ws5: NurseWorkingShift { day = 6 shift = 2 maxLoad = 10 }
n0ws5.nurse -- n0
hospital.nurseWorkingShifts -- n0ws5
n0ws6: NurseWorkingShift { day = 7 shift = 2 maxLoad = 10 }
n0ws6.nurse -- n0
hospital.nurseWorkingShifts -- n0ws6
n0ws7: NurseWorkingShift { day = 9 shift = 2 maxLoad = 10 }
n0ws7.nurse -- n0
hospital.nurseWorkingShifts -- n0ws7
n0ws8: NurseWorkingShift { day = 10 shift = 2 maxLoad = 10 }
n0ws8.nurse -- n0
hospital.nurseWorkingShifts -- n0ws8
n0ws9: NurseWorkingShift { day = 11 shift = 2 maxLoad = 10 }
n0ws9.nurse -- n0
hospital.nurseWorkingShifts -- n0ws9
n0ws10: NurseWorkingShift { day = 13 shift = 0 maxLoad = 10 }
n0ws10.nurse -- n0
hospital.nurseWorkingShifts -- n0ws10

n1: Nurse { id = 1 skillLevel = 0 }
hospital.nurses -- n1
n1ws0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 10 }
n1ws0.nurse -- n1
hospital.nurseWorkingShifts -- n1ws0
n1ws1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 10 }
n1ws1.nurse -- n1
hospital.nurseWorkingShifts -- n1ws1
n1ws2: NurseWorkingShift { day = 3 shift = 1 maxLoad = 10 }
n1ws2.nurse -- n1
hospital.nurseWorkingShifts -- n1ws2
n1ws3: NurseWorkingShift { day = 5 shift = 0 maxLoad = 10 }
n1ws3.nurse -- n1
hospital.nurseWorkingShifts -- n1ws3
n1ws4: NurseWorkingShift { day = 6 shift = 0 maxLoad = 10 }
n1ws4.nurse -- n1
hospital.nurseWorkingShifts -- n1ws4
n1ws5: NurseWorkingShift { day = 7 shift = 1 maxLoad = 10 }
n1ws5.nurse -- n1
hospital.nurseWorkingShifts -- n1ws5
n1ws6: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
n1ws6.nurse -- n1
hospital.nurseWorkingShifts -- n1ws6
n1ws7: NurseWorkingShift { day = 11 shift = 0 maxLoad = 10 }
n1ws7.nurse -- n1
hospital.nurseWorkingShifts -- n1ws7
n1ws8: NurseWorkingShift { day = 12 shift = 2 maxLoad = 10 }
n1ws8.nurse -- n1
hospital.nurseWorkingShifts -- n1ws8

n2: Nurse { id = 2 skillLevel = 1 }
hospital.nurses -- n2
n2ws0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 12 }
n2ws0.nurse -- n2
hospital.nurseWorkingShifts -- n2ws0
n2ws1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 12 }
n2ws1.nurse -- n2
hospital.nurseWorkingShifts -- n2ws1
n2ws2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 12 }
n2ws2.nurse -- n2
hospital.nurseWorkingShifts -- n2ws2
n2ws3: NurseWorkingShift { day = 3 shift = 0 maxLoad = 12 }
n2ws3.nurse -- n2
hospital.nurseWorkingShifts -- n2ws3
n2ws4: NurseWorkingShift { day = 4 shift = 1 maxLoad = 12 }
n2ws4.nurse -- n2
hospital.nurseWorkingShifts -- n2ws4
n2ws5: NurseWorkingShift { day = 5 shift = 1 maxLoad = 12 }
n2ws5.nurse -- n2
hospital.nurseWorkingShifts -- n2ws5
n2ws6: NurseWorkingShift { day = 7 shift = 0 maxLoad = 12 }
n2ws6.nurse -- n2
hospital.nurseWorkingShifts -- n2ws6
n2ws7: NurseWorkingShift { day = 8 shift = 0 maxLoad = 12 }
n2ws7.nurse -- n2
hospital.nurseWorkingShifts -- n2ws7
n2ws8: NurseWorkingShift { day = 9 shift = 0 maxLoad = 12 }
n2ws8.nurse -- n2
hospital.nurseWorkingShifts -- n2ws8
n2ws9: NurseWorkingShift { day = 10 shift = 0 maxLoad = 12 }
n2ws9.nurse -- n2
hospital.nurseWorkingShifts -- n2ws9
n2ws10: NurseWorkingShift { day = 11 shift = 1 maxLoad = 12 }
n2ws10.nurse -- n2
hospital.nurseWorkingShifts -- n2ws10
n2ws11: NurseWorkingShift { day = 13 shift = 0 maxLoad = 12 }
n2ws11.nurse -- n2
hospital.nurseWorkingShifts -- n2ws11

n3: Nurse { id = 3 skillLevel = 1 }
hospital.nurses -- n3
n3ws0: NurseWorkingShift { day = 1 shift = 1 maxLoad = 12 }
n3ws0.nurse -- n3
hospital.nurseWorkingShifts -- n3ws0
n3ws1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 12 }
n3ws1.nurse -- n3
hospital.nurseWorkingShifts -- n3ws1
n3ws2: NurseWorkingShift { day = 4 shift = 0 maxLoad = 12 }
n3ws2.nurse -- n3
hospital.nurseWorkingShifts -- n3ws2
n3ws3: NurseWorkingShift { day = 5 shift = 2 maxLoad = 12 }
n3ws3.nurse -- n3
hospital.nurseWorkingShifts -- n3ws3
n3ws4: NurseWorkingShift { day = 7 shift = 1 maxLoad = 12 }
n3ws4.nurse -- n3
hospital.nurseWorkingShifts -- n3ws4
n3ws5: NurseWorkingShift { day = 8 shift = 2 maxLoad = 12 }
n3ws5.nurse -- n3
hospital.nurseWorkingShifts -- n3ws5
n3ws6: NurseWorkingShift { day = 10 shift = 1 maxLoad = 12 }
n3ws6.nurse -- n3
hospital.nurseWorkingShifts -- n3ws6
n3ws7: NurseWorkingShift { day = 12 shift = 0 maxLoad = 12 }
n3ws7.nurse -- n3
hospital.nurseWorkingShifts -- n3ws7
n3ws8: NurseWorkingShift { day = 13 shift = 2 maxLoad = 12 }
n3ws8.nurse -- n3
hospital.nurseWorkingShifts -- n3ws8

n4: Nurse { id = 4 skillLevel = 0 }
hospital.nurses -- n4
n4ws0: NurseWorkingShift { day = 0 shift = 2 maxLoad = 10 }
n4ws0.nurse -- n4
hospital.nurseWorkingShifts -- n4ws0
n4ws1: NurseWorkingShift { day = 3 shift = 1 maxLoad = 10 }
n4ws1.nurse -- n4
hospital.nurseWorkingShifts -- n4ws1
n4ws2: NurseWorkingShift { day = 4 shift = 2 maxLoad = 10 }
n4ws2.nurse -- n4
hospital.nurseWorkingShifts -- n4ws2
n4ws3: NurseWorkingShift { day = 6 shift = 0 maxLoad = 10 }
n4ws3.nurse -- n4
hospital.nurseWorkingShifts -- n4ws3
n4ws4: NurseWorkingShift { day = 8 shift = 1 maxLoad = 10 }
n4ws4.nurse -- n4
hospital.nurseWorkingShifts -- n4ws4
n4ws5: NurseWorkingShift { day = 11 shift = 0 maxLoad = 10 }
n4ws5.nurse -- n4
hospital.nurseWorkingShifts -- n4ws5
n4ws6: NurseWorkingShift { day = 12 shift = 1 maxLoad = 10 }
n4ws6.nurse -- n4
hospital.nurseWorkingShifts -- n4ws6
n4ws7: NurseWorkingShift { day = 13 shift = 1 maxLoad = 10 }
n4ws7.nurse -- n4
hospital.nurseWorkingShifts -- n4ws7

n5: Nurse { id = 5 skillLevel = 1 }
hospital.nurses -- n5
n5ws0: NurseWorkingShift { day = 6 shift = 1 maxLoad = 12 }
n5ws0.nurse -- n5
hospital.nurseWorkingShifts -- n5ws0
n5ws1: NurseWorkingShift { day = 8 shift = 1 maxLoad = 12 }
n5ws1.nurse -- n5
hospital.nurseWorkingShifts -- n5ws1
n5ws2: NurseWorkingShift { day = 12 shift = 1 maxLoad = 12 }
n5ws2.nurse -- n5
hospital.nurseWorkingShifts -- n5ws2
n5ws3: NurseWorkingShift { day = 13 shift = 1 maxLoad = 12 }
n5ws3.nurse -- n5
hospital.nurseWorkingShifts -- n5ws3

n6: Nurse { id = 6 skillLevel = 0 }
hospital.nurses -- n6
n6ws0: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
n6ws0.nurse -- n6
hospital.nurseWorkingShifts -- n6ws0

hs_r0_d0_s0: HospitalisationShift { day = 0 shift = 0 workload = 4 skillLevelRequired = 1 }
hs_r0_d0_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s0
hs_r0_d0_s1: HospitalisationShift { day = 0 shift = 1 workload = 3 skillLevelRequired = 1 }
hs_r0_d0_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s1
hs_r0_d0_s2: HospitalisationShift { day = 0 shift = 2 workload = 2 skillLevelRequired = 0 }
hs_r0_d0_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s2

