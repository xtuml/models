//! Add the value specified in the attribute to the supertype
//! ResultA attribute.
state Events::SubD.Update (Test : in  integer) is
my_super = this -> R14.SuperA

temp = my_super.ResultA + this.Value_To_Add
my_super.ResultA = temp