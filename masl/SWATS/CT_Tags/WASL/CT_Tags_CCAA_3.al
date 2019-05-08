define action CT_Tags_CCAA_3
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

temp = this.CARef
temp = temp + 1
this.CARef = temp

generate CCAA2:Fired(Test) to this


enddefine
