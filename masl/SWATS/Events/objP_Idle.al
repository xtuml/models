state Events::Object_P.Idle (Test : in  integer) is
#-----------------------------------------------------------
# In this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

if this.number_of_received_events = 2 then
	
   [] = objVERPOL1:verify_polymorphic[ "Object P", this.Reference_P, this.latest_test]

   temp = this.number_of_received_events + 1

   this.number_of_received_events = temp

endif