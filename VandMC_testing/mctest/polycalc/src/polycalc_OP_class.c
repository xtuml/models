/*----------------------------------------------------------------------------
 * File:  polycalc_OP_class.c
 *
 * Class:       op  (OP)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/* Accessors to OP[R1] subtypes */


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_OP_container[ polycalc_OP_MAX_EXTENT_SIZE ];
static polycalc_OP polycalc_OP_instances[ polycalc_OP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_OP_extent = {
  {0}, {0}, &polycalc_OP_container[ 0 ],
  (Escher_iHandle_t) &polycalc_OP_instances,
  sizeof( polycalc_OP ), polycalc_OP_STATE_1, polycalc_OP_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      op  (OP)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [combining]
 */
static void polycalc_OP_act1( polycalc_OP *, const Escher_xtUMLEvent_t * const );
static void
polycalc_OP_act1( polycalc_OP * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLE * puzzle=0; 
  /* SELECT any puzzle FROM INSTANCES OF PUZZLE */
  puzzle = (polycalc_PUZZLE *) Escher_SetGetAny( &pG_polycalc_PUZZLE_extent.active );
  /* GENERATE PUZZLE2:done(value:self.result) TO puzzle */
  { polycalc_PUZZLEevent2 * e = (polycalc_PUZZLEevent2 *) Escher_NewxtUMLEvent( puzzle, &polycalc_PUZZLEevent2c );
    e->p_value = self->result;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_OPevent2c = {
  polycalc_DOMAIN_ID, polycalc_OP_CLASS_NUMBER, POLYCALC_OPEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };


const Escher_xtUMLEventConstant_t polycalc_OPevent3c = {
  polycalc_DOMAIN_ID, polycalc_OP_CLASS_NUMBER, POLYCALC_OPEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_OP_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_OP_STATE_1 (combining) */
  { polycalc_OP_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_OP_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_OP_act1  /* combining */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_OP_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  /* If event is polymorphic, forward to the dispatcher in the responding
     subtype below us in the generalization hierarchy.  */
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    polycalc_OP_R1PolymorphicEvent( (polycalc_OP *) instance, event );
  } else  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 1 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_OP_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Execute the state action and update the current state.  */
        ( *polycalc_OP_acts[ next_state ] )( instance, event );
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
 * Transfer a polymorphic event down the R1 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
polycalc_OP_R1PolymorphicEvent( const polycalc_OP * const p_op, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_op->R1_subtype )
  switch ( p_op->R1_object_id ) {
    case polycalc_ADD_CLASS_NUMBER:  /* add (ADD) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_OPEVENT2NUM:  /* OP2*'combine' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_ADDevent_OP_PE2c );
          SetEventTargetInstance( event, p_op->R1_subtype );
          polycalc_ADD_Dispatch( event );
          break; /* after transition */
      }
      break;
    case polycalc_SUB_CLASS_NUMBER:  /* sub (SUB) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_OPEVENT2NUM:  /* OP2*'combine' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_SUBevent_OP_PE2c );
          SetEventTargetInstance( event, p_op->R1_subtype );
          polycalc_SUB_Dispatch( event );
          break; /* after transition */
      }
      break;
    case polycalc_MUL_CLASS_NUMBER:  /* mul (MUL) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_OPEVENT2NUM:  /* OP2*'combine' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_MULevent_OP_PE2c );
          SetEventTargetInstance( event, p_op->R1_subtype );
          polycalc_MUL_Dispatch( event );
          break; /* after transition */
      }
      break;
    case polycalc_DIV_CLASS_NUMBER:  /* div (DIV) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_OPEVENT2NUM:  /* OP2*'combine' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_DIVevent_OP_PE2c );
          SetEventTargetInstance( event, p_op->R1_subtype );
          polycalc_DIV_Dispatch( event );
          break; /* after transition */
      }
      break;
  }
}


