/*----------------------------------------------------------------------------
 * File:  Tracking.c
 *
 * UML Component Port Messages
 * Component/Module Name:  Tracking
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 The Tracking component encapsulates the entire application software. This is the 
only component in the system from which code will be generated for the final 
product.
 */

#include "GPSWatch_sys_types.h"
#include "Tracking.h"
#include "MATH_bridge.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "UI.h"
#include "Location.h"
#include "HeartRateMonitor.h"
#include "Tracking_classes.h"

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  lapResetPressed
 */
void
Tracking_UI_lapResetPressed()
{
  Tracking_WorkoutTimer * workoutTimer=0;
  /* SELECT any workoutTimer FROM INSTANCES OF WorkoutTimer */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any workoutTimer FROM INSTANCES OF WorkoutTimer" );
  workoutTimer = (Tracking_WorkoutTimer *) Escher_SetGetAny( &pG_Tracking_WorkoutTimer_extent.active );
  /* IF ( not empty workoutTimer ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty workoutTimer )" );
  if ( !( 0 == workoutTimer ) ) {
    /* GENERATE WorkoutTimer2:lapResetPressed() TO workoutTimer */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE WorkoutTimer2:lapResetPressed() TO workoutTimer" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( workoutTimer, &Tracking_WorkoutTimerevent2c );
      Escher_SendEvent( e );
    }
  }
  else {
    /* LOG::LogFailure( message:Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do. ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do. )" );
    LOG_LogFailure( "Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do." );
  }
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  lightPressed
 */
void
Tracking_UI_lightPressed()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  modePressed
 */
void
Tracking_UI_modePressed()
{
  Tracking_WorkoutSession * session=0;
  /* SELECT any session FROM INSTANCES OF WorkoutSession */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any session FROM INSTANCES OF WorkoutSession" );
  session = (Tracking_WorkoutSession *) Escher_SetGetAny( &pG_Tracking_WorkoutSession_extent.active );
  /* IF ( not empty session ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty session )" );
  if ( !( 0 == session ) ) {
    Tracking_Display * display=0;
    /* SELECT one display RELATED BY session->Display[R7.current status indicated on] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one display RELATED BY session->Display[R7.current status indicated on]" );
    display = ( 0 != session ) ? session->Display_R7_current_status_indicated_on : 0;
    /* GENERATE Display1:modeChange() TO display */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE Display1:modeChange() TO display" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( display, &Tracking_Displayevent1c );
      Escher_SendEvent( e );
    }
  }
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  newGoalSpec
 */
void
Tracking_UI_newGoalSpec( const GPSWatch_GoalCriteria_t p_criteriaType, const r_t p_maximum, const r_t p_minimum, const i_t p_sequenceNumber, const r_t p_span, const GPSWatch_GoalSpan_t p_spanType )
{
  Tracking_WorkoutSession * session=0;
  /* SELECT any session FROM INSTANCES OF WorkoutSession */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any session FROM INSTANCES OF WorkoutSession" );
  session = (Tracking_WorkoutSession *) Escher_SetGetAny( &pG_Tracking_WorkoutSession_extent.active );
  /* IF ( not empty session ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty session )" );
  if ( !( 0 == session ) ) {
    Tracking_GoalSpec * goalSpec;
    /* CREATE OBJECT INSTANCE goalSpec OF GoalSpec */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE goalSpec OF GoalSpec" );
    goalSpec = (Tracking_GoalSpec *) Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_GoalSpec_CLASS_NUMBER );
    /* ASSIGN goalSpec.sequenceNumber = PARAM.sequenceNumber */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goalSpec.sequenceNumber = PARAM.sequenceNumber" );
    goalSpec->sequenceNumber = p_sequenceNumber;
    /* ASSIGN goalSpec.minimum = PARAM.minimum */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goalSpec.minimum = PARAM.minimum" );
    goalSpec->minimum = p_minimum;
    /* ASSIGN goalSpec.maximum = PARAM.maximum */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goalSpec.maximum = PARAM.maximum" );
    goalSpec->maximum = p_maximum;
    /* ASSIGN goalSpec.span = PARAM.span */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goalSpec.span = PARAM.span" );
    goalSpec->span = p_span;
    /* ASSIGN goalSpec.criteriaType = PARAM.criteriaType */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goalSpec.criteriaType = PARAM.criteriaType" );
    goalSpec->criteriaType = p_criteriaType;
    /* ASSIGN goalSpec.spanType = PARAM.spanType */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goalSpec.spanType = PARAM.spanType" );
    goalSpec->spanType = p_spanType;
    /* RELATE goalSpec TO session ACROSS R10 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE goalSpec TO session ACROSS R10" );
    Tracking_GoalSpec_R10_Link_includes( session, goalSpec );
  }
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  setData
 */
void
Tracking_UI_setData( const GPSWatch_Unit_t p_unit, const r_t p_value )
{
  UI_UI_setData(  p_unit, p_value );
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  setIndicator
 */
void
Tracking_UI_setIndicator( const GPSWatch_Indicator_t p_indicator )
{
  UI_UI_setIndicator(  p_indicator );
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  setTargetPressed
 */
void
Tracking_UI_setTargetPressed()
{
  /* Goal::nextGoal() */
  XTUML_OAL_STMT_TRACE( 1, "Goal::nextGoal()" );
  Tracking_Goal_op_nextGoal();
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  setTime
 */
void
Tracking_UI_setTime( const i_t p_time )
{
  UI_UI_setTime(  p_time );
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  startStopPressed
 */
void
Tracking_UI_startStopPressed()
{
  Tracking_WorkoutTimer * workoutTimer=0;
  /* WorkoutSession::create() */
  XTUML_OAL_STMT_TRACE( 1, "WorkoutSession::create()" );
  Tracking_WorkoutSession_op_create();
  /* SELECT any workoutTimer FROM INSTANCES OF WorkoutTimer */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any workoutTimer FROM INSTANCES OF WorkoutTimer" );
  workoutTimer = (Tracking_WorkoutTimer *) Escher_SetGetAny( &pG_Tracking_WorkoutTimer_extent.active );
  /* GENERATE WorkoutTimer1:startStopPressed() TO workoutTimer */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE WorkoutTimer1:startStopPressed() TO workoutTimer" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( workoutTimer, &Tracking_WorkoutTimerevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  startTest
 */
void
Tracking_UI_startTest()
{
  UI_UI_startTest();
}

/*
 * Interface:  LocationProvider
 * Required Port:  LOC
 * To Provider Message:  getLocation
 */
void
Tracking_LOC_getLocation( r_t * p_latitude, r_t * p_longitude )
{
  Location_LOC_getLocation(  p_latitude, p_longitude );
}

/*
 * Interface:  LocationProvider
 * Required Port:  LOC
 * To Provider Message:  registerListener
 */
void
Tracking_LOC_registerListener()
{
  Location_LOC_registerListener();
}

/*
 * Interface:  LocationProvider
 * Required Port:  LOC
 * To Provider Message:  unregisterListener
 */
void
Tracking_LOC_unregisterListener()
{
  Location_LOC_unregisterListener();
}

/*
 * Interface:  HeartRateProvider
 * Required Port:  HR
 * From Provider Message:  heartRateChanged
 */
void
Tracking_HR_heartRateChanged( const i_t p_heartRate )
{
  Tracking_WorkoutSession * session=0;
  /* SELECT any session FROM INSTANCES OF WorkoutSession */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any session FROM INSTANCES OF WorkoutSession" );
  session = (Tracking_WorkoutSession *) Escher_SetGetAny( &pG_Tracking_WorkoutSession_extent.active );
  /* IF ( not empty session ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty session )" );
  if ( !( 0 == session ) ) {
    /* session.addHeartRateSample( heartRate:PARAM.heartRate ) */
    XTUML_OAL_STMT_TRACE( 2, "session.addHeartRateSample( heartRate:PARAM.heartRate )" );
    Tracking_WorkoutSession_op_addHeartRateSample( session,  p_heartRate );
  }
}

/*
 * Interface:  HeartRateProvider
 * Required Port:  HR
 * To Provider Message:  registerListener
 */
void
Tracking_HR_registerListener()
{
  HeartRateMonitor_HR_registerListener();
}

/*
 * Interface:  HeartRateProvider
 * Required Port:  HR
 * To Provider Message:  unregisterListener
 */
void
Tracking_HR_unregisterListener()
{
  HeartRateMonitor_HR_unregisterListener();
}

/*
 * Interface:  LocationUtil
 * Required Port:  UTIL
 * To Provider Message:  getDistance
 */
r_t
Tracking_UTIL_getDistance( const r_t p_fromLat, const r_t p_fromLong, const r_t p_toLat, const r_t p_toLong )
{
return   Location_UTIL_getDistance(  p_fromLat, p_fromLong, p_toLat, p_toLong );
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  GoalTest_1
 */
void
Tracking_GoalTest_1()
{
  /* ::Initialize(  ) */
  XTUML_OAL_STMT_TRACE( 1, "::Initialize(  )" );
  Tracking_Initialize();
  /* SEND UI::newGoalSpec(criteriaType:Pace, maximum:8.0, minimum:2.0, sequenceNumber:1, span:150.0, spanType:Distance) */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::newGoalSpec(criteriaType:Pace, maximum:8.0, minimum:2.0, sequenceNumber:1, span:150.0, spanType:Distance)" );
  Tracking_UI_newGoalSpec( GPSWatch_GoalCriteria_Pace_e, 8.0, 2.0, 1, 150.0, GPSWatch_GoalSpan_Distance_e );
  /* SEND UI::newGoalSpec(criteriaType:HeartRate, maximum:80.0, minimum:60.0, sequenceNumber:2, span:10, spanType:Time) */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::newGoalSpec(criteriaType:HeartRate, maximum:80.0, minimum:60.0, sequenceNumber:2, span:10, spanType:Time)" );
  Tracking_UI_newGoalSpec( GPSWatch_GoalCriteria_HeartRate_e, 80.0, 60.0, 2, 10, GPSWatch_GoalSpan_Time_e );
  /* SEND UI::newGoalSpec(criteriaType:Pace, maximum:6.0, minimum:5.0, sequenceNumber:3, span:15, spanType:Time) */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::newGoalSpec(criteriaType:Pace, maximum:6.0, minimum:5.0, sequenceNumber:3, span:15, spanType:Time)" );
  Tracking_UI_newGoalSpec( GPSWatch_GoalCriteria_Pace_e, 6.0, 5.0, 3, 15, GPSWatch_GoalSpan_Time_e );
  /* SEND UI::newGoalSpec(criteriaType:Pace, maximum:2.0, minimum:1.0, sequenceNumber:4, span:15, spanType:Time) */
  XTUML_OAL_STMT_TRACE( 1, "SEND UI::newGoalSpec(criteriaType:Pace, maximum:2.0, minimum:1.0, sequenceNumber:4, span:15, spanType:Time)" );
  Tracking_UI_newGoalSpec( GPSWatch_GoalCriteria_Pace_e, 2.0, 1.0, 4, 15, GPSWatch_GoalSpan_Time_e );

}

/*
 * Domain Function:  Initialize
 */
void
Tracking_Initialize()
{
  /* WorkoutSession::create() */
  XTUML_OAL_STMT_TRACE( 1, "WorkoutSession::create()" );
  Tracking_WorkoutSession_op_create();

}

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const Tracking_class_info[ Tracking_MAX_CLASS_NUMBERS ] = {
  &pG_Tracking_WorkoutTimer_extent,
  &pG_Tracking_Display_extent,
  &pG_Tracking_Goal_extent,
  &pG_Tracking_Achievement_extent,
  &pG_Tracking_TrackLog_extent,
  &pG_Tracking_TrackPoint_extent,
  &pG_Tracking_LapMarker_extent,
  &pG_Tracking_HeartRateSample_extent,
  &pG_Tracking_WorkoutSession_extent,
  &pG_Tracking_GoalSpec_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t Tracking_EventDispatcher[ Tracking_STATE_MODELS ] = {
  Tracking_class_dispatchers
};

void Tracking_execute_initialization()
{
  /*
   * Initialization Function:  GoalTest_1
   * Component:  Tracking
   */
  Tracking_GoalTest_1();

}
