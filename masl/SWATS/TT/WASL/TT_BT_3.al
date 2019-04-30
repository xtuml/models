define action TT_BT_3
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test_scheduler = find-one Test_Scheduler
the_test = this -> R2.Test
generate TS2:test_complete(the_test) to the_test_scheduler



enddefine
