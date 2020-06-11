state Events::SubE.Update (Test : in  integer) is
# find the supertype
my_super = this -> R6.SuperA

temp = my_super.ResultA + 20
my_super.ResultA = temp