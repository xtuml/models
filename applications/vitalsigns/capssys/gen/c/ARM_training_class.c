/*----------------------------------------------------------------------------
 * File:  ARM_training_class.c
 *
 * Class:       training  (training)
 * Component:   ARM
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "ARM_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ARM_training_container[ ARM_training_MAX_EXTENT_SIZE ];
static ARM_training ARM_training_instances[ ARM_training_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ARM_training_extent = {
  {0}, {0}, &ARM_training_container[ 0 ],
  (Escher_iHandle_t) &ARM_training_instances,
  sizeof( ARM_training ), 0, ARM_training_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      training  (training)
 * Component:  ARM
 *--------------------------------------------------------------------------*/
/*
 * This class is modeled as having a state chart, but it has no states.
 * This makes good sense in a supertype class receiving polymorphic events.
 * If this is not the intention, add states to the model or unmark the
 * instance or class state chart setting.
 */
static void empty_state_chart_action( void );
static void empty_state_chart_action( void ) {}



  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 1 ] = {
    "",
  };

/*
 * For this state machine, there are either no events,
 * no transitions, or no states.
 */
void
ARM_training_Dispatch( Escher_xtUMLEvent_t * event )
{
  /*
   * This is an empty state machine, which is not good to have.
   * But since there are no events that could land here, we will
   * ignore this and assume that it is an incomplete model.
   */
}


