/*----------------------------------------------------------------------------
 * File:  Tracking_TrackLog_class.h
 *
 * Class:       TrackLog  (TrackLog)
 * Component:   Tracking
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_TRACKLOG_CLASS_H
#define TRACKING_TRACKLOG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   TrackLog  (TrackLog)
 */
struct Tracking_TrackLog {

  /* application analysis class attributes */

  /* relationship storage */
  Tracking_TrackPoint * TrackPoint_R1_has_first;
  Tracking_TrackPoint * TrackPoint_R3_has_last;
  Tracking_WorkoutSession * WorkoutSession_R4_represents_path_for;
  Escher_ObjectSet_s LapMarker_R5_has_laps_defined_by;
};
void Tracking_TrackLog_op_addTrackPoint( Tracking_TrackLog * );
void Tracking_TrackLog_op_clearTrackPoints( Tracking_TrackLog * );
void Tracking_TrackLog_op_addLapMarker( Tracking_TrackLog * );
void Tracking_TrackLog_op_clearLapMarkers( Tracking_TrackLog * );
void Tracking_TrackLog_op_updateDisplay( Tracking_TrackLog * );

void Tracking_TrackLog_R3_Link_is_last_for( Tracking_TrackPoint *, Tracking_TrackLog * );
void Tracking_TrackLog_R3_Unlink_is_last_for( Tracking_TrackPoint *, Tracking_TrackLog * );
void Tracking_TrackLog_R4_Link_captures_path_in( Tracking_WorkoutSession *, Tracking_TrackLog * );
/* Note:  WorkoutSession<-R4->TrackLog unrelate accessor not needed */
#define Tracking_LapMarker_R5_From_TrackLog_has_laps_defined_by( TrackLog ) ( &((TrackLog)->LapMarker_R5_has_laps_defined_by) )


#define Tracking_TrackLog_MAX_EXTENT_SIZE 200
extern Escher_Extent_t pG_Tracking_TrackLog_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* TRACKING_TRACKLOG_CLASS_H */


