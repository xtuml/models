state CT_Tags::CCA_A.Link_Global_Super_To_CCA_Sub (Test : in  integer) is
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