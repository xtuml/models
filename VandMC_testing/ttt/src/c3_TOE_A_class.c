/*----------------------------------------------------------------------------
 * File:  c3_TOE_A_class.c
 *
 * Class:       a  (TOE_A)
 * Component:   c3
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "c3_LOG_bridge.h"
#include "c3_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s c3_TOE_A_container[ c3_TOE_A_MAX_EXTENT_SIZE ];
static c3_TOE_A c3_TOE_A_instances[ c3_TOE_A_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_c3_TOE_A_extent = {
  {0}, {0}, &c3_TOE_A_container[ 0 ],
  (Escher_iHandle_t) &c3_TOE_A_instances,
  sizeof( c3_TOE_A ), 0, c3_TOE_A_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      a  (TOE_A)
 * Component:  c3
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [toe_a_s1]
 */
static void c3_TOE_A_CB_act1( c3_TOE_A *, const Escher_xtUMLEvent_t * const );
static void
c3_TOE_A_CB_act1( c3_TOE_A * self, const Escher_xtUMLEvent_t * const event )
{
  c3_TOE_A_CBevent1 * rcvd_evt = (c3_TOE_A_CBevent1 *) event;
  /* IF ( ( 2 != PARAM.sp1 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 2 != PARAM.sp1 ) )" );
  if ( ( 2 != rcvd_evt->p_sp1 ) ) {
    /* LOG::LogFailure( message:'toe signal did not get 2' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'toe signal did not get 2' )" );
    c3_LOG_LogFailure( "toe signal did not get 2" );
  }
  else {
    /*  SEND toss::s1(sp1:3) */
    XTUML_OAL_STMT_TRACE( 2, " SEND toss::s1(sp1:3)" );
    c3_toss_s1( 3 );
  }
}

/*
 * State 2:  [toe_a_s2]
 */
static void c3_TOE_A_CB_act2( c3_TOE_A *, const Escher_xtUMLEvent_t * const );
static void
c3_TOE_A_CB_act2( c3_TOE_A * self, const Escher_xtUMLEvent_t * const event )
{
  c3_TOE_A_CBevent1 * rcvd_evt = (c3_TOE_A_CBevent1 *) event;
  /* IF ( ( 2 != PARAM.sp1 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 2 != PARAM.sp1 ) )" );
  if ( ( 2 != rcvd_evt->p_sp1 ) ) {
    /* LOG::LogFailure( message:'toe signal did not get 2' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'toe signal did not get 2' )" );
    c3_LOG_LogFailure( "toe signal did not get 2" );
  }
  else {
    /*  SEND toss::s1(sp1:3) */
    XTUML_OAL_STMT_TRACE( 2, " SEND toss::s1(sp1:3)" );
    c3_toss_s1( 3 );
  }
}

const Escher_xtUMLEventConstant_t c3_TOE_A_CBevent1c = {
  c3_DOMAIN_ID, c3_TOE_A_CLASS_NUMBER_CB, C3_TOE_A_CBEVENT1NUM,
  ESCHER_IS_ASSIGNER_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t c3_TOE_A_CB_StateEventMatrix[ 2 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  c3_TOE_A_CB_STATE_1 (toe_a_s1) */
  { c3_TOE_A_CB_STATE_2 },
  /* row 2:  c3_TOE_A_CB_STATE_2 (toe_a_s2) */
  { c3_TOE_A_CB_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t c3_TOE_A_CB_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) c3_TOE_A_CB_act1,  /* toe_a_s1 */
    (StateAction_t) c3_TOE_A_CB_act2  /* toe_a_s2 */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings_CB[ 3 ] = {
    "",
    "toe_a_s1",
    "toe_a_s2"
  };

/*
 * class-based state machine event dispatching
 */
void
c3_TOE_A_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { c3_TOE_A_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_StateNumber_t next_state = c3_TOE_A_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 2 ) {
    STATE_TXN_START_TRACE( "TOE_A", current_state, state_name_strings_CB[ current_state ] );
    /* Execute the state action and update the current state.  */
    ( *c3_TOE_A_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
    STATE_TXN_END_TRACE( "TOE_A", next_state, state_name_strings_CB[ next_state ] );
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
      STATE_TXN_CH_TRACE( "TOE_A", current_state );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
      STATE_TXN_IG_TRACE( "TOE_A", current_state );
    } else {
      /* Translation/memory/stack error, etc - TBD */
    }
  }
}


