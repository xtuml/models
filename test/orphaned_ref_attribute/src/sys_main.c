/*--------------------------------------------------------------------------
 * File:  sys_main.c
 *
 * Description:  main, system initialization (and idle loop)
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "sys_types.h"

/*
 * Run application level initialization by initializing the
 * collection of instances for each class and calling domain
 * specific initialization.
 */
static void ApplicationLevelInitialization( void );
static void ApplicationLevelInitialization( void )
{
}

/*
 *
 * main (although perhaps under a different name)
 *
 * Bring the system up and start the event dispatch loops.
 * Make invocations to the user hooks during the different phases
 * of bringup, run and shutdown.
 *
 */
int
main ( int argc, char ** argv )
{
  UserInitializationCallout();
  Escher_SetFactoryInit();
  ApplicationLevelInitialization();
  UserPreOoaInitializationCallout();
  UserPostOoaInitializationCallout();
  UserPreShutdownCallout();
  UserPostShutdownCallout();
  return 0;
}
/*
 * Following provides the dispatcher loops for the xtUML event queues.
 */


bool Escher_run_flag = true; /* Turn this off to exit dispatch loop(s).  */
