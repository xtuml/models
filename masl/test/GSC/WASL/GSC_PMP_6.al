define action GSC_PMP_6
input
output

#$DESCRIPTION
#$END_DESCRIPTION

# Delivery Now Complete, Stop motor and return pump 
# to waiting state

current_delivery = this->R3
generate DEL5:Delivery_Complete() to current_delivery

[] = MO2:Stop_Motor[]
generate PMP12:Customer_Finished() to this


enddefine
