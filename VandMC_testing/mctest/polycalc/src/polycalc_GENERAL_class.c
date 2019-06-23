/*----------------------------------------------------------------------------
 * File:  polycalc_GENERAL_class.c
 *
 * Class:       general  (GENERAL)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE PUZZLE TO GENERAL ACROSS R2
 */
void
polycalc_GENERAL_R2_Link( polycalc_PUZZLE * supertype, polycalc_GENERAL * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "GENERAL", "polycalc_GENERAL_R2_Link" );
    return;
  }
  /* Optimized linkage for GENERAL->PUZZLE[R2] */
  subtype->PUZZLE_R2 = supertype;
  /* Optimized linkage for PUZZLE->GENERAL[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = polycalc_GENERAL_CLASS_NUMBER;
}


/*
 * UNRELATE PUZZLE FROM GENERAL ACROSS R2
 */
void
polycalc_GENERAL_R2_Unlink( polycalc_PUZZLE * supertype, polycalc_GENERAL * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "GENERAL", "polycalc_GENERAL_R2_Unlink" );
    return;
  }
  /* Note:  GENERAL->PUZZLE[R2] not navigated */
  supertype->R2_subtype = 0;
  supertype->R2_object_id = 0;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_GENERAL_container[ polycalc_GENERAL_MAX_EXTENT_SIZE ];
static polycalc_GENERAL polycalc_GENERAL_instances[ polycalc_GENERAL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_GENERAL_extent = {
  {0}, {0}, &polycalc_GENERAL_container[ 0 ],
  (Escher_iHandle_t) &polycalc_GENERAL_instances,
  sizeof( polycalc_GENERAL ), polycalc_GENERAL_STATE_1, polycalc_GENERAL_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      general  (GENERAL)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [adding]
 */
static void polycalc_GENERAL_act1( polycalc_GENERAL *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GENERAL_act1( polycalc_GENERAL * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_OP * op=0;
  /* ASSIGN self.accumulator = 0 */
  ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator = 0;
  /* SELECT any op FROM INSTANCES OF OP WHERE SELECTED.operatorr == + */
  op = 0;
  { polycalc_OP * selected;
    Escher_Iterator_s iteroppolycalc_OP;
    Escher_IteratorReset( &iteroppolycalc_OP, &pG_polycalc_OP_extent.active );
    while ( (selected = (polycalc_OP *) Escher_IteratorNext( &iteroppolycalc_OP )) != 0 ) {
      if ( Escher_strcmp( ((polycalc_OP *)xtUML_detect_empty_handle( selected, "OP", "SELECTED.operatorr" ))->operatorr, "+" ) == 0 ) {
        op = selected;
        break;
      }
    }
  }
  /* ASSIGN op.left = 11 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.left" ))->left = 11;
  /* ASSIGN op.right = 22 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.right" ))->right = 22;
  /* ASSIGN op.result = 0 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.result" ))->result = 0;
  /* GENERATE OP2:combine() TO op */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( op, &polycalc_OPevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [subtracting]
 */
static void polycalc_GENERAL_act2( polycalc_GENERAL *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GENERAL_act2( polycalc_GENERAL * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLEevent2 * rcvd_evt = (polycalc_PUZZLEevent2 *) event;
  polycalc_OP * op=0;
  /* ASSIGN self.accumulator = PARAM.value */
  ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator = rcvd_evt->p_value;
  /* SELECT any op FROM INSTANCES OF OP WHERE SELECTED.operatorr == - */
  op = 0;
  { polycalc_OP * selected;
    Escher_Iterator_s iteroppolycalc_OP;
    Escher_IteratorReset( &iteroppolycalc_OP, &pG_polycalc_OP_extent.active );
    while ( (selected = (polycalc_OP *) Escher_IteratorNext( &iteroppolycalc_OP )) != 0 ) {
      if ( Escher_strcmp( ((polycalc_OP *)xtUML_detect_empty_handle( selected, "OP", "SELECTED.operatorr" ))->operatorr, "-" ) == 0 ) {
        op = selected;
        break;
      }
    }
  }
  /* ASSIGN op.result = 0 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.result" ))->result = 0;
  /* ASSIGN op.left = self.accumulator */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.left" ))->left = ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator;
  /* ASSIGN op.right = 30 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.right" ))->right = 30;
  /* GENERATE OP2:combine() TO op */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( op, &polycalc_OPevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 3:  [multiplying]
 */
static void polycalc_GENERAL_act3( polycalc_GENERAL *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GENERAL_act3( polycalc_GENERAL * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLEevent2 * rcvd_evt = (polycalc_PUZZLEevent2 *) event;
  polycalc_OP * op=0;
  /* ASSIGN self.accumulator = PARAM.value */
  ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator = rcvd_evt->p_value;
  /* SELECT any op FROM INSTANCES OF OP WHERE SELECTED.operatorr == * */
  op = 0;
  { polycalc_OP * selected;
    Escher_Iterator_s iteroppolycalc_OP;
    Escher_IteratorReset( &iteroppolycalc_OP, &pG_polycalc_OP_extent.active );
    while ( (selected = (polycalc_OP *) Escher_IteratorNext( &iteroppolycalc_OP )) != 0 ) {
      if ( Escher_strcmp( ((polycalc_OP *)xtUML_detect_empty_handle( selected, "OP", "SELECTED.operatorr" ))->operatorr, "*" ) == 0 ) {
        op = selected;
        break;
      }
    }
  }
  /* ASSIGN op.result = 0 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.result" ))->result = 0;
  /* ASSIGN op.left = self.accumulator */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.left" ))->left = ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator;
  /* ASSIGN op.right = 4 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.right" ))->right = 4;
  /* GENERATE OP2:combine() TO op */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( op, &polycalc_OPevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 4:  [dividing]
 */
static void polycalc_GENERAL_act4( polycalc_GENERAL *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GENERAL_act4( polycalc_GENERAL * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLEevent2 * rcvd_evt = (polycalc_PUZZLEevent2 *) event;
  polycalc_OP * op=0;
  /* ASSIGN self.accumulator = PARAM.value */
  ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator = rcvd_evt->p_value;
  /* SELECT any op FROM INSTANCES OF OP WHERE SELECTED.operatorr == / */
  op = 0;
  { polycalc_OP * selected;
    Escher_Iterator_s iteroppolycalc_OP;
    Escher_IteratorReset( &iteroppolycalc_OP, &pG_polycalc_OP_extent.active );
    while ( (selected = (polycalc_OP *) Escher_IteratorNext( &iteroppolycalc_OP )) != 0 ) {
      if ( Escher_strcmp( ((polycalc_OP *)xtUML_detect_empty_handle( selected, "OP", "SELECTED.operatorr" ))->operatorr, "/" ) == 0 ) {
        op = selected;
        break;
      }
    }
  }
  /* ASSIGN op.result = 0 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.result" ))->result = 0;
  /* ASSIGN op.left = self.accumulator */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.left" ))->left = ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator;
  /* ASSIGN op.right = 2 */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.right" ))->right = 2;
  /* GENERATE OP2:combine() TO op */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( op, &polycalc_OPevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 5:  [logging result]
 */
static void polycalc_GENERAL_act5( polycalc_GENERAL *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GENERAL_act5( polycalc_GENERAL * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLEevent2 * rcvd_evt = (polycalc_PUZZLEevent2 *) event;
  /* ASSIGN self.accumulator = PARAM.value */
  ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator = rcvd_evt->p_value;
  /* LOG::LogInteger( message:self.accumulator ) */
  LOG_LogInteger( ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator );
  /* IF ( 6 == self.accumulator ) */
  if ( 6 == ((polycalc_GENERAL *)xtUML_detect_empty_handle( self, "GENERAL", "self.accumulator" ))->accumulator ) {
    /* GENERATE GENERAL2:go() TO self */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &polycalc_GENERALevent2c );
      Escher_SendSelfEvent( e );
    }
  }
  else {
    /* LOG::LogFailure( message:test failed ) */
    LOG_LogFailure( "test failed" );
  }
}

/*
 * State 6:  [finished]
 */
static void polycalc_GENERAL_act6( polycalc_GENERAL *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GENERAL_act6( polycalc_GENERAL * self, const Escher_xtUMLEvent_t * const event )
{
  /* LOG::LogSuccess( message:test passed ) */
  LOG_LogSuccess( "test passed" );
  /* GENERATE PUZZLE_A2:passed(number:1) TO PUZZLE CLASS */
  { polycalc_PUZZLE_CBevent2 * e = (polycalc_PUZZLE_CBevent2 *) Escher_NewxtUMLEvent( 0, &polycalc_PUZZLE_CBevent2c );
    e->p_number = 1;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_GENERALevent_PUZZLE_PE1c = {
  polycalc_DOMAIN_ID, polycalc_GENERAL_CLASS_NUMBER, POLYCALC_GENERALEVENT_PUZZLE_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };
const Escher_xtUMLEventConstant_t polycalc_GENERALevent2c = {
  polycalc_DOMAIN_ID, polycalc_GENERAL_CLASS_NUMBER, POLYCALC_GENERALEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };
const Escher_xtUMLEventConstant_t polycalc_GENERALevent_PUZZLE_PE2c = {
  polycalc_DOMAIN_ID, polycalc_GENERAL_CLASS_NUMBER, POLYCALC_GENERALEVENT_PUZZLE_PE2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_GENERAL_StateEventMatrix[ 6 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_GENERAL_STATE_1 (adding) */
  { EVENT_CANT_HAPPEN, polycalc_GENERAL_STATE_2, polycalc_GENERAL_STATE_1 },
  /* row 2:  polycalc_GENERAL_STATE_2 (subtracting) */
  { EVENT_CANT_HAPPEN, polycalc_GENERAL_STATE_3, EVENT_CANT_HAPPEN },
  /* row 3:  polycalc_GENERAL_STATE_3 (multiplying) */
  { EVENT_CANT_HAPPEN, polycalc_GENERAL_STATE_4, EVENT_CANT_HAPPEN },
  /* row 4:  polycalc_GENERAL_STATE_4 (dividing) */
  { EVENT_CANT_HAPPEN, polycalc_GENERAL_STATE_5, EVENT_CANT_HAPPEN },
  /* row 5:  polycalc_GENERAL_STATE_5 (logging result) */
  { polycalc_GENERAL_STATE_6, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 6:  polycalc_GENERAL_STATE_6 (finished) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, polycalc_GENERAL_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_GENERAL_acts[ 7 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_GENERAL_act1,  /* adding */
    (StateAction_t) polycalc_GENERAL_act2,  /* subtracting */
    (StateAction_t) polycalc_GENERAL_act3,  /* multiplying */
    (StateAction_t) polycalc_GENERAL_act4,  /* dividing */
    (StateAction_t) polycalc_GENERAL_act5,  /* logging result */
    (StateAction_t) polycalc_GENERAL_act6  /* finished */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_GENERAL_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 6 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_GENERAL_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 6 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_GENERAL_acts[ next_state ] )( instance, event );
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}

