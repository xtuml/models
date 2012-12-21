/*----------------------------------------------------------------------------
 * File:  keypad_TEST_class.c
 *
 * Class:       tests  (TEST)
 * Component:   keypad
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "calculator_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "keypad_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s keypad_TEST_container[ keypad_TEST_MAX_EXTENT_SIZE ];
static keypad_TEST keypad_TEST_instances[ keypad_TEST_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_keypad_TEST_extent = {
  {0}, {0}, &keypad_TEST_container[ 0 ],
  (Escher_iHandle_t) &keypad_TEST_instances,
  sizeof( keypad_TEST ), keypad_TEST_STATE_1, keypad_TEST_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      tests  (TEST)
 * Component:  keypad
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [one]
 */
static void keypad_TEST_act1( keypad_TEST *, const Escher_xtUMLEvent_t * const );
static void
keypad_TEST_act1( keypad_TEST * self, const Escher_xtUMLEvent_t * const event )
{
}



  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t keypad_TEST_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) keypad_TEST_act1  /* one */
  };

/*
 * For this state machine, there are either no events,
 * no transitions, or no states.
 */
void
keypad_TEST_Dispatch( Escher_xtUMLEvent_t * event )
{
  /*
   * This is an empty state machine, which is not good to have.
   * But since there are no events that could land here, we will
   * ignore this and assume that it is an incomplete model.
   */
}


