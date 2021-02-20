define action Events_objJ_3
input\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
Idle state.
#$END_DESCRIPTION

#-----------------------------------------------------------
# Nn this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

if this.action_count = 0 then

   [] = objVERPOL1:verify_polymorphic[ "Object J", this.latest_test, this.latest_test ]

endif


enddefine
