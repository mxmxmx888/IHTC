using "../ihtc.mm"

ot1: OperatingTheatre {
    id = 1
}
p1: Patient {
    id = 1
    isMandatory = false
    isScheduled = true
    dueDate = 3
    releaseDate = 1
    ageGroup = ADULT.ADULT
    surgeryDuration = 1
    gender = M.M
    stayLength = 2
}
a1: Admission {
    admissionDay = 1
}
hospital: HospitalInstance {
    decisionHorizon = 5
}
s1: Surgeon {
    id = 1
}
n1: Nurse {
    id = 1
    skillLevel = 1
}
shift1: HospitalisationShift {
    day = 1
    shift = 0
    roomNumber = 1
    workload = 3
    skillLevelRequired = 2
}
r1: Room {
    id = 1
    maxCapacity = 2
}
d1: PatientDayDemand {
    relativeDay = 0
    shift = 0
    workloadProduced = 3
    skillLevelRequired = 2
}
nws1: NurseWorkingShift {
    day = 1
    shift = 0
    maxLoad = 2
}
assignment: RoomShiftAssignment {}
p1.assignedSurgeonId -- s1
p1.dayDemand -- d1
a1.patientId -- p1
a1.operationTheatreId -- ot1
a1.roomId -- r1
hospital.rooms -- r1
hospital.surgeons -- s1
hospital.patients -- p1
hospital.nurses -- n1
hospital.hospitalisationShifts -- shift1
hospital.operatingtheatres -- ot1
hospital.roomShiftAssignments -- assignment
hospital.nurseWorkingShifts -- nws1
shift1.patient -- p1
shift1.room -- r1
d1.patient -- p1
nws1.nurse -- n1
assignment.nurse -- n1
assignment.hospitalisationShift -- shift1
hospital.admissions -- a1