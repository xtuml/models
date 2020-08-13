state CT_Tags::TCA_SubA.Set_Flag (Test : in  integer) is
instGS = find-one Global_Super where idGS = 1

instGS.TCAFlag = TRUE

temp = instGS.GSRef
temp = temp + 1
instGS.GSRef = temp

generate TSA3:Finished (Test) to this