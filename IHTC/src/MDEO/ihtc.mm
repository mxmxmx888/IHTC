// Patient gender values preserved from the source data.
enum Gender {
    M
    F
}

// Patient age groups; EMPTY marks an unoccupied room-day record.
enum AgeGroup {
    BABY
    CHILD
    YOUNG
    ADULT
    ELDERLY
    EMPTY
}

// One-way optimisation phases used to gate patient and nurse mutations.
enum OptimisationPhase {
    PATIENTS
    NURSES
}

// Root container for the complete hospital scheduling instance.
class HospitalInstance {
    decisionHorizon: int
}
// Collections and state owned by the hospital instance.
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
HospitalInstance.optimisationState[1..1] --> OptimisationState
HospitalInstance.admissions[0..*] --> Admission

// Patient and the attributes needed to decide and evaluate an admission.
class Patient {
    id: int
    isMandatory: boolean
    isScheduled: boolean
    dueDate: int
    releaseDate: int
    ageGroup: AgeGroup
    surgeryDuration: int
    gender: Gender
    stayLength: int
}
// The assigned surgeon is fixed input; demands describe care after admission.
Patient.assignedSurgeonId[1..1] --> Surgeon
Patient.incompatibleRooms[0..*] --> Room
Patient.dayDemand[1..*] --> PatientDayDemand

// Optional representation of a pre-existing occupant from an input instance.
class Occupant {
    stayLength: int
}
Occupant.patientId[1..1] --> Patient
Occupant.assignedRoomId[1..1] --> Room

// Physical hospital room with its maximum number of occupied beds.
class Room {
    id: int
    maxCapacity: int
}

// Surgeon identified for patient assignment and daily availability.
class Surgeon {
    id: int
}

// Operating theatre used by an admission and daily theatre availability.
class OperatingTheatre {
    id: int
}

// Decision record linking one scheduled patient to a day, room, and theatre.
class Admission {
    admissionDay: int
}
Admission.patientId[1..1] --> Patient
Admission.roomId[1..1] --> Room
Admission.operationTheatreId[1..1] --> OperatingTheatre

// Surgeon operating-time capacity for a single day.
class SurgeonAvailability {
    day: int
    maxOperatingTime: int
}
SurgeonAvailability.surgeonId[1..1] --> Surgeon

// Operating-theatre capacity for a single day.
class OperatingTheatreAvailability {
    day: int
    maxCapacity: int
}
OperatingTheatreAvailability.operatingTheatreId[1..1] --> OperatingTheatre

// Derived room-day state maintained by patient transformations.
class RoomAvailability {
    day: int
    occupiedBeds: int
    ageGroup: AgeGroup
    roomNumber: int
}
RoomAvailability.roomId[1..1] --> Room

// Accumulates admissions removed by patient removal and replacement moves.
class DeletedAdmissionsTracker {
    count: int
}

// Pre-created structural slot for one room, day, and nursing shift.
// Its workload and required skill are derived from admissions and patient demand.
class HospitalisationShift {
    day: int
    shift: int
}
HospitalisationShift.room[1..1] --> Room

// Singleton state controlling the transition from patient to nurse mutations.
class OptimisationState {
    phase: OptimisationPhase
}

// Nurse with the skill level used for room-shift compatibility.
class Nurse {
    id: int
    skillLevel: int
}

// A nurse's available day and shift with their maximum workload.
class NurseWorkingShift {
    day: int
    shift: int
    maxLoad: int
}
NurseWorkingShift.nurse[1..1] --> Nurse

// Decision record assigning one nurse to one structural room-day-shift slot.
class RoomShiftAssignment {
}
RoomShiftAssignment.nurse[1..1] --> Nurse
RoomShiftAssignment.hospitalisationShift[1..1] --> HospitalisationShift

// Nursing demand produced by a patient on a relative admission day and shift.
class PatientDayDemand {
    relativeDay: int
    shift: int
    workloadProduced: int
    skillLevelRequired: int
}
PatientDayDemand.patient[1..1] --> Patient
