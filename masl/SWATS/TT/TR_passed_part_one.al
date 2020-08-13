state TT::Time_Remaining.passed_part_one () is
the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number
[] = RPT2:Test_Passed["Get_Time_Remaining returns 0 for unset Timer", test_number, 0]

generate TR5:proceed() to this