state Events::Check_Parameters.Idle (Start_Val  : in  integer,
                                     Got_To_End : in  boolean) is
if Got_To_End then

   if Start_Val = 10 then
      [] = RPT2:Test_Passed["Paramaters", this.Number_Of_Test, 0]
   else
      [] = RPT3:Test_Failed["Paramaters", this.Number_Of_Test, Start_Val]
   endif

else 
   [] = RPT3:Test_Failed["Paramaters", this.Number_Of_Test, Start_Val]
endif
