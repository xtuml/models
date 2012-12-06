/*----------------------------------------------------------------------------
 * File:  c1_PING_class.c
 *
 * Class:       ping  (PING)
 * Component:   c1
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "c1_classes.h"


/*
 * RELATE PONG TO PING ACROSS R1
 */
void
c1_PING_R1_Link( c1_PONG * part, c1_PING * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "PING", "c1_PING_R1_Link" );
    return;
  }
  form->PONG_R1 = part;
  part->PING_R1 = form;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s c1_PING_container[ c1_PING_MAX_EXTENT_SIZE ];
static c1_PING c1_PING_instances[ c1_PING_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_c1_PING_extent = {
  {0}, {0}, &c1_PING_container[ 0 ],
  (Escher_iHandle_t) &c1_PING_instances,
  sizeof( c1_PING ), c1_PING_STATE_1, c1_PING_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      ping  (PING)
 * Component:  c1
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [ping one]
 */
static void c1_PING_act1( c1_PING *, const Escher_xtUMLEvent_t * const );
static void
c1_PING_act1( c1_PING * self, const Escher_xtUMLEvent_t * const event )
{
  c1_PONG * pong = 0; /* pong (PONG) */
 Escher_ObjectSet_s pings_space={0}; Escher_ObjectSet_s * pings = &pings_space; /* pings (PING) */ 
  /* SELECT one pong RELATED BY self->PONG[R1] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one pong RELATED BY self->PONG[R1]" );
  pong = self->PONG_R1;
  /* SELECT many pings FROM INSTANCES OF PING */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many pings FROM INSTANCES OF PING" );
  Escher_CopySet( pings, &pG_c1_PING_extent.active );
  Escher_ClearSet( pings );
}

/*
 * State 2:  [ping two]
 */
static void c1_PING_act2( c1_PING *, const Escher_xtUMLEvent_t * const );
static void
c1_PING_act2( c1_PING * self, const Escher_xtUMLEvent_t * const event )
{
  /* ASSIGN self.i = ( self.i + 1 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.i = ( self.i + 1 )" );
  self->i = ( self->i + 1 );
}

const Escher_xtUMLEventConstant_t c1_PINGevent1c = {
  c1_DOMAIN_ID, c1_PING_CLASS_NUMBER, C1_PINGEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t c1_PING_StateEventMatrix[ 2 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  c1_PING_STATE_1 (ping one) */
  { c1_PING_STATE_2 },
  /* row 2:  c1_PING_STATE_2 (ping two) */
  { c1_PING_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t c1_PING_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) c1_PING_act1,  /* ping one */
    (StateAction_t) c1_PING_act2  /* ping two */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 3 ] = {
    "",
    "ping one",
    "ping two"
  };

/*
 * instance state machine event dispatching
 */
void
c1_PING_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = c1_PING_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        STATE_TXN_START_TRACE( "PING", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *c1_PING_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "PING", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


