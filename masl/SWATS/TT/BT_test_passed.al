state TT::Basic_Timer.test_passed () is
the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number
[] = RPT2:Test_Passed["Create_Timer", test_number, 0]

test_number = test_number + 1
[] = RPT1:Start_Test[test_number, "1241-0000-01-0905", "Test Timers", "Basic Timer", "Set_Timer"]
[] = RPT2:Test_Passed["Set_Timer", test_number, 0]

test_number = test_number + 1
[] = RPT1:Start_Test[test_number, "1241-0000-01-0906", "Test Timers", "Basic Timer", "Set_Timer Parameters"]
[] = RPT2:Test_Passed["Set_Timer Parameters", test_number, 0]

test_number = test_number + 1
[] = RPT1:Start_Test[test_number, "1241-0000-01-0913", "Test Timers", "Basic Timer", "Event on Timer expiry"]
[] = RPT2:Test_Passed["Event on Timer expiry", test_number, 0]

test_number = test_number + 1
[] = RPT1:Start_Test[test_number, "1241-0000-01-0914", "Test Timers", "Basic Timer", "Deliver Event on Timer expiry"]
[] = RPT2:Test_Passed["Deliver Event on Timer expiry", test_number, 0]

the_test_scheduler.current_test_number = test_number

generate BT2:test_complete() to this