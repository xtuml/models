define action CT_Tags_GSC_6
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instGS = find-one Global_Super where idGS = 1

link this R5 instGS

newGS = this -> R5.Global_Super

if newGS != UNDEFINED then
   [] = RPT2:Test_Passed["Link succesefull", Test, 0]
else
   [] = RPT3:Test_Failed["Link unsuccesefull", Test, -10]
endif

generate GSC3:Finished (Test) to this


enddefine
