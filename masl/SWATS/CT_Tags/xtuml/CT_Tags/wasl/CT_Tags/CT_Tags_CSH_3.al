define action CT_Tags_CSH_3
input\
	Test:Base_Integer_Type
output 

#$DESCRIPTION
#$END_DESCRIPTION

instCS  = this -> R7.CCA_Super

unlink this R7 instCS

tmpInst = this -> R7.CCA_Super

   if tmpInst = UNDEFINED then
      [] = RPT2:Test_Passed["Unlink succesefull", Test, 0]
   else
      [] = RPT3:Test_Failed["Unlink unsuccesefull", Test, -10]
   endif

generate CSH1:Unlink_SuperSub (Test) to this
enddefine
