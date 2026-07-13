using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 4 }

s0: Surgeon { id = 0 }
s1: Surgeon { id = 1 }
hospital.surgeons -- s0
hospital.surgeons -- s1

t0: OperatingTheatre { id = 0 }
t1: OperatingTheatre { id = 1 }
hospital.operatingtheatres -- t0
hospital.operatingtheatres -- t1

r0: Room { id = 0 maxCapacity = 2 }
r1: Room { id = 1 maxCapacity = 2 }
hospital.rooms -- r0
hospital.rooms -- r1

p0: Patient { id = 0 isMandatory = false isScheduled = false dueDate = 3 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 60 gender = Gender.M stayLength = 1 }
p0.assignedSurgeonId -- s1
hospital.patients -- p0

p1: Patient { id = 1 isMandatory = false isScheduled = false dueDate = 3 releaseDate = 0 ageGroup = AgeGroup.ELDERLY surgeryDuration = 90 gender = Gender.F stayLength = 1 }
p1.assignedSurgeonId -- s0
hospital.patients -- p1

p2: Patient { id = 2 isMandatory = true isScheduled = true dueDate = 2 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 120 gender = Gender.M stayLength = 2 }
p2.assignedSurgeonId -- s0
hospital.patients -- p2

a0: Admission { admissionDay = 0 }
a0.patientId -- p2
a0.roomId -- r0
a0.operationTheatreId -- t0

sa_s0_d0: SurgeonAvailability { day = 0 maxOperatingTime = 0 }
sa_s0_d0.surgeonId -- s0
hospital.surgeonAvailabilities -- sa_s0_d0

sa_s0_d1: SurgeonAvailability { day = 1 maxOperatingTime = 180 }
sa_s0_d1.surgeonId -- s0
hospital.surgeonAvailabilities -- sa_s0_d1

sa_s1_d0: SurgeonAvailability { day = 0 maxOperatingTime = 120 }
sa_s1_d0.surgeonId -- s1
hospital.surgeonAvailabilities -- sa_s1_d0

sa_s1_d1: SurgeonAvailability { day = 1 maxOperatingTime = 120 }
sa_s1_d1.surgeonId -- s1
hospital.surgeonAvailabilities -- sa_s1_d1

ta_t0_d0: OperatingTheatreAvailability { day = 0 maxCapacity = 180 }
ta_t0_d0.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ta_t0_d0

ta_t0_d1: OperatingTheatreAvailability { day = 1 maxCapacity = 180 }
ta_t0_d1.operatingTheatreId -- t0
hospital.operatingTheatreAvailabilities -- ta_t0_d1

ta_t1_d0: OperatingTheatreAvailability { day = 0 maxCapacity = 180 }
ta_t1_d0.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ta_t1_d0

ta_t1_d1: OperatingTheatreAvailability { day = 1 maxCapacity = 180 }
ta_t1_d1.operatingTheatreId -- t1
hospital.operatingTheatreAvailabilities -- ta_t1_d1

ra_r0_d0: RoomAvailability { day = 0 occupiedBeds = 1 }
ra_r0_d0.roomId -- r0
hospital.roomAvailabilities -- ra_r0_d0

ra_r0_d1: RoomAvailability { day = 1 occupiedBeds = 0 }
ra_r0_d1.roomId -- r0
hospital.roomAvailabilities -- ra_r0_d1

ra_r1_d0: RoomAvailability { day = 0 occupiedBeds = 0 }
ra_r1_d0.roomId -- r1
hospital.roomAvailabilities -- ra_r1_d0

ra_r1_d1: RoomAvailability { day = 1 occupiedBeds = 0 }
ra_r1_d1.roomId -- r1
hospital.roomAvailabilities -- ra_r1_d1