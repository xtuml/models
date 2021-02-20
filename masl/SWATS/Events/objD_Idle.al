//! Idle state.
state Events::Object_D.Idle (Test_Number : in  integer) is
#-------------------------------------------------------------------------
# In this state check that all the events have been processed and then 
# verify the result
#-------------------------------------------------------------------------

if this.no_of_received_events = 2 then
	
   [] = objVERPOL1:verify_polymorphic[ "Object D", this.ReferenceD, Test_Number ]

   temp = this.no_of_received_events + 1

   this.no_of_received_events = temp

endif