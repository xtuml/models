define action Events_objK_1
input\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
Idle state.
#$END_DESCRIPTION

#-----------------------------------------------------------
# In this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

my_super = this -> R7.Object_J

if my_super.action_count <= 0 then
   [] = objVERPOL1:verify_polymorphic[ "Object K", this.ReferenceK, this.ReferenceK]
endif


enddefine
