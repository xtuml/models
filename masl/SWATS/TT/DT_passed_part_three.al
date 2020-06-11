state TT::Deleting_Timer.passed_part_three () is
the_test_scheduler = find-one Test_Scheduler
[] = RPT2:Test_Passed["Delete_Timer", the_test_scheduler.current_test_number, 0]
generate DT6:test_complete() to this