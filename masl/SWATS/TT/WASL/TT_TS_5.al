define action TT_TS_5
input
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = TT1::create_report_data[]

the_first_test = create unique Test
the_basic_timer = create unique Basic_Timer with Current_State = 'idle'
link the_first_test R2 the_basic_timer

the_second_test = create unique Test
the_deleting_timer = create unique Deleting_Timer with Current_State = 'idle'
link the_second_test R2 the_deleting_timer

the_third_test = create unique Test
the_resetting_timer = create unique Resetting_Timer with Current_State = 'idle'
link the_third_test R2 the_resetting_timer

the_fourth_test = create unique Test
the_time_remaining = create unique Time_Remaining with Current_State = 'idle'
link the_fourth_test R2 the_time_remaining

the_fifth_test = create unique Test
the_unsupported = create unique Unsupported with Current_State = 'idle'
link the_fifth_test R2 the_unsupported

the_test_scheduler = find-one Test_Scheduler
link the_test_scheduler R1 the_first_test
link the_first_test R4."is_followed_by" the_second_test
link the_third_test R4."is_followed_by" the_fourth_test
link the_fourth_test R4."is_followed_by" the_fifth_test

generate TS3:setup_complete(the_first_test) to this


enddefine
