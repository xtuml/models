define action Events_objD_1
input\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
Idle state.
#$END_DESCRIPTION

#-------------------------------------------------------------------------
# In this state check that all the events have been processed and then 
# verify the result
#-------------------------------------------------------------------------

if this.no_of_received_events = 2 then
	
   [] = objVERPOL1:verify_polymorphic[ "Object D", this.ReferenceD, Test_Number ]

   temp = this.no_of_received_events + 1

   this.no_of_received_events = temp

endif


enddefine
