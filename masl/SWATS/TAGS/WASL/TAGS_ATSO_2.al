define action TAGS_ATSO_2
input\
	The_Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = RPT1:Start_Test[The_Test_No, "Null Requid", "Tagging", "Active Tagged Single object", "Generate ATSO"]

{Lots_Of_Many_Objects} = this -> R2.Active_Tagged_Many_Objects

how_many = countof {Lots_Of_Many_Objects}

if how_many = 1 then
   [] = RPT2:Test_Passed["Active Tagged Single Object", The_Test_No, 0]
else
   [] = RPT3:Test_Failed["Active Tagged Single Object", The_Test_No, how_many]
endif


enddefine
