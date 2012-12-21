/*--------------------------------------------------------------------------
 * File:  GPSsysc_sc_main.cpp
 *
 * Description:  main, system initialization (and idle loop)
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSsysc_sys_types.h"
#include "gpssysc_sys.h"


/*
 *
 * main (although perhaps under a different name)
 *
 * Bring the system up and start the event dispatch loops.
 * Make invocations to the user hooks during the different phases
 * of bringup, run and shutdown.
 *
 */
int sc_main ( int argc, char* argv[] )
{
  UserInitializationCallout();
  UserPreOoaInitializationCallout();
  gpssysc_sys* gpssysc_top = 0;
  gpssysc_top = new gpssysc_sys("gpssysc_sys");

  UserPostOoaInitializationCallout();
  //--- Steady State Simulation
  sc_start();
  UserPreShutdownCallout();
  sc_stop();
  UserPostShutdownCallout();
  delete gpssysc_top;
  return 0;
}
