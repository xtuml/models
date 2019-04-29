define action Events_CP_1
input\
	Start_Val:Base_Integer_Type,\
	Got_To_End:Boolean
output

#$DESCRIPTION
#$END_DESCRIPTION

if Got_To_End then

   if Start_Val = 10 then
      [] = RPT2:Test_Passed["Paramaters", this.Number_Of_Test, 0]
   else
      [] = RPT3:Test_Failed["Paramaters", this.Number_Of_Test, Start_Val]
   endif

else 
   [] = RPT3:Test_Failed["Paramaters", this.Number_Of_Test, Start_Val]
endif



enddefine
