define action CT_Tags_GSC_4
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instGS = find-one Global_Super where idGS = 1

instGS.GlobalFlag = TRUE

temp = instGS.GSRef
temp = temp + 1
instGS.GSRef = temp

generate GSC3:Finished (Test) to this


enddefine
