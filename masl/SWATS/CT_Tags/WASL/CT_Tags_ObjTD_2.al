define action CT_Tags_ObjTD_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

temp = this.TDRef
temp = temp + 1
this.TDRef = temp

generate ObjTD1:Fired(Test) to this


enddefine
