state CT_Tags::CCA_SubE.Idle (Test : in  integer) is
if this.CSERef = 1 then

   if !this.CSEPassed then
      this.CSEPassed = TRUE
      [] = RPT2:Test_Passed["Gen event to CCA object", Test, 0]
   else

      if this.CSELinked then  
         [] = RPT2:Test_Passed["CCA Super CCA Sub linked", Test, 0]
      else
         [] = RPT2:Test_Passed["CCA Super CCA Sub not linked", Test, -10]
      endif

   endif

else
   [] = RPT3:Test_Failed["Gen event to CCA object", Test, this.CSERef]
endif

