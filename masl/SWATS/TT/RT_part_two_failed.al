state TT::Resetting_Timer.part_two_failed () is
the_test_scheduler = find-one Test_Scheduler
[] = RPT3:Test_Failed["Reset_Timer", the_test_scheduler.current_test_number, 2]
generate RT6:part_two_complete() to this