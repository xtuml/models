/*----------------------------------------------------------------------------
 * File:  Tracking_Goal_class.h
 *
 * Class:       Goal  (Goal)
 * Component:   Tracking
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_GOAL_CLASS_H
#define TRACKING_GOAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Goal  (Goal)
 */
struct Tracking_Goal {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  Escher_UniqueID_t ID;  /* - ID */
  r_t start;  /* - start */
  GPSWatch_GoalDisposition_t disposition;  /* - disposition */
  Escher_Timer_t * evaluationTimer;  /* - evaluationTimer */

  /* relationship storage */
  Tracking_GoalSpec * GoalSpec_R9_specified_by;
  Tracking_WorkoutSession * WorkoutSession_R11_is_currently_executing_within;
  Escher_ObjectSet_s Achievement_R12_has_recorded;
  /* Note:  No storage needed for Goal->WorkoutSession[R13] */
  Tracking_Achievement * Achievement_R14_has_open;
};
void Tracking_Goal_op_create(  const i_t );
void Tracking_Goal_op_calculateStart( Tracking_Goal * );
GPSWatch_GoalDisposition_t Tracking_Goal_op_evaluateAchievement( Tracking_Goal * );
void Tracking_Goal_op_evaluateCompletion( Tracking_Goal * );
void Tracking_Goal_op_nextGoal( void );

void Tracking_Goal_R9_Link_specifies( Tracking_GoalSpec *, Tracking_Goal * );
/* Note:  GoalSpec<-R9->>Goal unrelate accessor not needed */
void Tracking_Goal_R11_Link_is_currently_executing( Tracking_WorkoutSession *, Tracking_Goal * );
void Tracking_Goal_R11_Unlink_is_currently_executing( Tracking_WorkoutSession *, Tracking_Goal * );
#define Tracking_Achievement_R12_From_Goal_has_recorded( Goal ) ( &((Goal)->Achievement_R12_has_recorded) )
void Tracking_Goal_R13_Link_has_executed( Tracking_WorkoutSession *, Tracking_Goal * );
void Tracking_Goal_R13_Unlink_has_executed( Tracking_WorkoutSession *, Tracking_Goal * );


#define Tracking_Goal_MAX_EXTENT_SIZE 200
extern Escher_Extent_t pG_Tracking_Goal_extent;

/*
 * instance event:  Goal1:'Completed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Tracking_Goalevent1;
extern const Escher_xtUMLEventConstant_t Tracking_Goalevent1c;

/*
 * instance event:  Goal2:'Evaluate'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Tracking_Goalevent2;
extern const Escher_xtUMLEventConstant_t Tracking_Goalevent2c;

/*
 * instance event:  Goal3:'Pause'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Tracking_Goalevent3;
extern const Escher_xtUMLEventConstant_t Tracking_Goalevent3c;

/*
 * union of events targeted towards 'Goal' state machine
 */
typedef union {
  Tracking_Goalevent1 goal1_1;  
  Tracking_Goalevent2 goal2_2;  
  Tracking_Goalevent3 goal3_3;  
} Tracking_Goal_Events_u;

/*
 * enumeration of state model states for class
 */
#define Tracking_Goal_STATE_1 1  /* state [1]:  (Executing) */
#define Tracking_Goal_STATE_2 2  /* state [2]:  (Completed) */
#define Tracking_Goal_STATE_3 3  /* state [3]:  (Paused) */
/*
 * enumeration of state model event numbers
 */
#define TRACKING_GOALEVENT1NUM 0  /* Goal1:'Completed' */
#define TRACKING_GOALEVENT2NUM 1  /* Goal2:'Evaluate' */
#define TRACKING_GOALEVENT3NUM 2  /* Goal3:'Pause' */
extern void Tracking_Goal_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* TRACKING_GOAL_CLASS_H */


