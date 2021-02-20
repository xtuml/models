state TT::Deleting_Timer.executing_part_one () is
generate TIM1:Set_Timer(this.timer_id_one, 10, 'SECOND', event("DT1"), this)
generate TIM1:Set_Timer(this.timer_id_two, 5,  'SECOND', event("DT2"), this)

[] = Delete_Timer[this.timer_id_two]