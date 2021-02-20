//! Idle state.
state Events::Object_E.Idle (Test_Number : in  integer) is
# in this state check that all the events have been processed and then verify 
# the result
my_super = this -> R5.Object_D

if my_super.no_of_received_events = 2 then
   [] = objVERPOL1:verify_polymorphic[ "Object E", this.ReferenceE, Test_Number ]
#   [] = objVERPOL1:verify_polymorphic[ "Object E", my_super.latest_test, Test_Number ]

   temp = my_super.no_of_received_events + 1

   my_super.no_of_received_events = temp

endif