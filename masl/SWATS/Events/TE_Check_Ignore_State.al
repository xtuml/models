state Events::Test_Effects.Check_Ignore_State (Test_No : in  integer) is
   [] = RPT1:Start_Test[Test_No, "1241-0000-01-0211", "Events", "State", "Ignore Event"]

   generate TE1:Gen_Ignore(Test_No) to this