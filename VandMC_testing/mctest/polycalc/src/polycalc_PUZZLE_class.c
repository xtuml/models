/*----------------------------------------------------------------------------
 * File:  polycalc_PUZZLE_class.c
 *
 * Class:       puzzle  (PUZZLE)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/* Accessors to PUZZLE[R2] subtypes */


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_PUZZLE_container[ polycalc_PUZZLE_MAX_EXTENT_SIZE ];
static polycalc_PUZZLE polycalc_PUZZLE_instances[ polycalc_PUZZLE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_PUZZLE_extent = {
  {0}, {0}, &polycalc_PUZZLE_container[ 0 ],
  (Escher_iHandle_t) &polycalc_PUZZLE_instances,
  sizeof( polycalc_PUZZLE ), 0, polycalc_PUZZLE_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      puzzle  (PUZZLE)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [test1]
 */
static void polycalc_PUZZLE_CB_act1( polycalc_PUZZLE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_PUZZLE_CB_act1( polycalc_PUZZLE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_OP * op; polycalc_ADD * add; polycalc_SUB * sub; polycalc_MUL * mul; polycalc_DIV * div; polycalc_PUZZLE * puzzle; polycalc_GENERAL * general; 
  /* CREATE OBJECT INSTANCE op OF OP */
  op = (polycalc_OP *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_OP_CLASS_NUMBER );
  /* ASSIGN op.operatorr = '+' */
  Escher_strcpy( op->operatorr, "+" );
  /* CREATE OBJECT INSTANCE add OF ADD */
  add = (polycalc_ADD *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_ADD_CLASS_NUMBER );
  /* RELATE add TO op ACROSS R1 */
  polycalc_ADD_R1_Link( op, add );
  /* CREATE OBJECT INSTANCE op OF OP */
  op = (polycalc_OP *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_OP_CLASS_NUMBER );
  /* ASSIGN op.operatorr = '-' */
  Escher_strcpy( op->operatorr, "-" );
  /* CREATE OBJECT INSTANCE sub OF SUB */
  sub = (polycalc_SUB *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_SUB_CLASS_NUMBER );
  /* RELATE sub TO op ACROSS R1 */
  polycalc_SUB_R1_Link( op, sub );
  /* CREATE OBJECT INSTANCE op OF OP */
  op = (polycalc_OP *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_OP_CLASS_NUMBER );
  /* ASSIGN op.operatorr = '*' */
  Escher_strcpy( op->operatorr, "*" );
  /* CREATE OBJECT INSTANCE mul OF MUL */
  mul = (polycalc_MUL *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_MUL_CLASS_NUMBER );
  /* RELATE mul TO op ACROSS R1 */
  polycalc_MUL_R1_Link( op, mul );
  /* CREATE OBJECT INSTANCE op OF OP */
  op = (polycalc_OP *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_OP_CLASS_NUMBER );
  /* ASSIGN op.operatorr = '/' */
  Escher_strcpy( op->operatorr, "/" );
  /* CREATE OBJECT INSTANCE div OF DIV */
  div = (polycalc_DIV *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_DIV_CLASS_NUMBER );
  /* RELATE div TO op ACROSS R1 */
  polycalc_DIV_R1_Link( op, div );
  /* CREATE OBJECT INSTANCE puzzle OF PUZZLE */
  puzzle = (polycalc_PUZZLE *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_PUZZLE_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE general OF GENERAL */
  general = (polycalc_GENERAL *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_GENERAL_CLASS_NUMBER );
  /* RELATE general TO puzzle ACROSS R2 */
  polycalc_GENERAL_R2_Link( puzzle, general );
  /* GENERATE PUZZLE1:solve() TO puzzle */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( puzzle, &polycalc_PUZZLEevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [done]
 */
static void polycalc_PUZZLE_CB_act2( polycalc_PUZZLE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_PUZZLE_CB_act2( polycalc_PUZZLE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLE_CBevent2 * rcvd_evt = (polycalc_PUZZLE_CBevent2 *) event;
  polycalc_PUZZLE * puzzle=0; polycalc_GENERAL * general = 0; /* general (GENERAL) */
 
  /* LOG::LogSuccess( message:'done with test 1' ) */
  LOG_LogSuccess( "done with test 1" );
  /* SELECT any puzzle FROM INSTANCES OF PUZZLE */
  puzzle = (polycalc_PUZZLE *) Escher_SetGetAny( &pG_polycalc_PUZZLE_extent.active );
  /* SELECT one general RELATED BY puzzle->GENERAL[R2] */
  general = 0;
  if ( polycalc_GENERAL_CLASS_NUMBER == puzzle->R2_object_id )  general = (polycalc_GENERAL *) puzzle->R2_subtype;
  /* UNRELATE general FROM puzzle ACROSS R2 */
  polycalc_GENERAL_R2_Unlink( puzzle, general );
  /* DELETE OBJECT INSTANCE general */
  if ( 0 == general ) {
    XTUML_EMPTY_HANDLE_TRACE( "GENERAL", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) general, polycalc_DOMAIN_ID, polycalc_GENERAL_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE puzzle */
  if ( 0 == puzzle ) {
    XTUML_EMPTY_HANDLE_TRACE( "PUZZLE", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) puzzle, polycalc_DOMAIN_ID, polycalc_PUZZLE_CLASS_NUMBER );
  /* GENERATE PUZZLE_A1:start() TO PUZZLE CLASS */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( (void *) 0, &polycalc_PUZZLE_CBevent1c );
    Escher_SendEvent( e );
  }

}

/*
 * State 3:  [same again]
 */
static void polycalc_PUZZLE_CB_act3( polycalc_PUZZLE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_PUZZLE_CB_act3( polycalc_PUZZLE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLE_CBevent2 * rcvd_evt = (polycalc_PUZZLE_CBevent2 *) event;
  /* IF ( ( 1 == PARAM.number ) ) */
  if ( ( 1 == rcvd_evt->p_number ) ) {
    polycalc_PUZZLE * puzzle=0; 
    /* SELECT any puzzle FROM INSTANCES OF PUZZLE */
    puzzle = (polycalc_PUZZLE *) Escher_SetGetAny( &pG_polycalc_PUZZLE_extent.active );
    /* GENERATE PUZZLE1:solve() TO puzzle */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( puzzle, &polycalc_PUZZLEevent1c );
      Escher_SendEvent( e );
    }
  }
  else {
    /* LOG::LogFailure( message:'failed with incorrect puzzle number' ) */
    LOG_LogFailure( "failed with incorrect puzzle number" );
  }
}

/*
 * State 4:  [test2gardening]
 */
static void polycalc_PUZZLE_CB_act4( polycalc_PUZZLE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_PUZZLE_CB_act4( polycalc_PUZZLE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_FRUIT * fruit; polycalc_ORANGE * orange; polycalc_TOMATO * tomato; polycalc_VEGETABLE * vegetable; polycalc_CARROT * carrot; polycalc_PUZZLE * puzzle; polycalc_GARDEN * garden; 
  /* CREATE OBJECT INSTANCE fruit OF FRUIT */
  fruit = (polycalc_FRUIT *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_FRUIT_CLASS_NUMBER );
  /* ASSIGN fruit.level_of_vitC = 89 */
  fruit->level_of_vitC = 89;
  /* CREATE OBJECT INSTANCE orange OF ORANGE */
  orange = (polycalc_ORANGE *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_ORANGE_CLASS_NUMBER );
  /* RELATE orange TO fruit ACROSS R3 */
  polycalc_ORANGE_R3_Link( fruit, orange );
  /* CREATE OBJECT INSTANCE fruit OF FRUIT */
  fruit = (polycalc_FRUIT *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_FRUIT_CLASS_NUMBER );
  /* ASSIGN fruit.level_of_vitC = 28 */
  fruit->level_of_vitC = 28;
  /* CREATE OBJECT INSTANCE tomato OF TOMATO */
  tomato = (polycalc_TOMATO *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_TOMATO_CLASS_NUMBER );
  /* RELATE tomato TO fruit ACROSS R3 */
  polycalc_TOMATO_R3_Link( fruit, tomato );
  /* CREATE OBJECT INSTANCE vegetable OF VEGETABLE */
  vegetable = (polycalc_VEGETABLE *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_VEGETABLE_CLASS_NUMBER );
  /* ASSIGN vegetable.peelable = TRUE */
  vegetable->peelable = TRUE;
  /* RELATE tomato TO vegetable ACROSS R4 */
  polycalc_TOMATO_R4_Link( vegetable, tomato );
  /* CREATE OBJECT INSTANCE vegetable OF VEGETABLE */
  vegetable = (polycalc_VEGETABLE *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_VEGETABLE_CLASS_NUMBER );
  /* ASSIGN vegetable.peelable = TRUE */
  vegetable->peelable = TRUE;
  /* CREATE OBJECT INSTANCE carrot OF CARROT */
  carrot = (polycalc_CARROT *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_CARROT_CLASS_NUMBER );
  /* RELATE carrot TO vegetable ACROSS R4 */
  polycalc_CARROT_R4_Link( vegetable, carrot );
  /* CREATE OBJECT INSTANCE puzzle OF PUZZLE */
  puzzle = (polycalc_PUZZLE *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_PUZZLE_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE garden OF GARDEN */
  garden = (polycalc_GARDEN *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_GARDEN_CLASS_NUMBER );
  /* RELATE garden TO puzzle ACROSS R2 */
  polycalc_GARDEN_R2_Link( puzzle, garden );
  /* GENERATE PUZZLE1:solve() TO puzzle */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( puzzle, &polycalc_PUZZLEevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 5:  [gardening1]
 */
static void polycalc_PUZZLE_CB_act5( polycalc_PUZZLE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_PUZZLE_CB_act5( polycalc_PUZZLE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLE_CBevent2 * rcvd_evt = (polycalc_PUZZLE_CBevent2 *) event;
  /* IF ( ( 2 == PARAM.number ) ) */
  if ( ( 2 == rcvd_evt->p_number ) ) {
    polycalc_PUZZLE * puzzle=0; 
    /* SELECT any puzzle FROM INSTANCES OF PUZZLE */
    puzzle = (polycalc_PUZZLE *) Escher_SetGetAny( &pG_polycalc_PUZZLE_extent.active );
    /* GENERATE PUZZLE1:solve() TO puzzle */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( puzzle, &polycalc_PUZZLEevent1c );
      Escher_SendEvent( e );
    }
  }
  else {
    /* LOG::LogFailure( message:'failed with incorrect puzzle number' ) */
    LOG_LogFailure( "failed with incorrect puzzle number" );
  }
}

/*
 * State 6:  [gardening2]
 */
static void polycalc_PUZZLE_CB_act6( polycalc_PUZZLE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_PUZZLE_CB_act6( polycalc_PUZZLE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLE_CBevent2 * rcvd_evt = (polycalc_PUZZLE_CBevent2 *) event;
  /* IF ( ( 2 == PARAM.number ) ) */
  if ( ( 2 == rcvd_evt->p_number ) ) {
    polycalc_PUZZLE * puzzle=0; 
    /* SELECT any puzzle FROM INSTANCES OF PUZZLE */
    puzzle = (polycalc_PUZZLE *) Escher_SetGetAny( &pG_polycalc_PUZZLE_extent.active );
    /* GENERATE PUZZLE1:solve() TO puzzle */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( puzzle, &polycalc_PUZZLEevent1c );
      Escher_SendEvent( e );
    }
  }
  else {
    /* LOG::LogFailure( message:'failed with incorrect puzzle number' ) */
    LOG_LogFailure( "failed with incorrect puzzle number" );
  }
}

/*
 * State 7:  [done with test2]
 */
static void polycalc_PUZZLE_CB_act7( polycalc_PUZZLE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_PUZZLE_CB_act7( polycalc_PUZZLE * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLE_CBevent2 * rcvd_evt = (polycalc_PUZZLE_CBevent2 *) event;
  polycalc_PUZZLE * puzzle=0; polycalc_GARDEN * garden = 0; /* garden (GARDEN) */
 
  /* SELECT any puzzle FROM INSTANCES OF PUZZLE */
  puzzle = (polycalc_PUZZLE *) Escher_SetGetAny( &pG_polycalc_PUZZLE_extent.active );
  /* SELECT one garden RELATED BY puzzle->GARDEN[R2] */
  garden = 0;
  if ( polycalc_GARDEN_CLASS_NUMBER == puzzle->R2_object_id )  garden = (polycalc_GARDEN *) puzzle->R2_subtype;
  /* UNRELATE garden FROM puzzle ACROSS R2 */
  polycalc_GARDEN_R2_Unlink( puzzle, garden );
  /* DELETE OBJECT INSTANCE garden */
  if ( 0 == garden ) {
    XTUML_EMPTY_HANDLE_TRACE( "GARDEN", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) garden, polycalc_DOMAIN_ID, polycalc_GARDEN_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE puzzle */
  if ( 0 == puzzle ) {
    XTUML_EMPTY_HANDLE_TRACE( "PUZZLE", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) puzzle, polycalc_DOMAIN_ID, polycalc_PUZZLE_CLASS_NUMBER );
  /* LOG::LogSuccess( message:'done with test 2' ) */
  LOG_LogSuccess( "done with test 2" );
  /* LOG::LogSuccess( message:'finished with all tests' ) */
  LOG_LogSuccess( "finished with all tests" );
  /* ARCH::shutdown(  ) */
  ARCH_shutdown();
}

const Escher_xtUMLEventConstant_t polycalc_PUZZLE_CBevent1c = {
  polycalc_DOMAIN_ID, polycalc_PUZZLE_CLASS_NUMBER_CB, POLYCALC_PUZZLE_CBEVENT1NUM,
  ESCHER_IS_ASSIGNER_EVENT };

const Escher_xtUMLEventConstant_t polycalc_PUZZLE_CBevent2c = {
  polycalc_DOMAIN_ID, polycalc_PUZZLE_CLASS_NUMBER_CB, POLYCALC_PUZZLE_CBEVENT2NUM,
  ESCHER_IS_ASSIGNER_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_PUZZLE_CB_StateEventMatrix[ 7 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_PUZZLE_CB_STATE_1 (test1) */
  { polycalc_PUZZLE_CB_STATE_1, polycalc_PUZZLE_CB_STATE_3 },
  /* row 2:  polycalc_PUZZLE_CB_STATE_2 (done) */
  { polycalc_PUZZLE_CB_STATE_4, EVENT_CANT_HAPPEN },
  /* row 3:  polycalc_PUZZLE_CB_STATE_3 (same again) */
  { EVENT_CANT_HAPPEN, polycalc_PUZZLE_CB_STATE_2 },
  /* row 4:  polycalc_PUZZLE_CB_STATE_4 (test2gardening) */
  { EVENT_CANT_HAPPEN, polycalc_PUZZLE_CB_STATE_5 },
  /* row 5:  polycalc_PUZZLE_CB_STATE_5 (gardening1) */
  { EVENT_CANT_HAPPEN, polycalc_PUZZLE_CB_STATE_6 },
  /* row 6:  polycalc_PUZZLE_CB_STATE_6 (gardening2) */
  { EVENT_CANT_HAPPEN, polycalc_PUZZLE_CB_STATE_7 },
  /* row 7:  polycalc_PUZZLE_CB_STATE_7 (done with test2) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_PUZZLE_CB_acts[ 8 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_PUZZLE_CB_act1,  /* test1 */
    (StateAction_t) polycalc_PUZZLE_CB_act2,  /* done */
    (StateAction_t) polycalc_PUZZLE_CB_act3,  /* same again */
    (StateAction_t) polycalc_PUZZLE_CB_act4,  /* test2gardening */
    (StateAction_t) polycalc_PUZZLE_CB_act5,  /* gardening1 */
    (StateAction_t) polycalc_PUZZLE_CB_act6,  /* gardening2 */
    (StateAction_t) polycalc_PUZZLE_CB_act7  /* done with test2 */
  };

/*
 * class-based state machine event dispatching
 */
void
polycalc_PUZZLE_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { polycalc_PUZZLE_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_StateNumber_t next_state = polycalc_PUZZLE_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 7 ) {
    /* Execute the state action and update the current state.  */
    ( *polycalc_PUZZLE_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
    } else {
      /* Translation/memory/stack error, etc - TBD */
    }
  }
}

const Escher_xtUMLEventConstant_t polycalc_PUZZLEevent1c = {
  polycalc_DOMAIN_ID, polycalc_PUZZLE_CLASS_NUMBER, POLYCALC_PUZZLEEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };

const Escher_xtUMLEventConstant_t polycalc_PUZZLEevent2c = {
  polycalc_DOMAIN_ID, polycalc_PUZZLE_CLASS_NUMBER, POLYCALC_PUZZLEEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };




/*
 * No transitions in state model, but polymorphic events are present.
 * This dispatch level will move a polymorphic event down the relationship
 * hierarchy as dictated by the application analysis.
 */
void
polycalc_PUZZLE_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    polycalc_PUZZLE_R2PolymorphicEvent( (polycalc_PUZZLE *) instance, event );
  }
}
/*
 * Transfer a polymorphic event down the R2 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
polycalc_PUZZLE_R2PolymorphicEvent( const polycalc_PUZZLE * const p_puzzle, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_puzzle->R2_subtype )
  switch ( p_puzzle->R2_object_id ) {
    case polycalc_GENERAL_CLASS_NUMBER:  /* general (GENERAL) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_PUZZLEEVENT1NUM:  /* PUZZLE1*'solve' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_GENERALevent_PUZZLE_PE1c );
          SetEventTargetInstance( event, p_puzzle->R2_subtype );
          polycalc_GENERAL_Dispatch( event );
          break; /* after transition */
        case POLYCALC_PUZZLEEVENT2NUM:  /* PUZZLE2*'done' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_GENERALevent_PUZZLE_PE2c );
          SetEventTargetInstance( event, p_puzzle->R2_subtype );
          polycalc_GENERAL_Dispatch( event );
          break; /* after transition */
      }
      break;
    case polycalc_GARDEN_CLASS_NUMBER:  /* garden (GARDEN) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_PUZZLEEVENT1NUM:  /* PUZZLE1*'solve' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_GARDENevent_PUZZLE_PE1c );
          SetEventTargetInstance( event, p_puzzle->R2_subtype );
          polycalc_GARDEN_Dispatch( event );
          break; /* after transition */
        case POLYCALC_PUZZLEEVENT2NUM:  /* PUZZLE2*'done' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_GARDENevent_PUZZLE_PE2c );
          SetEventTargetInstance( event, p_puzzle->R2_subtype );
          polycalc_GARDEN_Dispatch( event );
          break; /* after transition */
      }
      break;
  }
}


