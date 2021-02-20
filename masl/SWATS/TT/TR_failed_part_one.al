state TT::Time_Remaining.failed_part_one () is
the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number

[] = RPT3:Test_Failed["Get_Time_Remaining returns 0 for unset Timer", test_number, 0]

generate TR9:part_one_complete() to this