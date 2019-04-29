define action Events_objQ_1
input
output

#$DESCRIPTION

# This state shall prove that an event is passed from the 
# supertype to the subtype even when there is no state 
# model in the supertype.
#$END_DESCRIPTION

#-----------------------------------------------------------
# in this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

my_super = this -> R4.Object_P

if my_super.number_of_received_events = 2 then
	
   [] = objVERPOL1:verify_polymorphic[ "Object Q", my_super.Reference_P, this.latest_test ]

   temp = my_super.number_of_received_events + 1

   my_super.number_of_received_events = temp

endif


enddefine
