define action Events_sbE_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

# find the supertype
my_super = this -> R6.SuperA

temp = my_super.ResultA + 20
my_super.ResultA = temp


enddefine
