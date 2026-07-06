enum Status{
    SCHEDULED
    POSTPONED
}
enum Gender {
    M
    F 
}
enum Priority {
    MANDATORY
    NON_MANDATORY
}
enum AgeGroup {
    CHILD
    ADULT
    ELDERLY
}


class HospitalInstance {
    decisionHorizon: int
}
HospitalInstance.patients[0..*]--> Patient 
HospitalInstance.operatingtheatres[0..*]-->OperatingTheatre
HospitalInstance.surgeons[0..*]-->Surgeon
HospitalInstance.rooms[0..*]-->Room


class Patient {
    id: int
    isMandatory: boolean
    isScheduled: boolean //temporary workaround for Transformation 2
    dueDate: int
    releaseDate: int
    ageGroup: AgeGroup
    surgeryDuration: int
    gender: Gender
    stayLength: int
}
Patient.assignedSurgeonId[1..1]--> Surgeon
Patient.incompatibleRooms[0..*] --> Room

class Occupant {
    stayLength: int
}
Occupant.patientId[1..1] --> Patient
Occupant.assignedRoomId[1..1] --> Room

class Room {
    id: int
    maxCapacity: int
}

class Surgeon {
    id: int
}

class OperatingTheatre {
    id: int 
}

class Admission {
    admissionDay: int 
}
Admission.patientId[1..1] --> Patient
Admission.roomId[1..1]--> Room
Admission.operationTheatreId[1..1]--> OperatingTheatre


class SurgeonAvailability {
    day: int
    maxOperatingTime: int 
}

class DeletedAdmissionsTracker {
    count: int 
}
SurgeonAvailability.surgeonId[1..1] --> Surgeon

class OperatingTheatreAvailability {
    day: int 
    maxCapacity: int 
}
OperatingTheatreAvailability.operatingTheatreId[1..1] --> OperatingTheatre

class RoomAvailability {
    day: int
    occupiedBeds: int
}
RoomAvailability.roomId[1..1] --> Room



