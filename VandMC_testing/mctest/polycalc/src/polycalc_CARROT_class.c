/*----------------------------------------------------------------------------
 * File:  polycalc_CARROT_class.c
 *
 * Class:       carrot  (CARROT)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE VEGETABLE TO CARROT ACROSS R4
 */
void
polycalc_CARROT_R4_Link( polycalc_VEGETABLE * supertype, polycalc_CARROT * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "CARROT", "polycalc_CARROT_R4_Link" );
    return;
  }
  /* Optimized linkage for CARROT->VEGETABLE[R4] */
  subtype->VEGETABLE_R4 = supertype;
  /* Optimized linkage for VEGETABLE->CARROT[R4] */
  supertype->R4_subtype = subtype;
  supertype->R4_object_id = polycalc_CARROT_CLASS_NUMBER;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_CARROT_container[ polycalc_CARROT_MAX_EXTENT_SIZE ];
static polycalc_CARROT polycalc_CARROT_instances[ polycalc_CARROT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_CARROT_extent = {
  {0}, {0}, &polycalc_CARROT_container[ 0 ],
  (Escher_iHandle_t) &polycalc_CARROT_instances,
  sizeof( polycalc_CARROT ), polycalc_CARROT_STATE_1, polycalc_CARROT_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      carrot  (CARROT)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [weeding]
 */
static void polycalc_CARROT_act1( polycalc_CARROT *, const Escher_xtUMLEvent_t * const );
static void
polycalc_CARROT_act1( polycalc_CARROT * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_VEGETABLE * vegetable=0;
  /* SELECT one vegetable RELATED BY self->VEGETABLE[R4] */
  vegetable = ( 0 != self ) ? self->VEGETABLE_R4 : 0;
  /* GENERATE VEGETABLE2:grown(height:17) TO vegetable */
  { polycalc_VEGETABLEevent2 * e = (polycalc_VEGETABLEevent2 *) Escher_NewxtUMLEvent( vegetable, &polycalc_VEGETABLEevent2c );
    e->p_height = 17;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_CARROTevent_VEGETABLE_PE1c = {
  polycalc_DOMAIN_ID, polycalc_CARROT_CLASS_NUMBER, POLYCALC_CARROTEVENT_VEGETABLE_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_CARROT_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_CARROT_STATE_1 (weeding) */
  { polycalc_CARROT_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_CARROT_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_CARROT_act1  /* weeding */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_CARROT_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = polycalc_CARROT_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_CARROT_acts[ next_state ] )( instance, event );
      } else {
        /* empty else */
      }
    }
  }
}

