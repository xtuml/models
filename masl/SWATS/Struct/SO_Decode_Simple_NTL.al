state Struct::Structured_Object.Decode_Simple_NTL (Test            : in  integer,
                                                   A_NTL_Structure : in  sequence of Name_and_Type_Linked_Simple_Structure_Type) is
[] = RPT1:Start_Test[Test, "Null Requid", "Structures", "Structured_Object", "generate simple NTL decode"]

Count = 1
Has_Failed = FALSE

# How many in the set

How_Many = countof {A_NTL_Structure}

for [the_integer, the_real, the_text, the_boolean] in {A_NTL_Structure} do

   local_integer = the_integer
   local_real    = the_real
   local_text    = the_text
   local_boolean = the_boolean

   # We are only interested in the final value in the set, otherwise
   # there would be numerous passes shown in the results file
   # for this test.

   if Count = How_Many then

      # This is the position in the set that we are interested in
      if local_integer = this.An_Integer and \
         local_real    = this.A_Real and \
         local_text    = this.Some_Text and \
         local_boolean = this.A_Boolean then

         [] = RPT2:Test_Passed[this.Some_Text, Test, this.An_Integer]
       else
         [] = RPT3:Test_Failed[this.Some_Text, Test, this.An_Integer]
         Has_Failed = TRUE

       endif

   endif

   Count = Count + 1

endfor


if Test = 41 then 

   [] = Struct9::Delete_Report_Data[]

endif

if Has_Failed then
   generate SO4:Fault() to this
else
   generate SO3:Finished() to this
endif

