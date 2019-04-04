//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state GSC::TANK.Checking_Levels_After_Tanker_Delivery (Added_Volume : in  real) is
# Add volume to tank level. If the level is greater
# than 4% of the tanks capacity reset any waiting pumps.
# If the tank is still below its threshold return to the
# Nearly Empty state.

[] = TNK3:Increase_Level[Added_Volume] on this

[below_threshold] = TNK1:Check_Level[] on this

if below_threshold = TRUE then
	this.Tank_Empty_Flag = TRUE
	generate TNK2:Level_Below_Threshold() to this
else
	this.Tank_Empty_Flag = FALSE
	[] = TNK4:Inform_Connected_Pumps_Fuel_Available[] on this
	generate TNK3:Level_Above_Threshold() to this
endif 