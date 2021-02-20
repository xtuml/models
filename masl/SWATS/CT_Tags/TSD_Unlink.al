state CT_Tags::TCA_SubD.Unlink (Test : in  integer) is
instTS  = this -> R6.TCA_Super

unlink this R6 instTS

tmpInst = this -> R6.TCA_Super

   if tmpInst = UNDEFINED then
      [] = RPT2:Test_Passed["Unlink succesefull", Test, 0]
   else
      [] = RPT3:Test_Failed["Unlink unsuccesefull", Test, -10]
   endif

generate TSD1:Finished (Test) to this