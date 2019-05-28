define action CT_Tags_ObjTD_3
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instGS = find-one Global_Super where idGS = 1

instTSA = find-one TCA_SubA where idTSA = 1

link instGS R5 instTSA

newGS = instTSA -> R5.Global_Super

if newGS != UNDEFINED then

   if newGS.idGS = 1 then
      this.TDLinked = TRUE
   endif

endif

generate ObjTD2:Link_SuperSub (Test) to this


enddefine
