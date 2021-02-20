define action TT_RT_3
input
output

#$DESCRIPTION
#$END_DESCRIPTION

generate TIM1:Set_Timer(this.timer_id_one, 10, 'SECOND', event("RT2"), this)
generate TIM1:Set_Timer(this.timer_id_two, 5,  'SECOND', event("RT3"), this)

generate TIM2:Reset_Timer(this.timer_id_two)


enddefine
