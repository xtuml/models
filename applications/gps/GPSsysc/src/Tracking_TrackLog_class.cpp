/*----------------------------------------------------------------------------
 * File:  Tracking_TrackLog_class.cpp
 *
 * Class:       TrackLog  (TrackLog)
 * Component:   Tracking
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSsysc_sys_types.h"
#include "Tracking.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"

/*
 * instance operation:  addTrackPoint
 */
void
Tracking_TrackLog::Tracking_TrackLog_op_addTrackPoint( Tracking_TrackLog * self, Tracking * thismodule, GPSsysc_sdt_Location p_location)
{
  Tracking_WorkoutTimer * v_workoutTimer = 0; /* workoutTimer (WorkoutTimer) */
 Tracking_TrackPoint * v_trackPoint; Tracking_TrackPoint * v_firstPoint = 0; /* firstPoint (TrackPoint) */
 Tracking_TrackPoint * v_lastPoint = 0; /* lastPoint (TrackPoint) */
 r4_t v_distance; 
  /* SELECT one workoutTimer RELATED BY self->WorkoutTimer[R4] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one workoutTimer RELATED BY self->WorkoutTimer[R4]" );
  v_workoutTimer = self->WorkoutTimer_R4;
  /* CREATE OBJECT INSTANCE trackPoint OF TrackPoint */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE trackPoint OF TrackPoint" );
  v_trackPoint = (Tracking_TrackPoint *) thismodule->Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_TrackPoint_CLASS_NUMBER );
  /* ASSIGN trackPoint.time = workoutTimer.time */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN trackPoint.time = workoutTimer.time" );
  v_trackPoint->time = v_workoutTimer->time;
  /* ASSIGN trackPoint.longitude = PARAM.location.longitude */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN trackPoint.longitude = PARAM.location.longitude" );
  v_trackPoint->longitude = p_location.longitude;
  /* ASSIGN trackPoint.latitude = PARAM.location.latitude */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN trackPoint.latitude = PARAM.location.latitude" );
  v_trackPoint->latitude = p_location.latitude;
  /* ASSIGN trackPoint.speed = PARAM.location.speed */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN trackPoint.speed = PARAM.location.speed" );
  v_trackPoint->speed = p_location.speed;
  /* SELECT one firstPoint RELATED BY self->TrackPoint[R1] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one firstPoint RELATED BY self->TrackPoint[R1]" );
  v_firstPoint = self->TrackPoint_R1;
  /* SELECT one lastPoint RELATED BY self->TrackPoint[R3] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one lastPoint RELATED BY self->TrackPoint[R3]" );
  v_lastPoint = self->TrackPoint_R3;
  /* IF ( empty firstPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( empty firstPoint )" );
  if ( ( 0 == v_firstPoint ) ) {
    /* RELATE self TO trackPoint ACROSS R1 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE self TO trackPoint ACROSS R1" );
    Tracking_TrackLog::Tracking_TrackLog_R1_Link( v_trackPoint, self, thismodule );
    /* RELATE self TO trackPoint ACROSS R3 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE self TO trackPoint ACROSS R3" );
    Tracking_TrackPoint::Tracking_TrackPoint_R3_Link( self, v_trackPoint, thismodule );
  }
  else {
    /* UNRELATE self FROM lastPoint ACROSS R3 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM lastPoint ACROSS R3" );
    Tracking_TrackPoint::Tracking_TrackPoint_R3_Unlink( self, v_lastPoint, thismodule );
    /* RELATE self TO trackPoint ACROSS R3 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE self TO trackPoint ACROSS R3" );
    Tracking_TrackPoint::Tracking_TrackPoint_R3_Link( self, v_trackPoint, thismodule );
    /* RELATE lastPoint TO trackPoint ACROSS R2 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE lastPoint TO trackPoint ACROSS R2" );
    Tracking_TrackPoint::Tracking_TrackPoint_R2_Link_follows( v_lastPoint, v_trackPoint, thismodule );
  }
  /* ASSIGN distance = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN distance = 0.0" );
  v_distance = 0.0;
  /* IF ( self.hasLocation ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( self.hasLocation )" );
  if ( self->hasLocation ) {
    /* ASSIGN distance = UTIL::getDistance(fromLocation:self.lastKnownLocation, toLocation:PARAM.location) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN distance = UTIL::getDistance(fromLocation:self.lastKnownLocation, toLocation:PARAM.location)" );
    v_distance = thismodule->UTIL->LocationUtil_getDistance( self->lastKnownLocation, p_location );
  }
  /* ASSIGN self.hasLocation = TRUE */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.hasLocation = TRUE" );
  self->hasLocation = TRUE;
  /* ASSIGN self.lastKnownLocation = PARAM.location */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.lastKnownLocation = PARAM.location" );
  self->lastKnownLocation = p_location;
  /* ASSIGN self.distance = ( self.distance + distance ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.distance = ( self.distance + distance )" );
  self->distance = ( self->distance + v_distance );
  /* ASSIGN self.currentSpeed = PARAM.location.speed */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.currentSpeed = PARAM.location.speed" );
  self->currentSpeed = p_location.speed;
  /* GENERATE Display_A2:refresh() TO Display CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE Display_A2:refresh() TO Display CLASS" );
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &Tracking_Display_CBevent2c );
  e->sc_e = &(thismodule->sc_Tracking_Display_CBevent2);
    thismodule->Escher_SendEvent( e );
  }


}

/*
 * instance operation:  clearTrackPoints
 */
void
Tracking_TrackLog::Tracking_TrackLog_op_clearTrackPoints( Tracking_TrackLog * self, Tracking * thismodule)
{
  Tracking_TrackPoint * v_nextPoint = 0; /* nextPoint (TrackPoint) */
 Tracking_TrackPoint * v_lastPoint = 0; /* lastPoint (TrackPoint) */
 
  /* SELECT one nextPoint RELATED BY self->TrackPoint[R1] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one nextPoint RELATED BY self->TrackPoint[R1]" );
  v_nextPoint = self->TrackPoint_R1;
  /* SELECT one lastPoint RELATED BY self->TrackPoint[R3] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one lastPoint RELATED BY self->TrackPoint[R3]" );
  v_lastPoint = self->TrackPoint_R3;
  /* IF ( not empty lastPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty lastPoint )" );
  if ( !( 0 == v_lastPoint ) ) {
    /* UNRELATE self FROM lastPoint ACROSS R3 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM lastPoint ACROSS R3" );
    Tracking_TrackPoint::Tracking_TrackPoint_R3_Unlink( self, v_lastPoint, thismodule );
  }
  /* IF ( not empty nextPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty nextPoint )" );
  if ( !( 0 == v_nextPoint ) ) {
    /* UNRELATE self FROM nextPoint ACROSS R1 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM nextPoint ACROSS R1" );
    Tracking_TrackLog::Tracking_TrackLog_R1_Unlink( v_nextPoint, self, thismodule );
  }
  /* WHILE ( not empty nextPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "WHILE ( not empty nextPoint )" );
  while ( !( 0 == v_nextPoint ) ) {
    Tracking_TrackPoint * v_prevPoint; 
    /* ASSIGN prevPoint = nextPoint */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN prevPoint = nextPoint" );
    v_prevPoint = v_nextPoint;
    /* SELECT one nextPoint RELATED BY nextPoint->TrackPoint[R2.follows] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one nextPoint RELATED BY nextPoint->TrackPoint[R2.follows]" );
    v_nextPoint = v_nextPoint->TrackPoint_R2_follows;
    /* IF ( not_empty nextPoint ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( not_empty nextPoint )" );
    if ( ( 0 != v_nextPoint ) ) {
      /* UNRELATE prevPoint FROM nextPoint ACROSS R2 */
      XTUML_OAL_STMT_TRACE( 3, "UNRELATE prevPoint FROM nextPoint ACROSS R2" );
      Tracking_TrackPoint::Tracking_TrackPoint_R2_Unlink_follows( v_prevPoint, v_nextPoint, thismodule );
    }
    /* DELETE OBJECT INSTANCE prevPoint */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE prevPoint" );
    if ( 0 == v_prevPoint ) {
      XTUML_EMPTY_HANDLE_TRACE( "TrackPoint", "Escher_DeleteInstance" );
    }
    thismodule->Escher_DeleteInstance( (Escher_iHandle_t) v_prevPoint, Tracking_DOMAIN_ID, Tracking_TrackPoint_CLASS_NUMBER );
  }

}

/*
 * instance operation:  addLapMarker
 */
void
Tracking_TrackLog::Tracking_TrackLog_op_addLapMarker( Tracking_TrackLog * self, Tracking * thismodule)
{
  Tracking_WorkoutTimer * v_timer = 0; /* timer (WorkoutTimer) */
 Tracking_LapMarker * v_lapMarker; 
  /* SELECT one timer RELATED BY self->WorkoutTimer[R4] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one timer RELATED BY self->WorkoutTimer[R4]" );
  v_timer = self->WorkoutTimer_R4;
  /* CREATE OBJECT INSTANCE lapMarker OF LapMarker */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE lapMarker OF LapMarker" );
  v_lapMarker = (Tracking_LapMarker *) thismodule->Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_LapMarker_CLASS_NUMBER );
  /* ASSIGN lapMarker.lapTime = timer.time */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN lapMarker.lapTime = timer.time" );
  v_lapMarker->lapTime = v_timer->time;
  /* RELATE self TO lapMarker ACROSS R5 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE self TO lapMarker ACROSS R5" );
  Tracking_LapMarker::Tracking_LapMarker_R5_Link( self, v_lapMarker, thismodule );
  /* GENERATE Display_A2:refresh() TO Display CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE Display_A2:refresh() TO Display CLASS" );
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &Tracking_Display_CBevent2c );
  e->sc_e = &(thismodule->sc_Tracking_Display_CBevent2);
    thismodule->Escher_SendEvent( e );
  }


}

/*
 * instance operation:  clearLapMarkers
 */
void
Tracking_TrackLog::Tracking_TrackLog_op_clearLapMarkers( Tracking_TrackLog * self, Tracking * thismodule)
{
  sys_sets::Escher_ObjectSet_s v_lapMarkers_space={0}; sys_sets::Escher_ObjectSet_s * v_lapMarkers = &v_lapMarkers_space; /* lapMarkers (LapMarker) */
 Tracking_LapMarker * v_lapMarker; 
  /* SELECT many lapMarkers RELATED BY self->LapMarker[R5] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many lapMarkers RELATED BY self->LapMarker[R5]" );
  thismodule->Escher_ClearSet( v_lapMarkers );
  if ( 0 != self ) {
    thismodule->Escher_CopySet( v_lapMarkers, &self->LapMarker_R5 );
  }
  /* FOR EACH lapMarker IN lapMarkers */
  XTUML_OAL_STMT_TRACE( 1, "FOR EACH lapMarker IN lapMarkers" );
  { sys_sets::Escher_Iterator_s iter1;
  Tracking_LapMarker * Tracking_LapMarkeriter1;
  Escher_IteratorReset( &iter1, v_lapMarkers );
  while ( (Tracking_LapMarkeriter1 = (Tracking_LapMarker *)thismodule->Escher_IteratorNext( &iter1 )) != 0 ) {
    v_lapMarker = Tracking_LapMarkeriter1; {
    /* UNRELATE self FROM lapMarker ACROSS R5 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM lapMarker ACROSS R5" );
    Tracking_LapMarker::Tracking_LapMarker_R5_Unlink( self, v_lapMarker, thismodule );
    /* DELETE OBJECT INSTANCE lapMarker */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE lapMarker" );
    if ( 0 == v_lapMarker ) {
      XTUML_EMPTY_HANDLE_TRACE( "LapMarker", "Escher_DeleteInstance" );
    }
    thismodule->Escher_DeleteInstance( (Escher_iHandle_t) v_lapMarker, Tracking_DOMAIN_ID, Tracking_LapMarker_CLASS_NUMBER );
  }}}
    thismodule->Escher_ClearSet( v_lapMarkers ); /* lapMarkers (LapMarker) */

}

/*
 * instance operation:  addHeartRateSample
 */
void
Tracking_TrackLog::Tracking_TrackLog_op_addHeartRateSample( Tracking_TrackLog * self, Tracking * thismodule, r4_t p_heartRate)
{
  Tracking_HeartRateSample * v_sample; 
  /* CREATE OBJECT INSTANCE sample OF HeartRateSample */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE sample OF HeartRateSample" );
  v_sample = (Tracking_HeartRateSample *) thismodule->Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_HeartRateSample_CLASS_NUMBER );
  /* ASSIGN sample.heartRate = PARAM.heartRate */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN sample.heartRate = PARAM.heartRate" );
  v_sample->heartRate = p_heartRate;
  /* RELATE self TO sample ACROSS R6 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE self TO sample ACROSS R6" );
  Tracking_HeartRateSample::Tracking_HeartRateSample_R6_Link( self, v_sample, thismodule );
  /* ASSIGN self.currentHeartRate = PARAM.heartRate */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.currentHeartRate = PARAM.heartRate" );
  self->currentHeartRate = p_heartRate;
  /* GENERATE Display_A2:refresh() TO Display CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE Display_A2:refresh() TO Display CLASS" );
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &Tracking_Display_CBevent2c );
  e->sc_e = &(thismodule->sc_Tracking_Display_CBevent2);
    thismodule->Escher_SendEvent( e );
  }


}

/*
 * instance operation:  clearHeartRateSamples
 */
void
Tracking_TrackLog::Tracking_TrackLog_op_clearHeartRateSamples( Tracking_TrackLog * self, Tracking * thismodule)
{
  sys_sets::Escher_ObjectSet_s v_samples_space={0}; sys_sets::Escher_ObjectSet_s * v_samples = &v_samples_space; /* samples (HeartRateSample) */
 Tracking_HeartRateSample * v_sample; 
  /* SELECT many samples RELATED BY self->HeartRateSample[R6] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many samples RELATED BY self->HeartRateSample[R6]" );
  thismodule->Escher_ClearSet( v_samples );
  if ( 0 != self ) {
    thismodule->Escher_CopySet( v_samples, &self->HeartRateSample_R6 );
  }
  /* FOR EACH sample IN samples */
  XTUML_OAL_STMT_TRACE( 1, "FOR EACH sample IN samples" );
  { sys_sets::Escher_Iterator_s iter2;
  Tracking_HeartRateSample * Tracking_HeartRateSampleiter2;
  Escher_IteratorReset( &iter2, v_samples );
  while ( (Tracking_HeartRateSampleiter2 = (Tracking_HeartRateSample *)thismodule->Escher_IteratorNext( &iter2 )) != 0 ) {
    v_sample = Tracking_HeartRateSampleiter2; {
    /* UNRELATE self FROM sample ACROSS R6 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM sample ACROSS R6" );
    Tracking_HeartRateSample::Tracking_HeartRateSample_R6_Unlink( self, v_sample, thismodule );
    /* DELETE OBJECT INSTANCE sample */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE sample" );
    if ( 0 == v_sample ) {
      XTUML_EMPTY_HANDLE_TRACE( "HeartRateSample", "Escher_DeleteInstance" );
    }
    thismodule->Escher_DeleteInstance( (Escher_iHandle_t) v_sample, Tracking_DOMAIN_ID, Tracking_HeartRateSample_CLASS_NUMBER );
  }}}
    thismodule->Escher_ClearSet( v_samples ); /* samples (HeartRateSample) */

}

/*
 * instance operation:  init
 */
void
Tracking_TrackLog::Tracking_TrackLog_op_init( Tracking_TrackLog * self, Tracking * thismodule)
{
  /* ASSIGN self.startTime = TIM::current_clock() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.startTime = TIM::current_clock()" );
  self->startTime = thismodule->tim->current_clock();
  /* ASSIGN self.distance = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.distance = 0.0" );
  self->distance = 0.0;
  /* ASSIGN self.currentHeartRate = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.currentHeartRate = 0.0" );
  self->currentHeartRate = 0.0;
  /* ASSIGN self.currentSpeed = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.currentSpeed = 0.0" );
  self->currentSpeed = 0.0;
  /* ASSIGN self.hasLocation = FALSE */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.hasLocation = FALSE" );
  self->hasLocation = FALSE;

}


/*
 * RELATE TrackPoint TO TrackLog ACROSS R1
 */
void
Tracking_TrackLog::Tracking_TrackLog_R1_Link( Tracking_TrackPoint * part, Tracking_TrackLog * form, Tracking * thismodule )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackLog", "Tracking_TrackLog::Tracking_TrackLog_R1_Link" );
    return;
  }
  form->TrackPoint_R1 = part;
  /* Note:  TrackPoint->TrackLog[R1] not navigated */
}

/*
 * UNRELATE TrackPoint FROM TrackLog ACROSS R1
 */
void
Tracking_TrackLog::Tracking_TrackLog_R1_Unlink( Tracking_TrackPoint * part, Tracking_TrackLog * form, Tracking * thismodule )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackLog", "Tracking_TrackLog::Tracking_TrackLog_R1_Unlink" );
    return;
  }
  form->TrackPoint_R1 = 0;
  /* Note:  TrackPoint->TrackLog[R1] not navigated */
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      TrackLog  (TrackLog)
 * Component:  Tracking
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static sys_sets::Escher_SetElement_s Tracking_TrackLog_container[ Tracking_TrackLog_MAX_EXTENT_SIZE ];
static Tracking_TrackLog Tracking_TrackLog_instances[ Tracking_TrackLog_MAX_EXTENT_SIZE ];
sys_sets::Escher_Extent_t pG_Tracking_TrackLog_extent = {
  {0}, {0}, &Tracking_TrackLog_container[ 0 ],
  (Escher_iHandle_t) &Tracking_TrackLog_instances,
  sizeof( Tracking_TrackLog ), 0, Tracking_TrackLog_MAX_EXTENT_SIZE
  };
/*
 * Mathematically Dependent Attribute:  currentPace
 */
r4_t
Tracking_TrackLog_MDA_currentPace( Tracking_TrackLog * self )
{
  /* IF ( ( self.currentSpeed != 0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( self.currentSpeed != 0 ) )" );
  if ( ( self->currentSpeed != 0 ) ) {
    /* ASSIGN self.currentPace = ( 60.0 / self.currentSpeed ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.currentPace = ( 60.0 / self.currentSpeed )" );
    self->currentPace = ( 60.0 / self->currentSpeed );
  }
  else {
    /* ASSIGN self.currentPace = 0.0 */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.currentPace = 0.0" );
    self->currentPace = 0.0;
  }

  return self->currentPace;
}


