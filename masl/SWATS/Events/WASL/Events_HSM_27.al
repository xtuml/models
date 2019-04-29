define action Events_HSM_27
input\
	Test_No:Base_Integer_Type,\
	Count:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if Count = 25 then
   [] = RPT2:Test_Passed["Events", Test_No, 0]
else
   [] = RPT3:Test_Failed["Events", Test_No, Count]
endif


enddefine
