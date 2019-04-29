define action Events_CCS_2
input\
	Test_No:Base_Integer_Type,\
	Which_Test:Base_Text_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if Which_Test = "Ignore" then

   instTE = find-one Test_Effects where ID = 1

   if instTE.Current_State = 'Check_Ignore_State' then
      [] = RPT2:Test_Passed["Correct State", Test_No, 0]
   else
      [] = RPT3:Test_Failed["Wrong State", Test_No, -10]
   endif

endif

if Which_Test = "Cannot Happen" then

   instTE = find-one Test_Effects where ID = 3

   if instTE.Current_State = 'Check_Cannot_Happen_State' then
      [] = RPT2:Test_Passed["Correct State", Test_No, 0]
   else
      [] = RPT3:Test_Failed["Wrong State", Test_No, -10]
   endif

endif



enddefine
