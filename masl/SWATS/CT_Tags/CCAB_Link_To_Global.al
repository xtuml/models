state CT_Tags::CCA_B.Link_To_Global (Test : in  integer) is
instGSI = find-one Global_SubI where idGSI = 1
instCS  = find-one CCA_Super where idCS = 1

link instCS R7 instGSI

newGSI = instCS -> R7.Global_SubI

if newGSI != UNDEFINED then
   [] = RPT2:Test_Passed["Link succesefull", Test, 0]
else
   [] = RPT3:Test_Failed["Link unsuccesefull", Test, -10]
endif

generate CCAB1:Link_To_Global(Test) to this