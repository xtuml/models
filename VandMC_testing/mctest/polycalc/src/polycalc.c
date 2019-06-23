/*----------------------------------------------------------------------------
 * File:  polycalc.c
 *
 * UML Component Port Messages
 * Component/Module Name:  polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "polycalc.h"
#include "LOG_bridge.h"
#include "ARCH_bridge.h"
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
 * Domain Function:  deeptest
 */
void
polycalc_deeptest()
{
  /* GENERATE LOCATION_A1:start() TO LOCATION CLASS */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &polycalc_LOCATION_CBevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  test
 */
void
polycalc_test()
{
  /* GENERATE PUZZLE_A1:start() TO PUZZLE CLASS */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &polycalc_PUZZLE_CBevent1c );
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
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const polycalc_class_info[ polycalc_MAX_CLASS_NUMBERS ] = {
  &pG_polycalc_LOCATION_extent,
  &pG_polycalc_DRIVE_extent,
  &pG_polycalc_TAPE_extent,
  &pG_polycalc_CD_extent,
  &pG_polycalc_DVD_extent,
  &pG_polycalc_PORTAL_extent,
  &pG_polycalc_FRUIT_extent,
  &pG_polycalc_OP_extent,
  &pG_polycalc_ADD_extent,
  &pG_polycalc_ORANGE_extent,
  &pG_polycalc_SUB_extent,
  &pG_polycalc_TOMATO_extent,
  &pG_polycalc_MUL_extent,
  &pG_polycalc_VEGETABLE_extent,
  &pG_polycalc_CARROT_extent,
  &pG_polycalc_DIV_extent,
  &pG_polycalc_PUZZLE_extent,
  &pG_polycalc_GENERAL_extent,
  &pG_polycalc_GARDEN_extent,
  0,
  0
};

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
