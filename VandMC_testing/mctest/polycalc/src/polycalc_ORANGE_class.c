/*----------------------------------------------------------------------------
 * File:  polycalc_ORANGE_class.c
 *
 * Class:       orange  (ORANGE)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE FRUIT TO ORANGE ACROSS R3
 */
void
polycalc_ORANGE_R3_Link( polycalc_FRUIT * supertype, polycalc_ORANGE * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ORANGE", "polycalc_ORANGE_R3_Link" );
    return;
  }
  /* Optimized linkage for ORANGE->FRUIT[R3] */
  subtype->FRUIT_R3 = supertype;
  /* Optimized linkage for FRUIT->ORANGE[R3] */
  supertype->R3_subtype = subtype;
  supertype->R3_object_id = polycalc_ORANGE_CLASS_NUMBER;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_ORANGE_container[ polycalc_ORANGE_MAX_EXTENT_SIZE ];
static polycalc_ORANGE polycalc_ORANGE_instances[ polycalc_ORANGE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_ORANGE_extent = {
  {0}, {0}, &polycalc_ORANGE_container[ 0 ],
  (Escher_iHandle_t) &polycalc_ORANGE_instances,
  sizeof( polycalc_ORANGE ), polycalc_ORANGE_STATE_1, polycalc_ORANGE_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      orange  (ORANGE)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [squirt]
 */
static void polycalc_ORANGE_act1( polycalc_ORANGE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_ORANGE_act1( polycalc_ORANGE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_FRUIT * fruit=0;
  /* SELECT one fruit RELATED BY self->FRUIT[R3] */
  fruit = ( 0 != self ) ? self->FRUIT_R3 : 0;
  /* GENERATE FRUIT2:juiced(percentage:100) TO fruit */
  { polycalc_FRUITevent2 * e = (polycalc_FRUITevent2 *) Escher_NewxtUMLEvent( fruit, &polycalc_FRUITevent2c );
    e->p_percentage = 100;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_ORANGEevent_FRUIT_PE1c = {
  polycalc_DOMAIN_ID, polycalc_ORANGE_CLASS_NUMBER, POLYCALC_ORANGEEVENT_FRUIT_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_ORANGE_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_ORANGE_STATE_1 (squirt) */
  { polycalc_ORANGE_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_ORANGE_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_ORANGE_act1  /* squirt */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_ORANGE_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 1 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_ORANGE_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_ORANGE_acts[ next_state ] )( instance, event );
      } else {
        /* empty else */
      }
    }
  }
}

