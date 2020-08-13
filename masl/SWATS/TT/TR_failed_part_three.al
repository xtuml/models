state TT::Time_Remaining.failed_part_three () is
the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number

[] = RPT3:Test_Failed["Get_Time_Remaining", test_number, 0]

generate TR8:test_complete() to this