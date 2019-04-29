define action Events_sbB_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
Idle state.

#$END_DESCRIPTION

# find the supertype
my_super = this -> R13.SuperA

temp = my_super.ResultA + this.Value_To_Add
my_super.ResultA = temp



enddefine
