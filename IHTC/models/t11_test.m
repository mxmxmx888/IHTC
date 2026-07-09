using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 4 }

s1: Surgeon { id = 1 }

r1: Room { id = 1 maxCapacity = 2 }
r2: Room { id = 2 maxCapacity = 2 }

ot1: OperatingTheatre { id = 1 }
ot2: OperatingTheatre { id = 2 }

p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }

hospital.patients -- p1
hospital.rooms -- r1
hospital.rooms -- r2
hospital.surgeons -- s1
hospital.operatingtheatres -- ot1
hospital.operatingtheatres -- ot2

p1.assignedSurgeonId -- s1

a1: Admission { admissionDay = 1 }
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1

sa1d1: SurgeonAvailability { day = 1 maxOperatingTime = 2 }
sa1d2: SurgeonAvailability { day = 2 maxOperatingTime = 2 }

sa1d1.surgeonId -- s1
sa1d2.surgeonId -- s1

ota1d1: OperatingTheatreAvailability { day = 1 maxCapacity = 2 }
ota1d2: OperatingTheatreAvailability { day = 2 maxCapacity = 2 }
ota2d1: OperatingTheatreAvailability { day = 1 maxCapacity = 2 }
ota2d2: OperatingTheatreAvailability { day = 2 maxCapacity = 2 }

ota1d1.operatingTheatreId -- ot1
ota1d2.operatingTheatreId -- ot1
ota2d1.operatingTheatreId -- ot2
ota2d2.operatingTheatreId -- ot2

ra1d1: RoomAvailability { day = 1 occupiedBeds = 1 }
ra1d2: RoomAvailability { day = 2 occupiedBeds = 0 }
ra2d1: RoomAvailability { day = 1 occupiedBeds = 0 }
ra2d2: RoomAvailability { day = 2 occupiedBeds = 0 }

ra1d1.roomId -- r1
ra1d2.roomId -- r1
ra2d1.roomId -- r2
ra2d2.roomId -- r2