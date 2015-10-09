/*----------------------------------------------------------------------------
 * File:  Tracking_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  Tracking
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_CLASSES_H
#define TRACKING_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  Tracking
 */
extern Escher_Extent_t * const Tracking_class_info[];
extern const EventTaker_t Tracking_EventDispatcher[];
void Tracking_execute_initialization( void );

#define Tracking_STATE_MODELS 3
/* Define constants to map to class numbers.  */
#define Tracking_WorkoutTimer_CLASS_NUMBER 0
#define Tracking_Display_CLASS_NUMBER 1
#define Tracking_Goal_CLASS_NUMBER 2
#define Tracking_Achievement_CLASS_NUMBER 3
#define Tracking_TrackLog_CLASS_NUMBER 4
#define Tracking_TrackPoint_CLASS_NUMBER 5
#define Tracking_LapMarker_CLASS_NUMBER 6
#define Tracking_HeartRateSample_CLASS_NUMBER 7
#define Tracking_WorkoutSession_CLASS_NUMBER 8
#define Tracking_GoalSpec_CLASS_NUMBER 9
#define Tracking_MAX_CLASS_NUMBERS 10

/* Provide a map of classes to task numbers.  */
#define Tracking_TASK_NUMBERS  0, 0, 0

#define Tracking_class_dispatchers\
  Tracking_WorkoutTimer_Dispatch,\
  Tracking_Display_Dispatch,\
  Tracking_Goal_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct Tracking_WorkoutTimer Tracking_WorkoutTimer;
typedef struct Tracking_Display Tracking_Display;
typedef struct Tracking_Goal Tracking_Goal;
typedef struct Tracking_Achievement Tracking_Achievement;
typedef struct Tracking_TrackLog Tracking_TrackLog;
typedef struct Tracking_TrackPoint Tracking_TrackPoint;
typedef struct Tracking_LapMarker Tracking_LapMarker;
typedef struct Tracking_HeartRateSample Tracking_HeartRateSample;
typedef struct Tracking_WorkoutSession Tracking_WorkoutSession;
typedef struct Tracking_GoalSpec Tracking_GoalSpec;

/* union of class declarations so we may derive largest class size */
#define Tracking_CLASS_U \
  char Tracking_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
void Tracking_GoalTest_1( void );
void Tracking_Initialize( void );


#include "MATH_bridge.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "Tracking.h"
#include "Tracking_Achievement_class.h"
#include "Tracking_WorkoutTimer_class.h"
#include "Tracking_TrackLog_class.h"
#include "Tracking_TrackPoint_class.h"
#include "Tracking_LapMarker_class.h"
#include "Tracking_HeartRateSample_class.h"
#include "Tracking_Display_class.h"
#include "Tracking_WorkoutSession_class.h"
#include "Tracking_GoalSpec_class.h"
#include "Tracking_Goal_class.h"
/*
 * roll-up of all events (with their parameters) for component Tracking
 */
typedef union {
  Tracking_WorkoutTimer_Events_u Tracking_WorkoutTimer_Events_u_namespace;
  Tracking_Display_Events_u Tracking_Display_Events_u_namespace;
  Tracking_Goal_Events_u Tracking_Goal_Events_u_namespace;
} Tracking_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* TRACKING_CLASSES_H */

