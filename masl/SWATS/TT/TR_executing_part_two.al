state TT::Time_Remaining.executing_part_two () is
#   CQ 6579 Changed from: [time_remaining] = Get_Time_Remaining[this.timer_id_one]
timer_id_one_local = this.timer_id_one
[time_remaining] = Get_Time_Remaining[timer_id_one_local]
if (time_remaining = 0) then
   generate TR4:success() to this
else
   generate TR3:failure() to this
endif
