/*----------------------------------------------------------------------------
 * File:  polycalc.c
 *
 * UML Component Port Messages
 * Component/Module Name:  polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"

/*
 * Interface:  instrumentation
 * Provided Port:  testing
 * To Provider Message:  start_test
 */
void
polycalc_testing_start_test()
{
  /* ::test(  ) */
  polycalc_test();
}

/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  test
 */
void
polycalc_test()
{
  /* GENERATE PUZZLE_A1:start() TO PUZZLE CLASS */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( (void *) 0, &polycalc_PUZZLE_CBevent1c );
    Escher_SendEvent( e );
  }


}


/*
 * Domain Function:  deeptest
 */
void
polycalc_deeptest()
{
  /* GENERATE LOCATION_A1:start() TO LOCATION CLASS */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( (void *) 0, &polycalc_LOCATION_CBevent1c );
    Escher_SendEvent( e );
  }


}


/*
 * Domain Function:  xit
 */
void
polycalc_xit()
{
  /* ARCH::shutdown(  ) */
  ARCH_shutdown();

}

#if polycalc_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const polycalc_class_info[ polycalc_MAX_CLASS_NUMBERS ] = {
  polycalc_CLASS_INFO_INIT
};
#endif

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t polycalc_EventDispatcher[ polycalc_STATE_MODELS ] = {
  polycalc_class_dispatchers
};

void polycalc_execute_initialization()
{
  /*
   * Initialization Function:  test
   * Component:  polycalc
   */
  polycalc_test();

}
