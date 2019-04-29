define action Events_objTP_2
input\
	Test_No:Base_Integer_Type,\
	A_Val:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

temp = 1

[temp] = Events6::Add_One[A_Val]

if A_Val = 10 then
  [] = RPT2:Test_Passed["Persistence", Test_No, 0]
else
   [] = RPT3:Test_Failed["Persistence", Test_No, A_Val]
endif

generate objTP3:Finished() to this


enddefine
