define action TT_U_4
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test = this -> R2.Test
unlink this R2 the_test 
delete the_test
delete this



enddefine
