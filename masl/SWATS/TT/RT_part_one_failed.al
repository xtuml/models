state TT::Resetting_Timer.part_one_failed () is
the_test_scheduler = find-one Test_Scheduler
[] = RPT3:Test_Failed["Reset_Timer", the_test_scheduler.current_test_number, 1]
generate RT5:part_one_complete() to this