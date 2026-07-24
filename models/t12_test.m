using "../ihtc.mm"

hospital: HospitalInstance {
    decisionHorizon = 6
}

s1: Surgeon {
    id = 1
}

r1: Room {
    id = 1
    maxCapacity = 2
}

r2: Room {
    id = 2
    maxCapacity = 2
}

ot1: OperatingTheatre {
    id = 1
}

hospital.surgeons -- s1
hospital.rooms -- r1
hospital.rooms -- r2
hospital.operatingtheatres -- ot1

p1: Patient {
    id = 1
    isMandatory = false
    isScheduled = true
    dueDate = 4
    releaseDate = 1
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.M
    stayLength = 2
}
p1.assignedSurgeonId -- s1
hospital.patients -- p1

a1: Admission {
    admissionDay = 1
}
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1

sa1: SurgeonAvailability {
    day = 3
    maxOperatingTime = 3
}
sa1.surgeonId -- s1
hospital.surgeonAvailabilities -- sa1

ota1: OperatingTheatreAvailability {
    day = 3
    maxCapacity = 3
}
ota1.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota1

oldRa0: RoomAvailability {
    day = 0
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
oldRa0.roomId -- r1
hospital.roomAvailabilities -- oldRa0

oldRa1: RoomAvailability {
    day = 1
    occupiedBeds = 1
    ageGroup = AgeGroup.ADULT
    roomNumber = 1
}
oldRa1.roomId -- r1
hospital.roomAvailabilities -- oldRa1

oldRa2: RoomAvailability {
    day = 2
    occupiedBeds = 1
    ageGroup = AgeGroup.ADULT
    roomNumber = 1
}
oldRa2.roomId -- r1
hospital.roomAvailabilities -- oldRa2

oldRa3: RoomAvailability {
    day = 3
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
oldRa3.roomId -- r1
hospital.roomAvailabilities -- oldRa3

oldRa4: RoomAvailability {
    day = 4
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
oldRa4.roomId -- r1
hospital.roomAvailabilities -- oldRa4

oldRa5: RoomAvailability {
    day = 5
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 1
}
oldRa5.roomId -- r1
hospital.roomAvailabilities -- oldRa5

newRa0: RoomAvailability {
    day = 0
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 2
}
newRa0.roomId -- r2
hospital.roomAvailabilities -- newRa0

newRa1: RoomAvailability {
    day = 1
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 2
}
newRa1.roomId -- r2
hospital.roomAvailabilities -- newRa1

newRa2: RoomAvailability {
    day = 2
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 2
}
newRa2.roomId -- r2
hospital.roomAvailabilities -- newRa2

newRa3: RoomAvailability {
    day = 3
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 2
}
newRa3.roomId -- r2
hospital.roomAvailabilities -- newRa3

newRa4: RoomAvailability {
    day = 4
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 2
}
newRa4.roomId -- r2
hospital.roomAvailabilities -- newRa4

newRa5: RoomAvailability {
    day = 5
    occupiedBeds = 0
    ageGroup = AgeGroup.EMPTY
    roomNumber = 2
}
newRa5.roomId -- r2
hospital.roomAvailabilities -- newRa5