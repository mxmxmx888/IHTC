using "./ihtc.mm"

hospital: HospitalInstance {
    decisionHorizon = 4
}

s1: Surgeon {
    id = 1
}

s2: Surgeon {
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

ot1: OperatingTheatre {
    id = 1
}

ot2: OperatingTheatre {
    id = 2
}

hospital.surgeons -- s1
hospital.surgeons -- s2
hospital.rooms -- r1
hospital.rooms -- r2
hospital.operatingtheatres -- ot1
hospital.operatingtheatres -- ot2

p1: Patient {
    id = 1
    isMandatory = true
    dueDate = 3
    releaseDate = 1
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 2
    gender = Gender.M
    stayLength = 2
}
p1.assignedSurgeonId -- s1

p2: Patient {
    id = 2
    isMandatory = false
    dueDate = 3
    releaseDate = 1
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 2
}
p2.assignedSurgeonId -- s2

p3: Patient {
    id = 3
    isMandatory = false
    dueDate = 4
    releaseDate = 2
    ageGroup = AgeGroup.ELDERLY
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 1
}
p3.assignedSurgeonId -- s1

p4: Patient {
    id = 4
    isMandatory = false
    dueDate = 4
    releaseDate = 2
    ageGroup = AgeGroup.CHILD
    surgeryDuration = 1
    gender = Gender.M
    stayLength = 1
}
p4.assignedSurgeonId -- s2
p4.incompatibleRooms -- r2

hospital.patients -- p1
hospital.patients -- p2
hospital.patients -- p3
hospital.patients -- p4

sa1d1: SurgeonAvailability {
    day = 1
    maxOperatingTime = 3
}
sa1d1.surgeonId -- s1

sa1d2: SurgeonAvailability {
    day = 2
    maxOperatingTime = 3
}
sa1d2.surgeonId -- s1

sa2d1: SurgeonAvailability {
    day = 1
    maxOperatingTime = 2
}
sa2d1.surgeonId -- s2

sa2d2: SurgeonAvailability {
    day = 2
    maxOperatingTime = 2
}
sa2d2.surgeonId -- s2

ota1d1: OperatingTheatreAvailability {
    day = 1
    maxCapacity = 3
}
ota1d1.operatingTheatreId -- ot1

ota1d2: OperatingTheatreAvailability {
    day = 2
    maxCapacity = 3
}
ota1d2.operatingTheatreId -- ot1

ota2d1: OperatingTheatreAvailability {
    day = 1
    maxCapacity = 2
}
ota2d1.operatingTheatreId -- ot2

ota2d2: OperatingTheatreAvailability {
    day = 2
    maxCapacity = 2
}
ota2d2.operatingTheatreId -- ot2

ra1d1: RoomAvailability {
    day = 1
}
ra1d1.roomId -- r1

ra1d2: RoomAvailability {
    day = 2
}
ra1d2.roomId -- r1

ra2d1: RoomAvailability {
    day = 1
}
ra2d1.roomId -- r2

ra2d2: RoomAvailability {
    day = 2
}
ra2d2.roomId -- r2

a1: Admission {
    admissionDay = 1
}
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1

a2: Admission {
    admissionDay = 1
}
a2.patientId -- p2
a2.roomId -- r2
a2.operationTheatreId -- ot2