define action RP_DD_3
input
output

#$DESCRIPTION
#$END_DESCRIPTION

# Check to see if all instances of objects linked to this object
# have been removed.

A_Pass = this -> R1.A_Test_That_Passed
A_Fail = this -> R2.A_Test_That_Failed
Supp   = this -> R3.A_Test_That_Is_Unsupported

{Set_Of_Dupes} = this -> R4.Duplicated_Result
{Set_Of_Tests} = this -> R8.Test_Details

# If we are collecting Traceability data for this domain, unlink it
# but DO NOT delete it, otherwise all data would be lost.

Traceability = this -> R10.Test_Suite

if Traceability != UNDEFINED then

   unlink this R10 Traceability

endif


if A_Pass != UNDEFINED then

   [] = RP7::Report_Run_Time_Error["Pass result instance still exists"]

else

   if A_Fail != UNDEFINED then

      [] = RP7::Report_Run_Time_Error["Fail result instance still exists"]

   else

      if Supp != UNDEFINED then

         [] = RP7::Report_Run_Time_Error["Unsupported result instance still exists"]

       else

          if countof {Set_Of_Dupes} != 0 then

             [] = RP7::Report_Run_Time_Error["Duplicated result instance still exists"]

          else

             if countof {Set_Of_Tests} != 0 then

                 [] = RP7::Report_Run_Time_Error["Results instance still exists"]

             else

                delete this

             endif
          endif
       endif
   endif
endif



enddefine
