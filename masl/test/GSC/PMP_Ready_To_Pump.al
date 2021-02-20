//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state GSC::PUMP.Ready_To_Pump () is
# Start pump motor and wait for the gun trigger to be depressed.
# Or the gun can be replaced.

[] = MO1:Start_Motor[]