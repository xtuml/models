define action Events_TE_6
input\
	Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

   [] = RPT1:Start_Test[Test_No, "1241-0000-01-0213", "Events", "State", "Ignore Event"]

   generate TE4:Gen_Cannot_Happen(Test_No) to this


enddefine
