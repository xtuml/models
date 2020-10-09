state CT_Tags::CCA_SubE.Link_CCA_Super_CCA_Sub (Test : in  integer) is
instCS  = find-one CCA_Super where idCS  = 1
instCSH = find-one CCA_SubH  where idCSH = 1

newCSH = instCS -> R7.CCA_SubH
if newCSH = UNDEFINED then
   link instCS R7 instCSH

   newCSH = instCS -> R7.CCA_SubH

   if newCSH != UNDEFINED then

      if newCSH.idCSH = 1 then
         this.CSELinked = TRUE
      endif

   endif

endif
   generate CSE1:Link_SuperSub (Test) to this