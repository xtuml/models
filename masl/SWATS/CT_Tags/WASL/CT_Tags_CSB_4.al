define action CT_Tags_CSB_4
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instGS = find-one Global_Super where idGS = 1
instRes = find-one Results where idRes = 1 

instGS.CCAFlag = TRUE

temp = instGS.GSRef
temp = temp + 1
instGS.GSRef = temp
instRes.ResRef = temp

generate CSB3:Finished (Test) to this


enddefine
