define action TT_TS_2
input\
	test_instance:Test_IH
output

#$DESCRIPTION
#$END_DESCRIPTION

the_current_test = test_instance
the_next_test = the_current_test -> R4."is_followed_by".Test
if (the_next_test != UNDEFINED) then
   generate T1:execute_test() to the_next_test
else
   generate TS4:all_tests_complete() to this
endif


enddefine
