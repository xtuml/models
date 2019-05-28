define action Events_sbF_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

# find the supertype
my_super = this -> R6.SuperA

temp = my_super.ResultA + 40
my_super.ResultA = temp


enddefine
