define action TT_DT_6
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test_scheduler = find-one Test_Scheduler
[] = RPT3:Test_Failed["Delete_Timer", the_test_scheduler.current_test_number, 2]
generate DT4:part_two_complete() to this


enddefine
