/*----------------------------------------------------------------------------
 * File:  stringtest_spin_class.c
 *
 * Class:       spin  (spin)
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
static Escher_SetElement_s stringtest_spin_container[ stringtest_spin_MAX_EXTENT_SIZE ];
static stringtest_spin stringtest_spin_instances[ stringtest_spin_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_stringtest_spin_extent = {
  {0}, {0}, &stringtest_spin_container[ 0 ],
  (Escher_iHandle_t) &stringtest_spin_instances,
  sizeof( stringtest_spin ), stringtest_spin_STATE_1, stringtest_spin_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      spin  (spin)
 * Component:  stringtest
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [spinning]
 */
static void stringtest_spin_act1( stringtest_spin *, const Escher_xtUMLEvent_t * const );
static void
stringtest_spin_act1( stringtest_spin * self, const Escher_xtUMLEvent_t * const event )
{
  stringtest_spinevent1 * rcvd_evt = (stringtest_spinevent1 *) event;
  c_t s[ESCHER_SYS_MAX_STRING_LEN];c_t t[ESCHER_SYS_MAX_STRING_LEN];i_t count;stringtest_spun * spun;
  /* ASSIGN s = A        10         20 .        30         40 .        50         60 .        70         80 .        90         00 .        10         20 .        30         40 .        50         60 .        70         80 .        90         00 */
  Escher_strcpy( s, "A        10         20 .        30         40 .        50         60 .        70         80 .        90         00 .        10         20 .        30         40 .        50         60 .        70         80 .        90         00" );
  /* ASSIGN t = B        10         20 .        30         40 .        50         60 .        70         80 .        90         00 .        10         20 .        30         40 .        50         60 .        70         80 .        90         00 */
  Escher_strcpy( t, "B        10         20 .        30         40 .        50         60 .        70         80 .        90         00 .        10         20 .        30         40 .        50         60 .        70         80 .        90         00" );
  /* ASSIGN count = 9999 */
  count = 9999;
  /* WHILE ( ( count > 0 ) ) */
  while ( ( count > 0 ) ) {
    c_t u[ESCHER_SYS_MAX_STRING_LEN];
    /* ASSIGN count = ( count - 1 ) */
    count = ( count - 1 );
    /* ASSIGN u = buffer::twist(s1:0, s2:1, s3:s, s4:t) */
    Escher_strcpy( u, stringtest_buffer_op_twist("0", "1", s, t).s );
  }
  /* ASSIGN spun = PARAM.spun */
  spun = rcvd_evt->p_spun;
  /* GENERATE spun1:spun(spin:self) TO spun */
  { stringtest_spunevent1 * e = (stringtest_spunevent1 *) Escher_NewxtUMLEvent( spun, &stringtest_spunevent1c );
    e->p_spin = self;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t stringtest_spinevent1c = {
  stringtest_DOMAIN_ID, stringtest_spin_CLASS_NUMBER, STRINGTEST_SPINEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t stringtest_spin_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  stringtest_spin_STATE_1 (spinning) */
  { stringtest_spin_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t stringtest_spin_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) stringtest_spin_act1  /* spinning */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 2 ] = {
    "",
    "spinning"
  };

/*
 * instance state machine event dispatching
 */
void
stringtest_spin_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = stringtest_spin_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        STATE_TXN_START_TRACE( "spin", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *stringtest_spin_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "spin", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


