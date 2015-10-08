/*----------------------------------------------------------------------------
 * File:  Tracking_TrackLog_class.c
 *
 * Class:       TrackLog  (TrackLog)
 * Component:   Tracking
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "GPSWatch_sys_types.h"
#include "LOG_bridge.h"
#include "MATH_bridge.h"
#include "TIM_bridge.h"
#include "Tracking_classes.h"

/*
 * instance operation:  addTrackPoint
 */
void
Tracking_TrackLog_op_addTrackPoint( Tracking_TrackLog * self)
{
  r_t distance;r_t lastLongitude;r_t lastLatitude;bool isFirstTrackPoint;Tracking_TrackPoint * trackPoint;Tracking_WorkoutSession * session=0;Tracking_TrackPoint * lastPoint=0;Tracking_TrackPoint * firstPoint=0;Tracking_WorkoutTimer * workoutTimer=0;
  /* CREATE OBJECT INSTANCE trackPoint OF TrackPoint */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE trackPoint OF TrackPoint" );
  trackPoint = (Tracking_TrackPoint *) Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_TrackPoint_CLASS_NUMBER );
  /* SELECT one workoutTimer RELATED BY self->WorkoutSession[R4.represents path for]->WorkoutTimer[R8.is timed by] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one workoutTimer RELATED BY self->WorkoutSession[R4.represents path for]->WorkoutTimer[R8.is timed by]" );
  workoutTimer = 0;
  {  if ( 0 != self ) {
  Tracking_WorkoutSession * WorkoutSession_R4_represents_path_for = self->WorkoutSession_R4_represents_path_for;
  if ( 0 != WorkoutSession_R4_represents_path_for ) {
  workoutTimer = WorkoutSession_R4_represents_path_for->WorkoutTimer_R8_is_timed_by;
}}}
  /* ASSIGN trackPoint.time = workoutTimer.time */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN trackPoint.time = workoutTimer.time" );
  trackPoint->time = workoutTimer->time;
  /* LOC::getLocation(latitude:trackPoint.latitude, longitude:trackPoint.longitude) */
  XTUML_OAL_STMT_TRACE( 1, "LOC::getLocation(latitude:trackPoint.latitude, longitude:trackPoint.longitude)" );
  Tracking_LOC_getLocation( &(trackPoint->latitude), &(trackPoint->longitude) );
  /* SELECT one firstPoint RELATED BY self->TrackPoint[R1] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one firstPoint RELATED BY self->TrackPoint[R1]" );
  firstPoint = ( 0 != self ) ? self->TrackPoint_R1_has_first : 0;
  /* SELECT one lastPoint RELATED BY self->TrackPoint[R3] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one lastPoint RELATED BY self->TrackPoint[R3]" );
  lastPoint = ( 0 != self ) ? self->TrackPoint_R3_has_last : 0;
  /* ASSIGN isFirstTrackPoint = FALSE */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN isFirstTrackPoint = FALSE" );
  isFirstTrackPoint = FALSE;
  /* ASSIGN lastLatitude = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN lastLatitude = 0.0" );
  lastLatitude = 0.0;
  /* ASSIGN lastLongitude = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN lastLongitude = 0.0" );
  lastLongitude = 0.0;
  /* IF ( empty firstPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( empty firstPoint )" );
  if ( ( 0 == firstPoint ) ) {
    /* ASSIGN isFirstTrackPoint = TRUE */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN isFirstTrackPoint = TRUE" );
    isFirstTrackPoint = TRUE;
    /* RELATE self TO trackPoint ACROSS R1 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE self TO trackPoint ACROSS R1" );
    Tracking_TrackPoint_R1_Link_has_first( self, trackPoint );
    /* RELATE self TO trackPoint ACROSS R3 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE self TO trackPoint ACROSS R3" );
    Tracking_TrackLog_R3_Link_is_last_for( trackPoint, self );
  }
  else {
    /* ASSIGN lastLatitude = lastPoint.latitude */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN lastLatitude = lastPoint.latitude" );
    lastLatitude = lastPoint->latitude;
    /* ASSIGN lastLongitude = lastPoint.longitude */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN lastLongitude = lastPoint.longitude" );
    lastLongitude = lastPoint->longitude;
    /* UNRELATE self FROM lastPoint ACROSS R3 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM lastPoint ACROSS R3" );
    Tracking_TrackLog_R3_Unlink_is_last_for( lastPoint, self );
    /* RELATE self TO trackPoint ACROSS R3 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE self TO trackPoint ACROSS R3" );
    Tracking_TrackLog_R3_Link_is_last_for( trackPoint, self );
    /* RELATE lastPoint TO trackPoint ACROSS R2 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE lastPoint TO trackPoint ACROSS R2" );
    Tracking_TrackPoint_R2_Link_follows( lastPoint, trackPoint );
  }
  /* ASSIGN distance = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN distance = 0.0" );
  distance = 0.0;
  /* IF ( not isFirstTrackPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not isFirstTrackPoint )" );
  if ( !isFirstTrackPoint ) {
    /* ASSIGN distance = UTIL::getDistance(fromLat:lastLatitude, fromLong:lastLongitude, toLat:trackPoint.latitude, toLong:trackPoint.longitude) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN distance = UTIL::getDistance(fromLat:lastLatitude, fromLong:lastLongitude, toLat:trackPoint.latitude, toLong:trackPoint.longitude)" );
    distance = Tracking_UTIL_getDistance( lastLatitude, lastLongitude, trackPoint->latitude, trackPoint->longitude );
  }
  /* SELECT one session RELATED BY self->WorkoutSession[R4.represents path for] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one session RELATED BY self->WorkoutSession[R4.represents path for]" );
  session = ( 0 != self ) ? self->WorkoutSession_R4_represents_path_for : 0;
  /* ASSIGN session.accumulatedDistance = ( session.accumulatedDistance + distance ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN session.accumulatedDistance = ( session.accumulatedDistance + distance )" );
  session->accumulatedDistance = ( session->accumulatedDistance + distance );
  /* self.updateDisplay() */
  XTUML_OAL_STMT_TRACE( 1, "self.updateDisplay()" );
  Tracking_TrackLog_op_updateDisplay( self );

}

/*
 * instance operation:  clearTrackPoints
 */
void
Tracking_TrackLog_op_clearTrackPoints( Tracking_TrackLog * self)
{
  Tracking_TrackPoint * lastPoint=0;Tracking_TrackPoint * nextPoint=0;
  /* SELECT one nextPoint RELATED BY self->TrackPoint[R1] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one nextPoint RELATED BY self->TrackPoint[R1]" );
  nextPoint = ( 0 != self ) ? self->TrackPoint_R1_has_first : 0;
  /* SELECT one lastPoint RELATED BY self->TrackPoint[R3] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one lastPoint RELATED BY self->TrackPoint[R3]" );
  lastPoint = ( 0 != self ) ? self->TrackPoint_R3_has_last : 0;
  /* IF ( not empty lastPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty lastPoint )" );
  if ( !( 0 == lastPoint ) ) {
    /* UNRELATE self FROM lastPoint ACROSS R3 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM lastPoint ACROSS R3" );
    Tracking_TrackLog_R3_Unlink_is_last_for( lastPoint, self );
  }
  /* IF ( not empty nextPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty nextPoint )" );
  if ( !( 0 == nextPoint ) ) {
    /* UNRELATE self FROM nextPoint ACROSS R1 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM nextPoint ACROSS R1" );
    Tracking_TrackPoint_R1_Unlink_has_first( self, nextPoint );
  }
  /* WHILE ( not empty nextPoint ) */
  XTUML_OAL_STMT_TRACE( 1, "WHILE ( not empty nextPoint )" );
  while ( !( 0 == nextPoint ) ) {
    Tracking_TrackPoint * prevPoint;
    /* ASSIGN prevPoint = nextPoint */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN prevPoint = nextPoint" );
    prevPoint = nextPoint;
    /* SELECT one nextPoint RELATED BY nextPoint->TrackPoint[R2.follows] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one nextPoint RELATED BY nextPoint->TrackPoint[R2.follows]" );
    nextPoint = ( 0 != nextPoint ) ? nextPoint->TrackPoint_R2_follows : 0;
    /* IF ( not_empty nextPoint ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( not_empty nextPoint )" );
    if ( ( 0 != nextPoint ) ) {
      /* UNRELATE prevPoint FROM nextPoint ACROSS R2 */
      XTUML_OAL_STMT_TRACE( 3, "UNRELATE prevPoint FROM nextPoint ACROSS R2" );
      Tracking_TrackPoint_R2_Unlink_follows( prevPoint, nextPoint );
    }
    /* DELETE OBJECT INSTANCE prevPoint */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE prevPoint" );
    if ( 0 == prevPoint ) {
      XTUML_EMPTY_HANDLE_TRACE( "TrackPoint", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) prevPoint, Tracking_DOMAIN_ID, Tracking_TrackPoint_CLASS_NUMBER );
  }

}

/*
 * instance operation:  addLapMarker
 */
void
Tracking_TrackLog_op_addLapMarker( Tracking_TrackLog * self)
{
  Tracking_LapMarker * lapMarker;Tracking_WorkoutTimer * timer=0;
  /* SELECT one timer RELATED BY self->WorkoutSession[R4.represents path for]->WorkoutTimer[R8.is timed by] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one timer RELATED BY self->WorkoutSession[R4.represents path for]->WorkoutTimer[R8.is timed by]" );
  timer = 0;
  {  if ( 0 != self ) {
  Tracking_WorkoutSession * WorkoutSession_R4_represents_path_for = self->WorkoutSession_R4_represents_path_for;
  if ( 0 != WorkoutSession_R4_represents_path_for ) {
  timer = WorkoutSession_R4_represents_path_for->WorkoutTimer_R8_is_timed_by;
}}}
  /* CREATE OBJECT INSTANCE lapMarker OF LapMarker */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE lapMarker OF LapMarker" );
  lapMarker = (Tracking_LapMarker *) Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_LapMarker_CLASS_NUMBER );
  /* ASSIGN lapMarker.lapTime = timer.time */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN lapMarker.lapTime = timer.time" );
  lapMarker->lapTime = timer->time;
  /* RELATE self TO lapMarker ACROSS R5 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE self TO lapMarker ACROSS R5" );
  Tracking_LapMarker_R5_Link_has_laps_defined_by( self, lapMarker );
  /* self.updateDisplay() */
  XTUML_OAL_STMT_TRACE( 1, "self.updateDisplay()" );
  Tracking_TrackLog_op_updateDisplay( self );

}

/*
 * instance operation:  clearLapMarkers
 */
void
Tracking_TrackLog_op_clearLapMarkers( Tracking_TrackLog * self)
{
  Tracking_LapMarker * lapMarker=0;Escher_ObjectSet_s lapMarkers_space={0}; Escher_ObjectSet_s * lapMarkers = &lapMarkers_space;
  /* SELECT many lapMarkers RELATED BY self->LapMarker[R5] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many lapMarkers RELATED BY self->LapMarker[R5]" );
  Escher_ClearSet( lapMarkers );
  if ( 0 != self ) {
    Escher_CopySet( lapMarkers, &self->LapMarker_R5_has_laps_defined_by );
  }
  /* FOR EACH lapMarker IN lapMarkers */
  XTUML_OAL_STMT_TRACE( 1, "FOR EACH lapMarker IN lapMarkers" );
  { Escher_Iterator_s iterlapMarker;
  Tracking_LapMarker * iilapMarker;
  Escher_IteratorReset( &iterlapMarker, lapMarkers );
  while ( (iilapMarker = (Tracking_LapMarker *)Escher_IteratorNext( &iterlapMarker )) != 0 ) {
    lapMarker = iilapMarker; {
    /* UNRELATE self FROM lapMarker ACROSS R5 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM lapMarker ACROSS R5" );
    Tracking_LapMarker_R5_Unlink_has_laps_defined_by( self, lapMarker );
    /* DELETE OBJECT INSTANCE lapMarker */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE lapMarker" );
    if ( 0 == lapMarker ) {
      XTUML_EMPTY_HANDLE_TRACE( "LapMarker", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) lapMarker, Tracking_DOMAIN_ID, Tracking_LapMarker_CLASS_NUMBER );
  }}}
  Escher_ClearSet( lapMarkers ); 

}

/*
 * instance operation:  updateDisplay
 */
void
Tracking_TrackLog_op_updateDisplay( Tracking_TrackLog * self)
{
  Tracking_Display * display=0;
  /* SELECT one display RELATED BY self->WorkoutSession[R4.represents path for]->Display[R7.current status indicated on] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one display RELATED BY self->WorkoutSession[R4.represents path for]->Display[R7.current status indicated on]" );
  display = 0;
  {  if ( 0 != self ) {
  Tracking_WorkoutSession * WorkoutSession_R4_represents_path_for = self->WorkoutSession_R4_represents_path_for;
  if ( 0 != WorkoutSession_R4_represents_path_for ) {
  display = WorkoutSession_R4_represents_path_for->Display_R7_current_status_indicated_on;
}}}
  /* GENERATE Display2:refresh() TO display */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE Display2:refresh() TO display" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( display, &Tracking_Displayevent2c );
    Escher_SendEvent( e );
  }

}


/*
 * RELATE TrackPoint TO TrackLog ACROSS R3
 */
void
Tracking_TrackLog_R3_Link_is_last_for( Tracking_TrackPoint * part, Tracking_TrackLog * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackLog", "Tracking_TrackLog_R3_Link_is_last_for" );
    return;
  }
  form->TrackPoint_R3_has_last = part;
  /* Note:  TrackPoint->TrackLog[R3] not navigated */
}

/*
 * UNRELATE TrackPoint FROM TrackLog ACROSS R3
 */
void
Tracking_TrackLog_R3_Unlink_is_last_for( Tracking_TrackPoint * part, Tracking_TrackLog * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackLog", "Tracking_TrackLog_R3_Unlink_is_last_for" );
    return;
  }
  form->TrackPoint_R3_has_last = 0;
  /* Note:  TrackPoint->TrackLog[R3] not navigated */
}

/*
 * RELATE WorkoutSession TO TrackLog ACROSS R4
 */
void
Tracking_TrackLog_R4_Link_captures_path_in( Tracking_WorkoutSession * part, Tracking_TrackLog * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackLog", "Tracking_TrackLog_R4_Link_captures_path_in" );
    return;
  }
  form->WorkoutSession_R4_represents_path_for = part;
  part->TrackLog_R4_captures_path_in = form;
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
static Escher_SetElement_s Tracking_TrackLog_container[ Tracking_TrackLog_MAX_EXTENT_SIZE ];
static Tracking_TrackLog Tracking_TrackLog_instances[ Tracking_TrackLog_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Tracking_TrackLog_extent = {
  {0}, {0}, &Tracking_TrackLog_container[ 0 ],
  (Escher_iHandle_t) &Tracking_TrackLog_instances,
  sizeof( Tracking_TrackLog ), 0, Tracking_TrackLog_MAX_EXTENT_SIZE
  };


