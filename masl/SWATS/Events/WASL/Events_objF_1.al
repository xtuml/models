define action Events_objF_1
input\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

#-----------------------------------------------------------
# In this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

my_super = this -> R5.Object_D

if my_super.no_of_received_events = 2 then
   [] = objVERPOL1:verify_polymorphic[ "Object F", my_super.latest_test, Test_Number]
   temp = my_super.no_of_received_events + 1
   my_super.no_of_received_events = temp
endif


enddefine
