state CT_Tags::CCA_A.Idle (Test : in  integer) is
if this.CARef = 1 then

   if !this.CAPassed then
      this.CAPassed = TRUE
      [] = RPT2:Test_Passed["Gen event to CCA object", Test, 0]
   else

      if this.CALinked then  
         [] = RPT2:Test_Passed["Global Super CCA Sub linked", Test, 0]
      else
         [] = RPT2:Test_Passed["Global Super CCA Sub unlinked", Test, -10]
      endif

   endif

else
   [] = RPT3:Test_Failed["Gen event to CCA object", Test, this.CARef]
endif

