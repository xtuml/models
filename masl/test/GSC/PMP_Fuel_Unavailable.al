//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state GSC::PUMP.Fuel_Unavailable () is
# Inform customer that the pump is unavailable.
# Wait for fuel to become available for this pump.

[] = CU1:Pump_Unavailable[]