define action CT_Tags_ObjTF_1
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if this.TFRef = 1 then
   [] = RPT2:Test_Passed["TCA Event", Test, 0]
else
   [] = RPT3:Test_Failed["TCA Event", Test, this.TFRef]
endif


enddefine
