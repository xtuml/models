state CT_Tags::TCA_Super.Check_Result (Test : in  integer) is
if this.TSRef = 1 then

   if this.TCAFlag then
      this.TSRef = 2
      [] = RPT2:Test_Passed["TCA Poly Event", Test, 0]
   else
      [] = RPT3:Test_Failed["TCA Poly Event", Test, -10]
   endif

else

   instGSF = this -> R6.Global_SubF
   if instGSF.GlobalFlag then 
      [] = RPT2:Test_Passed["TCA Poly Event", Test, 0]
   else
      [] = RPT3:Test_Failed["TCA Poly Event", Test, -10]
   endif

endif

generate TS2:Finished (Test) to this