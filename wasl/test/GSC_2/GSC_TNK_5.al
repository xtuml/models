define action GSC_TNK_5
input\
	Delivered_Volume:Base_Float_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

# Fuel has been used so reduce the volume in the tank.

[] = TNK2:Reduce_Level[Delivered_Volume] on this

generate TNK2:Level_Below_Threshold() to this


enddefine
