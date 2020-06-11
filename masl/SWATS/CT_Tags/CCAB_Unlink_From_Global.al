state CT_Tags::CCA_B.Unlink_From_Global (Test : in  integer) is
instCS = find-one CCA_Super where idCS = 1
instGSI = instCS -> R7.Global_SubI

unlink instCS R7 instGSI

newGSI = instCS -> R7.Global_SubI

if newGSI = UNDEFINED then
   [] = RPT2:Test_Passed["Unlink succesefull", Test, 0]
else
   [] = RPT3:Test_Failed["Unlink unsuccesefull", Test, -10]
endif

generate CCAB2:Unlink_From_Global(Test) to this