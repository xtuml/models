define action Events_PriA_2
input\
	Test_No:Base_Integer_Type,\
	Index:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

InstPA = find-one Priority_A where A_ID = 1

if this.Poly_A and this.Poly_B then

   if this.RefA = 0 then
      this.RefA = 10
   endif

endif

[] = Events5::Dump_Text["Start Event In PriA Triggered"]

if !this.Done_It then
   [] = Events5::Dump_Text["StartB Event In PriA Generated To Inst Of PriA"]
   generate PriA3:StartB(Test_No, 2) to InstPA
   this.Done_It = TRUE
endif

[] = Events5::Dump_Text["Finish Event In PriA Generated To Self"]
generate PriA2:Finish(Test_No) to this


enddefine
