//! Idle state.
state Events::Object_J.Idle (Test_Number : in  integer) is
#-----------------------------------------------------------
# Nn this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

if this.action_count = 0 then

   [] = objVERPOL1:verify_polymorphic[ "Object J", this.latest_test, this.latest_test ]

endif