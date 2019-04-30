define action TT_TR_3
input
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = Delete_Timer[this.timer_id_one]
[] = Delete_Timer[this.timer_id_two]

the_test = this -> R2.Test
unlink this R2 the_test 
delete the_test
delete this



enddefine
