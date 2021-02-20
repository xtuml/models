terminal state TT::Time_Remaining.deletion () is
[] = Delete_Timer[this.timer_id_one]
[] = Delete_Timer[this.timer_id_two]

the_test = this -> R2.Test
unlink this R2 the_test 
delete the_test
delete this
