/*----------------------------------------------------------------------------
 * File:  Tracking_TrackLog_class.h
 *
 * Class:       TrackLog  (TrackLog)
 * Component:   Tracking
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_TRACKLOG_CLASS_H
#define TRACKING_TRACKLOG_CLASS_H



class Tracking; // forward reference
/*
 * Structural representation of application analysis class:
 *   TrackLog  (TrackLog)
 */
class Tracking_TrackLog {
  public:

  /* application analysis class attributes */
  r4_t distance;  /* - distance */
  r4_t currentSpeed;  /* - currentSpeed */
  r4_t currentPace;  /* - currentPace (M) */
  r4_t currentHeartRate;  /* - currentHeartRate */
  Escher_TimeStamp_t startTime;  /* - startTime */
  GPSsysc_sdt_Location lastKnownLocation;  /* - lastKnownLocation */
  bool hasLocation;  /* - hasLocation */

  /* relationship storage */
  Tracking_TrackPoint * TrackPoint_R1;
  Tracking_TrackPoint * TrackPoint_R3;
  Tracking_WorkoutTimer * WorkoutTimer_R4;
  sys_sets::Escher_ObjectSet_s LapMarker_R5;
  sys_sets::Escher_ObjectSet_s HeartRateSample_R6;
  void Tracking_TrackLog_op_addTrackPoint( Tracking_TrackLog *, Tracking *, GPSsysc_sdt_Location );
  void Tracking_TrackLog_op_clearTrackPoints( Tracking_TrackLog *, Tracking *);
  void Tracking_TrackLog_op_addLapMarker( Tracking_TrackLog *, Tracking *);
  void Tracking_TrackLog_op_clearLapMarkers( Tracking_TrackLog *, Tracking *);
  void Tracking_TrackLog_op_addHeartRateSample( Tracking_TrackLog *, Tracking *, r4_t );
  void Tracking_TrackLog_op_clearHeartRateSamples( Tracking_TrackLog *, Tracking *);
  void Tracking_TrackLog_op_init( Tracking_TrackLog *, Tracking *);

static void Tracking_TrackLog_R1_Link( Tracking_TrackPoint *, Tracking_TrackLog *, Tracking * );
static void Tracking_TrackLog_R1_Unlink( Tracking_TrackPoint *, Tracking_TrackLog *, Tracking * );
#define Tracking_LapMarker_R5_From_TrackLog( TrackLog ) ( &((TrackLog)->LapMarker_R5) )
#define Tracking_HeartRateSample_R6_From_TrackLog( TrackLog ) ( &((TrackLog)->HeartRateSample_R6) )

};

#define Tracking_TrackLog_MAX_EXTENT_SIZE 200
extern sys_sets::Escher_Extent_t pG_Tracking_TrackLog_extent;
r4_t Tracking_TrackLog_MDA_currentPace( Tracking_TrackLog * );



#endif  /* TRACKING_TRACKLOG_CLASS_H */


