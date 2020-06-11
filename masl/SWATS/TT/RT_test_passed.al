state TT::Resetting_Timer.test_passed () is
the_test_scheduler = find-one Test_Scheduler
[] = RPT2:Test_Passed["Reset_Timer", the_test_scheduler.current_test_number, 0]

test_number = the_test_scheduler.current_test_number + 1
the_test_scheduler.current_test_number = test_number
[] = RPT1:Start_Test[test_number, "1241-0000-01-0916", "Test Timers", "Resetting Timer", "Reset_Timer"]
[] = RPT2:Test_Passed["Reset_Timer", test_number, 0]

generate RT4:test_complete() to this