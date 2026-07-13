using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 3 }

s0: Surgeon { id = 0 }
hospital.surgeons -- s0

t0: OperatingTheatre { id = 0 }
t1: OperatingTheatre { id = 1 }
hospital.operatingtheatres -- t0
hospital.operatingtheatres -- t1

r0: Room { id = 0 maxCapacity = 2 }
r1: Room { id = 1 maxCapacity = 2 }
hospital.rooms -- r0
hospital.rooms -- r1

n0: Nurse { id = 0 skillLevel = 1 }
n1: Nurse { id = 1 skillLevel = 0 }
hospital.nurses -- n0
hospital.nurses -- n1

p0: Patient { id = 0 isMandatory = true isScheduled = true dueDate = 1 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.M stayLength = 2 }
p0.assignedSurgeonId -- s0
hospital.patients -- p0

p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 2 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 2 }
p1.assignedSurgeonId -- s0
hospital.patients -- p1

p2: Patient { id = 2 isMandatory = false isScheduled = false dueDate = 2 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 60 gender = Gender.M stayLength = 1 }
p2.assignedSurgeonId -- s0
p2.incompatibleRooms -- r1
hospital.patients -- p2

p0d0: PatientDayDemand { relativeDay = 0 workloadProduced = 4 skillLevelRequired = 1 }
p0d0.patient -- p0
p0.dayDemand -- p0d0
p0d1: PatientDayDemand { relativeDay = 1 workloadProduced = 3 skillLevelRequired = 0 }
p0d1.patient -- p0
p0.dayDemand -- p0d1

p1d0: PatientDayDemand { relativeDay = 0 workloadProduced = 3 skillLevelRequired = 0 }
p1d0.patient -- p1
p1.dayDemand -- p1d0
p1d1: PatientDayDemand { relativeDay = 1 workloadProduced = 4 skillLevelRequired = 1 }
p1d1.patient -- p1
p1.dayDemand -- p1d1

p2d0: PatientDayDemand { relativeDay = 0 workloadProduced = 2 skillLevelRequired = 0 }
p2d0.patient -- p2
p2.dayDemand -- p2d0

a0: Admission { admissionDay = 0 }
a0.patientId -- p0
a0.roomId -- r0
a0.operationTheatreId -- t0

a1: Admission { admissionDay = 0 }
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- t1

sa0d0: SurgeonAvailability { day = 0 maxOperatingTime = 240 }
sa0d0.surgeonId -- s0
sa0d1: SurgeonAvailability { day = 1 maxOperatingTime = 240 }
sa0d1.surgeonId -- s0
sa0d2: SurgeonAvailability { day = 2 maxOperatingTime = 120 }
sa0d2.surgeonId -- s0

t0d0: OperatingTheatreAvailability { day = 0 maxCapacity = 240 }
t0d0.operatingTheatreId -- t0
t0d1: OperatingTheatreAvailability { day = 1 maxCapacity = 240 }
t0d1.operatingTheatreId -- t0
t0d2: OperatingTheatreAvailability { day = 2 maxCapacity = 120 }
t0d2.operatingTheatreId -- t0

t1d0: OperatingTheatreAvailability { day = 0 maxCapacity = 180 }
t1d0.operatingTheatreId -- t1
t1d1: OperatingTheatreAvailability { day = 1 maxCapacity = 180 }
t1d1.operatingTheatreId -- t1
t1d2: OperatingTheatreAvailability { day = 2 maxCapacity = 180 }
t1d2.operatingTheatreId -- t1

r0d0: RoomAvailability { day = 0 occupiedBeds = 1 }
r0d0.roomId -- r0
r0d1: RoomAvailability { day = 1 occupiedBeds = 1 }
r0d1.roomId -- r0
r0d2: RoomAvailability { day = 2 occupiedBeds = 0 }
r0d2.roomId -- r0

r1d0: RoomAvailability { day = 0 occupiedBeds = 1 }
r1d0.roomId -- r1
r1d1: RoomAvailability { day = 1 occupiedBeds = 1 }
r1d1.roomId -- r1
r1d2: RoomAvailability { day = 2 occupiedBeds = 0 }
r1d2.roomId -- r1

hs_r0_d0_s0: HospitalisationShift { day = 0 shift = 0 workload = 4 skillLevelRequired = 1 }
hs_r0_d0_s0.room -- r0
hs_r0_d0_s0.patient -- p0

hs_r1_d0_s0: HospitalisationShift { day = 0 shift = 0 workload = 3 skillLevelRequired = 0 }
hs_r1_d0_s0.room -- r1
hs_r1_d0_s0.patient -- p1

hs_r0_d1_s0: HospitalisationShift { day = 1 shift = 0 workload = 3 skillLevelRequired = 0 }
hs_r0_d1_s0.room -- r0
hs_r0_d1_s0.patient -- p0

hs_r1_d1_s0: HospitalisationShift { day = 1 shift = 0 workload = 4 skillLevelRequired = 1 }
hs_r1_d1_s0.room -- r1
hs_r1_d1_s0.patient -- p1

n0w0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 5 }
n0w0.nurse -- n0
n0w1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 5 }
n0w1.nurse -- n0
n1w0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 4 }
n1w0.nurse -- n1
n1w1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 4 }
n1w1.nurse -- n1

rsa0: RoomShiftAssignment {}
rsa0.nurse -- n0
rsa0.hospitalisationShift -- hs_r0_d0_s0

rsa1: RoomShiftAssignment {}
rsa1.nurse -- n1
rsa1.hospitalisationShift -- hs_r1_d0_s0

tracker: DeletedAdmissionsTracker { count = 0 }