using "../ihtc.mm"

a1: Admission {
    admissionDay = 1
}
a0: Admission {
    admissionDay = 1
}
hospital: HospitalInstance {
    decisionHorizon = 5
}
ot1: OperatingTheatre {
    id = 1
}
d0: PatientDayDemand {
    relativeDay = 0
    shift = 0
    workloadProduced = 2
    skillLevelRequired = 1
}
r2: Room {
    id = 2
    maxCapacity = 2
}
d1: PatientDayDemand {
    relativeDay = 0
    shift = 0
    workloadProduced = 3
    skillLevelRequired = 2
}
p0: Patient {
    id = 0
    isMandatory = false
    isScheduled = true
    dueDate = 3
    releaseDate = 1
    ageGroup = ADULT.ADULT
    surgeryDuration = 1
    gender = F.F
    stayLength = 2
}
nws1: NurseWorkingShift {
    day = 1
    shift = 0
    maxLoad = 2
}
s1: Surgeon {
    id = 1
}
n1: Nurse {
    id = 1
    skillLevel = 1
}
newShift: HospitalisationShift {
    day = 1
    shift = 0
    roomNumber = 2
    workload = 3
    skillLevelRequired = 2
}
r1: Room {
    id = 1
    maxCapacity = 2
}
oldShift: HospitalisationShift {
    day = 1
    shift = 0
    roomNumber = 1
    workload = 2
    skillLevelRequired = 1
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
newAssignment: RoomShiftAssignment {}
a1.patientId -- p1
a1.operationTheatreId -- ot1
a1.roomId -- r2
a0.patientId -- p0
a0.operationTheatreId -- ot1
a0.roomId -- r1
hospital.rooms -- r1
hospital.rooms -- r2
hospital.surgeons -- s1
hospital.patients -- p0
hospital.patients -- p1
hospital.nurses -- n1
hospital.hospitalisationShifts -- oldShift
hospital.hospitalisationShifts -- newShift
hospital.operatingtheatres -- ot1
hospital.roomShiftAssignments -- newAssignment
hospital.nurseWorkingShifts -- nws1
d0.patient -- p0
d1.patient -- p1
p0.assignedSurgeonId -- s1
p0.dayDemand -- d0
nws1.nurse -- n1
newShift.patient -- p1
newShift.room -- r2
oldShift.patient -- p0
oldShift.room -- r1
p1.assignedSurgeonId -- s1
p1.dayDemand -- d1
newAssignment.nurse -- n1
newAssignment.hospitalisationShift -- newShift
hospital.admissions -- a1
hospital.admissions -- a0