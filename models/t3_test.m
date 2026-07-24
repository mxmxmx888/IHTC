using "../ihtc.mm"

hospital: HospitalInstance {
    decisionHorizon = 6
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

ot1: OperatingTheatre {
    id = 1
}

hospital.surgeons -- s1
hospital.surgeons -- s2
hospital.rooms -- r1
hospital.operatingtheatres -- ot1

p1: Patient {
    id = 1
    isMandatory = false
    isScheduled = false
    dueDate = 4
    releaseDate = 2
    ageGroup = AgeGroup.CHILD
    surgeryDuration = 2
    gender = Gender.F
    stayLength = 2
}
p1.assignedSurgeonId -- s1
hospital.patients -- p1

p2: Patient {
    id = 2
    isMandatory = false
    isScheduled = false
    dueDate = 3
    releaseDate = 0
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.M
    stayLength = 2
}
p2.assignedSurgeonId -- s2
hospital.patients -- p2

sa1: SurgeonAvailability {
    day = 2
    maxOperatingTime = 4
}
sa1.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1

sa2: SurgeonAvailability {
    day = 0
    maxOperatingTime = 3
}
sa2.surgeonId -- s2
hospital.surgeonAvailabilities -- sa2

ota0: OperatingTheatreAvailability {
    day = 0
    maxCapacity = 4
}
ota0.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota0

ota2: OperatingTheatreAvailability {
    day = 2
    maxCapacity = 4
}
ota2.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota2

ra0: RoomAvailability {
    day = 0
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
ra0.roomId -- r1
hospital.roomAvailabilities -- ra0

ra1: RoomAvailability {
    day = 1
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
ra1.roomId -- r1
hospital.roomAvailabilities -- ra1

ra2: RoomAvailability {
    day = 2
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
ra2.roomId -- r1
hospital.roomAvailabilities -- ra2

ra3: RoomAvailability {
    day = 3
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
ra3.roomId -- r1
hospital.roomAvailabilities -- ra3

ra4: RoomAvailability {
    day = 4
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
ra4.roomId -- r1
hospital.roomAvailabilities -- ra4

ra5: RoomAvailability {
    day = 5
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
ra5.roomId -- r1
hospital.roomAvailabilities -- ra5