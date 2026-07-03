using "./ihtc.mm"


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
    dueDate = 4
    releaseDate = 1
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 2
}
p2.assignedSurgeonId -- s1

p3: Patient {
    id = 3
    isMandatory = false
    dueDate = 5
    releaseDate = 2
    ageGroup = AgeGroup.ELDERLY
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 1
}
p3.assignedSurgeonId -- s1

hospital.patients -- p1
hospital.patients -- p2
hospital.patients -- p3

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