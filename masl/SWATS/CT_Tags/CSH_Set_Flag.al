state CT_Tags::CCA_SubH.Set_Flag (Test : in  integer) is
instCS = this -> R7.CCA_Super

instCS.CCAFlag = TRUE

temp = instCS.CSRef
temp = temp + 1
instCS.CSRef = temp

generate CSH2:Finished (Test) to this