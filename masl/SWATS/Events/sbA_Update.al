//! Add the value specified in the attribute to the supertype
//! attribute ResultA.
state Events::SubA.Update (Test : in  integer) is
# find the supertype
my_super = this -> R13.SuperA

temp = my_super.ResultA + this.Value_To_Add

[] = RPT5:Test_Text[temp, "SubA updaing supertype object"]

my_super.ResultA = temp