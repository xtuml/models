state CT_Tags::TCA_SubA.Unlink_Global_From_TCA (Test : in  integer) is
instGS  = this -> R5.Global_Super

unlink this R5 instGS

tmpInst = this -> R5.Global_Super

   if tmpInst = UNDEFINED then
      [] = RPT2:Test_Passed["Unlink succesefull", Test, 0]
   else
      [] = RPT3:Test_Failed["Unlink unsuccesefull", Test, -10]
   endif

generate TSA3:Finished (Test) to this