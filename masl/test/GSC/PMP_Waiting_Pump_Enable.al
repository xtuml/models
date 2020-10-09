//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state GSC::PUMP.Waiting_Pump_Enable () is
# Determine whether the connected tank contains 
# more than 4% of its capacity.

supplying_tank = this -> R1

if supplying_tank.Tank_Empty_Flag = TRUE then
  generate PMP4:Fuel_Level_Low() to this
else
  [] = AT1:Request_Pump_Enable[]
endif