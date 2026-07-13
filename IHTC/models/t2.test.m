using "../ihtc.mm"


hospital: HospitalInstance { decisionHorizon = 3 }

s0: Surgeon { id = 0 }
hospital.surgeons -- s0

t0: OperatingTheatre { id = 0 }
hospital.operatingtheatres -- t0

r0: Room { id = 0 maxCapacity = 2 }
r1: Room { id = 1 maxCapacity = 2 }
hospital.rooms -- r0
hospital.rooms -- r1

p0: Patient { id = 0 isMandatory = true isScheduled = true dueDate = 1 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.M stayLength = 2 }
p0.assignedSurgeonId -- s0
hospital.patients -- p0

p1: Patient { id = 1 isMandatory = false isScheduled = false dueDate = 2 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 90 gender = Gender.F stayLength = 1 }
p1.assignedSurgeonId -- s0
hospital.patients -- p1

p2: Patient { id = 2 isMandatory = false isScheduled = false dueDate = 2 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 60 gender = Gender.M stayLength = 1 }
p2.assignedSurgeonId -- s0
hospital.patients -- p2

p3: Patient { id = 3 isMandatory = false isScheduled = false dueDate = 2 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 30 gender = Gender.F stayLength = 1 }
p3.assignedSurgeonId -- s0
p3.incompatibleRooms -- r1
hospital.patients -- p3

a0: Admission { admissionDay = 0 }
a0.patientId -- p0
a0.roomId -- r0
a0.operationTheatreId -- t0

sa0: SurgeonAvailability { day = 0 maxOperatingTime = 240 }
sa0.surgeonId -- s0
sa1: SurgeonAvailability { day = 1 maxOperatingTime = 240 }
sa1.surgeonId -- s0
sa2: SurgeonAvailability { day = 2 maxOperatingTime = 240 }
sa2.surgeonId -- s0

ta0: OperatingTheatreAvailability { day = 0 maxCapacity = 240 }
ta0.operatingTheatreId -- t0
ta1: OperatingTheatreAvailability { day = 1 maxCapacity = 240 }
ta1.operatingTheatreId -- t0
ta2: OperatingTheatreAvailability { day = 2 maxCapacity = 240 }
ta2.operatingTheatreId -- t0

ra0r0: RoomAvailability { day = 0 occupiedBeds = 1 }
ra0r0.roomId -- r0
ra1r0: RoomAvailability { day = 1 occupiedBeds = 0 }
ra1r0.roomId -- r0
ra2r0: RoomAvailability { day = 2 occupiedBeds = 0 }
ra2r0.roomId -- r0

ra0r1: RoomAvailability { day = 0 occupiedBeds = 0 }
ra0r1.roomId -- r1
ra1r1: RoomAvailability { day = 1 occupiedBeds = 0 }
ra1r1.roomId -- r1
ra2r1: RoomAvailability { day = 2 occupiedBeds = 0 }
ra2r1.roomId -- r1