state CT_Tags::TCA_D.Idle (Test : in  integer) is
if this.TDRef = 1 then

   if !this.TDPassed then
      this.TDPassed = TRUE
      [] = RPT2:Test_Passed["Gen event to TCA object", Test, 0]
   else

      if this.TDLinked then  
         [] = RPT2:Test_Passed["Global Super TCA Sub linked", Test, 0]
      else
         [] = RPT2:Test_Passed["Global Super TCA Sub unlinked", Test, -10]
      endif

   endif

else
   [] = RPT3:Test_Failed["Gen event to TCA object", Test, this.TDRef]
endif

