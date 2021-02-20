state CT_Tags::Global_SubC.Set_Flag (Test : in  integer) is
instGS = find-one Global_Super where idGS = 1

instGS.GlobalFlag = TRUE

temp = instGS.GSRef
temp = temp + 1
instGS.GSRef = temp

generate GSC3:Finished (Test) to this