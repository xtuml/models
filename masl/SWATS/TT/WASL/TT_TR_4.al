define action TT_TR_4
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_test_scheduler = find-one Test_Scheduler
test_number = the_test_scheduler.current_test_number + 1
the_test_scheduler.current_test_number = test_number
[] = RPT1:Start_Test[test_number, "1241-0000-01-0912", "Test Timers", "Time Remaining", "Get_Time_Remaining returns 0 for unset Timer"]

#   CQ 6579 Changed from: [time_remaining] = Get_Time_Remaining[this.timer_id_one]
timer_id_one_local = this.timer_id_one
[time_remaining] = Get_Time_Remaining[timer_id_one_local]

if (time_remaining = 0) then
   generate TR4:success() to this
else
   generate TR3:failure() to this
endif



enddefine
