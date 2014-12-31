/*----------------------------------------------------------------------------
 * File:  stringtest_ping_class.c
 *
 * Class:       ping  (ping)
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
static Escher_SetElement_s stringtest_ping_container[ stringtest_ping_MAX_EXTENT_SIZE ];
static stringtest_ping stringtest_ping_instances[ stringtest_ping_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_stringtest_ping_extent = {
  {0}, {0}, &stringtest_ping_container[ 0 ],
  (Escher_iHandle_t) &stringtest_ping_instances,
  sizeof( stringtest_ping ), stringtest_ping_STATE_1, stringtest_ping_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      ping  (ping)
 * Component:  stringtest
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [pinging]
 */
static void stringtest_ping_act1( stringtest_ping *, const Escher_xtUMLEvent_t * const );
static void
stringtest_ping_act1( stringtest_ping * self, const Escher_xtUMLEvent_t * const event )
{
  stringtest_pingevent1 * rcvd_evt = (stringtest_pingevent1 *) event;
  c_t r[ESCHER_SYS_MAX_STRING_LEN];stringtest_pong * p;c_t s[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN s = PARAM.s */
  Escher_strcpy( s, rcvd_evt->p_s );
  /* ASSIGN p = PARAM.p */
  p = rcvd_evt->p_p;
  /* ASSIGN r = buffer::scmp(s1:s, s2:ping pong string) */
  Escher_strcpy( r, stringtest_buffer_op_scmp(s, "ping pong string") );
  /* GENERATE pong1:fly(p:self, s:s) TO p */
  { stringtest_pongevent1 * e = (stringtest_pongevent1 *) Escher_NewxtUMLEvent( p, &stringtest_pongevent1c );
    e->p_p = self;    Escher_strcpy( e->p_s, s );
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t stringtest_pingevent1c = {
  stringtest_DOMAIN_ID, stringtest_ping_CLASS_NUMBER, STRINGTEST_PINGEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t stringtest_ping_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  stringtest_ping_STATE_1 (pinging) */
  { stringtest_ping_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t stringtest_ping_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) stringtest_ping_act1  /* pinging */
  };

/*
 * instance state machine event dispatching
 */
void
stringtest_ping_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = stringtest_ping_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Execute the state action and update the current state.  */
        ( *stringtest_ping_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


