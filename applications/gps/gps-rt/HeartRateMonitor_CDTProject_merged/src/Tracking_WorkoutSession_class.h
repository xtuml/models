/*----------------------------------------------------------------------------
 * File:  Tracking_WorkoutSession_class.h
 *
 * Class:       WorkoutSession  (WorkoutSession)
 * Component:   Tracking
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_WORKOUTSESSION_CLASS_H
#define TRACKING_WORKOUTSESSION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   WorkoutSession  (WorkoutSession)
 */
struct Tracking_WorkoutSession {

  /* application analysis class attributes */
  Escher_Date_t startDate;  /* * startDate */
  Escher_TimeStamp_t startTime;  /* * startTime */
  r_t currentSpeed;  /* - currentSpeed (M) */
  r_t currentPace;  /* - currentPace (M) */
  i_t currentHeartRate;  /* - currentHeartRate (M) */
  r_t accumulatedDistance;  /* - accumulatedDistance */

  /* relationship storage */
  Tracking_TrackLog * TrackLog_R4_captures_path_in;
  Escher_ObjectSet_s HeartRateSample_R6_tracks_heart_rate_over_time_as;
  Tracking_Display * Display_R7_current_status_indicated_on;
  Tracking_WorkoutTimer * WorkoutTimer_R8_is_timed_by;
  Escher_ObjectSet_s GoalSpec_R10_includes;
  Tracking_Goal * Goal_R11_is_currently_executing;
  Escher_ObjectSet_s Goal_R13_has_executed;
};
void Tracking_WorkoutSession_op_addHeartRateSample( Tracking_WorkoutSession *, const i_t );
void Tracking_WorkoutSession_op_clearHeartRateSamples( Tracking_WorkoutSession * );
void Tracking_WorkoutSession_op_initialize( Tracking_WorkoutSession * );
void Tracking_WorkoutSession_op_create( void );
void Tracking_WorkoutSession_op_reset( Tracking_WorkoutSession * );

#define Tracking_HeartRateSample_R6_From_WorkoutSession_tracks_heart_rate_over_time_as( WorkoutSession ) ( &((WorkoutSession)->HeartRateSample_R6_tracks_heart_rate_over_time_as) )
#define Tracking_GoalSpec_R10_From_WorkoutSession_includes( WorkoutSession ) ( &((WorkoutSession)->GoalSpec_R10_includes) )
#define Tracking_Goal_R13_From_WorkoutSession_has_executed( WorkoutSession ) ( &((WorkoutSession)->Goal_R13_has_executed) )


#define Tracking_WorkoutSession_MAX_EXTENT_SIZE 200
extern Escher_Extent_t pG_Tracking_WorkoutSession_extent;
r_t Tracking_WorkoutSession_MDA_currentSpeed( Tracking_WorkoutSession * );
r_t Tracking_WorkoutSession_MDA_currentPace( Tracking_WorkoutSession * );
i_t Tracking_WorkoutSession_MDA_currentHeartRate( Tracking_WorkoutSession * );

#ifdef	__cplusplus
}
#endif

#endif  /* TRACKING_WORKOUTSESSION_CLASS_H */


