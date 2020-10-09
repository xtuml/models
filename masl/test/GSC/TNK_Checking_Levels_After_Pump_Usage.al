//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state GSC::TANK.Checking_Levels_After_Pump_Usage (Delivered_Volume : in  real) is
# Reduce recorded tank level by volume delivered. 
# If the level is less than 4% of the tanks capacity 
# then inhibit connected pumps from making further
# deliveries.

[] = TNK2:Reduce_Level[Delivered_Volume] on this

[below_threshold] = TNK1:Check_Level[] on this

if below_threshold then
	this.Tank_Empty_Flag = TRUE
	generate TNK2:Level_Below_Threshold() to this
else
	generate TNK3:Level_Above_Threshold() to this
endif