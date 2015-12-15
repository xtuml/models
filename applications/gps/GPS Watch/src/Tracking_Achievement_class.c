/*----------------------------------------------------------------------------
 * File:  Tracking_Achievement_class.c
 *
 * Class:       Achievement  (Achievement)
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
 * instance operation:  close
 */
void
Tracking_Achievement_op_close( Tracking_Achievement * self)
{
  Tracking_WorkoutTimer * workoutTimer=0;Tracking_Goal * goal=0;
  /* SELECT one goal RELATED BY self->Goal[R14.is open for] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one goal RELATED BY self->Goal[R14.is open for]" );
  goal = ( 0 != self ) ? self->Goal_R14_is_open_for : 0;
  /* SELECT one workoutTimer RELATED BY goal->WorkoutSession[R11.is currently executing within]->WorkoutTimer[R8.is timed by] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one workoutTimer RELATED BY goal->WorkoutSession[R11.is currently executing within]->WorkoutTimer[R8.is timed by]" );
  workoutTimer = 0;
  {  if ( 0 != goal ) {
  Tracking_WorkoutSession * WorkoutSession_R11_is_currently_executing_within = goal->WorkoutSession_R11_is_currently_executing_within;
  if ( 0 != WorkoutSession_R11_is_currently_executing_within ) {
  workoutTimer = WorkoutSession_R11_is_currently_executing_within->WorkoutTimer_R8_is_timed_by;
}}}
  /* ASSIGN self.endTime = workoutTimer.time */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.endTime = workoutTimer.time" );
  self->endTime = workoutTimer->time;
  /* UNRELATE self FROM goal ACROSS R14 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE self FROM goal ACROSS R14" );
  Tracking_Achievement_R14_Unlink_has_open( goal, self );
  /* RELATE self TO goal ACROSS R12 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE self TO goal ACROSS R12" );
  Tracking_Achievement_R12_Link_has_recorded( goal, self );

}


/*
 * RELATE Goal TO Achievement ACROSS R12
 */
void
Tracking_Achievement_R12_Link_has_recorded( Tracking_Goal * part, Tracking_Achievement * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Achievement", "Tracking_Achievement_R12_Link_has_recorded" );
    return;
  }
  /* Note:  Achievement->Goal[R12] not navigated */
  Escher_SetInsertElement( &part->Achievement_R12_has_recorded, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE Goal FROM Achievement ACROSS R12
 */
void
Tracking_Achievement_R12_Unlink_has_recorded( Tracking_Goal * part, Tracking_Achievement * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Achievement", "Tracking_Achievement_R12_Unlink_has_recorded" );
    return;
  }
  /* Note:  Achievement->Goal[R12] not navigated */
  Escher_SetRemoveElement( &part->Achievement_R12_has_recorded, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE Goal TO Achievement ACROSS R14
 */
void
Tracking_Achievement_R14_Link_has_open( Tracking_Goal * part, Tracking_Achievement * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Achievement", "Tracking_Achievement_R14_Link_has_open" );
    return;
  }
  form->Goal_R14_is_open_for = part;
  part->Achievement_R14_has_open = form;
}

/*
 * UNRELATE Goal FROM Achievement ACROSS R14
 */
void
Tracking_Achievement_R14_Unlink_has_open( Tracking_Goal * part, Tracking_Achievement * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Achievement", "Tracking_Achievement_R14_Unlink_has_open" );
    return;
  }
  form->Goal_R14_is_open_for = 0;
  part->Achievement_R14_has_open = 0;
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      Achievement  (Achievement)
 * Component:  Tracking
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Tracking_Achievement_container[ Tracking_Achievement_MAX_EXTENT_SIZE ];
static Tracking_Achievement Tracking_Achievement_instances[ Tracking_Achievement_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Tracking_Achievement_extent = {
  {0}, {0}, &Tracking_Achievement_container[ 0 ],
  (Escher_iHandle_t) &Tracking_Achievement_instances,
  sizeof( Tracking_Achievement ), 0, Tracking_Achievement_MAX_EXTENT_SIZE
  };


