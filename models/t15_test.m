using "../ihtc.mm"

hospital: HospitalInstance { decisionHorizon = 5 }

s1: Surgeon { id = 1 }
r1: Room { id = 1 maxCapacity = 2 }
ot1: OperatingTheatre { id = 1 }
n1: Nurse { id = 1 skillLevel = 2 }

hospital.surgeons -- s1
hospital.rooms -- r1
hospital.operatingtheatres -- ot1
hospital.nurses -- n1

p1: Patient { id = 1 isMandatory = false isScheduled = true dueDate = 3 releaseDate = 1 ageGroup = AgeGroup.ADULT surgeryDuration = 1 gender = Gender.M stayLength = 2 }
p1.assignedSurgeonId -- s1
hospital.patients -- p1

a1: Admission { admissionDay = 1 }
a1.patientId -- p1
a1.roomId -- r1
a1.operationTheatreId -- ot1

shift1: HospitalisationShift { day = 1 shift = 0 roomNumber = 1 workload = 3 skillLevelRequired = 1 }
shift1.room -- r1
shift1.patient -- p1
hospital.hospitalisationShifts -- shift1

rsa1: RoomShiftAssignment {}
rsa1.nurse -- n1
rsa1.hospitalisationShift -- shift1
hospital.roomShiftAssignments -- rsa1