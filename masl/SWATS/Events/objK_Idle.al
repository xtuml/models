//! Idle state.
state Events::Object_K.Idle (Test_Number : in  integer) is
#-----------------------------------------------------------
# In this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

my_super = this -> R7.Object_J

if my_super.action_count <= 0 then
   [] = objVERPOL1:verify_polymorphic[ "Object K", this.ReferenceK, this.ReferenceK]
endif