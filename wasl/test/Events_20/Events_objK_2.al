define action Events_objK_2
input\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
This state receives an event from its related supertype object, and also
passes the event onto its related subtype object.
#$END_DESCRIPTION

#-----------------------------------------------------------
# SUB/SUPERTYPE
#-----------------------------------------------------------

   [] = RPT1:Start_Test[this.ReferenceK, "1241-0000-01-0405", "Events", "ObjK", "Subtype K"]

   my_super = this -> R7.Object_J
   temp = my_super.action_count - 1
   my_super.action_count = temp

   temp = this.ResultK + 70
   this.ResultK = temp

#-----------------------------------------------------------

generate objK1:Finished(Test_Number) to this


enddefine
