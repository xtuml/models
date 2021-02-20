state Events::Test_Effects.Gen_Cannot_Happen_Event (Test_No : in  integer) is
   [] = RPT1:Start_Test[Test_No, "1241-0000-01-0212", "Events", "State", "Cannot Happen Event"]
   [] = RPT8:Specify_Requid[Test_No, "1241-0000-01-0207"]
   [] = RPT8:Specify_Requid[Test_No, "1241-0000-01-0208"]

   temp = this.Result
   temp = temp + 10

   this.Result = temp

   generate TE4:Gen_Cannot_Happen(Test_No) to this

   generate TE3:Finish(Test_No, "Cannot Happen") to this