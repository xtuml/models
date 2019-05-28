define action CT_Tags_ObjTF_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

temp = this.TFRef
temp = temp + 1
this.TFRef = temp

generate ObjTF1:Fired(Test) to this


enddefine
