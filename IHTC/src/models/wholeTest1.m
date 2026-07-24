using "../ihtc.mm"

// Generated from ihtc_input_reference.json
// Assumptions used to fit the current metamodel:
.
// 2. PatientDayDemand is day-based in the metamodel, while the dataset stores shift-based demand.
//    So each day demand below is collapsed from 3 shifts: workload = sum(early,late,night),
//    skillLevelRequired = max(early,late,night).
// 3. Optional patients without surgery_due_day are mapped to dueDate = decisionHorizon - 1.
// 4. Existing occupants are not represented as Occupant objects because the current Occupant
//    class cannot store age/gender/workload/skill demand. Their effect is encoded through
//    prebuilt RoomAvailability and day-0 HospitalisationShift objects.
// 5. Shift mapping for HospitalisationShift/NurseWorkingShift: early=0, late=1, night=2.

hospital: HospitalInstance { decisionHorizon = 14 }

s0: Surgeon { id = 0 }

t0: OperatingTheatre { id = 0 }
t1: OperatingTheatre { id = 1 }

r0: Room { id = 0 maxCapacity = 2 }
r1: Room { id = 1 maxCapacity = 2 }

n0: Nurse { id = 0 skillLevel = 0 }
n1: Nurse { id = 1 skillLevel = 0 }
n2: Nurse { id = 2 skillLevel = 1 }
n3: Nurse { id = 3 skillLevel = 1 }
n4: Nurse { id = 4 skillLevel = 0 }
n5: Nurse { id = 5 skillLevel = 1 }
n6: Nurse { id = 6 skillLevel = 0 }

hospital.surgeons -- s0
hospital.operatingtheatres -- t0
hospital.operatingtheatres -- t1
hospital.rooms -- r0
hospital.rooms -- r1
hospital.nurses -- n0
hospital.nurses -- n1
hospital.nurses -- n2
hospital.nurses -- n3
hospital.nurses -- n4
hospital.nurses -- n5
hospital.nurses -- n6

p0: Patient { id = 0 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 5 }
p0.assignedSurgeonId -- s0
hospital.patients -- p0
p0d0: PatientDayDemand { relativeDay = 0 workloadProduced = 5 skillLevelRequired = 0 }
p0d0.patient -- p0
p0.dayDemand -- p0d0
p0d1: PatientDayDemand { relativeDay = 1 workloadProduced = 7 skillLevelRequired = 0 }
p0d1.patient -- p0
p0.dayDemand -- p0d1
p0d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p0d2.patient -- p0
p0.dayDemand -- p0d2
p0d3: PatientDayDemand { relativeDay = 3 workloadProduced = 5 skillLevelRequired = 1 }
p0d3.patient -- p0
p0.dayDemand -- p0d3
p0d4: PatientDayDemand { relativeDay = 4 workloadProduced = 6 skillLevelRequired = 1 }
p0d4.patient -- p0
p0.dayDemand -- p0d4

p1: Patient { id = 1 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 5 }
p1.assignedSurgeonId -- s0
hospital.patients -- p1
p1d0: PatientDayDemand { relativeDay = 0 workloadProduced = 5 skillLevelRequired = 1 }
p1d0.patient -- p1
p1.dayDemand -- p1d0
p1d1: PatientDayDemand { relativeDay = 1 workloadProduced = 7 skillLevelRequired = 0 }
p1d1.patient -- p1
p1.dayDemand -- p1d1
p1d2: PatientDayDemand { relativeDay = 2 workloadProduced = 8 skillLevelRequired = 1 }
p1d2.patient -- p1
p1.dayDemand -- p1d2
p1d3: PatientDayDemand { relativeDay = 3 workloadProduced = 5 skillLevelRequired = 0 }
p1d3.patient -- p1
p1.dayDemand -- p1d3
p1d4: PatientDayDemand { relativeDay = 4 workloadProduced = 4 skillLevelRequired = 0 }
p1d4.patient -- p1
p1.dayDemand -- p1d4

p2: Patient { id = 2 isMandatory = true isScheduled = false dueDate = 13 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 6 }
p2.assignedSurgeonId -- s0
hospital.patients -- p2
p2d0: PatientDayDemand { relativeDay = 0 workloadProduced = 6 skillLevelRequired = 1 }
p2d0.patient -- p2
p2.dayDemand -- p2d0
p2d1: PatientDayDemand { relativeDay = 1 workloadProduced = 5 skillLevelRequired = 0 }
p2d1.patient -- p2
p2.dayDemand -- p2d1
p2d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p2d2.patient -- p2
p2.dayDemand -- p2d2
p2d3: PatientDayDemand { relativeDay = 3 workloadProduced = 6 skillLevelRequired = 1 }
p2d3.patient -- p2
p2.dayDemand -- p2d3
p2d4: PatientDayDemand { relativeDay = 4 workloadProduced = 7 skillLevelRequired = 1 }
p2d4.patient -- p2
p2.dayDemand -- p2d4
p2d5: PatientDayDemand { relativeDay = 5 workloadProduced = 6 skillLevelRequired = 1 }
p2d5.patient -- p2
p2.dayDemand -- p2d5

p3: Patient { id = 3 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 5 }
p3.assignedSurgeonId -- s0
hospital.patients -- p3
p3d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 1 }
p3d0.patient -- p3
p3.dayDemand -- p3d0
p3d1: PatientDayDemand { relativeDay = 1 workloadProduced = 8 skillLevelRequired = 1 }
p3d1.patient -- p3
p3.dayDemand -- p3d1
p3d2: PatientDayDemand { relativeDay = 2 workloadProduced = 8 skillLevelRequired = 1 }
p3d2.patient -- p3
p3.dayDemand -- p3d2
p3d3: PatientDayDemand { relativeDay = 3 workloadProduced = 7 skillLevelRequired = 1 }
p3d3.patient -- p3
p3.dayDemand -- p3d3
p3d4: PatientDayDemand { relativeDay = 4 workloadProduced = 6 skillLevelRequired = 0 }
p3d4.patient -- p3
p3.dayDemand -- p3d4

p4: Patient { id = 4 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 7 ageGroup = AgeGroup.ELDERLY surgeryDuration = 120 gender = Gender.M stayLength = 2 }
p4.assignedSurgeonId -- s0
hospital.patients -- p4
p4d0: PatientDayDemand { relativeDay = 0 workloadProduced = 6 skillLevelRequired = 1 }
p4d0.patient -- p4
p4.dayDemand -- p4d0
p4d1: PatientDayDemand { relativeDay = 1 workloadProduced = 7 skillLevelRequired = 1 }
p4d1.patient -- p4
p4.dayDemand -- p4d1

p5: Patient { id = 5 isMandatory = true isScheduled = false dueDate = 13 releaseDate = 11 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.M stayLength = 4 }
p5.assignedSurgeonId -- s0
hospital.patients -- p5
p5d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 1 }
p5d0.patient -- p5
p5.dayDemand -- p5d0
p5d1: PatientDayDemand { relativeDay = 1 workloadProduced = 6 skillLevelRequired = 0 }
p5d1.patient -- p5
p5.dayDemand -- p5d1
p5d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p5d2.patient -- p5
p5.dayDemand -- p5d2
p5d3: PatientDayDemand { relativeDay = 3 workloadProduced = 6 skillLevelRequired = 1 }
p5d3.patient -- p5
p5.dayDemand -- p5d3

p6: Patient { id = 6 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 4 }
p6.assignedSurgeonId -- s0
hospital.patients -- p6
p6d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 1 }
p6d0.patient -- p6
p6.dayDemand -- p6d0
p6d1: PatientDayDemand { relativeDay = 1 workloadProduced = 6 skillLevelRequired = 1 }
p6d1.patient -- p6
p6.dayDemand -- p6d1
p6d2: PatientDayDemand { relativeDay = 2 workloadProduced = 5 skillLevelRequired = 0 }
p6d2.patient -- p6
p6.dayDemand -- p6d2
p6d3: PatientDayDemand { relativeDay = 3 workloadProduced = 5 skillLevelRequired = 1 }
p6d3.patient -- p6
p6.dayDemand -- p6d3

p7: Patient { id = 7 isMandatory = false isScheduled = false dueDate = 13 releaseDate = 13 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.F stayLength = 7 }
p7.assignedSurgeonId -- s0
hospital.patients -- p7
p7d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 1 }
p7d0.patient -- p7
p7.dayDemand -- p7d0
p7d1: PatientDayDemand { relativeDay = 1 workloadProduced = 7 skillLevelRequired = 0 }
p7d1.patient -- p7
p7.dayDemand -- p7d1
p7d2: PatientDayDemand { relativeDay = 2 workloadProduced = 5 skillLevelRequired = 1 }
p7d2.patient -- p7
p7.dayDemand -- p7d2
p7d3: PatientDayDemand { relativeDay = 3 workloadProduced = 5 skillLevelRequired = 0 }
p7d3.patient -- p7
p7.dayDemand -- p7d3
p7d4: PatientDayDemand { relativeDay = 4 workloadProduced = 7 skillLevelRequired = 0 }
p7d4.patient -- p7
p7.dayDemand -- p7d4
p7d5: PatientDayDemand { relativeDay = 5 workloadProduced = 6 skillLevelRequired = 1 }
p7d5.patient -- p7
p7.dayDemand -- p7d5
p7d6: PatientDayDemand { relativeDay = 6 workloadProduced = 6 skillLevelRequired = 1 }
p7d6.patient -- p7
p7.dayDemand -- p7d6

p8: Patient { id = 8 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 7 }
p8.assignedSurgeonId -- s0
hospital.patients -- p8
p8d0: PatientDayDemand { relativeDay = 0 workloadProduced = 6 skillLevelRequired = 1 }
p8d0.patient -- p8
p8.dayDemand -- p8d0
p8d1: PatientDayDemand { relativeDay = 1 workloadProduced = 8 skillLevelRequired = 1 }
p8d1.patient -- p8
p8.dayDemand -- p8d1
p8d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p8d2.patient -- p8
p8.dayDemand -- p8d2
p8d3: PatientDayDemand { relativeDay = 3 workloadProduced = 6 skillLevelRequired = 1 }
p8d3.patient -- p8
p8.dayDemand -- p8d3
p8d4: PatientDayDemand { relativeDay = 4 workloadProduced = 7 skillLevelRequired = 1 }
p8d4.patient -- p8
p8.dayDemand -- p8d4
p8d5: PatientDayDemand { relativeDay = 5 workloadProduced = 4 skillLevelRequired = 0 }
p8d5.patient -- p8
p8.dayDemand -- p8d5
p8d6: PatientDayDemand { relativeDay = 6 workloadProduced = 7 skillLevelRequired = 0 }
p8d6.patient -- p8
p8.dayDemand -- p8d6

p9: Patient { id = 9 isMandatory = true isScheduled = false dueDate = 11 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 300 gender = Gender.F stayLength = 6 }
p9.assignedSurgeonId -- s0
hospital.patients -- p9
p9d0: PatientDayDemand { relativeDay = 0 workloadProduced = 7 skillLevelRequired = 0 }
p9d0.patient -- p9
p9.dayDemand -- p9d0
p9d1: PatientDayDemand { relativeDay = 1 workloadProduced = 6 skillLevelRequired = 0 }
p9d1.patient -- p9
p9.dayDemand -- p9d1
p9d2: PatientDayDemand { relativeDay = 2 workloadProduced = 6 skillLevelRequired = 1 }
p9d2.patient -- p9
p9.dayDemand -- p9d2
p9d3: PatientDayDemand { relativeDay = 3 workloadProduced = 4 skillLevelRequired = 1 }
p9d3.patient -- p9
p9.dayDemand -- p9d3
p9d4: PatientDayDemand { relativeDay = 4 workloadProduced = 3 skillLevelRequired = 1 }
p9d4.patient -- p9
p9.dayDemand -- p9d4
p9d5: PatientDayDemand { relativeDay = 5 workloadProduced = 4 skillLevelRequired = 1 }
p9d5.patient -- p9
p9.dayDemand -- p9d5

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

r0ra0: RoomAvailability { day = 0 occupiedBeds = 2 ageGroup = AgeGroup.ELDERLY roomNumber = 0 }
r0ra0.roomId -- r0
hospital.roomAvailabilities -- r0ra0
r0ra1: RoomAvailability { day = 1 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra1.roomId -- r0
hospital.roomAvailabilities -- r0ra1
r0ra2: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra2.roomId -- r0
hospital.roomAvailabilities -- r0ra2
r0ra3: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra3.roomId -- r0
hospital.roomAvailabilities -- r0ra3
r0ra4: RoomAvailability { day = 4 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra4.roomId -- r0
hospital.roomAvailabilities -- r0ra4
r0ra5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra5.roomId -- r0
hospital.roomAvailabilities -- r0ra5
r0ra6: RoomAvailability { day = 6 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra6.roomId -- r0
hospital.roomAvailabilities -- r0ra6
r0ra7: RoomAvailability { day = 7 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra7.roomId -- r0
hospital.roomAvailabilities -- r0ra7
r0ra8: RoomAvailability { day = 8 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra8.roomId -- r0
hospital.roomAvailabilities -- r0ra8
r0ra9: RoomAvailability { day = 9 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra9.roomId -- r0
hospital.roomAvailabilities -- r0ra9
r0ra10: RoomAvailability { day = 10 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra10.roomId -- r0
hospital.roomAvailabilities -- r0ra10
r0ra11: RoomAvailability { day = 11 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra11.roomId -- r0
hospital.roomAvailabilities -- r0ra11
r0ra12: RoomAvailability { day = 12 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra12.roomId -- r0
hospital.roomAvailabilities -- r0ra12
r0ra13: RoomAvailability { day = 13 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 0 }
r0ra13.roomId -- r0
hospital.roomAvailabilities -- r0ra13

r1ra0: RoomAvailability { day = 0 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra0.roomId -- r1
hospital.roomAvailabilities -- r1ra0
r1ra1: RoomAvailability { day = 1 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra1.roomId -- r1
hospital.roomAvailabilities -- r1ra1
r1ra2: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra2.roomId -- r1
hospital.roomAvailabilities -- r1ra2
r1ra3: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra3.roomId -- r1
hospital.roomAvailabilities -- r1ra3
r1ra4: RoomAvailability { day = 4 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra4.roomId -- r1
hospital.roomAvailabilities -- r1ra4
r1ra5: RoomAvailability { day = 5 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra5.roomId -- r1
hospital.roomAvailabilities -- r1ra5
r1ra6: RoomAvailability { day = 6 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra6.roomId -- r1
hospital.roomAvailabilities -- r1ra6
r1ra7: RoomAvailability { day = 7 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra7.roomId -- r1
hospital.roomAvailabilities -- r1ra7
r1ra8: RoomAvailability { day = 8 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra8.roomId -- r1
hospital.roomAvailabilities -- r1ra8
r1ra9: RoomAvailability { day = 9 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra9.roomId -- r1
hospital.roomAvailabilities -- r1ra9
r1ra10: RoomAvailability { day = 10 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra10.roomId -- r1
hospital.roomAvailabilities -- r1ra10
r1ra11: RoomAvailability { day = 11 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra11.roomId -- r1
hospital.roomAvailabilities -- r1ra11
r1ra12: RoomAvailability { day = 12 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra12.roomId -- r1
hospital.roomAvailabilities -- r1ra12
r1ra13: RoomAvailability { day = 13 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
r1ra13.roomId -- r1
hospital.roomAvailabilities -- r1ra13

hs_r0_d0_s0: HospitalisationShift { day = 0 shift = 0 roomNumber = 0 workload = 4 skillLevelRequired = 1 }
hs_r0_d0_s0.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s0
hs_r0_d0_s1: HospitalisationShift { day = 0 shift = 1 roomNumber = 0 workload = 3 skillLevelRequired = 1 }
hs_r0_d0_s1.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s1
hs_r0_d0_s2: HospitalisationShift { day = 0 shift = 2 roomNumber = 0 workload = 2 skillLevelRequired = 0 }
hs_r0_d0_s2.room -- r0
hospital.hospitalisationShifts -- hs_r0_d0_s2

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

n6ws0: NurseWorkingShift { day = 9 shift = 1 maxLoad = 10 }
n6ws0.nurse -- n6
hospital.nurseWorkingShifts -- n6ws0

tracker: DeletedAdmissionsTracker { count = 0 }
hospital.deletedAdmissionsTrackers -- tracker
