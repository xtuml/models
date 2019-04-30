define action TT_BT_8
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number + 1
the_test_scheduler.current_test_number = test_number

[] = RPT1:Start_Test[test_number, "1241-0000-01-0903", "Test Timers", "Basic Timer", "Create_Timer"]

[timer_identifier] = Create_Timer[]
this.timer_id_one = timer_identifier

generate BT3:setup_complete() to this


enddefine
