define action Events_CP_2
input\
	Start_Val:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if Start_Val < 10 then
   temp = Start_Val
   temp = Start_Val + 1
   generate CP1:Start(temp) to this
else
   Its_Done = TRUE
   generate CP2:Finish(Start_Val, Its_Done) to this
endif


enddefine
