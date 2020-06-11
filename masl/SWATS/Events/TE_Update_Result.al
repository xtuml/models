state Events::Test_Effects.Update_Result (Test_No     : in  integer,
                                          Effect_Type : in  string) is
if Effect_Type = "Ignored" then

   if this.Result = 10 then
      [] = RPT2:Test_Passed["Ignored event", Test_No, 0]
   else
      [] = RPT3:Test_Failed["Ignored event", Test_No, this.Result]
   endif  

endif

if Effect_Type = "Cannot Happen" then

   if this.Result = 10 then
      [] = RPT2:Test_Passed["Cannot Happen event", Test_No, 0]
   else
      [] = RPT3:Test_Failed["Cannot Happen event", Test_No, this.Result]
   endif 

endif

if Effect_Type = "Undefined" then

   if this.Result = 10 then
      [] = RPT2:Test_Passed["Undefined event", Test_No, 0]
   else
      [] = RPT3:Test_Failed["Undefined event", Test_No, this.Result]
   endif 

endif