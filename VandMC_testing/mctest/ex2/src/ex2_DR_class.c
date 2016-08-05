/*----------------------------------------------------------------------------
 * File:  ex2_DR_class.c
 *
 * Class:       Driver  (DR)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "ex2_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "TIM_bridge.h"
#include "ex2_BR_bridge.h"
#include "ex2_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ex2_DR_container[ ex2_DR_MAX_EXTENT_SIZE ];
static ex2_DR ex2_DR_instances[ ex2_DR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ex2_DR_extent = {
  {0}, {0}, &ex2_DR_container[ 0 ],
  (Escher_iHandle_t) &ex2_DR_instances,
  sizeof( ex2_DR ), ex2_DR_STATE_1, ex2_DR_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Driver  (DR)
 * Component:  ex2
 *--------------------------------------------------------------------------*/

/*
 * State 2:  [Idle]
 */
static void ex2_DR_act2( ex2_DR *, const Escher_xtUMLEvent_t * const );
static void
ex2_DR_act2( ex2_DR * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 5:  [Test Complete]
 */
static void ex2_DR_act5( ex2_DR *, const Escher_xtUMLEvent_t * const );
static void
ex2_DR_act5( ex2_DR * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCE * tce=0;
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* IF ( not_empty tce ) */
  if ( ( 0 != tce ) ) {
    /* DELETE OBJECT INSTANCE tce */
    if ( 0 == tce ) {
      XTUML_EMPTY_HANDLE_TRACE( "TCE", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) tce, ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER );
  }
  /* LOG::LogInfo( message:Test Complete ) */
  LOG_LogInfo( "Test Complete" );
  /* ::xit(  ) */
  ex2_xit();
}

/*
 * State 4:  [Send Event With Supplemental Data]
 */
static void ex2_DR_act4( ex2_DR *, const Escher_xtUMLEvent_t * const );
static void
ex2_DR_act4( ex2_DR * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCE * tce=0;
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* GENERATE TCE3:event with supp data(age:31, name:Bob) TO tce */
  { ex2_TCEevent3 * e = (ex2_TCEevent3 *) Escher_NewxtUMLEvent( tce, &ex2_TCEevent3c );
    Escher_strcpy( e->p_age, "31" );    Escher_strcpy( e->p_name, "Bob" );
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* GENERATE DR5:go to idle() TO self */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &ex2_DRevent5c );
    Escher_SendSelfEvent( e );
  }
}

/*
 * State 3:  [Start Next Test]
 */
static void ex2_DR_act3( ex2_DR *, const Escher_xtUMLEvent_t * const );
static void
ex2_DR_act3( ex2_DR * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCE * tce=0;
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* GENERATE TCE2:next test() TO tce */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( tce, &ex2_TCEevent2c );
    Escher_SendEvent( e );
  }
  /* GENERATE DR5:go to idle() TO self */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &ex2_DRevent5c );
    Escher_SendSelfEvent( e );
  }
}

/*
 * State 1:  [Start Test]
 */
static void ex2_DR_act1( ex2_DR *, const Escher_xtUMLEvent_t * const );
static void
ex2_DR_act1( ex2_DR * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCE * tce;
  /* CREATE OBJECT INSTANCE tce OF TCE */
  tce = (ex2_TCE *) Escher_CreateInstance( ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER );
  tce->tce_id = (Escher_UniqueID_t) tce;
  /* ASSIGN tce.b1 = TRUE */
  tce->b1 = TRUE;
  /* ASSIGN tce.b2 = FALSE */
  tce->b2 = FALSE;
  /* ASSIGN tce.i1 = 1 */
  tce->i1 = 1;
  /* ASSIGN tce.i2 = 2 */
  tce->i2 = 2;
  /* ASSIGN tce.r1 = 1.0 */
  tce->r1 = 1.0;
  /* ASSIGN tce.r2 = 2.0 */
  tce->r2 = 2.0;
  /* GENERATE TCE1:start test() TO tce */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( tce, &ex2_TCEevent1c );
    Escher_SendEvent( e );
  }
  /* GENERATE DR5:go to idle() TO self */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &ex2_DRevent5c );
    Escher_SendSelfEvent( e );
  }
}

const Escher_xtUMLEventConstant_t ex2_DRevent1c = {
  ex2_DOMAIN_ID, ex2_DR_CLASS_NUMBER, EX2_DREVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_DRevent2c = {
  ex2_DOMAIN_ID, ex2_DR_CLASS_NUMBER, EX2_DREVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_DRevent3c = {
  ex2_DOMAIN_ID, ex2_DR_CLASS_NUMBER, EX2_DREVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_DRevent4c = {
  ex2_DOMAIN_ID, ex2_DR_CLASS_NUMBER, EX2_DREVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_DRevent5c = {
  ex2_DOMAIN_ID, ex2_DR_CLASS_NUMBER, EX2_DREVENT5NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t ex2_DR_StateEventMatrix[ 5 + 1 ][ 5 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  ex2_DR_STATE_1 (Start Test) */
  { ex2_DR_STATE_1, EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, ex2_DR_STATE_2 },
  /* row 2:  ex2_DR_STATE_2 (Idle) */
  { EVENT_IS_IGNORED, ex2_DR_STATE_3, ex2_DR_STATE_4, ex2_DR_STATE_5, EVENT_IS_IGNORED },
  /* row 3:  ex2_DR_STATE_3 (Start Next Test) */
  { EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, ex2_DR_STATE_2 },
  /* row 4:  ex2_DR_STATE_4 (Send Event With Supplemental Data) */
  { EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, ex2_DR_STATE_2 },
  /* row 5:  ex2_DR_STATE_5 (Test Complete) */
  { EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t ex2_DR_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) ex2_DR_act1,  /* Start Test */
    (StateAction_t) ex2_DR_act2,  /* Idle */
    (StateAction_t) ex2_DR_act3,  /* Start Next Test */
    (StateAction_t) ex2_DR_act4,  /* Send Event With Supplemental Data */
    (StateAction_t) ex2_DR_act5  /* Test Complete */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 6 ] = {
    "",
    "Start Test",
    "Idle",
    "Start Next Test",
    "Send Event With Supplemental Data",
    "Test Complete"
  };

/*
 * instance state machine event dispatching
 */
void
ex2_DR_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = ex2_DR_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 5 ) {
        STATE_TXN_START_TRACE( "DR", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *ex2_DR_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "DR", next_state, state_name_strings[ next_state ] );

        /* Self deletion state transition? */
        if ( next_state == ex2_DR_STATE_5 ) {          Escher_DeleteInstance( instance, ex2_DOMAIN_ID, ex2_DR_CLASS_NUMBER );
        } else {
          instance->current_state = next_state;
        }
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
          STATE_TXN_IG_TRACE( "DR", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


