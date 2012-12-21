/*----------------------------------------------------------------------------
 * File:  GUI_UI_class.cpp
 *
 * Class:       UI  (UI)
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
 * class operation:  connect
 */
void
GUI_UI::GUI_UI_op_connect( GUI * thismodule)
{
  Escher_xtUMLEvent_t * v_evt;  /* evt */ 
  /* GuiBridge::connect(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::connect(  )" );
  GUI_GuiBridge::connect( thismodule );
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent3c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent3);
  /* GuiBridge::feedSetTargetPressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedSetTargetPressedEvent( evt:evt )" );
  GUI_GuiBridge::feedSetTargetPressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent4c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent4);
  /* GuiBridge::feedStartStopPressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedStartStopPressedEvent( evt:evt )" );
  GUI_GuiBridge::feedStartStopPressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent5c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent5);
  /* GuiBridge::feedLapResetPressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedLapResetPressedEvent( evt:evt )" );
  GUI_GuiBridge::feedLapResetPressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent6c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent6);
  /* GuiBridge::feedLightPressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedLightPressedEvent( evt:evt )" );
  GUI_GuiBridge::feedLightPressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent7c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent7);
  /* GuiBridge::feedModePressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedModePressedEvent( evt:evt )" );
  GUI_GuiBridge::feedModePressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      UI  (UI)
 * Component:  GUI
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static sys_sets::Escher_SetElement_s GUI_UI_container[ GUI_UI_MAX_EXTENT_SIZE ];
static GUI_UI GUI_UI_instances[ GUI_UI_MAX_EXTENT_SIZE ];
sys_sets::Escher_Extent_t pG_GUI_UI_extent = {
  {0}, {0}, &GUI_UI_container[ 0 ],
  (Escher_iHandle_t) &GUI_UI_instances,
  sizeof( GUI_UI ), 0, GUI_UI_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      UI  (UI)
 * Component:  GUI
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [running]
 */
static void GUI_UI_CB_act1( GUI_UI *, const Escher_xtUMLEvent_t * const );
static void
GUI_UI_CB_act1( GUI_UI * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
}

/*
 */
static void GUI_UI_CB_xact1( GUI_UI *, const Escher_xtUMLEvent_t * const );
static void
GUI_UI_CB_xact1( GUI_UI * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  Escher_xtUMLEvent_t * v_evt;  /* evt */ 
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent3c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent3);
  /* GuiBridge::feedSetTargetPressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedSetTargetPressedEvent( evt:evt )" );
  GUI_GuiBridge::feedSetTargetPressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* GuiBridge::sendTargetPressed(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::sendTargetPressed(  )" );
  GUI_GuiBridge::sendTargetPressed( thismodule );
}

/*
 */
static void GUI_UI_CB_xact2( GUI_UI *, const Escher_xtUMLEvent_t * const );
static void
GUI_UI_CB_xact2( GUI_UI * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  Escher_xtUMLEvent_t * v_evt;  /* evt */ 
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent4c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent4);
  /* GuiBridge::feedStartStopPressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedStartStopPressedEvent( evt:evt )" );
  GUI_GuiBridge::feedStartStopPressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* GuiBridge::sendStartStopPressed(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::sendStartStopPressed(  )" );
  GUI_GuiBridge::sendStartStopPressed( thismodule );
}

/*
 */
static void GUI_UI_CB_xact3( GUI_UI *, const Escher_xtUMLEvent_t * const );
static void
GUI_UI_CB_xact3( GUI_UI * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  Escher_xtUMLEvent_t * v_evt;  /* evt */ 
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent5c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent5);
  /* GuiBridge::feedLapResetPressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedLapResetPressedEvent( evt:evt )" );
  GUI_GuiBridge::feedLapResetPressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* GuiBridge::sendLapResetPressed(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::sendLapResetPressed(  )" );
  GUI_GuiBridge::sendLapResetPressed( thismodule );
}

/*
 */
static void GUI_UI_CB_xact4( GUI_UI *, const Escher_xtUMLEvent_t * const );
static void
GUI_UI_CB_xact4( GUI_UI * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  Escher_xtUMLEvent_t * v_evt;  /* evt */ 
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent6c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent6);
  /* GuiBridge::feedLightPressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedLightPressedEvent( evt:evt )" );
  GUI_GuiBridge::feedLightPressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* GuiBridge::sendLightPressed(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::sendLightPressed(  )" );
  GUI_GuiBridge::sendLightPressed( thismodule );
}

/*
 */
static void GUI_UI_CB_xact5( GUI_UI *, const Escher_xtUMLEvent_t * const );
static void
GUI_UI_CB_xact5( GUI_UI * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  Escher_xtUMLEvent_t * v_evt;  /* evt */ 
  /* CREATE EVENT INSTANCE evt(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO CLASS" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) 0, &GUI_UI_CBevent7c );
  v_evt->sc_e = &(thismodule->sc_GUI_UI_CBevent7);
  /* GuiBridge::feedModePressedEvent( evt:evt ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::feedModePressedEvent( evt:evt )" );
  GUI_GuiBridge::feedModePressedEvent( thismodule, (Escher_xtUMLEvent_t *)v_evt );
  /* GuiBridge::sendModePressed(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::sendModePressed(  )" );
  GUI_GuiBridge::sendModePressed( thismodule );
}

const Escher_xtUMLEventConstant_t GUI_UI_CBevent3c = {
  GUI_DOMAIN_ID, GUI_UI_CLASS_NUMBER_CB, GUI_UI_CBEVENT3NUM,
  ESCHER_IS_ASSIGNER_EVENT, 0 };

const Escher_xtUMLEventConstant_t GUI_UI_CBevent4c = {
  GUI_DOMAIN_ID, GUI_UI_CLASS_NUMBER_CB, GUI_UI_CBEVENT4NUM,
  ESCHER_IS_ASSIGNER_EVENT, 0 };

const Escher_xtUMLEventConstant_t GUI_UI_CBevent5c = {
  GUI_DOMAIN_ID, GUI_UI_CLASS_NUMBER_CB, GUI_UI_CBEVENT5NUM,
  ESCHER_IS_ASSIGNER_EVENT, 0 };

const Escher_xtUMLEventConstant_t GUI_UI_CBevent6c = {
  GUI_DOMAIN_ID, GUI_UI_CLASS_NUMBER_CB, GUI_UI_CBEVENT6NUM,
  ESCHER_IS_ASSIGNER_EVENT, 0 };

const Escher_xtUMLEventConstant_t GUI_UI_CBevent7c = {
  GUI_DOMAIN_ID, GUI_UI_CLASS_NUMBER_CB, GUI_UI_CBEVENT7NUM,
  ESCHER_IS_ASSIGNER_EVENT, 0 };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t GUI_UI_CB_StateEventMatrix[ 1 + 1 ][ 5 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  GUI_UI_CB_STATE_1 (running) */
  { (1<<8) + GUI_UI_CB_STATE_1, (2<<8) + GUI_UI_CB_STATE_1, (3<<8) + GUI_UI_CB_STATE_1, (4<<8) + GUI_UI_CB_STATE_1, (5<<8) + GUI_UI_CB_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t GUI_UI_CB_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) GUI_UI_CB_act1  /* running */
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t GUI_UI_CB_xacts[ 5 ] = {
    (StateAction_t) GUI_UI_CB_xact1,
    (StateAction_t) GUI_UI_CB_xact2,
    (StateAction_t) GUI_UI_CB_xact3,
    (StateAction_t) GUI_UI_CB_xact4,
    (StateAction_t) GUI_UI_CB_xact5
  };

/*
 * class-based state machine event dispatching
 */
void
GUI_UI_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { GUI_UI_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_SEMcell_t next_state = GUI_UI_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 1 ) {
    /* Execute the state action and update the current state.  */
    ( *GUI_UI_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
    } else {
      ( *GUI_UI_CB_xacts[ (next_state>>8)-1 ] )( &class_based_singleton, event );
      next_state = next_state & 0x00ff;
      class_based_singleton.current_state = next_state;
      ( *GUI_UI_CB_acts[ next_state ] )( &class_based_singleton, event );
    }
  }
}


