define action Events_SC_1
input\
	Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if this.Whats_The_State = "Check_State" then
   [] = RPT2:Test_Passed["Check state", Test_No, 0]
else
   [] = RPT3:Test_Failed["Check_State", Test_No, -10]
endif


enddefine
