using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 2 }
state: OptimisationState { phase = OptimisationPhase.PATIENTS }
s1: Surgeon { id = 1 }
p1: Patient { id = 1 isMandatory = true isScheduled = false dueDate = 1 releaseDate = 0 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 1 }
d1: PatientDayDemand { relativeDay = 0 shift = 0 workloadProduced = 1 skillLevelRequired = 1 }
hospital.optimisationState -- state
hospital.surgeons -- s1
hospital.patients -- p1
p1.assignedSurgeonId -- s1
p1.dayDemand -- d1
d1.patient -- p1
