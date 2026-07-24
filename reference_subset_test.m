using "./ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 14 }

s0: Surgeon { id = 0 }
t0: OperatingTheatre { id = 0 }
t1: OperatingTheatre { id = 1 }
r0: Room { id = 0 maxCapacity = 2 }
r1: Room { id = 1 maxCapacity = 2 }

hospital.surgeons -- s0
hospital.operatingtheatres -- t0
hospital.operatingtheatres -- t1
hospital.rooms -- r0
hospital.rooms -- r1

p0: Patient { id = 0 isMandatory = true isScheduled = true dueDate = 11 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 240 gender = Gender.F stayLength = 5 }
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

p2: Patient { id = 2 isMandatory = true isScheduled = true dueDate = 13 releaseDate = 4 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.M stayLength = 6 }
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

a0: Admission { admissionDay = 0 }
a0.patientId -- p0
a0.roomId -- r0
a0.operationTheatreId -- t0

a2: Admission { admissionDay = 4 }
a2.patientId -- p2
a2.roomId -- r1
a2.operationTheatreId -- t1

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
ota0d0.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d0
ota0d1: OperatingTheatreAvailability { day = 1 maxCapacity = 720 }
ota0d1.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d1
ota0d2: OperatingTheatreAvailability { day = 2 maxCapacity = 720 }
ota0d2.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d2
ota0d3: OperatingTheatreAvailability { day = 3 maxCapacity = 600 }
ota0d3.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d3
ota0d4: OperatingTheatreAvailability { day = 4 maxCapacity = 600 }
ota0d4.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d4
ota0d5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
ota0d5.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d5
ota0d6: OperatingTheatreAvailability { day = 6 maxCapacity = 480 }
ota0d6.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d6
ota0d7: OperatingTheatreAvailability { day = 7 maxCapacity = 720 }
ota0d7.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d7
ota0d8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
ota0d8.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d8
ota0d9: OperatingTheatreAvailability { day = 9 maxCapacity = 600 }
ota0d9.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d9
ota0d10: OperatingTheatreAvailability { day = 10 maxCapacity = 0 }
ota0d10.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d10
ota0d11: OperatingTheatreAvailability { day = 11 maxCapacity = 0 }
ota0d11.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d11
ota0d12: OperatingTheatreAvailability { day = 12 maxCapacity = 480 }
ota0d12.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d12
ota0d13: OperatingTheatreAvailability { day = 13 maxCapacity = 720 }
ota0d13.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ota0d13
ota1d0: OperatingTheatreAvailability { day = 0 maxCapacity = 720 }
ota1d0.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d0
ota1d1: OperatingTheatreAvailability { day = 1 maxCapacity = 600 }
ota1d1.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d1
ota1d2: OperatingTheatreAvailability { day = 2 maxCapacity = 600 }
ota1d2.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d2
ota1d3: OperatingTheatreAvailability { day = 3 maxCapacity = 720 }
ota1d3.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d3
ota1d4: OperatingTheatreAvailability { day = 4 maxCapacity = 600 }
ota1d4.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d4
ota1d5: OperatingTheatreAvailability { day = 5 maxCapacity = 0 }
ota1d5.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d5
ota1d6: OperatingTheatreAvailability { day = 6 maxCapacity = 0 }
ota1d6.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d6
ota1d7: OperatingTheatreAvailability { day = 7 maxCapacity = 0 }
ota1d7.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d7
ota1d8: OperatingTheatreAvailability { day = 8 maxCapacity = 600 }
ota1d8.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d8
ota1d9: OperatingTheatreAvailability { day = 9 maxCapacity = 720 }
ota1d9.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d9
ota1d10: OperatingTheatreAvailability { day = 10 maxCapacity = 480 }
ota1d10.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d10
ota1d11: OperatingTheatreAvailability { day = 11 maxCapacity = 600 }
ota1d11.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d11
ota1d12: OperatingTheatreAvailability { day = 12 maxCapacity = 0 }
ota1d12.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d12
ota1d13: OperatingTheatreAvailability { day = 13 maxCapacity = 600 }
ota1d13.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ota1d13

ra0d0: RoomAvailability { day = 0 occupiedBeds = 1 }
ra0d0.roomId -- r0
hospital.roomAvailabilities -- ra0d0
ra1d0: RoomAvailability { day = 0 occupiedBeds = 0 }
ra1d0.roomId -- r1
hospital.roomAvailabilities -- ra1d0
ra0d1: RoomAvailability { day = 1 occupiedBeds = 1 }
ra0d1.roomId -- r0
hospital.roomAvailabilities -- ra0d1
ra1d1: RoomAvailability { day = 1 occupiedBeds = 0 }
ra1d1.roomId -- r1
hospital.roomAvailabilities -- ra1d1
ra0d2: RoomAvailability { day = 2 occupiedBeds = 1 }
ra0d2.roomId -- r0
hospital.roomAvailabilities -- ra0d2
ra1d2: RoomAvailability { day = 2 occupiedBeds = 0 }
ra1d2.roomId -- r1
hospital.roomAvailabilities -- ra1d2
ra0d3: RoomAvailability { day = 3 occupiedBeds = 1 }
ra0d3.roomId -- r0
hospital.roomAvailabilities -- ra0d3
ra1d3: RoomAvailability { day = 3 occupiedBeds = 0 }
ra1d3.roomId -- r1
hospital.roomAvailabilities -- ra1d3
ra0d4: RoomAvailability { day = 4 occupiedBeds = 1 }
ra0d4.roomId -- r0
hospital.roomAvailabilities -- ra0d4
ra1d4: RoomAvailability { day = 4 occupiedBeds = 1 }
ra1d4.roomId -- r1
hospital.roomAvailabilities -- ra1d4
ra0d5: RoomAvailability { day = 5 occupiedBeds = 0 }
ra0d5.roomId -- r0
hospital.roomAvailabilities -- ra0d5
ra1d5: RoomAvailability { day = 5 occupiedBeds = 1 }
ra1d5.roomId -- r1
hospital.roomAvailabilities -- ra1d5
ra0d6: RoomAvailability { day = 6 occupiedBeds = 0 }
ra0d6.roomId -- r0
hospital.roomAvailabilities -- ra0d6
ra1d6: RoomAvailability { day = 6 occupiedBeds = 1 }
ra1d6.roomId -- r1
hospital.roomAvailabilities -- ra1d6
ra0d7: RoomAvailability { day = 7 occupiedBeds = 0 }
ra0d7.roomId -- r0
hospital.roomAvailabilities -- ra0d7
ra1d7: RoomAvailability { day = 7 occupiedBeds = 1 }
ra1d7.roomId -- r1
hospital.roomAvailabilities -- ra1d7
ra0d8: RoomAvailability { day = 8 occupiedBeds = 0 }
ra0d8.roomId -- r0
hospital.roomAvailabilities -- ra0d8
ra1d8: RoomAvailability { day = 8 occupiedBeds = 1 }
ra1d8.roomId -- r1
hospital.roomAvailabilities -- ra1d8
ra0d9: RoomAvailability { day = 9 occupiedBeds = 0 }
ra0d9.roomId -- r0
hospital.roomAvailabilities -- ra0d9
ra1d9: RoomAvailability { day = 9 occupiedBeds = 1 }
ra1d9.roomId -- r1
hospital.roomAvailabilities -- ra1d9
ra0d10: RoomAvailability { day = 10 occupiedBeds = 0 }
ra0d10.roomId -- r0
hospital.roomAvailabilities -- ra0d10
ra1d10: RoomAvailability { day = 10 occupiedBeds = 0 }
ra1d10.roomId -- r1
hospital.roomAvailabilities -- ra1d10
ra0d11: RoomAvailability { day = 11 occupiedBeds = 0 }
ra0d11.roomId -- r0
hospital.roomAvailabilities -- ra0d11
ra1d11: RoomAvailability { day = 11 occupiedBeds = 0 }
ra1d11.roomId -- r1
hospital.roomAvailabilities -- ra1d11
ra0d12: RoomAvailability { day = 12 occupiedBeds = 0 }
ra0d12.roomId -- r0
hospital.roomAvailabilities -- ra0d12
ra1d12: RoomAvailability { day = 12 occupiedBeds = 0 }
ra1d12.roomId -- r1
hospital.roomAvailabilities -- ra1d12
ra0d13: RoomAvailability { day = 13 occupiedBeds = 0 }
ra0d13.roomId -- r0
hospital.roomAvailabilities -- ra0d13
ra1d13: RoomAvailability { day = 13 occupiedBeds = 0 }
ra1d13.roomId -- r1
hospital.roomAvailabilities -- ra1d13

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

hs_r0_d0_s0: HospitalisationShift { day = 0 shift = 0 workload = 2 skillLevelRequired = 0 }
hs_r0_d0_s0.room -- r0
hs_r0_d0_s0.patient -- p0
hospital.hospitalisationShifts -- hs_r0_d0_s0
hs_r0_d0_s1: HospitalisationShift { day = 0 shift = 1 workload = 2 skillLevelRequired = 0 }
hs_r0_d0_s1.room -- r0
hs_r0_d0_s1.patient -- p0
hospital.hospitalisationShifts -- hs_r0_d0_s1
hs_r0_d0_s2: HospitalisationShift { day = 0 shift = 2 workload = 1 skillLevelRequired = 0 }
hs_r0_d0_s2.room -- r0
hs_r0_d0_s2.patient -- p0
hospital.hospitalisationShifts -- hs_r0_d0_s2

rsa0: RoomShiftAssignment {}
rsa0.nurse -- n2
rsa0.hospitalisationShift -- hs_r0_d0_s0
hospital.roomShiftAssignments -- rsa0
rsa1: RoomShiftAssignment {}
rsa1.nurse -- n0
rsa1.hospitalisationShift -- hs_r0_d0_s1
hospital.roomShiftAssignments -- rsa1
rsa2: RoomShiftAssignment {}
rsa2.nurse -- n4
rsa2.hospitalisationShift -- hs_r0_d0_s2
hospital.roomShiftAssignments -- rsa2
