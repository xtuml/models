/*----------------------------------------------------------------------------
 * File:  c2_TAC_A_class.c
 *
 * Class:       a  (TAC_A)
 * Component:   c2
 *
 * 
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "c2_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s c2_TAC_A_container[ c2_TAC_A_MAX_EXTENT_SIZE ];
static c2_TAC_A c2_TAC_A_instances[ c2_TAC_A_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_c2_TAC_A_extent = {
  {0}, {0}, &c2_TAC_A_container[ 0 ],
  (Escher_iHandle_t) &c2_TAC_A_instances,
  sizeof( c2_TAC_A ), 0, c2_TAC_A_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      a  (TAC_A)
 * Component:  c2
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [tac_a_s1]
 */
static void c2_TAC_A_CB_act1( c2_TAC_A *, const Escher_xtUMLEvent_t * const );
static void
c2_TAC_A_CB_act1( c2_TAC_A * self, const Escher_xtUMLEvent_t * const event )
{
  c2_TAC_A_CBevent1 * rcvd_evt = (c2_TAC_A_CBevent1 *) event;
  /* IF ( ( 1 != PARAM.sp1 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 1 != PARAM.sp1 ) )" );
  if ( ( 1 != rcvd_evt->p_sp1 ) ) {
    /* LOG::LogFailure( message:'tac signal did not get 1' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'tac signal did not get 1' )" );
    LOG_LogFailure( "tac signal did not get 1" );
  }
  else {
    c2_TAC_A * a=0; 
    /* SELECT any a FROM INSTANCES OF TAC_A */
    XTUML_OAL_STMT_TRACE( 2, "SELECT any a FROM INSTANCES OF TAC_A" );
    a = (c2_TAC_A *) Escher_SetGetAny( &pG_c2_TAC_A_extent.active );
    /* IF ( empty a ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( empty a )" );
    if ( ( 0 == a ) ) {
      /* CREATE OBJECT INSTANCE a OF TAC_A */
      XTUML_OAL_STMT_TRACE( 3, "CREATE OBJECT INSTANCE a OF TAC_A" );
      a = (c2_TAC_A *) Escher_CreateInstance( c2_DOMAIN_ID, c2_TAC_A_CLASS_NUMBER );
      /* ASSIGN a.count = 0 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN a.count = 0" );
      a->count = 0;
      /*  SEND toss::s1(sp1:2) */
      XTUML_OAL_STMT_TRACE( 3, " SEND toss::s1(sp1:2)" );
      c2_toss_s1( 2 );
    }
    else {
      /* IF ( ( a.count > 200000 ) ) */
      XTUML_OAL_STMT_TRACE( 3, "IF ( ( a.count > 200000 ) )" );
      if ( ( a->count > 200000 ) ) {
        /* LOG::LogSuccess( message:'test passed' ) */
        XTUML_OAL_STMT_TRACE( 4, "LOG::LogSuccess( message:'test passed' )" );
        LOG_LogSuccess( "test passed" );
        /* ARCH::shutdown(  ) */
        XTUML_OAL_STMT_TRACE( 4, "ARCH::shutdown(  )" );
        ARCH_shutdown();
      }
      else {
        /* ASSIGN a.count = ( a.count + 1 ) */
        XTUML_OAL_STMT_TRACE( 4, "ASSIGN a.count = ( a.count + 1 )" );
        a->count = ( a->count + 1 );
        /*  SEND toss::s1(sp1:2) */
        XTUML_OAL_STMT_TRACE( 4, " SEND toss::s1(sp1:2)" );
        c2_toss_s1( 2 );
      }
    }
  }
}

/*
 * State 2:  [tac_a_s2]
 */
static void c2_TAC_A_CB_act2( c2_TAC_A *, const Escher_xtUMLEvent_t * const );
static void
c2_TAC_A_CB_act2( c2_TAC_A * self, const Escher_xtUMLEvent_t * const event )
{
  c2_TAC_A_CBevent1 * rcvd_evt = (c2_TAC_A_CBevent1 *) event;
  /* IF ( ( 1 != PARAM.sp1 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 1 != PARAM.sp1 ) )" );
  if ( ( 1 != rcvd_evt->p_sp1 ) ) {
    /* LOG::LogFailure( message:'tac signal did not get 1' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'tac signal did not get 1' )" );
    LOG_LogFailure( "tac signal did not get 1" );
  }
  else {
    /*  SEND toss::s1(sp1:2) */
    XTUML_OAL_STMT_TRACE( 2, " SEND toss::s1(sp1:2)" );
    c2_toss_s1( 2 );
  }
}

const Escher_xtUMLEventConstant_t c2_TAC_A_CBevent1c = {
  c2_DOMAIN_ID, c2_TAC_A_CLASS_NUMBER_CB, C2_TAC_A_CBEVENT1NUM,
  ESCHER_IS_ASSIGNER_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t c2_TAC_A_CB_StateEventMatrix[ 2 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  c2_TAC_A_CB_STATE_1 (tac_a_s1) */
  { c2_TAC_A_CB_STATE_2 },
  /* row 2:  c2_TAC_A_CB_STATE_2 (tac_a_s2) */
  { c2_TAC_A_CB_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t c2_TAC_A_CB_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) c2_TAC_A_CB_act1,  /* tac_a_s1 */
    (StateAction_t) c2_TAC_A_CB_act2  /* tac_a_s2 */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings_CB[ 3 ] = {
    "",
    "tac_a_s1",
    "tac_a_s2"
  };

/*
 * class-based state machine event dispatching
 */
void
c2_TAC_A_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { c2_TAC_A_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_StateNumber_t next_state = c2_TAC_A_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 2 ) {
    STATE_TXN_START_TRACE( "TAC_A", current_state, state_name_strings_CB[ current_state ] );
    /* Execute the state action and update the current state.  */
    ( *c2_TAC_A_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
    STATE_TXN_END_TRACE( "TAC_A", next_state, state_name_strings_CB[ next_state ] );
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
      STATE_TXN_CH_TRACE( "TAC_A", current_state );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
      STATE_TXN_IG_TRACE( "TAC_A", current_state );
    } else {
      /* Translation/memory/stack error, etc - TBD */
    }
  }
}


