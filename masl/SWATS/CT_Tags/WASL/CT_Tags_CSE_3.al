define action CT_Tags_CSE_3
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

temp = this.CSERef
temp = temp + 1
this.CSERef = temp

generate CSE2:Start(Test) to this


enddefine
