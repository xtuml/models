define action CT_Tags_CSH_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instCS = this -> R7.CCA_Super

instCS.CCAFlag = TRUE

temp = instCS.CSRef
temp = temp + 1
instCS.CSRef = temp

generate CSH2:Finished (Test) to this


enddefine
