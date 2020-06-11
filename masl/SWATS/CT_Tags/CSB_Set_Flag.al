state CT_Tags::CCA_SubB.Set_Flag (Test : in  integer) is
instGS = find-one Global_Super where idGS = 1
instRes = find-one Results where idRes = 1 

instGS.CCAFlag = TRUE

temp = instGS.GSRef
temp = temp + 1
instGS.GSRef = temp
instRes.ResRef = temp

generate CSB3:Finished (Test) to this