/*----------------------------------------------------------------------------
 * File:  Tracking_GoalSpec_class.c
 *
 * Class:       GoalSpec  (GoalSpec)
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
 * RELATE WorkoutSession TO GoalSpec ACROSS R10
 */
void
Tracking_GoalSpec_R10_Link_includes( Tracking_WorkoutSession * part, Tracking_GoalSpec * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "GoalSpec", "Tracking_GoalSpec_R10_Link_includes" );
    return;
  }
  /* Note:  GoalSpec->WorkoutSession[R10] not navigated */
  Escher_SetInsertElement( &part->GoalSpec_R10_includes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE WorkoutSession FROM GoalSpec ACROSS R10
 */
void
Tracking_GoalSpec_R10_Unlink_includes( Tracking_WorkoutSession * part, Tracking_GoalSpec * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "GoalSpec", "Tracking_GoalSpec_R10_Unlink_includes" );
    return;
  }
  /* Note:  GoalSpec->WorkoutSession[R10] not navigated */
  Escher_SetRemoveElement( &part->GoalSpec_R10_includes, (Escher_ObjectSet_s *) form );
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Tracking_GoalSpec_container[ Tracking_GoalSpec_MAX_EXTENT_SIZE ];
static Tracking_GoalSpec Tracking_GoalSpec_instances[ Tracking_GoalSpec_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Tracking_GoalSpec_extent = {
  {0}, {0}, &Tracking_GoalSpec_container[ 0 ],
  (Escher_iHandle_t) &Tracking_GoalSpec_instances,
  sizeof( Tracking_GoalSpec ), 0, Tracking_GoalSpec_MAX_EXTENT_SIZE
  };


