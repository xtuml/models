define action Events_TE_4
input\
	Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

   [] = RPT1:Start_Test[Test_No, "1241-0000-01-0211", "Events", "State", "Ignore Event"]

   generate TE1:Gen_Ignore(Test_No) to this


enddefine
