state Events::Top_Level.Finish (Test_No : in  integer) is
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