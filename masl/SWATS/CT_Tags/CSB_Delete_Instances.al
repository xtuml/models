terminal state CT_Tags::CCA_SubB.Delete_Instances (Test : in  integer) is
   {SetCSB} = find-all CCA_SubB
   for instCSB in {SetCSB} do
      delete instCSB
   endfor

   {SetCSE} = find-all CCA_SubE
   for instCSE in {SetCSE} do
      delete instCSE
   endfor

   {SetCS} = find-all CCA_Super
   for instCS in {SetCS} do
      delete instCS
   endfor

   {SetCSH} = find-all CCA_SubH
   for instCSH in {SetCSH} do
      delete instCSH
   endfor

   {SetCSE} = find-all CCA_SubE
   for instCSE in {SetCSE} do
      delete instCSE
   endfor

   {SetCA} = find-all CCA_A
   for instCA in {SetCA} do
      delete instCA
   endfor

   {SetCB} = find-all CCA_B
   for instCB in {SetCB} do
      delete instCB
   endfor

   {SetCC} = find-all CCA_C
   for instCC in {SetCC} do
      delete instCC
   endfor

   {SetCSB} = find-all CCA_SubB
   {SetCSE} = find-all CCA_SubE
   {SetCS}  = find-all CCA_Super
   {SetCSH} = find-all CCA_SubH
   {SetCA}  = find-all CCA_A
   {SetCB}  = find-all CCA_B
   {SetCC}  = find-all CCA_C

   if countof {SetCSB} = 0 then

      if countof {SetCSE} = 0 then

         if countof {SetCS} = 0 then

            if countof {SetCSH} = 0 then

               if countof {SetCA} = 0 then

                  if countof {SetCB} = 0 then

                     if countof {SetCC} = 0 then
                        [] = RPT2:Test_Passed["Delete all CCA instances", Test, 0]
                     else
                        [] = RPT3:Test_Failed["Delete all CCA instances", Test, -10]
                     endif

                  else
                     [] = RPT3:Test_Failed["Delete all CCA instances", Test, -20]
                  endif

               else
                  [] = RPT3:Test_Failed["Delete all CCA instances", Test, -30]
               endif

            else
               [] = RPT3:Test_Failed["Delete all CCA instances", Test, -40]
            endif

         else
            [] = RPT3:Test_Failed["Delete all CCA instances", Test, -50]
         endif

      else
         [] = RPT3:Test_Failed["Delete all CCA instances", Test, -60]
      endif

   else
      [] = RPT3:Test_Failed["Delete all CCA instances", Test, -10]
   endif
