using "../ihtc.mm"

hospital: HospitalInstance {
    decisionHorizon = 5
}

s1: Surgeon {
    id = 1
}

r1: Room {
    id = 1
    maxCapacity = 2
}

ot1: OperatingTheatre {
    id = 1
}

hospital.surgeons -- s1
hospital.rooms -- r1
hospital.operatingtheatres -- ot1

p1: Patient {
    id = 1
    isMandatory = false
    isScheduled = false
    dueDate = 4
    releaseDate = 1
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 2
    gender = Gender.M
    stayLength = 3
}
p1.assignedSurgeonId -- s1
hospital.patients -- p1

sa1: SurgeonAvailability {
    day = 1
    maxOperatingTime = 4
}
sa1.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1

ota1: OperatingTheatreAvailability {
    day = 1
    maxCapacity = 4
}
ota1.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1

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