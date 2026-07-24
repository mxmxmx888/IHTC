using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 3 }

s1: Surgeon { id = 1 }

r1: Room { id = 1 maxCapacity = 2 }
r2: Room { id = 2 maxCapacity = 2 }

ot1: OperatingTheatre { id = 1 }

p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }

hospital.patients -- p1
hospital.rooms -- r1
hospital.rooms -- r2
hospital.surgeons -- s1
hospital.operatingtheatres -- ot1

p1.assignedSurgeonId -- s1

a1: Admission { admissionDay = 1 }
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1

ra1: RoomAvailability { day = 1 occupiedBeds = 1 }
ra2: RoomAvailability { day = 1 occupiedBeds = 0 }

ra1.roomId -- r1
ra2.roomId -- r2