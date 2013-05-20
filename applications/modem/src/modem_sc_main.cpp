/*--------------------------------------------------------------------------
 * File:  modem_sc_main.cpp
 *
 * Description:  main, system initialization (and idle loop)
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "modem_sys_types.h"
#include "system_sys.h"


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
  system_sys* system_top = 0;
  system_top = new system_sys("system_sys");

  UserPostOoaInitializationCallout();
  //--- Steady State Simulation
  sc_start();
  UserPreShutdownCallout();
  sc_stop();
  UserPostShutdownCallout();
  delete system_top;
  return 0;
}
