define action Events_objCREATE_1
input\
	Test:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

#-----------------------------------------------------------
# Creation state
#-----------------------------------------------------------

#-----------------------------------------------------------
# Test 1 - Create an instance of an object.
#-----------------------------------------------------------

   if Test = 1 then
      [] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "Creation State", "Creation state test"]

      newCREATE = create Creation_Object with ReferenceCREATE = 1

      if newCREATE != UNDEFINED then
         [] = RPT2:Test_Passed["Creation State", Test_Number, 0]
      else
         [] = RPT3:Test_Failed["Creation State", Test_Number, -1]
      endif

   endif


enddefine
