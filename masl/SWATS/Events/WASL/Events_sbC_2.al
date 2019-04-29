define action Events_sbC_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
Idle state.

#$END_DESCRIPTION

my_super = this -> R14.SuperA

temp = my_super.ResultA + this.Value_To_Add
my_super.ResultA = temp



enddefine
