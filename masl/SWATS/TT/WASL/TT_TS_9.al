define action TT_TS_9
input\
	test_instance:Test_IH
output

#$DESCRIPTION
#$END_DESCRIPTION

the_current_test = test_instance
generate T1:execute_test() to the_current_test


enddefine
