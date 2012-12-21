/*----------------------------------------------------------------------------
 * File:  polycalc_FRUIT_class.c
 *
 * Class:       fruit  (FRUIT)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/* Accessors to FRUIT[R3] subtypes */


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_FRUIT_container[ polycalc_FRUIT_MAX_EXTENT_SIZE ];
static polycalc_FRUIT polycalc_FRUIT_instances[ polycalc_FRUIT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_FRUIT_extent = {
  {0}, {0}, &polycalc_FRUIT_container[ 0 ],
  (Escher_iHandle_t) &polycalc_FRUIT_instances,
  sizeof( polycalc_FRUIT ), polycalc_FRUIT_STATE_1, polycalc_FRUIT_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      fruit  (FRUIT)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [squeezing]
 */
static void polycalc_FRUIT_act1( polycalc_FRUIT *, const Escher_xtUMLEvent_t * const );
static void
polycalc_FRUIT_act1( polycalc_FRUIT * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_FRUITevent2 * rcvd_evt = (polycalc_FRUITevent2 *) event;
  polycalc_PUZZLE * puzzle=0; 
  /* SELECT any puzzle FROM INSTANCES OF PUZZLE */
  puzzle = (polycalc_PUZZLE *) Escher_SetGetAny( &pG_polycalc_PUZZLE_extent.active );
  /* GENERATE PUZZLE2:done(value:PARAM.percentage) TO puzzle */
  { polycalc_PUZZLEevent2 * e = (polycalc_PUZZLEevent2 *) Escher_NewxtUMLEvent( puzzle, &polycalc_PUZZLEevent2c );
    e->p_value = rcvd_evt->p_percentage;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_FRUITevent1c = {
  polycalc_DOMAIN_ID, polycalc_FRUIT_CLASS_NUMBER, POLYCALC_FRUITEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };

const Escher_xtUMLEventConstant_t polycalc_FRUITevent2c = {
  polycalc_DOMAIN_ID, polycalc_FRUIT_CLASS_NUMBER, POLYCALC_FRUITEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };




/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_FRUIT_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_FRUIT_STATE_1 (squeezing) */
  { polycalc_FRUIT_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_FRUIT_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_FRUIT_act1  /* squeezing */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_FRUIT_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  /* If event is polymorphic, forward to the dispatcher in the responding
     subtype below us in the generalization hierarchy.  */
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    polycalc_FRUIT_R3PolymorphicEvent( (polycalc_FRUIT *) instance, event );
  } else  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 1 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_FRUIT_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Execute the state action and update the current state.  */
        ( *polycalc_FRUIT_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}
/*
 * Transfer a polymorphic event down the R3 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
polycalc_FRUIT_R3PolymorphicEvent( const polycalc_FRUIT * const p_fruit, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_fruit->R3_subtype )
  switch ( p_fruit->R3_object_id ) {
    case polycalc_ORANGE_CLASS_NUMBER:  /* orange (ORANGE) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_FRUITEVENT1NUM:  /* FRUIT1*'juice' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_ORANGEevent_FRUIT_PE1c );
          SetEventTargetInstance( event, p_fruit->R3_subtype );
          polycalc_ORANGE_Dispatch( event );
          break; /* after transition */
      }
      break;
    case polycalc_TOMATO_CLASS_NUMBER:  /* tomato (TOMATO) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_FRUITEVENT1NUM:  /* FRUIT1*'juice' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_TOMATOevent_FRUIT_PE1c );
          SetEventTargetInstance( event, p_fruit->R3_subtype );
          polycalc_TOMATO_Dispatch( event );
          break; /* after transition */
      }
      break;
  }
}


