state Events::State_Check.Check_State (Test_No : in  integer) is
if this.Current_State = 'Check_State' then
   this.Whats_The_State = "Check_State"
else
   this.Whats_The_State = "Wrong_State"
endif

generate SC2:Finished(Test_No) to this