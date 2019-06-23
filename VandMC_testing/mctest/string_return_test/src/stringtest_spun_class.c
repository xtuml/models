/*----------------------------------------------------------------------------
 * File:  stringtest_spun_class.c
 *
 * Class:       spun  (spun)
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
static Escher_SetElement_s stringtest_spun_container[ stringtest_spun_MAX_EXTENT_SIZE ];
static stringtest_spun stringtest_spun_instances[ stringtest_spun_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_stringtest_spun_extent = {
  {0}, {0}, &stringtest_spun_container[ 0 ],
  (Escher_iHandle_t) &stringtest_spun_instances,
  sizeof( stringtest_spun ), stringtest_spun_STATE_1, stringtest_spun_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      spun  (spun)
 * Component:  stringtest
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [spunning]
 */
static void stringtest_spun_act1( stringtest_spun *, const Escher_xtUMLEvent_t * const );
static void
stringtest_spun_act1( stringtest_spun * self, const Escher_xtUMLEvent_t * const event )
{
  stringtest_spunevent1 * rcvd_evt = (stringtest_spunevent1 *) event;
  stringtest_spin * spin;i_t count;c_t t[ESCHER_SYS_MAX_STRING_LEN];c_t s[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN s = C        10         20 .        30         40 .        50         60 .        70         80 .        90         00 .        10         20 .        30         40 .        50         60 .        70         80 .        90         00 */
  Escher_strcpy( s, "C        10         20 .        30         40 .        50         60 .        70         80 .        90         00 .        10         20 .        30         40 .        50         60 .        70         80 .        90         00" );
  /* ASSIGN t = D        10         20 .        30         40 .        50         60 .        70         80 .        90         00 .        10         20 .        30         40 .        50         60 .        70         80 .        90         00 */
  Escher_strcpy( t, "D        10         20 .        30         40 .        50         60 .        70         80 .        90         00 .        10         20 .        30         40 .        50         60 .        70         80 .        90         00" );
  /* ASSIGN count = 9999 */
  count = 9999;
  /* WHILE ( count > 0 ) */
  while ( count > 0 ) {
    c_t vtrv6stringtest_buffer_op_twist15[ESCHER_SYS_MAX_STRING_LEN];c_t u[ESCHER_SYS_MAX_STRING_LEN];
    /* ASSIGN count = ( count - 1 ) */
    count = ( count - 1 );
    /* ASSIGN u = buffer::twist(s1:1, s2:t, s3:0, s4:s) */
    Escher_strcpy( u, stringtest_buffer_op_twist(vtrv6stringtest_buffer_op_twist15, "1", t, "0", s) );
  }
  /* ASSIGN spin = PARAM.spin */
  spin = rcvd_evt->p_spin;
  /* GENERATE spin1:spin(spun:self) TO spin */
  { stringtest_spinevent1 * e = (stringtest_spinevent1 *) Escher_NewxtUMLEvent( spin, &stringtest_spinevent1c );
    e->p_spun = self;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t stringtest_spunevent1c = {
  stringtest_DOMAIN_ID, stringtest_spun_CLASS_NUMBER, STRINGTEST_SPUNEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t stringtest_spun_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  stringtest_spun_STATE_1 (spunning) */
  { stringtest_spun_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t stringtest_spun_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) stringtest_spun_act1  /* spunning */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 2 ] = {
    "",
    "spunning"
  };

/*
 * instance state machine event dispatching
 */
void
stringtest_spun_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = stringtest_spun_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        STATE_TXN_START_TRACE( "spun", current_state, state_name_strings[ current_state ] );
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *stringtest_spun_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "spun", next_state, state_name_strings[ next_state ] );
      } else {
        /* empty else */
      }
    }
  }
}

