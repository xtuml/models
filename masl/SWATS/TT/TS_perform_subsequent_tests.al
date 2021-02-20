state TT::Test_Scheduler.perform_subsequent_tests (test_instance : in  instance of Test) is
the_current_test = test_instance
the_next_test = the_current_test -> R4."is_followed_by".Test
if (the_next_test != UNDEFINED) then
   generate T1:execute_test() to the_next_test
else
   generate TS4:all_tests_complete() to this
endif