/*----------------------------------------------------------------------------
 * File:  GUI_TestCase_class.cpp
 *
 * Class:       TestCase  (TestCase)
 * Component:   GUI
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSsysc_sys_types.h"
#include "GUI.h"
#include "GUI_GuiBridge_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"

/*
 * class operation:  execute
 */
void
GUI_TestCase::GUI_TestCase_op_execute( GUI * thismodule)
{
  /* GENERATE TestCase2:start(iterations:2) TO TestCase CREATOR */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE TestCase2:start(iterations:2) TO TestCase CREATOR" );
  { GUI_TestCaseevent2 * e = (GUI_TestCaseevent2 *) thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_TestCaseevent2c );
    e->p_iterations = 2;
  e->sc_e = &(thismodule->sc_GUI_TestCaseevent2);
    thismodule->Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }


}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      TestCase  (TestCase)
 * Component:  GUI
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static sys_sets::Escher_SetElement_s GUI_TestCase_container[ GUI_TestCase_MAX_EXTENT_SIZE ];
static GUI_TestCase GUI_TestCase_instances[ GUI_TestCase_MAX_EXTENT_SIZE ];
sys_sets::Escher_Extent_t pG_GUI_TestCase_extent = {
  {0}, {0}, &GUI_TestCase_container[ 0 ],
  (Escher_iHandle_t) &GUI_TestCase_instances,
  sizeof( GUI_TestCase ), GUI_TestCase_STATE_2, GUI_TestCase_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      TestCase  (TestCase)
 * Component:  GUI
 *--------------------------------------------------------------------------*/

/*
 * State 2:  [pressStartStop]
 * Note: Self creation state (asynchronous creation)
 */
static void GUI_TestCase_act2( GUI_TestCase *, const Escher_xtUMLEvent_t * const );
static void
GUI_TestCase_act2( GUI_TestCase * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  /* IF ( ( self.iterations > 0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( self.iterations > 0 ) )" );
  if ( ( self->iterations > 0 ) ) {
    Escher_xtUMLEvent_t * v_evt;  /* evt */ Escher_Timer_t * v_handle; 
    /* ASSIGN self.iterations = ( self.iterations - 1 ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.iterations = ( self.iterations - 1 )" );
    self->iterations = ( self->iterations - 1 );
    /* CREATE EVENT INSTANCE evt(  ) TO self */
    XTUML_OAL_STMT_TRACE( 2, "CREATE EVENT INSTANCE evt(  ) TO self" );
    v_evt = thismodule->Escher_NewxtUMLEvent( (void *) self, &GUI_TestCaseevent1c );
    v_evt->sc_e = &(thismodule->sc_GUI_TestCaseevent1);
    /* ASSIGN handle = TIM::timer_start(event_inst:evt, microseconds:4000000) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN handle = TIM::timer_start(event_inst:evt, microseconds:4000000)" );
    v_handle = thismodule->tim->timer_start( (Escher_xtUMLEvent_t *)v_evt, 4000000 );
    /*  SEND UI::startStopPressed() */
    XTUML_OAL_STMT_TRACE( 2, " SEND UI::startStopPressed()" );
    thismodule->UI->UIif_startStopPressed();
  }
  else {
    /* GENERATE TestCase3:finish() TO self */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE TestCase3:finish() TO self" );
    { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( self, &GUI_TestCaseevent3c );
  e->sc_e = &(thismodule->sc_GUI_TestCaseevent3);
      thismodule->Escher_SendSelfEvent( e );
    }
    /*  SEND UI::lapResetPressed() */
    XTUML_OAL_STMT_TRACE( 2, " SEND UI::lapResetPressed()" );
    thismodule->UI->UIif_lapResetPressed();
  }
}

/*
 * State 3:  [testCaseFinished]
 */
static void GUI_TestCase_act3( GUI_TestCase *, const Escher_xtUMLEvent_t * const );
static void
GUI_TestCase_act3( GUI_TestCase * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  /* LOG::LogInfo( message:'End of test case' ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:'End of test case' )" );
  LOG::LogInfo( "End of test case" );
}

/*
 */
static void GUI_TestCase_xact1( GUI_TestCase *, const Escher_xtUMLEvent_t * const );
static void
GUI_TestCase_xact1( GUI_TestCase * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  GUI_TestCaseevent2 * rcvd_evt = (GUI_TestCaseevent2 *) event;
  /* LOG::LogInfo( message:'Start of test case' ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:'Start of test case' )" );
  LOG::LogInfo( "Start of test case" );
  /* ASSIGN self.iterations = ( PARAM.iterations * 2 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.iterations = ( PARAM.iterations * 2 )" );
  self->iterations = ( rcvd_evt->p_iterations * 2 );
}

const Escher_xtUMLEventConstant_t GUI_TestCaseevent1c = {
  GUI_DOMAIN_ID, GUI_TestCase_CLASS_NUMBER, GUI_TESTCASEEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT, 0 };

const Escher_xtUMLEventConstant_t GUI_TestCaseevent2c = {
  GUI_DOMAIN_ID, GUI_TestCase_CLASS_NUMBER, GUI_TESTCASEEVENT2NUM,
  ESCHER_IS_CREATION_EVENT, 0 };

const Escher_xtUMLEventConstant_t GUI_TestCaseevent3c = {
  GUI_DOMAIN_ID, GUI_TestCase_CLASS_NUMBER, GUI_TESTCASEEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT, 0 };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t GUI_TestCase_StateEventMatrix[ 2 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, (1<<8) + GUI_TestCase_STATE_2, EVENT_CANT_HAPPEN },
  /* row 1:  GUI_TestCase_STATE_2 (pressStartStop) */
  { GUI_TestCase_STATE_2, EVENT_CANT_HAPPEN, GUI_TestCase_STATE_3 },
  /* row 2:  GUI_TestCase_STATE_3 (testCaseFinished) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t GUI_TestCase_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) GUI_TestCase_act2,  /* pressStartStop */
    (StateAction_t) GUI_TestCase_act3  /* testCaseFinished */
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t GUI_TestCase_xacts[ 1 ] = {
    (StateAction_t) GUI_TestCase_xact1
  };

/*
 * instance state machine event dispatching
 */
void
GUI_TestCase_Dispatch( Escher_xtUMLEvent_t * event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  Escher_iHandle_t instance;
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_SEMcell_t next_state;
  
  if ( 0 != GetIsCreationEvent( event ) ) {
    instance = thismodule->Escher_CreateInstance( GUI_DOMAIN_ID, GUI_TestCase_CLASS_NUMBER );
    if ( 0 != instance ) {
      instance->current_state = UNINITIALIZED_STATE;
      SetEventTargetInstance( event, instance );
    } else {
      /* Instance allocation failure - USER RECOVERY LOGIC IS TBD */
      UserEventNoInstanceCallout( 0 );
    }
  } else {
    instance = GetEventTargetInstance( event );
  }
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = GUI_TestCase_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        /* Execute the state action and update the current state.  */
        ( *GUI_TestCase_acts[ next_state ] )( instance, event );

        /* Self deletion state transition? */
        if ( next_state == GUI_TestCase_STATE_3 ) {          thismodule->Escher_DeleteInstance( instance, GUI_DOMAIN_ID, GUI_TestCase_CLASS_NUMBER );
        } else {
          instance->current_state = next_state;
        }
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        ( *GUI_TestCase_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *GUI_TestCase_acts[ next_state ] )( instance, event );
      }
    }
  }
}


