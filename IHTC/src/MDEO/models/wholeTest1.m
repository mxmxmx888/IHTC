using "../ihtc.mm"

// Five-patient, three-room, four-day model for the full phased run.
// It starts in PATIENTS with mandatory patients already admitted, so T17 can
// enter NURSES; T1-T3 can then continue adding optional patients.

hospital: HospitalInstance {
    decisionHorizon = 4
}

state: OptimisationState {
    phase = OptimisationPhase.PATIENTS
}
hospital.optimisationState -- state

s1: Surgeon { id = 1 }
s2: Surgeon { id = 2 }

ot1: OperatingTheatre { id = 1 }
ot2: OperatingTheatre { id = 2 }

r1: Room { id = 1 maxCapacity = 2 }
r2: Room { id = 2 maxCapacity = 2 }
r3: Room { id = 3 maxCapacity = 2 }

n1: Nurse { id = 1 skillLevel = 2 }
n2: Nurse { id = 2 skillLevel = 1 }

hospital.surgeons -- s1
hospital.surgeons -- s2
hospital.operatingtheatres -- ot1
hospital.operatingtheatres -- ot2
hospital.rooms -- r1
hospital.rooms -- r2
hospital.rooms -- r3
hospital.nurses -- n1
hospital.nurses -- n2

tracker: DeletedAdmissionsTracker {
    count = 0
}
hospital.deletedAdmissionsTrackers -- tracker

p0: Patient {
    id = 0
    isMandatory = true
    isScheduled = true
    dueDate = 1
    releaseDate = 0
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 2
}
p0.assignedSurgeonId -- s1
hospital.patients -- p0

p1: Patient {
    id = 1
    isMandatory = true
    isScheduled = true
    dueDate = 1
    releaseDate = 0
    ageGroup = AgeGroup.ELDERLY
    surgeryDuration = 1
    gender = Gender.M
    stayLength = 1
}
p1.assignedSurgeonId -- s2
hospital.patients -- p1

p2: Patient {
    id = 2
    isMandatory = false
    isScheduled = false
    dueDate = 2
    releaseDate = 2
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 2
}
p2.assignedSurgeonId -- s1
hospital.patients -- p2

p3: Patient {
    id = 3
    isMandatory = false
    isScheduled = false
    dueDate = 2
    releaseDate = 1
    ageGroup = AgeGroup.CHILD
    surgeryDuration = 2
    gender = Gender.M
    stayLength = 2
}
p3.assignedSurgeonId -- s2
hospital.patients -- p3

p4: Patient {
    id = 4
    isMandatory = false
    isScheduled = false
    dueDate = 3
    releaseDate = 3
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 1
}
p4.assignedSurgeonId -- s1
hospital.patients -- p4

a0: Admission { admissionDay = 0 }
a0.patientId -- p0
a0.roomId -- r1
a0.operationTheatreId -- ot1
hospital.admissions -- a0

a1: Admission { admissionDay = 0 }
a1.patientId -- p1
a1.roomId -- r2
a1.operationTheatreId -- ot2
hospital.admissions -- a1

d00: PatientDayDemand {
    relativeDay = 0
    shift = 0
    workloadProduced = 2
    skillLevelRequired = 1
}
d01: PatientDayDemand {
    relativeDay = 1
    shift = 1
    workloadProduced = 1
    skillLevelRequired = 1
}
d10: PatientDayDemand {
    relativeDay = 0
    shift = 0
    workloadProduced = 3
    skillLevelRequired = 2
}
d20: PatientDayDemand {
    relativeDay = 0
    shift = 0
    workloadProduced = 2
    skillLevelRequired = 1
}
d21: PatientDayDemand {
    relativeDay = 1
    shift = 1
    workloadProduced = 2
    skillLevelRequired = 1
}
d30: PatientDayDemand {
    relativeDay = 0
    shift = 1
    workloadProduced = 2
    skillLevelRequired = 2
}
d31: PatientDayDemand {
    relativeDay = 1
    shift = 2
    workloadProduced = 1
    skillLevelRequired = 2
}
d40: PatientDayDemand {
    relativeDay = 0
    shift = 2
    workloadProduced = 1
    skillLevelRequired = 1
}

d00.patient -- p0
d01.patient -- p0
d10.patient -- p1
d20.patient -- p2
d21.patient -- p2
d30.patient -- p3
d31.patient -- p3
d40.patient -- p4

p0.dayDemand -- d00
p0.dayDemand -- d01
p1.dayDemand -- d10
p2.dayDemand -- d20
p2.dayDemand -- d21
p3.dayDemand -- d30
p3.dayDemand -- d31
p4.dayDemand -- d40

sa10: SurgeonAvailability { day = 0 maxOperatingTime = 5 }
sa11: SurgeonAvailability { day = 1 maxOperatingTime = 5 }
sa12: SurgeonAvailability { day = 2 maxOperatingTime = 5 }
sa13: SurgeonAvailability { day = 3 maxOperatingTime = 5 }
sa20: SurgeonAvailability { day = 0 maxOperatingTime = 5 }
sa21: SurgeonAvailability { day = 1 maxOperatingTime = 5 }
sa22: SurgeonAvailability { day = 2 maxOperatingTime = 5 }
sa23: SurgeonAvailability { day = 3 maxOperatingTime = 5 }

sa10.surgeonId -- s1
sa11.surgeonId -- s1
sa12.surgeonId -- s1
sa13.surgeonId -- s1
sa20.surgeonId -- s2
sa21.surgeonId -- s2
sa22.surgeonId -- s2
sa23.surgeonId -- s2

hospital.surgeonAvailabilities -- sa10
hospital.surgeonAvailabilities -- sa11
hospital.surgeonAvailabilities -- sa12
hospital.surgeonAvailabilities -- sa13
hospital.surgeonAvailabilities -- sa20
hospital.surgeonAvailabilities -- sa21
hospital.surgeonAvailabilities -- sa22
hospital.surgeonAvailabilities -- sa23

ota10: OperatingTheatreAvailability { day = 0 maxCapacity = 5 }
ota11: OperatingTheatreAvailability { day = 1 maxCapacity = 5 }
ota12: OperatingTheatreAvailability { day = 2 maxCapacity = 5 }
ota13: OperatingTheatreAvailability { day = 3 maxCapacity = 5 }
ota20: OperatingTheatreAvailability { day = 0 maxCapacity = 5 }
ota21: OperatingTheatreAvailability { day = 1 maxCapacity = 5 }
ota22: OperatingTheatreAvailability { day = 2 maxCapacity = 5 }
ota23: OperatingTheatreAvailability { day = 3 maxCapacity = 5 }

ota10.operatingTheatreId -- ot1
ota11.operatingTheatreId -- ot1
ota12.operatingTheatreId -- ot1
ota13.operatingTheatreId -- ot1
ota20.operatingTheatreId -- ot2
ota21.operatingTheatreId -- ot2
ota22.operatingTheatreId -- ot2
ota23.operatingTheatreId -- ot2

hospital.operatingTheatreAvailabilities -- ota10
hospital.operatingTheatreAvailabilities -- ota11
hospital.operatingTheatreAvailabilities -- ota12
hospital.operatingTheatreAvailabilities -- ota13
hospital.operatingTheatreAvailabilities -- ota20
hospital.operatingTheatreAvailabilities -- ota21
hospital.operatingTheatreAvailabilities -- ota22
hospital.operatingTheatreAvailabilities -- ota23

ra10: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra11: RoomAvailability { day = 1 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra12: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra13: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }

ra20: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ELDERLY roomNumber = 2 }
ra21: RoomAvailability { day = 1 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra22: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }
ra23: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 2 }

ra30: RoomAvailability { day = 0 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra31: RoomAvailability { day = 1 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra32: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }
ra33: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 3 }

ra10.roomId -- r1
ra11.roomId -- r1
ra12.roomId -- r1
ra13.roomId -- r1
ra20.roomId -- r2
ra21.roomId -- r2
ra22.roomId -- r2
ra23.roomId -- r2
ra30.roomId -- r3
ra31.roomId -- r3
ra32.roomId -- r3
ra33.roomId -- r3

hospital.roomAvailabilities -- ra10
hospital.roomAvailabilities -- ra11
hospital.roomAvailabilities -- ra12
hospital.roomAvailabilities -- ra13
hospital.roomAvailabilities -- ra20
hospital.roomAvailabilities -- ra21
hospital.roomAvailabilities -- ra22
hospital.roomAvailabilities -- ra23
hospital.roomAvailabilities -- ra30
hospital.roomAvailabilities -- ra31
hospital.roomAvailabilities -- ra32
hospital.roomAvailabilities -- ra33

n1d0s0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 5 }
n1d0s1: NurseWorkingShift { day = 0 shift = 1 maxLoad = 5 }
n1d0s2: NurseWorkingShift { day = 0 shift = 2 maxLoad = 5 }
n1d1s0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 5 }
n1d1s1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 5 }
n1d1s2: NurseWorkingShift { day = 1 shift = 2 maxLoad = 5 }
n1d2s0: NurseWorkingShift { day = 2 shift = 0 maxLoad = 5 }
n1d2s1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 5 }
n1d2s2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 5 }
n1d3s0: NurseWorkingShift { day = 3 shift = 0 maxLoad = 5 }
n1d3s1: NurseWorkingShift { day = 3 shift = 1 maxLoad = 5 }
n1d3s2: NurseWorkingShift { day = 3 shift = 2 maxLoad = 5 }

n2d0s0: NurseWorkingShift { day = 0 shift = 0 maxLoad = 3 }
n2d0s1: NurseWorkingShift { day = 0 shift = 1 maxLoad = 3 }
n2d0s2: NurseWorkingShift { day = 0 shift = 2 maxLoad = 3 }
n2d1s0: NurseWorkingShift { day = 1 shift = 0 maxLoad = 3 }
n2d1s1: NurseWorkingShift { day = 1 shift = 1 maxLoad = 3 }
n2d1s2: NurseWorkingShift { day = 1 shift = 2 maxLoad = 3 }
n2d2s0: NurseWorkingShift { day = 2 shift = 0 maxLoad = 3 }
n2d2s1: NurseWorkingShift { day = 2 shift = 1 maxLoad = 3 }
n2d2s2: NurseWorkingShift { day = 2 shift = 2 maxLoad = 3 }
n2d3s0: NurseWorkingShift { day = 3 shift = 0 maxLoad = 3 }
n2d3s1: NurseWorkingShift { day = 3 shift = 1 maxLoad = 3 }
n2d3s2: NurseWorkingShift { day = 3 shift = 2 maxLoad = 3 }

n1d0s0.nurse -- n1
n1d0s1.nurse -- n1
n1d0s2.nurse -- n1
n1d1s0.nurse -- n1
n1d1s1.nurse -- n1
n1d1s2.nurse -- n1
n1d2s0.nurse -- n1
n1d2s1.nurse -- n1
n1d2s2.nurse -- n1
n1d3s0.nurse -- n1
n1d3s1.nurse -- n1
n1d3s2.nurse -- n1

n2d0s0.nurse -- n2
n2d0s1.nurse -- n2
n2d0s2.nurse -- n2
n2d1s0.nurse -- n2
n2d1s1.nurse -- n2
n2d1s2.nurse -- n2
n2d2s0.nurse -- n2
n2d2s1.nurse -- n2
n2d2s2.nurse -- n2
n2d3s0.nurse -- n2
n2d3s1.nurse -- n2
n2d3s2.nurse -- n2

hospital.nurseWorkingShifts -- n1d0s0
hospital.nurseWorkingShifts -- n1d0s1
hospital.nurseWorkingShifts -- n1d0s2
hospital.nurseWorkingShifts -- n1d1s0
hospital.nurseWorkingShifts -- n1d1s1
hospital.nurseWorkingShifts -- n1d1s2
hospital.nurseWorkingShifts -- n1d2s0
hospital.nurseWorkingShifts -- n1d2s1
hospital.nurseWorkingShifts -- n1d2s2
hospital.nurseWorkingShifts -- n1d3s0
hospital.nurseWorkingShifts -- n1d3s1
hospital.nurseWorkingShifts -- n1d3s2
hospital.nurseWorkingShifts -- n2d0s0
hospital.nurseWorkingShifts -- n2d0s1
hospital.nurseWorkingShifts -- n2d0s2
hospital.nurseWorkingShifts -- n2d1s0
hospital.nurseWorkingShifts -- n2d1s1
hospital.nurseWorkingShifts -- n2d1s2
hospital.nurseWorkingShifts -- n2d2s0
hospital.nurseWorkingShifts -- n2d2s1
hospital.nurseWorkingShifts -- n2d2s2
hospital.nurseWorkingShifts -- n2d3s0
hospital.nurseWorkingShifts -- n2d3s1
hospital.nurseWorkingShifts -- n2d3s2

hs100: HospitalisationShift { day = 0 shift = 0 }
hs101: HospitalisationShift { day = 0 shift = 1 }
hs102: HospitalisationShift { day = 0 shift = 2 }
hs110: HospitalisationShift { day = 1 shift = 0 }
hs111: HospitalisationShift { day = 1 shift = 1 }
hs112: HospitalisationShift { day = 1 shift = 2 }
hs120: HospitalisationShift { day = 2 shift = 0 }
hs121: HospitalisationShift { day = 2 shift = 1 }
hs122: HospitalisationShift { day = 2 shift = 2 }
hs130: HospitalisationShift { day = 3 shift = 0 }
hs131: HospitalisationShift { day = 3 shift = 1 }
hs132: HospitalisationShift { day = 3 shift = 2 }

hs200: HospitalisationShift { day = 0 shift = 0 }
hs201: HospitalisationShift { day = 0 shift = 1 }
hs202: HospitalisationShift { day = 0 shift = 2 }
hs210: HospitalisationShift { day = 1 shift = 0 }
hs211: HospitalisationShift { day = 1 shift = 1 }
hs212: HospitalisationShift { day = 1 shift = 2 }
hs220: HospitalisationShift { day = 2 shift = 0 }
hs221: HospitalisationShift { day = 2 shift = 1 }
hs222: HospitalisationShift { day = 2 shift = 2 }
hs230: HospitalisationShift { day = 3 shift = 0 }
hs231: HospitalisationShift { day = 3 shift = 1 }
hs232: HospitalisationShift { day = 3 shift = 2 }

hs300: HospitalisationShift { day = 0 shift = 0 }
hs301: HospitalisationShift { day = 0 shift = 1 }
hs302: HospitalisationShift { day = 0 shift = 2 }
hs310: HospitalisationShift { day = 1 shift = 0 }
hs311: HospitalisationShift { day = 1 shift = 1 }
hs312: HospitalisationShift { day = 1 shift = 2 }
hs320: HospitalisationShift { day = 2 shift = 0 }
hs321: HospitalisationShift { day = 2 shift = 1 }
hs322: HospitalisationShift { day = 2 shift = 2 }
hs330: HospitalisationShift { day = 3 shift = 0 }
hs331: HospitalisationShift { day = 3 shift = 1 }
hs332: HospitalisationShift { day = 3 shift = 2 }

hs100.room -- r1
hs101.room -- r1
hs102.room -- r1
hs110.room -- r1
hs111.room -- r1
hs112.room -- r1
hs120.room -- r1
hs121.room -- r1
hs122.room -- r1
hs130.room -- r1
hs131.room -- r1
hs132.room -- r1

hs200.room -- r2
hs201.room -- r2
hs202.room -- r2
hs210.room -- r2
hs211.room -- r2
hs212.room -- r2
hs220.room -- r2
hs221.room -- r2
hs222.room -- r2
hs230.room -- r2
hs231.room -- r2
hs232.room -- r2

hs300.room -- r3
hs301.room -- r3
hs302.room -- r3
hs310.room -- r3
hs311.room -- r3
hs312.room -- r3
hs320.room -- r3
hs321.room -- r3
hs322.room -- r3
hs330.room -- r3
hs331.room -- r3
hs332.room -- r3

hospital.hospitalisationShifts -- hs100
hospital.hospitalisationShifts -- hs101
hospital.hospitalisationShifts -- hs102
hospital.hospitalisationShifts -- hs110
hospital.hospitalisationShifts -- hs111
hospital.hospitalisationShifts -- hs112
hospital.hospitalisationShifts -- hs120
hospital.hospitalisationShifts -- hs121
hospital.hospitalisationShifts -- hs122
hospital.hospitalisationShifts -- hs130
hospital.hospitalisationShifts -- hs131
hospital.hospitalisationShifts -- hs132
hospital.hospitalisationShifts -- hs200
hospital.hospitalisationShifts -- hs201
hospital.hospitalisationShifts -- hs202
hospital.hospitalisationShifts -- hs210
hospital.hospitalisationShifts -- hs211
hospital.hospitalisationShifts -- hs212
hospital.hospitalisationShifts -- hs220
hospital.hospitalisationShifts -- hs221
hospital.hospitalisationShifts -- hs222
hospital.hospitalisationShifts -- hs230
hospital.hospitalisationShifts -- hs231
hospital.hospitalisationShifts -- hs232
hospital.hospitalisationShifts -- hs300
hospital.hospitalisationShifts -- hs301
hospital.hospitalisationShifts -- hs302
hospital.hospitalisationShifts -- hs310
hospital.hospitalisationShifts -- hs311
hospital.hospitalisationShifts -- hs312
hospital.hospitalisationShifts -- hs320
hospital.hospitalisationShifts -- hs321
hospital.hospitalisationShifts -- hs322
hospital.hospitalisationShifts -- hs330
hospital.hospitalisationShifts -- hs331
hospital.hospitalisationShifts -- hs332