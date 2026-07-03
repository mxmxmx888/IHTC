using "./ihtc.mm"

hospital: HospitalInstance {
    decisionHorizon = 5
}

s1: Surgeon {
    id = 1
}

s2: Surgeon {
    id = 2
}

ot1: OperatingTheatre {
    id = 1
}

ot2: OperatingTheatre {
    id = 2
}

r1: Room {
    id = 1
    maxCapacity = 2
}

r2: Room {
    id = 2
    maxCapacity = 1
}

p1: Patient {
    id = 1
    isMandatory = true
    dueDate = 2
    releaseDate = 1
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 2
    gender = Gender.M
    stayLength = 2
}
p2: Patient {
    id = 2
    isMandatory = true
    dueDate = 3
    releaseDate = 1
    ageGroup = AgeGroup.ELDERLY
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 3
}
p3: Patient {
    id = 3
    isMandatory = false
    dueDate = 4
    releaseDate = 2
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 2
}
p4: Patient {
    id = 4
    isMandatory = false
    dueDate = 5
    releaseDate = 2
    ageGroup = AgeGroup.CHILD
    surgeryDuration = 1
    gender = Gender.M
    stayLength = 1
}
p5: Patient {
    id = 5
    isMandatory = false
    dueDate = 5
    releaseDate = 3
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 2
    gender = Gender.M
    stayLength = 2
}

p1.assignedSurgeonId -- s1
p2.assignedSurgeonId -- s1
p3.assignedSurgeonId -- s2
p4.assignedSurgeonId -- s2
p5.assignedSurgeonId -- s1

p2.incompatibleRooms -- r2
p4.incompatibleRooms -- r1

hospital.patients -- p1
hospital.patients -- p2
hospital.patients -- p3
hospital.patients -- p4
hospital.patients -- p5

hospital.surgeons -- s1
hospital.surgeons -- s2

hospital.operatingtheatres -- ot1
hospital.operatingtheatres -- ot2

hospital.rooms -- r1
hospital.rooms -- r2

occ1: Occupant {
    stayLength = 2
}
occ1.patientId -- p5
occ1.assignedRoomId -- r1

a1: Admission {
    admissionDay = 1
}
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1

a2: Admission {
    admissionDay = 2
}
a2.patientId -- p2
a2.roomId -- r1
a2.operationTheatreId -- ot1

sa1: SurgeonAvailability {
    day = 1
    maxOperatingTime = 2
}
sa1.surgeonId -- s1

sa2: SurgeonAvailability {
    day = 2
    maxOperatingTime = 3
}
sa2.surgeonId -- s1

sa3: SurgeonAvailability {
    day = 2
    maxOperatingTime = 2
}
sa3.surgeonId -- s2

sa4: SurgeonAvailability {
    day = 3
    maxOperatingTime = 2
}
sa4.surgeonId -- s2

ota1: OperatingTheatreAvailability {
    day = 1
    maxCapacity = 1
}
ota1.operatingTheatreId -- ot1

ota2: OperatingTheatreAvailability {
    day = 2
    maxCapacity = 1
}
ota2.operatingTheatreId -- ot1

ota3: OperatingTheatreAvailability {
    day = 2
    maxCapacity = 1
}
ota3.operatingTheatreId -- ot2

ota4: OperatingTheatreAvailability {
    day = 3
    maxCapacity = 1
}
ota4.operatingTheatreId -- ot2

ra1: RoomAvailability {
    day = 1
}
ra1.roomId -- r1

ra2: RoomAvailability {
    day = 2
}
ra2.roomId -- r1

ra3: RoomAvailability {
    day = 3
}
ra3.roomId -- r1

ra4: RoomAvailability {
    day = 2
}
ra4.roomId -- r2

ra5: RoomAvailability {
    day = 3
}
ra5.roomId -- r2