//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state GSC::TANK.Updating_fuel_levels (Delivered_Volume : in  real) is
# Fuel has been used so reduce the volume in the tank.

[] = TNK2:Reduce_Level[Delivered_Volume] on this

generate TNK2:Level_Below_Threshold() to this