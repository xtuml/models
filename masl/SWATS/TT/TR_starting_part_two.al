state TT::Time_Remaining.starting_part_two () is
the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number + 1
the_test_scheduler.current_test_number = test_number
[] = RPT1:Start_Test[test_number, "1241-0000-01-0911", "Test Timers", "Time Remaining", "Get_Time_Remaining returns 0 for Reset Timer"]

generate TIM1:Set_Timer(this.timer_id_one, 5000, 'MILLISECOND', event("TR1"), this)
generate TIM1:Set_Timer(this.timer_id_two, 0, 'MILLISECOND', event("TR6"), this)
generate TIM2:Reset_Timer(this.timer_id_one)
