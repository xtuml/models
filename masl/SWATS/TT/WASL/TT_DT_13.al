define action TT_DT_13
input
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = Delete_Timer[this.timer_id_one]
the_test = this -> R2.Test
unlink this R2 the_test 
delete the_test
delete this



enddefine
