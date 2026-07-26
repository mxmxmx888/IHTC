using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 5 }
state: OptimisationState { phase = OptimisationPhase.NURSES }
s1: Surgeon { id = 1 }
r1: Room { id = 1 maxCapacity = 2 }
ot1: OperatingTheatre { id = 1 }
hospital.optimisationState -- state
hospital.surgeons -- s1
hospital.rooms -- r1
hospital.operatingtheatres -- ot1
p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }
p1.assignedSurgeonId -- s1
hospital.patients -- p1
a1: Admission { admissionDay = 1 }
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1
d1: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 3 skillLevelRequired = 2 }
d1.patient -- p1
p1.dayDemand -- d1

n1: Nurse { id = 1 skillLevel = 2 }
hospital.nurses -- n1
nws1: NurseWorkingShift { day = 1 shift = 0 maxLoad = 3 }
nws1.nurse -- n1
hospital.nurseWorkingShifts -- nws1

hs_r1_d0_s0: HospitalisationShift { day = 0 shift = 0 }
hs_r1_d0_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s0

hs_r1_d0_s1: HospitalisationShift { day = 0 shift = 1 }
hs_r1_d0_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s1

hs_r1_d0_s2: HospitalisationShift { day = 0 shift = 2 }
hs_r1_d0_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d0_s2

hs_r1_d1_s0: HospitalisationShift { day = 1 shift = 0 }
hs_r1_d1_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s0

hs_r1_d1_s1: HospitalisationShift { day = 1 shift = 1 }
hs_r1_d1_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s1

hs_r1_d1_s2: HospitalisationShift { day = 1 shift = 2 }
hs_r1_d1_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d1_s2

hs_r1_d2_s0: HospitalisationShift { day = 2 shift = 0 }
hs_r1_d2_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s0

hs_r1_d2_s1: HospitalisationShift { day = 2 shift = 1 }
hs_r1_d2_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s1

hs_r1_d2_s2: HospitalisationShift { day = 2 shift = 2 }
hs_r1_d2_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d2_s2

hs_r1_d3_s0: HospitalisationShift { day = 3 shift = 0 }
hs_r1_d3_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s0

hs_r1_d3_s1: HospitalisationShift { day = 3 shift = 1 }
hs_r1_d3_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s1

hs_r1_d3_s2: HospitalisationShift { day = 3 shift = 2 }
hs_r1_d3_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d3_s2

hs_r1_d4_s0: HospitalisationShift { day = 4 shift = 0 }
hs_r1_d4_s0.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s0

hs_r1_d4_s1: HospitalisationShift { day = 4 shift = 1 }
hs_r1_d4_s1.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s1

hs_r1_d4_s2: HospitalisationShift { day = 4 shift = 2 }
hs_r1_d4_s2.room -- r1
hospital.hospitalisationShifts -- hs_r1_d4_s2

rsa1: RoomShiftAssignment {}
rsa1.nurse -- n1
rsa1.hospitalisationShift -- hs_r1_d1_s0
hospital.roomShiftAssignments -- rsa1
hospital.admissions -- a1