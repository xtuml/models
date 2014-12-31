/*----------------------------------------------------------------------------
 * File:  stringtest_pong_class.c
 *
 * Class:       pong  (pong)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "string_return_test_sys_types.h"
#include "LOG_bridge.h"
#include "stringtest_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s stringtest_pong_container[ stringtest_pong_MAX_EXTENT_SIZE ];
static stringtest_pong stringtest_pong_instances[ stringtest_pong_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_stringtest_pong_extent = {
  {0}, {0}, &stringtest_pong_container[ 0 ],
  (Escher_iHandle_t) &stringtest_pong_instances,
  sizeof( stringtest_pong ), stringtest_pong_STATE_1, stringtest_pong_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      pong  (pong)
 * Component:  stringtest
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [ponging]
 */
static void stringtest_pong_act1( stringtest_pong *, const Escher_xtUMLEvent_t * const );
static void
stringtest_pong_act1( stringtest_pong * self, const Escher_xtUMLEvent_t * const event )
{
  stringtest_pongevent1 * rcvd_evt = (stringtest_pongevent1 *) event;
  c_t r[ESCHER_SYS_MAX_STRING_LEN];stringtest_ping * p;c_t s[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN s = PARAM.s */
  Escher_strcpy( s, rcvd_evt->p_s );
  /* ASSIGN p = PARAM.p */
  p = rcvd_evt->p_p;
  /* ASSIGN r = buffer::scmp(s1:s, s2:ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string) */
  Escher_strcpy( r, stringtest_buffer_op_scmp(s, "ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string ping pong string") );
  /* GENERATE ping1:bounce(p:self, s:r) TO p */
  { stringtest_pingevent1 * e = (stringtest_pingevent1 *) Escher_NewxtUMLEvent( p, &stringtest_pingevent1c );
    e->p_p = self;    Escher_strcpy( e->p_s, r );
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t stringtest_pongevent1c = {
  stringtest_DOMAIN_ID, stringtest_pong_CLASS_NUMBER, STRINGTEST_PONGEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t stringtest_pong_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  stringtest_pong_STATE_1 (ponging) */
  { stringtest_pong_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t stringtest_pong_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) stringtest_pong_act1  /* ponging */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 2 ] = {
    "",
    "ponging"
  };

/*
 * instance state machine event dispatching
 */
void
stringtest_pong_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = stringtest_pong_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        STATE_TXN_START_TRACE( "pong", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *stringtest_pong_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "pong", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


