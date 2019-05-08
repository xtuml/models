define action CT_Tags_TS_4
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

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


enddefine
