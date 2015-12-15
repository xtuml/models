/*----------------------------------------------------------------------------
 * File:  UI.c
 *
 * UML Component Port Messages
 * Component/Module Name:  UI
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 Simulates the user interface and has the ability to connect an external GUI
representing the physical watch.

Uses the BridgePoint Java API to connect to an animated version of the watch
while the models are executing in Verifier.

There is also hand-written C code that implments parts of this component to 
allow generated code to connect to the exact same animated watch.
 */

#include "GPSWatch_sys_types.h"
#include "UI.h"
#include "UI_GuiBridge_bridge.h"
#include "MATH_bridge.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "Tracking.h"
#include "UI_classes.h"

/*
 * Interface:  UI
 * Provided Port:  UI
 * From Provider Message:  lapResetPressed
 */
void
UI_UI_lapResetPressed()
{
  Tracking_UI_lapResetPressed();
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * From Provider Message:  lightPressed
 */
void
UI_UI_lightPressed()
{
  Tracking_UI_lightPressed();
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * From Provider Message:  modePressed
 */
void
UI_UI_modePressed()
{
  Tracking_UI_modePressed();
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * From Provider Message:  newGoalSpec
 */
void
UI_UI_newGoalSpec( const GPSWatch_GoalCriteria_t p_criteriaType, const r_t p_maximum, const r_t p_minimum, const i_t p_sequenceNumber, const r_t p_span, const GPSWatch_GoalSpan_t p_spanType )
{
  Tracking_UI_newGoalSpec(  p_criteriaType, p_maximum, p_minimum, p_sequenceNumber, p_span, p_spanType );
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * To Provider Message:  setData
 */
void
UI_UI_setData( const GPSWatch_Unit_t p_unit, const r_t p_value )
{
  /* IF ( ( PARAM.unit == km ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( PARAM.unit == km ) )" );
  if ( ( p_unit == GPSWatch_Unit_km_e ) ) {
    /* GuiBridge::setData( unit:0, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:0, value:PARAM.value )" );
    UI_GuiBridge_setData( 0, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_meters_e ) ) {
    /* GuiBridge::setData( unit:1, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:1, value:PARAM.value )" );
    UI_GuiBridge_setData( 1, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_minPerKm_e ) ) {
    /* GuiBridge::setData( unit:2, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:2, value:PARAM.value )" );
    UI_GuiBridge_setData( 2, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_kmPerHour_e ) ) {
    /* GuiBridge::setData( unit:3, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:3, value:PARAM.value )" );
    UI_GuiBridge_setData( 3, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_miles_e ) ) {
    /* GuiBridge::setData( unit:4, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:4, value:PARAM.value )" );
    UI_GuiBridge_setData( 4, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_yards_e ) ) {
    /* GuiBridge::setData( unit:5, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:5, value:PARAM.value )" );
    UI_GuiBridge_setData( 5, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_feet_e ) ) {
    /* GuiBridge::setData( unit:6, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:6, value:PARAM.value )" );
    UI_GuiBridge_setData( 6, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_minPerMile_e ) ) {
    /* GuiBridge::setData( unit:7, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:7, value:PARAM.value )" );
    UI_GuiBridge_setData( 7, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_mph_e ) ) {
    /* GuiBridge::setData( unit:8, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:8, value:PARAM.value )" );
    UI_GuiBridge_setData( 8, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_bpm_e ) ) {
    /* GuiBridge::setData( unit:9, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:9, value:PARAM.value )" );
    UI_GuiBridge_setData( 9, p_value );
  }
  else if ( ( p_unit == GPSWatch_Unit_laps_e ) ) {
    /* GuiBridge::setData( unit:10, value:PARAM.value ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setData( unit:10, value:PARAM.value )" );
    UI_GuiBridge_setData( 10, p_value );
  }
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * To Provider Message:  setIndicator
 */
void
UI_UI_setIndicator( const GPSWatch_Indicator_t p_indicator )
{
  /* IF ( ( PARAM.indicator == Blank ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( PARAM.indicator == Blank ) )" );
  if ( ( p_indicator == GPSWatch_Indicator_Blank_e ) ) {
    /* GuiBridge::setIndicator( value:0 ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setIndicator( value:0 )" );
    UI_GuiBridge_setIndicator( 0 );
  }
  else if ( ( p_indicator == GPSWatch_Indicator_Down_e ) ) {
    /* GuiBridge::setIndicator( value:1 ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setIndicator( value:1 )" );
    UI_GuiBridge_setIndicator( 1 );
  }
  else if ( ( p_indicator == GPSWatch_Indicator_Flat_e ) ) {
    /* GuiBridge::setIndicator( value:2 ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setIndicator( value:2 )" );
    UI_GuiBridge_setIndicator( 2 );
  }
  else if ( ( p_indicator == GPSWatch_Indicator_Up_e ) ) {
    /* GuiBridge::setIndicator( value:3 ) */
    XTUML_OAL_STMT_TRACE( 2, "GuiBridge::setIndicator( value:3 )" );
    UI_GuiBridge_setIndicator( 3 );
  }
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * From Provider Message:  setTargetPressed
 */
void
UI_UI_setTargetPressed()
{
  Tracking_UI_setTargetPressed();
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * To Provider Message:  setTime
 */
void
UI_UI_setTime( const i_t p_time )
{
  /* GuiBridge::setTime( time:PARAM.time ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::setTime( time:PARAM.time )" );
  UI_GuiBridge_setTime( p_time );
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * From Provider Message:  startStopPressed
 */
void
UI_UI_startStopPressed()
{
  Tracking_UI_startStopPressed();
}

/*
 * Interface:  UI
 * Provided Port:  UI
 * To Provider Message:  startTest
 */
void
UI_UI_startTest()
{
  /* GENERATE TestCase2:start(iterations:2) TO TestCase CREATOR */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE TestCase2:start(iterations:2) TO TestCase CREATOR" );
  { UI_TestCaseevent2 * e = (UI_TestCaseevent2 *) Escher_NewxtUMLEvent( 0, &UI_TestCaseevent2c );
    e->p_iterations = 2;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  RunTestCase
 */
void
UI_RunTestCase()
{
  /* TestCase::execute() */
  XTUML_OAL_STMT_TRACE( 1, "TestCase::execute()" );
  UI_TestCase_op_execute();

}

/*
 * Domain Function:  createGoals_1
 */
void
UI_createGoals_1()
{
  /* SEND UI::newGoalSpec(criteriaType:Pace, maximum:8.0, minimum:2.0, sequenceNumber:1, span:150.0, spanType:Distance) */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::newGoalSpec(criteriaType:Pace, maximum:8.0, minimum:2.0, sequenceNumber:1, span:150.0, spanType:Distance)" );
  UI_UI_newGoalSpec( GPSWatch_GoalCriteria_Pace_e, 8.0, 2.0, 1, 150.0, GPSWatch_GoalSpan_Distance_e );
  /* SEND UI::newGoalSpec(criteriaType:HeartRate, maximum:80.0, minimum:60.0, sequenceNumber:2, span:10, spanType:Time) */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::newGoalSpec(criteriaType:HeartRate, maximum:80.0, minimum:60.0, sequenceNumber:2, span:10, spanType:Time)" );
  UI_UI_newGoalSpec( GPSWatch_GoalCriteria_HeartRate_e, 80.0, 60.0, 2, 10, GPSWatch_GoalSpan_Time_e );
  /* SEND UI::newGoalSpec(criteriaType:Pace, maximum:6.0, minimum:5.0, sequenceNumber:3, span:15, spanType:Time) */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::newGoalSpec(criteriaType:Pace, maximum:6.0, minimum:5.0, sequenceNumber:3, span:15, spanType:Time)" );
  UI_UI_newGoalSpec( GPSWatch_GoalCriteria_Pace_e, 6.0, 5.0, 3, 15, GPSWatch_GoalSpan_Time_e );
  /* SEND UI::newGoalSpec(criteriaType:Pace, maximum:2.0, minimum:1.0, sequenceNumber:4, span:15, spanType:Time) */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::newGoalSpec(criteriaType:Pace, maximum:2.0, minimum:1.0, sequenceNumber:4, span:15, spanType:Time)" );
  UI_UI_newGoalSpec( GPSWatch_GoalCriteria_Pace_e, 2.0, 1.0, 4, 15, GPSWatch_GoalSpan_Time_e );

}

/*
 * Domain Function:  init
 */
void
UI_init()
{
  /* GuiBridge::connect(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::connect(  )" );
  UI_GuiBridge_connect();

}

/*
 * Domain Function:  sendLapResetPressed
 */
void
UI_sendLapResetPressed()
{
  /* SEND UI::lapResetPressed() */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::lapResetPressed()" );
  UI_UI_lapResetPressed();

}

/*
 * Domain Function:  sendLightPressed
 */
void
UI_sendLightPressed()
{
  /* SEND UI::lightPressed() */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::lightPressed()" );
  UI_UI_lightPressed();

}

/*
 * Domain Function:  sendModePressed
 */
void
UI_sendModePressed()
{
  /* SEND UI::modePressed() */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::modePressed()" );
  UI_UI_modePressed();

}

/*
 * Domain Function:  sendStartStopPressed
 */
void
UI_sendStartStopPressed()
{
  /* SEND UI::startStopPressed() */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::startStopPressed()" );
  UI_UI_startStopPressed();

}

/*
 * Domain Function:  sendTargetPressed
 */
void
UI_sendTargetPressed()
{
  /* SEND UI::setTargetPressed() */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::setTargetPressed()" );
  UI_UI_setTargetPressed();

}

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const UI_class_info[ UI_MAX_CLASS_NUMBERS ] = {
  &pG_UI_UI_extent,
  &pG_UI_TestCase_extent,
  0
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t UI_EventDispatcher[ UI_STATE_MODELS ] = {
  UI_class_dispatchers
};

void UI_execute_initialization()
{
  /*
   * Initialization Function:  init
   * Component:  UI
   */
  UI_init();

}
