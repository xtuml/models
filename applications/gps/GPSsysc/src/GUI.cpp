/*----------------------------------------------------------------------------
 * File:  GUI.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  GUI
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/
/*
 Simulates the user interface and has the ability to connect an external GUI.

It is using the BridgePoint Java API to connect to the GUI in Verifier mode.
There are also handwritten C code that implments parts of this component to 
allow generated code to connect to the exact same GUI.
 */

#include "GUI.h"

/*
 * Interface:  UIif
 * Provided Port:  UI
 * To Provider Message:  setTime
 */
void
GUI::UIif_setTime( i_t p_setTime_time)
{
  GUI * thismodule = this;
  /* Provided Port:  UI */
  /* GuiBridge::setTime( time:PARAM.setTime_time ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::setTime( time:PARAM.setTime_time )" );
  GUI_GuiBridge::setTime( thismodule, p_setTime_time );


}

/*
 * Interface:  UIif
 * Provided Port:  UI
 * To Provider Message:  setData
 */
void
GUI::UIif_setData( Unit_t p_setData_unit, r4_t p_setData_value)
{
  GUI * thismodule = this;
  /* Provided Port:  UI */
  /* IF ( ( PARAM.setData_unit == km ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( PARAM.setData_unit == km ) )" );
  if ( ( p_setData_unit == GPSsysc_Unit_km_e ) ) {
    /* GuiBridge::setData( unit:0, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:0, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 0, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_meters_e ) ) {
    /* GuiBridge::setData( unit:1, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:1, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 1, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_minPerKm_e ) ) {
    /* GuiBridge::setData( unit:2, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:2, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 2, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_kmPerHour_e ) ) {
    /* GuiBridge::setData( unit:3, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:3, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 3, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_miles_e ) ) {
    /* GuiBridge::setData( unit:4, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:4, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 4, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_yards_e ) ) {
    /* GuiBridge::setData( unit:5, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:5, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 5, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_feet_e ) ) {
    /* GuiBridge::setData( unit:6, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:6, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 6, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_minPerMile_e ) ) {
    /* GuiBridge::setData( unit:7, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:7, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 7, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_mph_e ) ) {
    /* GuiBridge::setData( unit:8, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:8, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 8, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_bpm_e ) ) {
    /* GuiBridge::setData( unit:9, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:9, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 9, p_setData_value );
  }
  else if ( ( p_setData_unit == GPSsysc_Unit_laps_e ) ) {
    /* GuiBridge::setData( unit:10, value:PARAM.setData_value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:10, value:PARAM.setData_value )" );
    GUI_GuiBridge::setData( thismodule, 10, p_setData_value );
  }


}

#if GUI_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const GUI::GUI_class_info[ GUI_MAX_CLASS_NUMBERS ] = {
  GUI_CLASS_INFO_INIT
};
#endif


/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
EventTaker_t GUI::GUI_EventDispatcher[ GUI_STATE_MODELS ] = {
  GUI_class_dispatchers
};
/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  RunTestCase
 */
void
GUI::GUI_RunTestCase()
{
  GUI * thismodule = this;
  /* TestCase::execute() */
  XTUML_OAL_STMT_TRACE( 1, "TestCase::execute()" );
  GUI_TestCase::GUI_TestCase_op_execute( thismodule);

}


/*
 * Domain Function:  init
 */
void
GUI::GUI_init()
{
  GUI * thismodule = this;
  GUI_HEARTBEAT * v_heartbeat; Escher_xtUMLEvent_t * v_e;  /* e */ Escher_Timer_t * v_t; 
  /* GuiBridge::connect(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::connect(  )" );
  GUI_GuiBridge::connect( thismodule );
  /* CREATE OBJECT INSTANCE heartbeat OF HEARTBEAT */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE heartbeat OF HEARTBEAT" );
  v_heartbeat = (GUI_HEARTBEAT *) thismodule->Escher_CreateInstance( GUI_DOMAIN_ID, GUI_HEARTBEAT_CLASS_NUMBER );
  /* CREATE EVENT INSTANCE e(  ) TO heartbeat */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE e(  ) TO heartbeat" );
  v_e = thismodule->Escher_NewxtUMLEvent( (void *) v_heartbeat, &GUI_HEARTBEATevent1c );
  v_e->sc_e = &(thismodule->sc_GUI_HEARTBEATevent1);
  /* ASSIGN t = TIM::timer_start_recurring(event_inst:e, microseconds:500000) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN t = TIM::timer_start_recurring(event_inst:e, microseconds:500000)" );
  v_t = thismodule->tim->timer_start_recurring( (Escher_xtUMLEvent_t *)v_e, 500000 );

}

// state machine dispatcher process for TestCase
void GUI::GUI_TestCase_sm()
{
  GUI * thismodule = this;
  while ( true ) {
    thismodule->ooa_loop( GUI_DOMAIN_ID, GUI_TestCase_CLASS_NUMBER, (void *) this );
    wait();
  }
}
// state machine dispatcher process for UI
void GUI::GUI_UI_sm()
{
  GUI * thismodule = this;
  while ( true ) {
    thismodule->ooa_loop( GUI_DOMAIN_ID, GUI_UI_CLASS_NUMBER, (void *) this );
    wait();
  }
}
// state machine dispatcher process for UI Heartbeat
void GUI::GUI_HEARTBEAT_sm()
{
  GUI * thismodule = this;
  while ( true ) {
    thismodule->ooa_loop( GUI_DOMAIN_ID, GUI_HEARTBEAT_CLASS_NUMBER, (void *) this );
    wait();
  }
}

