define action Events_objTP_4
input\
	Test_No:Base_Integer_Type,\
	Real_Val:Base_Float_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if Real_Val = 99.9 then
  [] = RPT2:Test_Passed["Real Input", Test_No, 0]
else
  [] = RPT3:Test_Failed["Real Input", Test_No, -10]
endif

generate objTP3:Finished() to this


enddefine
