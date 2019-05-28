define action Events_TE_7
input\
	Test_No:Base_Integer_Type,\
	The_Reqid:Base_Text_Type,\
	Effect_Type:Base_Text_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

   [] = RPT1:Start_Test[Test_No, The_Reqid, "Events", "State", Effect_Type]

   [] = RPT4:Test_Unsupported[Test_No]

   generate TE3:Finish(Test_No, Effect_Type) to this


enddefine
