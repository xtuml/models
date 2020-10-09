state TT::Time_Remaining.failed_part_two () is
the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number

[] = RPT3:Test_Failed["Get_Time_Remaining returns 0 for Reset Timer", test_number, 0]

generate TR10:part_two_complete() to this
