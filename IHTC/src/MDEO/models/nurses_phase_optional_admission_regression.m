using "../ihtc.mm"

// Regression model: mandatory care is already scheduled and the model is in
// NURSES. T1-T3 must still be able to admit p1, then T14 can cover its slot.
hospital: HospitalInstance {
    decisionHorizon = 4
}

state: OptimisationState {
    phase = OptimisationPhase.NURSES
}
hospital.optimisationState -- state

s1: Surgeon { id = 1 }
r1: Room { id = 1 maxCapacity = 2 }
ot1: OperatingTheatre { id = 1 }
n1: Nurse { id = 1 skillLevel = 1 }

hospital.surgeons -- s1
hospital.rooms -- r1
hospital.operatingtheatres -- ot1
hospital.nurses -- n1

p0: Patient {
    id = 0
    isMandatory = true
    isScheduled = true
    dueDate = 0
    releaseDate = 0
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.F
    stayLength = 1
}
p0.assignedSurgeonId -- s1
hospital.patients -- p0

p1: Patient {
    id = 1
    isMandatory = false
    isScheduled = false
    dueDate = 2
    releaseDate = 2
    ageGroup = AgeGroup.ADULT
    surgeryDuration = 1
    gender = Gender.M
    stayLength = 1
}
p1.assignedSurgeonId -- s1
hospital.patients -- p1

a0: Admission { admissionDay = 0 }
a0.patientId -- p0
a0.roomId -- r1
a0.operationTheatreId -- ot1
hospital.admissions -- a0

d0: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d0.patient -- p0
p0.dayDemand -- d0

d1: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 2 skillLevelRequired = 1 }
d1.patient -- p1
p1.dayDemand -- d1

sa2: SurgeonAvailability { day = 2 maxOperatingTime = 2 }
sa2.surgeonId -- s1
hospital.surgeonAvailabilities -- sa2

ota2: OperatingTheatreAvailability { day = 2 maxCapacity = 2 }
ota2.operatingTheatreId -- ot1
hospital.operatingTheatreAvailabilities -- ota2

ra0: RoomAvailability { day = 0 occupiedBeds = 1 ageGroup = AgeGroup.ADULT roomNumber = 1 }
ra1: RoomAvailability { day = 1 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra2: RoomAvailability { day = 2 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra3: RoomAvailability { day = 3 occupiedBeds = 0 ageGroup = AgeGroup.EMPTY roomNumber = 1 }
ra0.roomId -- r1
ra1.roomId -- r1
ra2.roomId -- r1
ra3.roomId -- r1
hospital.roomAvailabilities -- ra0
hospital.roomAvailabilities -- ra1
hospital.roomAvailabilities -- ra2
hospital.roomAvailabilities -- ra3

nws2: NurseWorkingShift { day = 2 shift = 0 maxLoad = 3 }
nws2.nurse -- n1
hospital.nurseWorkingShifts -- nws2

hs00: HospitalisationShift { day = 0 shift = 0 }
hs01: HospitalisationShift { day = 0 shift = 1 }
hs02: HospitalisationShift { day = 0 shift = 2 }
hs10: HospitalisationShift { day = 1 shift = 0 }
hs11: HospitalisationShift { day = 1 shift = 1 }
hs12: HospitalisationShift { day = 1 shift = 2 }
hs20: HospitalisationShift { day = 2 shift = 0 }
hs21: HospitalisationShift { day = 2 shift = 1 }
hs22: HospitalisationShift { day = 2 shift = 2 }
hs30: HospitalisationShift { day = 3 shift = 0 }
hs31: HospitalisationShift { day = 3 shift = 1 }
hs32: HospitalisationShift { day = 3 shift = 2 }
hs00.room -- r1
hs01.room -- r1
hs02.room -- r1
hs10.room -- r1
hs11.room -- r1
hs12.room -- r1
hs20.room -- r1
hs21.room -- r1
hs22.room -- r1
hs30.room -- r1
hs31.room -- r1
hs32.room -- r1
hospital.hospitalisationShifts -- hs00
hospital.hospitalisationShifts -- hs01
hospital.hospitalisationShifts -- hs02
hospital.hospitalisationShifts -- hs10
hospital.hospitalisationShifts -- hs11
hospital.hospitalisationShifts -- hs12
hospital.hospitalisationShifts -- hs20
hospital.hospitalisationShifts -- hs21
hospital.hospitalisationShifts -- hs22
hospital.hospitalisationShifts -- hs30
hospital.hospitalisationShifts -- hs31
hospital.hospitalisationShifts -- hs32
