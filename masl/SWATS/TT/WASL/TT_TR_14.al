define action TT_TR_14
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number + 1
the_test_scheduler.current_test_number = test_number
[] = RPT1:Start_Test[test_number, "1241-0000-01-0908", "Test Timers", "Time Remaining", "Get_Time_Remaining"]

generate TIM1:Set_Timer(this.timer_id_one, 4, 'SECOND', event("TR1"), this)
generate TIM1:Set_Timer(this.timer_id_two, 0, 'MILLISECOND', event("TR6"), this)


enddefine
