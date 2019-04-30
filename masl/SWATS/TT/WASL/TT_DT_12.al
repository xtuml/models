define action TT_DT_12
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test_scheduler = find-one Test_Scheduler
[] = RPT2:Test_Passed["Delete_Timer", the_test_scheduler.current_test_number, 0]
generate DT6:test_complete() to this


enddefine
