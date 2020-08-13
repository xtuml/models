//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state GSC::PUMP.Pumping_Paused () is
# Disengage clutch which stops pumping.
# Wait for gun to be replaced into the 
# holster or for the trigger to be depressed.

[] = CL2:Disengage_Clutch[]