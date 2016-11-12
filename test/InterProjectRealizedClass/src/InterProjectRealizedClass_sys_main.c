/*--------------------------------------------------------------------------
 * File:  InterProjectRealizedClass_sys_main.c
 *
 * Description:  main, system initialization (and idle loop)
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "InterProjectRealizedClass_sys_types.h"
#include "OnwerComponent_classes.h"
#include "TestComponent_classes.h"

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
    0,
    0
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
  ApplicationLevelInitialization();
  UserPreOoaInitializationCallout();
  OnwerComponent_execute_initialization();
  TestComponent_execute_initialization();
  UserPostOoaInitializationCallout();
  UserPreShutdownCallout();
  UserPostShutdownCallout();
  return 0;
}
