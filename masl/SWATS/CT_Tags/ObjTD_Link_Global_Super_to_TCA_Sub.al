state CT_Tags::TCA_D.Link_Global_Super_to_TCA_Sub (Test : in  integer) is
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