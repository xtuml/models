/*----------------------------------------------------------------------------
 * File:  c1_PONG_class.c
 *
 * Class:       pong  (PONG)
 * Component:   c1
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "c1_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s c1_PONG_container[ c1_PONG_MAX_EXTENT_SIZE ];
static c1_PONG c1_PONG_instances[ c1_PONG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_c1_PONG_extent = {
  {0}, {0}, &c1_PONG_container[ 0 ],
  (Escher_iHandle_t) &c1_PONG_instances,
  sizeof( c1_PONG ), c1_PONG_STATE_1, c1_PONG_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      pong  (PONG)
 * Component:  c1
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [pong one]
 */
static void c1_PONG_act1( c1_PONG *, const Escher_xtUMLEvent_t * const );
static void
c1_PONG_act1( c1_PONG * self, const Escher_xtUMLEvent_t * const event )
{
  c1_PING * ping = 0; /* ping (PING) */
 
  /* SELECT one ping RELATED BY self->PING[R1] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one ping RELATED BY self->PING[R1]" );
  ping = self->PING_R1;
  /* GENERATE PING1:hit() TO ping */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE PING1:hit() TO ping" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( ping, &c1_PINGevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [pong two]
 */
static void c1_PONG_act2( c1_PONG *, const Escher_xtUMLEvent_t * const );
static void
c1_PONG_act2( c1_PONG * self, const Escher_xtUMLEvent_t * const event )
{
  c1_PING * ping = 0; /* ping (PING) */
 
  /* SELECT one ping RELATED BY self->PING[R1] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one ping RELATED BY self->PING[R1]" );
  ping = self->PING_R1;
  /* GENERATE PING1:hit() TO ping */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE PING1:hit() TO ping" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( ping, &c1_PINGevent1c );
    Escher_SendEvent( e );
  }
}

const Escher_xtUMLEventConstant_t c1_PONGevent1c = {
  c1_DOMAIN_ID, c1_PONG_CLASS_NUMBER, C1_PONGEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t c1_PONG_StateEventMatrix[ 2 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  c1_PONG_STATE_1 (pong one) */
  { c1_PONG_STATE_2 },
  /* row 2:  c1_PONG_STATE_2 (pong two) */
  { c1_PONG_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t c1_PONG_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) c1_PONG_act1,  /* pong one */
    (StateAction_t) c1_PONG_act2  /* pong two */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 3 ] = {
    "",
    "pong one",
    "pong two"
  };

/*
 * instance state machine event dispatching
 */
void
c1_PONG_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = c1_PONG_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        STATE_TXN_START_TRACE( "PONG", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *c1_PONG_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "PONG", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


