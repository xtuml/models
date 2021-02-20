state TT::Basic_Timer.executing_part_two () is
generate TIM1:Set_Timer(this.timer_id_one, 5000, 'MILLISECOND', event("BT1"), this)