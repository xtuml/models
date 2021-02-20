define action Events_objP_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

#-----------------------------------------------------------
# In this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

if this.number_of_received_events = 2 then
	
   [] = objVERPOL1:verify_polymorphic[ "Object P", this.Reference_P, this.latest_test]

   temp = this.number_of_received_events + 1

   this.number_of_received_events = temp

endif


enddefine
