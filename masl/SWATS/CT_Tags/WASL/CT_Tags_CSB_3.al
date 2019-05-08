define action CT_Tags_CSB_3
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instGS = this -> R5.Global_Super

if instGS != UNDEFINED then

   unlink this R5 instGS

   tmpInst = this -> R5.Global_Super

   if tmpInst = UNDEFINED then
      [] = RPT2:Test_Passed["Unlink succesefull", Test, 0]
   else
      [] = RPT3:Test_Failed["Unlink unsuccesefull", Test, -10]
   endif

else
   [] = RPT3:Test_Failed["Link undefined", Test, -10]
endif

generate CSB3:Finished (Test) to this


enddefine
