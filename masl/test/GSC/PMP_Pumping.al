//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state GSC::PUMP.Pumping () is
# Engage clutch which starts pumping. 
# Continue until the gun trigger is released

[] = CL1:Engage_Clutch[]