define action Events_sbD_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
Add the value specified in the attribute to the supertype
ResultA attribute.
#$END_DESCRIPTION

my_super = this -> R14.SuperA

temp = my_super.ResultA + this.Value_To_Add
my_super.ResultA = temp


enddefine
