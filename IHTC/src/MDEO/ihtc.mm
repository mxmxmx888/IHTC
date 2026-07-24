
enum Gender {
    M
    F 
}
enum AgeGroup {
    BABY
    CHILD
    YOUNG
    ADULT
    ELDERLY
    EMPTY
}




class HospitalInstance {
    decisionHorizon: int
}
HospitalInstance.patients[0..*] --> Patient
HospitalInstance.operatingtheatres[0..*] --> OperatingTheatre
HospitalInstance.surgeons[0..*] --> Surgeon
HospitalInstance.rooms[0..*] --> Room
HospitalInstance.nurses[0..*] --> Nurse
HospitalInstance.surgeonAvailabilities[0..*] --> SurgeonAvailability
HospitalInstance.operatingTheatreAvailabilities[0..*] --> OperatingTheatreAvailability
HospitalInstance.roomAvailabilities[0..*] --> RoomAvailability
HospitalInstance.hospitalisationShifts[0..*] --> HospitalisationShift
HospitalInstance.nurseWorkingShifts[0..*] --> NurseWorkingShift
HospitalInstance.roomShiftAssignments[0..*] --> RoomShiftAssignment
HospitalInstance.deletedAdmissionsTrackers[0..*] --> DeletedAdmissionsTracker



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
Patient.dayDemand[1..*] --> PatientDayDemand

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
    ageGroup: AgeGroup
    roomNumber: int
}
RoomAvailability.roomId[1..1] --> Room

class HospitalisationShift {
    day: int
    shift: int
    roomNumber: int
    workload: int
    skillLevelRequired: int
}
HospitalisationShift.room[1..1] --> Room
HospitalisationShift.patient[0..*] --> Patient

class Nurse {
    id: int
    skillLevel: int 
}

class NurseWorkingShift {
    day: int
    shift: int
    maxLoad: int
}
NurseWorkingShift.nurse[1..1] --> Nurse

class RoomShiftAssignment {
}
RoomShiftAssignment.nurse[1..1] --> Nurse
RoomShiftAssignment.hospitalisationShift[1..1] --> HospitalisationShift


class PatientDayDemand {
    relativeDay: int
    shift: int
    workloadProduced: int
    skillLevelRequired: int
}
PatientDayDemand.patient[1..1] --> Patient

