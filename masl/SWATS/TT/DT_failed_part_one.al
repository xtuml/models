state TT::Deleting_Timer.failed_part_one () is
the_test_scheduler = find-one Test_Scheduler
[] = RPT3:Test_Failed["Delete_Timer", the_test_scheduler.current_test_number, 1]
generate DT3:part_one_complete() to this