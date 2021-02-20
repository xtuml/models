define action TT_DT_9
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number + 1
the_test_scheduler.current_test_number = test_number

[] = RPT1:Start_Test[test_number, "1241-0000-01-0904", "Test Timers", "Delete Timer", "Delete_Timer"]

[timer_identifier_one] = Create_Timer[]
[timer_identifier_two] = Create_Timer[]
this.timer_id_one = timer_identifier_one
this.timer_id_two = timer_identifier_two

generate DT5:setup_complete() to this


enddefine
