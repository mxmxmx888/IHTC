using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 2 }
state: OptimisationState { phase = OptimisationPhase.PATIENTS }
s1: Surgeon { id = 1 }
r1: Room { id = 1 maxCapacity = 1 }
ot1: OperatingTheatre { id = 1 }
p1: Patient { id = 1 isMandatory = true isScheduled = true dueDate = 1 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 1 }
d1: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
a1: Admission { admissionDay = 0 }
hospital.optimisationState -- state
hospital.surgeons -- s1
hospital.rooms -- r1
hospital.operatingtheatres -- ot1
hospital.patients -- p1
p1.assignedSurgeonId -- s1
p1.dayDemand -- d1
d1.patient -- p1
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1
hospital.admissions -- a1