define action TT_TR_17
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number
[] = RPT2:Test_Passed["Get_Time_Remaining", test_number, 0]

test_number = test_number + 1
[] = RPT1:Start_Test[test_number, "1241-0000-01-0909", "Test Timers", "Time Remaining", "Get_Time_Remaining uses Timer granularity"]
[] = RPT2:Test_Passed["Get_Time_Remaining", test_number, 0]

test_number = test_number + 1
[] = RPT1:Start_Test[test_number, "1241-0000-01-0910", "Test Timers", "Time Remaining", "Get_Time_Remaining returns Integer"]
[] = RPT2:Test_Passed["Get_Time_Remaining", test_number, 0]

the_test_scheduler.current_test_number = test_number

generate TR8:test_complete() to this


enddefine
