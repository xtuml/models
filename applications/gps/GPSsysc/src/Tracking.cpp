/*----------------------------------------------------------------------------
 * File:  Tracking.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  Tracking
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/
/*
 The Tracking component encapsulates the entire application software. This is the 
only component in the system from which code will be generated for the final 
product.
 */

#include "Tracking.h"

/*
 * Interface:  LocationProvider
 * Required Port:  LOC
 * From Provider Message:  locationUpdate
 */
void
Tracking::LocationProvider_locationUpdate( GPSsysc_sdt_Location p_locationUpdate_location)
{
  Tracking * thismodule = this;
  /* Required Port:  LOC */
  Tracking_TrackLog * v_trackLog; 
  /* LOG::LogInfo( message:'location updated: ' ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:'location updated: ' )" );
  LOG::LogInfo( "location updated: " );
  /* LOG::LogReal( message:'longitude', r:PARAM.locationUpdate_location.longitude ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogReal( message:'longitude', r:PARAM.locationUpdate_location.longitude )" );
  LOG::LogReal( "longitude", p_locationUpdate_location.longitude );
  /* LOG::LogReal( message:'latitude', r:PARAM.locationUpdate_location.latitude ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogReal( message:'latitude', r:PARAM.locationUpdate_location.latitude )" );
  LOG::LogReal( "latitude", p_locationUpdate_location.latitude );
  /* LOG::LogReal( message:'speed', r:PARAM.locationUpdate_location.speed ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogReal( message:'speed', r:PARAM.locationUpdate_location.speed )" );
  LOG::LogReal( "speed", p_locationUpdate_location.speed );
  /* SELECT any trackLog FROM INSTANCES OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any trackLog FROM INSTANCES OF TrackLog" );
  v_trackLog = (Tracking_TrackLog *) Escher_SetGetAny( &pG_Tracking_TrackLog_extent.active );
  /* IF ( not empty trackLog ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty trackLog )" );
  if ( !( 0 == v_trackLog ) ) {
    /* trackLog.addTrackPoint( location:PARAM.locationUpdate_location ) */
    XTUML_OAL_STMT_TRACE( 2, "trackLog.addTrackPoint( location:PARAM.locationUpdate_location )" );
    v_trackLog->Tracking_TrackLog_op_addTrackPoint( v_trackLog,  thismodule,  p_locationUpdate_location );
  }


}

/*
 * Interface:  UIif
 * Required Port:  UIport
 * From Provider Message:  startStopPressed
 */
void
Tracking::UIif_startStopPressed()
{
  Tracking * thismodule = this;
  /* Required Port:  UIport */
  Tracking_WorkoutTimer * v_workoutTimer; 
  /* SELECT any workoutTimer FROM INSTANCES OF WorkoutTimer */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any workoutTimer FROM INSTANCES OF WorkoutTimer" );
  v_workoutTimer = (Tracking_WorkoutTimer *) Escher_SetGetAny( &pG_Tracking_WorkoutTimer_extent.active );
  /* IF ( empty workoutTimer ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( empty workoutTimer )" );
  if ( ( 0 == v_workoutTimer ) ) {
    /* CREATE OBJECT INSTANCE workoutTimer OF WorkoutTimer */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE workoutTimer OF WorkoutTimer" );
    v_workoutTimer = (Tracking_WorkoutTimer *) thismodule->Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_WorkoutTimer_CLASS_NUMBER );
    /* ASSIGN workoutTimer.time = 0 */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN workoutTimer.time = 0" );
    v_workoutTimer->time = 0;
  }
  /* GENERATE WorkoutTimer1:startStopPressed() TO workoutTimer */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE WorkoutTimer1:startStopPressed() TO workoutTimer" );
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( v_workoutTimer, &Tracking_WorkoutTimerevent1c );
  e->sc_e = &(thismodule->sc_Tracking_WorkoutTimerevent1);
    thismodule->Escher_SendEvent( e );
  }


}

/*
 * Interface:  UIif
 * Required Port:  UIport
 * From Provider Message:  lapResetPressed
 */
void
Tracking::UIif_lapResetPressed()
{
  Tracking * thismodule = this;
  /* Required Port:  UIport */
  Tracking_WorkoutTimer * v_workoutTimer; 
  /* SELECT any workoutTimer FROM INSTANCES OF WorkoutTimer */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any workoutTimer FROM INSTANCES OF WorkoutTimer" );
  v_workoutTimer = (Tracking_WorkoutTimer *) Escher_SetGetAny( &pG_Tracking_WorkoutTimer_extent.active );
  /* IF ( not empty workoutTimer ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty workoutTimer )" );
  if ( !( 0 == v_workoutTimer ) ) {
    /* GENERATE WorkoutTimer2:lapResetPressed() TO workoutTimer */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE WorkoutTimer2:lapResetPressed() TO workoutTimer" );
    { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( v_workoutTimer, &Tracking_WorkoutTimerevent2c );
  e->sc_e = &(thismodule->sc_Tracking_WorkoutTimerevent2);
      thismodule->Escher_SendEvent( e );
    }
  }


}

/*
 * Interface:  UIif
 * Required Port:  UIport
 * From Provider Message:  lightPressed
 */
void
Tracking::UIif_lightPressed()
{
  Tracking * thismodule = this;
  /* Required Port:  UIport */


}

/*
 * Interface:  UIif
 * Required Port:  UIport
 * From Provider Message:  modePressed
 */
void
Tracking::UIif_modePressed()
{
  Tracking * thismodule = this;
  /* Required Port:  UIport */
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &Tracking_Display_CBevent1c );
  e->sc_e = &(thismodule->sc_Tracking_Display_CBevent1);
    thismodule->Escher_SendEvent( e );
  }



}

/*
 * Interface:  UIif
 * Required Port:  UIport
 * From Provider Message:  setTargetPressed
 */
void
Tracking::UIif_setTargetPressed()
{
  Tracking * thismodule = this;
  /* Required Port:  UIport */


}

/*
 * Interface:  HeartRateProvider
 * Required Port:  HR
 * From Provider Message:  heartRateChanged
 */
void
Tracking::HeartRateProvider_heartRateChanged( r4_t p_heartRateChanged_heartRate)
{
  Tracking * thismodule = this;
  /* Required Port:  HR */
  Tracking_TrackLog * v_trackLog; 
  /* SELECT any trackLog FROM INSTANCES OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any trackLog FROM INSTANCES OF TrackLog" );
  v_trackLog = (Tracking_TrackLog *) Escher_SetGetAny( &pG_Tracking_TrackLog_extent.active );
  /* IF ( not empty trackLog ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty trackLog )" );
  if ( !( 0 == v_trackLog ) ) {
    /* trackLog.addHeartRateSample( heartRate:PARAM.heartRateChanged_heartRate ) */
    XTUML_OAL_STMT_TRACE( 2, "trackLog.addHeartRateSample( heartRate:PARAM.heartRateChanged_heartRate )" );
    v_trackLog->Tracking_TrackLog_op_addHeartRateSample( v_trackLog,  thismodule,  p_heartRateChanged_heartRate );
  }


}

#if Tracking_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const Tracking::Tracking_class_info[ Tracking_MAX_CLASS_NUMBERS ] = {
  Tracking_CLASS_INFO_INIT
};
#endif


/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
EventTaker_t Tracking::Tracking_EventDispatcher[ Tracking_STATE_MODELS ] = {
  Tracking_class_dispatchers
};
/*
 * UML Domain Functions (Synchronous Services)
 */

// state machine dispatcher process for Display
void Tracking::Tracking_Display_sm()
{
  Tracking * thismodule = this;
  while ( true ) {
    thismodule->ooa_loop( Tracking_DOMAIN_ID, Tracking_Display_CLASS_NUMBER, (void *) this );
    wait();
  }
}
// state machine dispatcher process for WorkoutTimer
void Tracking::Tracking_WorkoutTimer_sm()
{
  Tracking * thismodule = this;
  while ( true ) {
    thismodule->ooa_loop( Tracking_DOMAIN_ID, Tracking_WorkoutTimer_CLASS_NUMBER, (void *) this );
    wait();
  }
}

