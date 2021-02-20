define action TT_BT_2
input
output

#$DESCRIPTION
#$END_DESCRIPTION

generate TIM1:Set_Timer(this.timer_id_one, 5, 'SECOND', event("BT1"), this)


enddefine
