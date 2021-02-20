state TT::Test_Scheduler.perform_first_test (test_instance : in  instance of Test) is
the_current_test = test_instance
generate T1:execute_test() to the_current_test