/*----------------------------------------------------------------------------
 * File:  polycalc_VEGETABLE_class.c
 *
 * Class:       vegetable  (VEGETABLE)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/* Accessors to VEGETABLE[R4] subtypes */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_VEGETABLE_container[ polycalc_VEGETABLE_MAX_EXTENT_SIZE ];
static polycalc_VEGETABLE polycalc_VEGETABLE_instances[ polycalc_VEGETABLE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_VEGETABLE_extent = {
  {0}, {0}, &polycalc_VEGETABLE_container[ 0 ],
  (Escher_iHandle_t) &polycalc_VEGETABLE_instances,
  sizeof( polycalc_VEGETABLE ), polycalc_VEGETABLE_STATE_1, polycalc_VEGETABLE_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      vegetable  (VEGETABLE)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [planting]
 */
static void polycalc_VEGETABLE_act1( polycalc_VEGETABLE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_VEGETABLE_act1( polycalc_VEGETABLE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_VEGETABLEevent2 * rcvd_evt = (polycalc_VEGETABLEevent2 *) event;
  polycalc_PUZZLE * puzzle=0;
  /* SELECT any puzzle FROM INSTANCES OF PUZZLE */
  puzzle = (polycalc_PUZZLE *) Escher_SetGetAny( &pG_polycalc_PUZZLE_extent.active );
  /* GENERATE PUZZLE2:done(value:PARAM.height) TO puzzle */
  { polycalc_PUZZLEevent2 * e = (polycalc_PUZZLEevent2 *) Escher_NewxtUMLEvent( puzzle, &polycalc_PUZZLEevent2c );
    e->p_value = rcvd_evt->p_height;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_VEGETABLEevent1c = {
  polycalc_DOMAIN_ID, polycalc_VEGETABLE_CLASS_NUMBER, POLYCALC_VEGETABLEEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };
const Escher_xtUMLEventConstant_t polycalc_VEGETABLEevent2c = {
  polycalc_DOMAIN_ID, polycalc_VEGETABLE_CLASS_NUMBER, POLYCALC_VEGETABLEEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_VEGETABLE_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_VEGETABLE_STATE_1 (planting) */
  { polycalc_VEGETABLE_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_VEGETABLE_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_VEGETABLE_act1  /* planting */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_VEGETABLE_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  /* If event is polymorphic, forward to the dispatcher in the responding
     subtype below us in the generalization hierarchy.  */
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    polycalc_VEGETABLE_R4PolymorphicEvent( (polycalc_VEGETABLE *) instance, event );
  } else  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 1 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_VEGETABLE_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_VEGETABLE_acts[ next_state ] )( instance, event );
      } else {
        /* empty else */
      }
    }
  }
}
/*
 * Transfer a polymorphic event down the R4 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
polycalc_VEGETABLE_R4PolymorphicEvent( const polycalc_VEGETABLE * const p_vegetable, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_vegetable->R4_subtype )
  switch ( p_vegetable->R4_object_id ) {
    case polycalc_TOMATO_CLASS_NUMBER:  /* tomato (TOMATO) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_VEGETABLEEVENT1NUM:  /* VEGETABLE1*'grow' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_TOMATOevent_VEGETABLE_PE1c );
          SetEventTargetInstance( event, p_vegetable->R4_subtype );
          polycalc_TOMATO_Dispatch( event );
          break; /* after transition */
      }
      break;
    case polycalc_CARROT_CLASS_NUMBER:  /* carrot (CARROT) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_VEGETABLEEVENT1NUM:  /* VEGETABLE1*'grow' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_CARROTevent_VEGETABLE_PE1c );
          SetEventTargetInstance( event, p_vegetable->R4_subtype );
          polycalc_CARROT_Dispatch( event );
          break; /* after transition */
      }
      break;
    default:
      UserEventCantHappenCallout( 0, 0, event_number );
  }
}

