/*----------------------------------------------------------------------------
 * File:  polycalc_GARDEN_class.c
 *
 * Class:       garden  (GARDEN)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE PUZZLE TO GARDEN ACROSS R2
 */
void
polycalc_GARDEN_R2_Link( polycalc_PUZZLE * supertype, polycalc_GARDEN * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "GARDEN", "polycalc_GARDEN_R2_Link" );
    return;
  }
  /* Optimized linkage for GARDEN->PUZZLE[R2] */
  subtype->PUZZLE_R2 = supertype;
  /* Optimized linkage for PUZZLE->GARDEN[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = polycalc_GARDEN_CLASS_NUMBER;
}


/*
 * UNRELATE PUZZLE FROM GARDEN ACROSS R2
 */
void
polycalc_GARDEN_R2_Unlink( polycalc_PUZZLE * supertype, polycalc_GARDEN * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "GARDEN", "polycalc_GARDEN_R2_Unlink" );
    return;
  }
  /* Note:  GARDEN->PUZZLE[R2] not navigated */
  supertype->R2_subtype = 0;
  supertype->R2_object_id = 0;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_GARDEN_container[ polycalc_GARDEN_MAX_EXTENT_SIZE ];
static polycalc_GARDEN polycalc_GARDEN_instances[ polycalc_GARDEN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_GARDEN_extent = {
  {0}, {0}, &polycalc_GARDEN_container[ 0 ],
  (Escher_iHandle_t) &polycalc_GARDEN_instances,
  sizeof( polycalc_GARDEN ), polycalc_GARDEN_STATE_1, polycalc_GARDEN_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      garden  (GARDEN)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [juicing the orange]
 */
static void polycalc_GARDEN_act1( polycalc_GARDEN *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GARDEN_act1( polycalc_GARDEN * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_ORANGE * orange=0;polycalc_FRUIT * fruit=0;
  /* SELECT any orange FROM INSTANCES OF ORANGE */
  orange = (polycalc_ORANGE *) Escher_SetGetAny( &pG_polycalc_ORANGE_extent.active );
  /* SELECT one fruit RELATED BY orange->FRUIT[R3] */
  fruit = ( 0 != orange ) ? orange->FRUIT_R3 : 0;
  /* GENERATE FRUIT1:juice() TO fruit */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( fruit, &polycalc_FRUITevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [juicing the tomato]
 */
static void polycalc_GARDEN_act2( polycalc_GARDEN *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GARDEN_act2( polycalc_GARDEN * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLEevent2 * rcvd_evt = (polycalc_PUZZLEevent2 *) event;
  /* IF ( 100 == PARAM.value ) */
  if ( 100 == rcvd_evt->p_value ) {
    polycalc_TOMATO * tomato=0;polycalc_FRUIT * fruit=0;
    /* SELECT any tomato FROM INSTANCES OF TOMATO */
    tomato = (polycalc_TOMATO *) Escher_SetGetAny( &pG_polycalc_TOMATO_extent.active );
    /* SELECT one fruit RELATED BY tomato->FRUIT[R3] */
    fruit = ( 0 != tomato ) ? tomato->FRUIT_R3 : 0;
    /* GENERATE FRUIT1:juice() TO fruit */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( fruit, &polycalc_FRUITevent1c );
      Escher_SendEvent( e );
    }
  }
  else {
    /* LOG::LogFailure( message:test failed to juice the orange ) */
    LOG_LogFailure( "test failed to juice the orange" );
  }
}

/*
 * State 3:  [growing the tomato]
 */
static void polycalc_GARDEN_act3( polycalc_GARDEN *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GARDEN_act3( polycalc_GARDEN * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLEevent2 * rcvd_evt = (polycalc_PUZZLEevent2 *) event;
  /* IF ( 35 == PARAM.value ) */
  if ( 35 == rcvd_evt->p_value ) {
    polycalc_TOMATO * tomato=0;polycalc_VEGETABLE * vegetable=0;
    /* SELECT any tomato FROM INSTANCES OF TOMATO */
    tomato = (polycalc_TOMATO *) Escher_SetGetAny( &pG_polycalc_TOMATO_extent.active );
    /* SELECT one vegetable RELATED BY tomato->VEGETABLE[R4] */
    vegetable = ( 0 != tomato ) ? tomato->VEGETABLE_R4 : 0;
    /* GENERATE VEGETABLE1:grow() TO vegetable */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( vegetable, &polycalc_VEGETABLEevent1c );
      Escher_SendEvent( e );
    }
  }
  else {
    /* LOG::LogFailure( message:test failed to juice the tomato ) */
    LOG_LogFailure( "test failed to juice the tomato" );
  }
}

/*
 * State 4:  [growing the carrot]
 */
static void polycalc_GARDEN_act4( polycalc_GARDEN *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GARDEN_act4( polycalc_GARDEN * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLEevent2 * rcvd_evt = (polycalc_PUZZLEevent2 *) event;
  /* IF ( 42 == PARAM.value ) */
  if ( 42 == rcvd_evt->p_value ) {
    polycalc_CARROT * carrot=0;polycalc_VEGETABLE * vegetable=0;
    /* SELECT any carrot FROM INSTANCES OF CARROT */
    carrot = (polycalc_CARROT *) Escher_SetGetAny( &pG_polycalc_CARROT_extent.active );
    /* SELECT one vegetable RELATED BY carrot->VEGETABLE[R4] */
    vegetable = ( 0 != carrot ) ? carrot->VEGETABLE_R4 : 0;
    /* GENERATE VEGETABLE1:grow() TO vegetable */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( vegetable, &polycalc_VEGETABLEevent1c );
      Escher_SendEvent( e );
    }
  }
  else {
    /* LOG::LogFailure( message:test failed to grow the tomato ) */
    LOG_LogFailure( "test failed to grow the tomato" );
  }
}

/*
 * State 5:  [done]
 */
static void polycalc_GARDEN_act5( polycalc_GARDEN *, const Escher_xtUMLEvent_t * const );
static void
polycalc_GARDEN_act5( polycalc_GARDEN * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PUZZLEevent2 * rcvd_evt = (polycalc_PUZZLEevent2 *) event;
  /* LOG::LogSuccess( message:test passed for garden ) */
  LOG_LogSuccess( "test passed for garden" );
  /* GENERATE PUZZLE_A2:passed(number:2) TO PUZZLE CLASS */
  { polycalc_PUZZLE_CBevent2 * e = (polycalc_PUZZLE_CBevent2 *) Escher_NewxtUMLEvent( 0, &polycalc_PUZZLE_CBevent2c );
    e->p_number = 2;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}


const Escher_xtUMLEventConstant_t polycalc_GARDENevent_PUZZLE_PE1c = {
  polycalc_DOMAIN_ID, polycalc_GARDEN_CLASS_NUMBER, POLYCALC_GARDENEVENT_PUZZLE_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };
const Escher_xtUMLEventConstant_t polycalc_GARDENevent_PUZZLE_PE2c = {
  polycalc_DOMAIN_ID, polycalc_GARDEN_CLASS_NUMBER, POLYCALC_GARDENEVENT_PUZZLE_PE2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_GARDEN_StateEventMatrix[ 5 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_GARDEN_STATE_1 (juicing the orange) */
  { polycalc_GARDEN_STATE_2, polycalc_GARDEN_STATE_1 },
  /* row 2:  polycalc_GARDEN_STATE_2 (juicing the tomato) */
  { polycalc_GARDEN_STATE_3, EVENT_CANT_HAPPEN },
  /* row 3:  polycalc_GARDEN_STATE_3 (growing the tomato) */
  { polycalc_GARDEN_STATE_4, EVENT_CANT_HAPPEN },
  /* row 4:  polycalc_GARDEN_STATE_4 (growing the carrot) */
  { polycalc_GARDEN_STATE_5, EVENT_CANT_HAPPEN },
  /* row 5:  polycalc_GARDEN_STATE_5 (done) */
  { EVENT_CANT_HAPPEN, polycalc_GARDEN_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_GARDEN_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_GARDEN_act1,  /* juicing the orange */
    (StateAction_t) polycalc_GARDEN_act2,  /* juicing the tomato */
    (StateAction_t) polycalc_GARDEN_act3,  /* growing the tomato */
    (StateAction_t) polycalc_GARDEN_act4,  /* growing the carrot */
    (StateAction_t) polycalc_GARDEN_act5  /* done */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_GARDEN_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 5 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_GARDEN_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 5 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_GARDEN_acts[ next_state ] )( instance, event );
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}

