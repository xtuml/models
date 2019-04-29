define action Events_objX_6
input\
	Test_No:Base_Integer_Type,\
	Input_Param:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION


if Input_Param = 100 then
   Returning_No = Input_Param + 100
else
   Returning_No = -10
endif

generate objX2:Finished(Test_No, "Check_ASL_In_Instance", Returning_No) to this



enddefine
