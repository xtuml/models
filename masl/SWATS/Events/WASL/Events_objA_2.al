define action Events_objA_2
input\
	Test:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
State machine only in supertype object. 
Update result if called correctly.

#$END_DESCRIPTION

#-----------------------------------------------------------
# SUPERTYPE
#-----------------------------------------------------------

   [] = RPT1:Start_Test[Test_Number, "1241-0000-01-0304", "Events", "Object_A", "State machine in supertype only"]

   this.latest_test = Test_Number
   temp = this.ResultA + 50
   this.ResultA = temp

   generate objA2:Finished(Test_Number) to this

#-----------------------------------------------------------



enddefine
