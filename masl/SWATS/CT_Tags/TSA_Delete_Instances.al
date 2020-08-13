terminal state CT_Tags::TCA_SubA.Delete_Instances (Test : in  integer) is
{SetTS} = find-all TCA_Super
for instTS in {SetTS} do
   delete instTS
endfor

{SetTSA} = find-all TCA_SubA
for instTSA in {SetTSA} do
   delete instTSA
endfor

{SetTSD} = find-all TCA_SubD
for instTSD in {SetTSD} do
   delete instTSD
endfor

{SetTD} = find-all TCA_D
for instTD in {SetTD} do
   delete instTD
endfor

{SetTE} = find-all TCA_E
for instTE in {SetTE} do
   delete instTE
endfor

{SetTF} = find-all TCA_F
for instTF in {SetTF} do
   delete instTF
endfor

{SetTG} = find-all TCA_SubG
for instTG in {SetTG} do
   delete instTG
endfor

{SetTA} = find-all TCA_A
for instTA in {SetTA} do
   delete instTA
endfor

{SetTB} = find-all TCA_B
for instTB in {SetTB} do
   delete instTB
endfor

{SetTC} = find-all TCA_C
for instTC in {SetTC} do
   delete instTC
endfor


{SetTS} = find-all TCA_Super
{SetTSA} = find-all TCA_SubA
{SetTSD} = find-all TCA_SubD
{SetTD} = find-all TCA_D
{SetTE} = find-all TCA_E
{SetTF} = find-all TCA_F
{SetTG} = find-all TCA_SubG
{SetTA} = find-all TCA_A
{SetTB} = find-all TCA_B
{SetTC} = find-all TCA_C

   if countof {SetTS} = 0 then

      if countof {SetTSA} = 0 then

         if countof {SetTSD} = 0 then

            if countof {SetTD} = 0 then

               if countof {SetTE} = 0 then

                  if countof {SetTF} = 0 then

                     if countof {SetTG} = 0 then
   
                        if countof {SetTA} = 0 then

                           if countof {SetTB} = 0 then

                              if countof {SetTC} = 0 then
                                 [] = RPT2:Test_Passed["TCA Instances Delete", Test, 0]
                              else
                                 [] = RPT3:Test_Failed["TCA Instances Delete", Test, -10]
                              endif

                           else
                              [] = RPT3:Test_Failed["TCA Instances Delete", Test, -20]
                           endif

                        else
                           [] = RPT3:Test_Failed["TCA Instances Delete", Test, -30]
                        endif

                     else
                        [] = RPT3:Test_Failed["TCA Instances Delete", Test, -40]
                     endif

                  else
                     [] = RPT3:Test_Failed["TCA Instances Delete", Test, -50]
                  endif

               else
                  [] = RPT3:Test_Failed["TCA Instances Delete", Test, -60]
               endif

            else
               [] = RPT3:Test_Failed["TCA Instances Delete", Test, -70]
            endif

         else
            [] = RPT3:Test_Failed["TCA Instances Delete", Test, -80]
         endif

      else
         [] = RPT3:Test_Failed["TCA Instances Delete", Test, -90]
      endif

   else
      [] = RPT3:Test_Failed["TCA Instances Delete", Test, -90]
   endif