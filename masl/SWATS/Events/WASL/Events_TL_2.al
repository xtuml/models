define action Events_TL_2
input\
	Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

[Host] = WAW1:What_Env[]

if Host = "ISIM" then
   Total = 3
else
   Total = 4
endif

if this.Result = Total then
   [] = RPT2:Test_Passed["Event persistence", Test_No, 0]
else
   [] = RPT3:Test_Failed["Event persistence", Test_No, this.Result]
endif


enddefine
