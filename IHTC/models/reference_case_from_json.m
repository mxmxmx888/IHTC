using "../ihtc.mm"

// Converted from references/ihtc_input_reference.json
// Normalisation used for this metamodel: early/late/night -> 0/1/2, A/B -> M/F,
// and per-shift patient demand aggregated into per-day PatientDayDemand entries.

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

p0: Patient { id = 0 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 5 }
p0.assignedSurgeonId -- s0
p0_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 5 skillLevelRequired = 0 }
p0_d0.patient -- p0
p0.dayDemand -- p0_d0
p0_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 7 skillLevelRequired = 0 }
p0_d1.patient -- p0
p0.dayDemand -- p0_d1
p0_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p0_d2.patient -- p0
p0.dayDemand -- p0_d2
p0_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 5 skillLevelRequired = 1 }
p0_d3.patient -- p0
p0.dayDemand -- p0_d3
p0_d4: PatientDayDemand { relativeDay = 4 workloadProduced = 6 skillLevelRequired = 1 }
p0_d4.patient -- p0
p0.dayDemand -- p0_d4
hospital.patients -- p0

p1: Patient { id = 1 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 5 }
p1.assignedSurgeonId -- s0
p1_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 5 skillLevelRequired = 1 }
p1_d0.patient -- p1
p1.dayDemand -- p1_d0
p1_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 7 skillLevelRequired = 0 }
p1_d1.patient -- p1
p1.dayDemand -- p1_d1
p1_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 8 skillLevelRequired = 1 }
p1_d2.patient -- p1
p1.dayDemand -- p1_d2
p1_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 5 skillLevelRequired = 0 }
p1_d3.patient -- p1
p1.dayDemand -- p1_d3
p1_d4: PatientDayDemand { relativeDay = 4 workloadProduced = 4 skillLevelRequired = 0 }
p1_d4.patient -- p1
p1.dayDemand -- p1_d4
hospital.patients -- p1

p2: Patient { id = 2 isMandatory = true isScheduled = false dueDate = 13 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 6 }
p2.assignedSurgeonId -- s0
p2_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 6 skillLevelRequired = 1 }
p2_d0.patient -- p2
p2.dayDemand -- p2_d0
p2_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 5 skillLevelRequired = 0 }
p2_d1.patient -- p2
p2.dayDemand -- p2_d1
p2_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p2_d2.patient -- p2
p2.dayDemand -- p2_d2
p2_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 6 skillLevelRequired = 1 }
p2_d3.patient -- p2
p2.dayDemand -- p2_d3
p2_d4: PatientDayDemand { relativeDay = 4 workloadProduced = 7 skillLevelRequired = 1 }
p2_d4.patient -- p2
p2.dayDemand -- p2_d4
p2_d5: PatientDayDemand { relativeDay = 5 workloadProduced = 6 skillLevelRequired = 1 }
p2_d5.patient -- p2
p2.dayDemand -- p2_d5
hospital.patients -- p2

p3: Patient { id = 3 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 5 }
p3.assignedSurgeonId -- s0
p3_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 1 }
p3_d0.patient -- p3
p3.dayDemand -- p3_d0
p3_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 8 skillLevelRequired = 1 }
p3_d1.patient -- p3
p3.dayDemand -- p3_d1
p3_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 8 skillLevelRequired = 1 }
p3_d2.patient -- p3
p3.dayDemand -- p3_d2
p3_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 7 skillLevelRequired = 1 }
p3_d3.patient -- p3
p3.dayDemand -- p3_d3
p3_d4: PatientDayDemand { relativeDay = 4 workloadProduced = 6 skillLevelRequired = 0 }
p3_d4.patient -- p3
p3.dayDemand -- p3_d4
hospital.patients -- p3

p4: Patient { id = 4 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.F stayLength = 2 }
p4.assignedSurgeonId -- s0
p4_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 6 skillLevelRequired = 1 }
p4_d0.patient -- p4
p4.dayDemand -- p4_d0
p4_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 7 skillLevelRequired = 1 }
p4_d1.patient -- p4
p4.dayDemand -- p4_d1
hospital.patients -- p4

p5: Patient { id = 5 isMandatory = true isScheduled = false dueDate = 13 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 4 }
p5.assignedSurgeonId -- s0
p5_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 1 }
p5_d0.patient -- p5
p5.dayDemand -- p5_d0
p5_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 6 skillLevelRequired = 0 }
p5_d1.patient -- p5
p5.dayDemand -- p5_d1
p5_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p5_d2.patient -- p5
p5.dayDemand -- p5_d2
p5_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 6 skillLevelRequired = 1 }
p5_d3.patient -- p5
p5.dayDemand -- p5_d3
hospital.patients -- p5

p6: Patient { id = 6 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p6.assignedSurgeonId -- s0
p6_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 1 }
p6_d0.patient -- p6
p6.dayDemand -- p6_d0
p6_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 6 skillLevelRequired = 1 }
p6_d1.patient -- p6
p6.dayDemand -- p6_d1
p6_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 5 skillLevelRequired = 0 }
p6_d2.patient -- p6
p6.dayDemand -- p6_d2
p6_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 5 skillLevelRequired = 1 }
p6_d3.patient -- p6
p6.dayDemand -- p6_d3
hospital.patients -- p6

p7: Patient { id = 7 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.M stayLength = 7 }
p7.assignedSurgeonId -- s0
p7_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 1 }
p7_d0.patient -- p7
p7.dayDemand -- p7_d0
p7_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 7 skillLevelRequired = 0 }
p7_d1.patient -- p7
p7.dayDemand -- p7_d1
p7_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 5 skillLevelRequired = 1 }
p7_d2.patient -- p7
p7.dayDemand -- p7_d2
p7_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 5 skillLevelRequired = 0 }
p7_d3.patient -- p7
p7.dayDemand -- p7_d3
p7_d4: PatientDayDemand { relativeDay = 4 workloadProduced = 7 skillLevelRequired = 0 }
p7_d4.patient -- p7
p7.dayDemand -- p7_d4
p7_d5: PatientDayDemand { relativeDay = 5 workloadProduced = 6 skillLevelRequired = 1 }
p7_d5.patient -- p7
p7.dayDemand -- p7_d5
p7_d6: PatientDayDemand { relativeDay = 6 workloadProduced = 6 skillLevelRequired = 1 }
p7_d6.patient -- p7
p7.dayDemand -- p7_d6
hospital.patients -- p7

p8: Patient { id = 8 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 7 }
p8.assignedSurgeonId -- s0
p8_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 6 skillLevelRequired = 1 }
p8_d0.patient -- p8
p8.dayDemand -- p8_d0
p8_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 8 skillLevelRequired = 1 }
p8_d1.patient -- p8
p8.dayDemand -- p8_d1
p8_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p8_d2.patient -- p8
p8.dayDemand -- p8_d2
p8_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 6 skillLevelRequired = 1 }
p8_d3.patient -- p8
p8.dayDemand -- p8_d3
p8_d4: PatientDayDemand { relativeDay = 4 workloadProduced = 7 skillLevelRequired = 1 }
p8_d4.patient -- p8
p8.dayDemand -- p8_d4
p8_d5: PatientDayDemand { relativeDay = 5 workloadProduced = 4 skillLevelRequired = 0 }
p8_d5.patient -- p8
p8.dayDemand -- p8_d5
p8_d6: PatientDayDemand { relativeDay = 6 workloadProduced = 7 skillLevelRequired = 0 }
p8_d6.patient -- p8
p8.dayDemand -- p8_d6
hospital.patients -- p8

p9: Patient { id = 9 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.M stayLength = 6 }
p9.assignedSurgeonId -- s0
p9_d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 0 }
p9_d0.patient -- p9
p9.dayDemand -- p9_d0
p9_d1: PatientDayDemand { relativeDay = 1 workloadProduced = 6 skillLevelRequired = 0 }
p9_d1.patient -- p9
p9.dayDemand -- p9_d1
p9_d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p9_d2.patient -- p9
p9.dayDemand -- p9_d2
p9_d3: PatientDayDemand { relativeDay = 3 workloadProduced = 4 skillLevelRequired = 1 }
p9_d3.patient -- p9
p9.dayDemand -- p9_d3
p9_d4: PatientDayDemand { relativeDay = 4 workloadProduced = 3 skillLevelRequired = 1 }
p9_d4.patient -- p9
p9.dayDemand -- p9_d4
p9_d5: PatientDayDemand { relativeDay = 5 workloadProduced = 4 skillLevelRequired = 1 }
p9_d5.patient -- p9
p9.dayDemand -- p9_d5
hospital.patients -- p9

s0_a0: SurgeonAvailability { day = 0 maxOperatingTime = 480 }
s0_a0.surgeonId -- s0
s0_a1: SurgeonAvailability { day = 1 maxOperatingTime = 0 }
s0_a1.surgeonId -- s0
s0_a2: SurgeonAvailability { day = 2 maxOperatingTime = 0 }
s0_a2.surgeonId -- s0
s0_a3: SurgeonAvailability { day = 3 maxOperatingTime = 0 }
s0_a3.surgeonId -- s0
s0_a4: SurgeonAvailability { day = 4 maxOperatingTime = 480 }
s0_a4.surgeonId -- s0
s0_a5: SurgeonAvailability { day = 5 maxOperatingTime = 0 }
s0_a5.surgeonId -- s0
s0_a6: SurgeonAvailability { day = 6 maxOperatingTime = 0 }
s0_a6.surgeonId -- s0
s0_a7: SurgeonAvailability { day = 7 maxOperatingTime = 480 }
s0_a7.surgeonId -- s0
s0_a8: SurgeonAvailability { day = 8 maxOperatingTime = 0 }
s0_a8.surgeonId -- s0
s0_a9: SurgeonAvailability { day = 9 maxOperatingTime = 0 }
s0_a9.surgeonId -- s0
s0_a10: SurgeonAvailability { day = 10 maxOperatingTime = 0 }
s0_a10.surgeonId -- s0
s0_a11: SurgeonAvailability { day = 11 maxOperatingTime = 600 }
s0_a11.surgeonId -- s0
s0_a12: SurgeonAvailability { day = 12 maxOperatingTime = 0 }
s0_a12.surgeonId -- s0
s0_a13: SurgeonAvailability { day = 13 maxOperatingTime = 480 }
s0_a13.surgeonId -- s0

t0_a0: OperatingTheatreAvailability { day = 0 maxCapacity = 480 }
t0_a0.operatingTheatreId -- t0
t0_a1: OperatingTheatreAvailability { day = 1 maxCapacity = 720 }
t0_a1.operatingTheatreId -- t0
t0_a2: OperatingTheatreAvailability { day = 2 maxCapacity = 720 }
t0_a2.operatingTheatreId -- t0
t0_a3: OperatingTheatreAvailability { day = 3 maxCapacity = 600 }
t0_a3.operatingTheatreId -- t0
t0_a4: OperatingTheatreAvailability { day = 4 maxCapacity = 600 }
t0_a4.operatingTheatreId -- t0
t0_a5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
t0_a5.operatingTheatreId -- t0
t0_a6: OperatingTheatreAvailability { day = 6 maxCapacity = 480 }
t0_a6.operatingTheatreId -- t0
t0_a7: OperatingTheatreAvailability { day = 7 maxCapacity = 720 }
t0_a7.operatingTheatreId -- t0
t0_a8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
t0_a8.operatingTheatreId -- t0
t0_a9: OperatingTheatreAvailability { day = 9 maxCapacity = 600 }
t0_a9.operatingTheatreId -- t0
t0_a10: OperatingTheatreAvailability { day = 10 maxCapacity = 0 }
t0_a10.operatingTheatreId -- t0
t0_a11: OperatingTheatreAvailability { day = 11 maxCapacity = 0 }
t0_a11.operatingTheatreId -- t0
t0_a12: OperatingTheatreAvailability { day = 12 maxCapacity = 480 }
t0_a12.operatingTheatreId -- t0
t0_a13: OperatingTheatreAvailability { day = 13 maxCapacity = 720 }
t0_a13.operatingTheatreId -- t0
t1_a0: OperatingTheatreAvailability { day = 0 maxCapacity = 720 }
t1_a0.operatingTheatreId -- t1
t1_a1: OperatingTheatreAvailability { day = 1 maxCapacity = 600 }
t1_a1.operatingTheatreId -- t1
t1_a2: OperatingTheatreAvailability { day = 2 maxCapacity = 600 }
t1_a2.operatingTheatreId -- t1
t1_a3: OperatingTheatreAvailability { day = 3 maxCapacity = 720 }
t1_a3.operatingTheatreId -- t1
t1_a4: OperatingTheatreAvailability { day = 4 maxCapacity = 600 }
t1_a4.operatingTheatreId -- t1
t1_a5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
t1_a5.operatingTheatreId -- t1
t1_a6: OperatingTheatreAvailability { day = 6 maxCapacity = 0 }
t1_a6.operatingTheatreId -- t1
t1_a7: OperatingTheatreAvailability { day = 7 maxCapacity = 0 }
t1_a7.operatingTheatreId -- t1
t1_a8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
t1_a8.operatingTheatreId -- t1
t1_a9: OperatingTheatreAvailability { day = 9 maxCapacity = 720 }
t1_a9.operatingTheatreId -- t1
t1_a10: OperatingTheatreAvailability { day = 10 maxCapacity = 480 }
t1_a10.operatingTheatreId -- t1
t1_a11: OperatingTheatreAvailability { day = 11 maxCapacity = 600 }
t1_a11.operatingTheatreId -- t1
t1_a12: OperatingTheatreAvailability { day = 12 maxCapacity = 0 }
t1_a12.operatingTheatreId -- t1
t1_a13: OperatingTheatreAvailability { day = 13 maxCapacity = 600 }
t1_a13.operatingTheatreId -- t1

r0_ra0: RoomAvailability { day = 0 occupiedBeds = 2 }
r0_ra0.roomId -- r0
r0_ra1: RoomAvailability { day = 1 occupiedBeds = 0 }
r0_ra1.roomId -- r0
r0_ra2: RoomAvailability { day = 2 occupiedBeds = 0 }
r0_ra2.roomId -- r0
r0_ra3: RoomAvailability { day = 3 occupiedBeds = 0 }
r0_ra3.roomId -- r0
r0_ra4: RoomAvailability { day = 4 occupiedBeds = 0 }
r0_ra4.roomId -- r0
r0_ra5: RoomAvailability { day = 5 occupiedBeds = 0 }
r0_ra5.roomId -- r0
r0_ra6: RoomAvailability { day = 6 occupiedBeds = 0 }
r0_ra6.roomId -- r0
r0_ra7: RoomAvailability { day = 7 occupiedBeds = 0 }
r0_ra7.roomId -- r0
r0_ra8: RoomAvailability { day = 8 occupiedBeds = 0 }
r0_ra8.roomId -- r0
r0_ra9: RoomAvailability { day = 9 occupiedBeds = 0 }
r0_ra9.roomId -- r0
r0_ra10: RoomAvailability { day = 10 occupiedBeds = 0 }
r0_ra10.roomId -- r0
r0_ra11: RoomAvailability { day = 11 occupiedBeds = 0 }
r0_ra11.roomId -- r0
r0_ra12: RoomAvailability { day = 12 occupiedBeds = 0 }
r0_ra12.roomId -- r0
r0_ra13: RoomAvailability { day = 13 occupiedBeds = 0 }
r0_ra13.roomId -- r0
r1_ra0: RoomAvailability { day = 0 occupiedBeds = 0 }
r1_ra0.roomId -- r1
r1_ra1: RoomAvailability { day = 1 occupiedBeds = 0 }
r1_ra1.roomId -- r1
r1_ra2: RoomAvailability { day = 2 occupiedBeds = 0 }
r1_ra2.roomId -- r1
r1_ra3: RoomAvailability { day = 3 occupiedBeds = 0 }
r1_ra3.roomId -- r1
r1_ra4: RoomAvailability { day = 4 occupiedBeds = 0 }
r1_ra4.roomId -- r1
r1_ra5: RoomAvailability { day = 5 occupiedBeds = 0 }
r1_ra5.roomId -- r1
r1_ra6: RoomAvailability { day = 6 occupiedBeds = 0 }
r1_ra6.roomId -- r1
r1_ra7: RoomAvailability { day = 7 occupiedBeds = 0 }
r1_ra7.roomId -- r1
r1_ra8: RoomAvailability { day = 8 occupiedBeds = 0 }
r1_ra8.roomId -- r1
r1_ra9: RoomAvailability { day = 9 occupiedBeds = 0 }
r1_ra9.roomId -- r1
r1_ra10: RoomAvailability { day = 10 occupiedBeds = 0 }
r1_ra10.roomId -- r1
r1_ra11: RoomAvailability { day = 11 occupiedBeds = 0 }
r1_ra11.roomId -- r1
r1_ra12: RoomAvailability { day = 12 occupiedBeds = 0 }
r1_ra12.roomId -- r1
r1_ra13: RoomAvailability { day = 13 occupiedBeds = 0 }
r1_ra13.roomId -- r1

r0_hs_d0_s0: HospitalisationShift { day = 0 shift = 0 workload = 4 skillLevelRequired = 1 }
r0_hs_d0_s0.room -- r0
r0_hs_d0_s1: HospitalisationShift { day = 0 shift = 1 workload = 3 skillLevelRequired = 1 }
r0_hs_d0_s1.room -- r0
r0_hs_d0_s2: HospitalisationShift { day = 0 shift = 2 workload = 2 skillLevelRequired = 0 }
r0_hs_d0_s2.room -- r0

n0_ws0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 10 }
n0_ws0.nurse -- n0
n0_ws1: NurseWorkingShift { day = 1 shift = 2 maxLoad = 10 }
n0_ws1.nurse -- n0
n0_ws2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 10 }
n0_ws2.nurse -- n0
n0_ws3: NurseWorkingShift { day = 3 shift = 2 maxLoad = 10 }
n0_ws3.nurse -- n0
n0_ws4: NurseWorkingShift { day = 5 shift = 0 maxLoad = 10 }
n0_ws4.nurse -- n0
n0_ws5: NurseWorkingShift { day = 6 shift = 2 maxLoad = 10 }
n0_ws5.nurse -- n0
n0_ws6: NurseWorkingShift { day = 7 shift = 2 maxLoad = 10 }
n0_ws6.nurse -- n0
n0_ws7: NurseWorkingShift { day = 9 shift = 2 maxLoad = 10 }
n0_ws7.nurse -- n0
n0_ws8: NurseWorkingShift { day = 10 shift = 2 maxLoad = 10 }
n0_ws8.nurse -- n0
n0_ws9: NurseWorkingShift { day = 11 shift = 2 maxLoad = 10 }
n0_ws9.nurse -- n0
n0_ws10: NurseWorkingShift { day = 13 shift = 0 maxLoad = 10 }
n0_ws10.nurse -- n0
n1_ws0: NurseWorkingShift { day = 0 shift = 1 maxLoad = 10 }
n1_ws0.nurse -- n1
n1_ws1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 10 }
n1_ws1.nurse -- n1
n1_ws2: NurseWorkingShift { day = 3 shift = 1 maxLoad = 10 }
n1_ws2.nurse -- n1
n1_ws3: NurseWorkingShift { day = 5 shift = 0 maxLoad = 10 }
n1_ws3.nurse -- n1
n1_ws4: NurseWorkingShift { day = 6 shift = 0 maxLoad = 10 }
n1_ws4.nurse -- n1
n1_ws5: NurseWorkingShift { day = 7 shift = 1 maxLoad = 10 }
n1_ws5.nurse -- n1
n1_ws6: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
n1_ws6.nurse -- n1
n1_ws7: NurseWorkingShift { day = 11 shift = 0 maxLoad = 10 }
n1_ws7.nurse -- n1
n1_ws8: NurseWorkingShift { day = 12 shift = 2 maxLoad = 10 }
n1_ws8.nurse -- n1
n2_ws0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 12 }
n2_ws0.nurse -- n2
n2_ws1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 12 }
n2_ws1.nurse -- n2
n2_ws2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 12 }
n2_ws2.nurse -- n2
n2_ws3: NurseWorkingShift { day = 3 shift = 0 maxLoad = 12 }
n2_ws3.nurse -- n2
n2_ws4: NurseWorkingShift { day = 4 shift = 1 maxLoad = 12 }
n2_ws4.nurse -- n2
n2_ws5: NurseWorkingShift { day = 5 shift = 1 maxLoad = 12 }
n2_ws5.nurse -- n2
n2_ws6: NurseWorkingShift { day = 7 shift = 0 maxLoad = 12 }
n2_ws6.nurse -- n2
n2_ws7: NurseWorkingShift { day = 8 shift = 0 maxLoad = 12 }
n2_ws7.nurse -- n2
n2_ws8: NurseWorkingShift { day = 9 shift = 0 maxLoad = 12 }
n2_ws8.nurse -- n2
n2_ws9: NurseWorkingShift { day = 10 shift = 0 maxLoad = 12 }
n2_ws9.nurse -- n2
n2_ws10: NurseWorkingShift { day = 11 shift = 1 maxLoad = 12 }
n2_ws10.nurse -- n2
n2_ws11: NurseWorkingShift { day = 13 shift = 0 maxLoad = 12 }
n2_ws11.nurse -- n2
n3_ws0: NurseWorkingShift { day = 1 shift = 1 maxLoad = 12 }
n3_ws0.nurse -- n3
n3_ws1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 12 }
n3_ws1.nurse -- n3
n3_ws2: NurseWorkingShift { day = 4 shift = 0 maxLoad = 12 }
n3_ws2.nurse -- n3
n3_ws3: NurseWorkingShift { day = 5 shift = 2 maxLoad = 12 }
n3_ws3.nurse -- n3
n3_ws4: NurseWorkingShift { day = 7 shift = 1 maxLoad = 12 }
n3_ws4.nurse -- n3
n3_ws5: NurseWorkingShift { day = 8 shift = 2 maxLoad = 12 }
n3_ws5.nurse -- n3
n3_ws6: NurseWorkingShift { day = 10 shift = 1 maxLoad = 12 }
n3_ws6.nurse -- n3
n3_ws7: NurseWorkingShift { day = 12 shift = 0 maxLoad = 12 }
n3_ws7.nurse -- n3
n3_ws8: NurseWorkingShift { day = 13 shift = 2 maxLoad = 12 }
n3_ws8.nurse -- n3
n4_ws0: NurseWorkingShift { day = 0 shift = 2 maxLoad = 10 }
n4_ws0.nurse -- n4
n4_ws1: NurseWorkingShift { day = 3 shift = 1 maxLoad = 10 }
n4_ws1.nurse -- n4
n4_ws2: NurseWorkingShift { day = 4 shift = 2 maxLoad = 10 }
n4_ws2.nurse -- n4
n4_ws3: NurseWorkingShift { day = 6 shift = 0 maxLoad = 10 }
n4_ws3.nurse -- n4
n4_ws4: NurseWorkingShift { day = 8 shift = 1 maxLoad = 10 }
n4_ws4.nurse -- n4
n4_ws5: NurseWorkingShift { day = 11 shift = 0 maxLoad = 10 }
n4_ws5.nurse -- n4
n4_ws6: NurseWorkingShift { day = 12 shift = 1 maxLoad = 10 }
n4_ws6.nurse -- n4
n4_ws7: NurseWorkingShift { day = 13 shift = 1 maxLoad = 10 }
n4_ws7.nurse -- n4
n5_ws0: NurseWorkingShift { day = 6 shift = 1 maxLoad = 12 }
n5_ws0.nurse -- n5
n5_ws1: NurseWorkingShift { day = 8 shift = 1 maxLoad = 12 }
n5_ws1.nurse -- n5
n5_ws2: NurseWorkingShift { day = 12 shift = 1 maxLoad = 12 }
n5_ws2.nurse -- n5
n5_ws3: NurseWorkingShift { day = 13 shift = 1 maxLoad = 12 }
n5_ws3.nurse -- n5
n6_ws0: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
n6_ws0.nurse -- n6

