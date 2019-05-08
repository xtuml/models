define action CT_Tags_ObjTE_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

temp = this.TERef
temp = temp + 1
this.TERef = temp

generate ObjTE3:Finished(Test) to this


enddefine
