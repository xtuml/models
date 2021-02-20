terminal state CT_Tags::Global_SubC.Delete_Instances (Test : in  integer) is
{SetGS} = find-all Global_Super
for instGS in {SetGS} do
   delete instGS
endfor

{SetGSC} = find-all Global_SubC
for instGSC in {SetGSC} do
   delete instGSC
endfor

{SetGSF} = find-all Global_SubF
for instGSF in {SetGSF} do
   delete instGSF
endfor

{SetGSI} = find-all Global_SubI
for instGSI in {SetGSI} do
   delete instGSI
endfor

{SetGA} = find-all Global_A
for instGA in {SetGA} do
   delete instGA
endfor

{SetGB} = find-all Global_B
for instGB in {SetGB} do
   delete instGB
endfor

{SetGS}  = find-all Global_Super
{SetGSC} = find-all Global_SubC
{SetGSF} = find-all Global_SubF
{SetGSI} = find-all Global_SubI
{SetGA}  = find-all Global_A
{SetGB}  = find-all Global_B

if countof {SetGS} = 0 then

   if countof {SetGSC} = 0 then

      if countof {SetGSF} = 0 then

         if countof {SetGSI} = 0 then

            if countof {SetGA} = 0 then

               if countof {SetGB} = 0 then
                  [] = RPT2:Test_Passed["Global instances deleted", Test, 0]
               else
                  [] = RPT3:Test_Failed["Global instances not deleted", Test, -10]
               endif

            else
               [] = RPT3:Test_Failed["Global instances not deleted", Test, -20]
            endif

         else
            [] = RPT3:Test_Failed["Global instances not deleted", Test, -30]
         endif

      else
         [] = RPT3:Test_Failed["Global instances not deleted", Test, -40]
      endif

   else
      [] = RPT3:Test_Failed["Global instances not deleted", Test, -50]
   endif

else
   [] = RPT3:Test_Failed["Global instances not deleted", Test, -60]
endif
