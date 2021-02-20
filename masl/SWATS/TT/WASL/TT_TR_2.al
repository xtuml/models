define action TT_TR_2
input
output

#$DESCRIPTION
#$END_DESCRIPTION

[timer_identifier_one] = Create_Timer[]
this.timer_id_one = timer_identifier_one
[timer_identifier_two] = Create_Timer[]
this.timer_id_two = timer_identifier_two

generate TR2:setup_complete() to this


enddefine
