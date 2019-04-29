define action Events_SC_2
input\
	Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if this.Current_State = 'Check_State' then
   this.Whats_The_State = "Check_State"
else
   this.Whats_The_State = "Wrong_State"
endif

generate SC2:Finished(Test_No) to this


enddefine
