define action CT_Tags_TCAA_3
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instTS = find-one TCA_Super where idTS = 1

instGSF = instTS -> R6.Global_SubF

unlink instTS R6 instGSF

instGSF = instTS -> R6.Global_SubF

if instGSF = UNDEFINED then
   [] = RPT2:Test_Passed["Unlink succesefull", Test, 0]
else
   [] = RPT3:Test_Failed["Unlink unsuccesefull", Test, -10]
endif

generate TCAA2:Unlink_From_Global(Test) to this


enddefine
