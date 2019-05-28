define action Events_objTP_5
input\
	Test_No:Base_Integer_Type,\
	Text_Input:Base_Text_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if Text_Input = "Text Passed" then
  [] = RPT2:Test_Passed["Text Input", Test_No, 0]
else
   [] = RPT3:Test_Failed["Text Input", Test_No, -10]
endif

generate objTP3:Finished() to this


enddefine
