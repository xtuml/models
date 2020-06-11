//! Idle state.
state Events::SubB.Update (Test : in  integer) is
# find the supertype
my_super = this -> R13.SuperA

temp = my_super.ResultA + this.Value_To_Add
my_super.ResultA = temp
