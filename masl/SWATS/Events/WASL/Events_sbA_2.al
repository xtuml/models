define action Events_sbA_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
Add the value specified in the attribute to the supertype
attribute ResultA.
#$END_DESCRIPTION

# find the supertype
my_super = this -> R13.SuperA

temp = my_super.ResultA + this.Value_To_Add

[] = RPT5:Test_Text[temp, "SubA updaing supertype object"]

my_super.ResultA = temp


enddefine
