state TT::Basic_Timer.executing_part_one () is
generate TIM1:Set_Timer(this.timer_id_one, 5, 'SECOND', event("BT1"), this)