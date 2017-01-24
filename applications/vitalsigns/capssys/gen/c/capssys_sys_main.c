/*--------------------------------------------------------------------------
 * File:  capssys_sys_main.c
 *
 * Description:  main, system initialization (and idle loop)
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "infusion_classes.h"
#include "ARM_classes.h"
#include "BUI_classes.h"
#include "SpO2_classes.h"
#include "monitor_classes.h"

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
    ARM_MAX_CLASS_NUMBERS,
    0,
    SpO2_MAX_CLASS_NUMBERS,
    infusion_MAX_CLASS_NUMBERS,
    monitor_MAX_CLASS_NUMBERS
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
  InitializeOoaEventPool();
  ApplicationLevelInitialization();
  UserPreOoaInitializationCallout();
  infusion_execute_initialization();
  ARM_execute_initialization();
  BUI_execute_initialization();
  SpO2_execute_initialization();
  monitor_execute_initialization();
  UserPostOoaInitializationCallout();
  Escher_xtUML_run(); /* This is the primary event dispatch loop.  */
  UserPreShutdownCallout();
  UserPostShutdownCallout();
  return 0;
}
