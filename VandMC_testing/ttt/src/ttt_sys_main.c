/*--------------------------------------------------------------------------
 * File:  ttt_sys_main.c
 *
 * Description:  main, system initialization (and idle loop)
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "c1_classes.h"
#include "c2_classes.h"
#include "c3_classes.h"

/*
 * Run application level initialization by initializing the
 * collection of instances for each class and calling domain
 * specific initialization.
 */
static void ApplicationLevelInitialization( void );
static void ApplicationLevelInitialization( void )
{
  Escher_DomainNumber_t d;
  Escher_ClassNumber_t c;

  static const Escher_ClassNumber_t domain_class_count[ SYSTEM_DOMAIN_COUNT ] = {
    c1_MAX_CLASS_NUMBERS,
    c2_MAX_CLASS_NUMBERS,
    c3_MAX_CLASS_NUMBERS
  };
  for ( d = 0; d < SYSTEM_DOMAIN_COUNT; d++ ) {
    for ( c = 0; c < domain_class_count[ d ]; c++ ) {
      Escher_ClassFactoryInit( d, c );
    }
  }
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
main( int argc, char ** argv )
{
  UserInitializationCallout();
  Escher_SetFactoryInit( SYS_MAX_CONTAINERS );
  Escher_InitializeThreading();
  InitializeOoaEventPool();
  ApplicationLevelInitialization();
  UserPreOoaInitializationCallout();
  c1_execute_initialization();
  c2_execute_initialization();
  c3_execute_initialization();
  UserPostOoaInitializationCallout();
  Escher_xtUML_run(); /* This is the primary event dispatch loop.  */
  UserPreShutdownCallout();
  UserPostShutdownCallout();
  Escher_thread_shutdown();
  return 0;
}
