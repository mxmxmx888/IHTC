using "../ihtc.mm"

match {
    delete rsa: RoomShiftAssignment{}
    nurse: Nurse{}
    shift: HospitalisationShift {}
    room: Room {}
    
    shift.room -- room
    delete rsa.hospitalisationShift -- shift
    delete rsa.nurse -- nurse

   

    

}