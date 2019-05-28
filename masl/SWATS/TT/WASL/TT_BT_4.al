define action TT_BT_4
input
output

#$DESCRIPTION
#$END_DESCRIPTION

generate TIM1:Set_Timer(this.timer_id_one, 5000, 'MILLISECOND', event("BT1"), this)


enddefine
