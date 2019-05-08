define action CT_Tags_CCAA_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instGS = find-one Global_Super where idGS = 1

instCSB = find-one CCA_SubB where idCSB = 1

instRes = find-one Results where idRes = 1
temp = instRes.ResRef

instGS.GSRef = temp

if instGS != UNDEFINED and instCSB != UNDEFINED then
   link instGS R5 instCSB

   newCSB = instGS -> R5.CCA_SubB

   if newCSB != UNDEFINED then
      this.CALinked = TRUE
   endif

endif


generate CCAA1:Link_SuperSub (Test) to this


enddefine
