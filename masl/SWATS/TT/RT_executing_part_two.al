state TT::Resetting_Timer.executing_part_two () is
generate TIM1:Set_Timer(this.timer_id_one, 10, 'SECOND', event("RT2"), this)
generate TIM1:Set_Timer(this.timer_id_two, 5,  'SECOND', event("RT3"), this)
