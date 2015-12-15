/*----------------------------------------------------------------------------
 * File:  Tracking_Goal_class.c
 *
 * Class:       Goal  (Goal)
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
 * class operation:  create
 */
void
Tracking_Goal_op_create( const i_t p_sequenceNumber )
{
  Tracking_GoalSpec * goalSpec=0;
  /* SELECT any goalSpec FROM INSTANCES OF GoalSpec WHERE ( SELECTED.sequenceNumber == PARAM.sequenceNumber ) */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any goalSpec FROM INSTANCES OF GoalSpec WHERE ( SELECTED.sequenceNumber == PARAM.sequenceNumber )" );
  goalSpec = 0;
  { Tracking_GoalSpec * selected;
    Escher_Iterator_s itergoalSpecTracking_GoalSpec;
    Escher_IteratorReset( &itergoalSpecTracking_GoalSpec, &pG_Tracking_GoalSpec_extent.active );
    while ( (selected = (Tracking_GoalSpec *) Escher_IteratorNext( &itergoalSpecTracking_GoalSpec )) != 0 ) {
      if ( ( selected->sequenceNumber == p_sequenceNumber ) ) {
        goalSpec = selected;
        break;
      }
    }
  }
  /* IF ( not empty goalSpec ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty goalSpec )" );
  if ( !( 0 == goalSpec ) ) {
    Tracking_Goal * goal;Escher_xtUMLEvent_t * evaluateEvent;Tracking_WorkoutSession * session=0;
    /* CREATE OBJECT INSTANCE goal OF Goal */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE goal OF Goal" );
    goal = (Tracking_Goal *) Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_Goal_CLASS_NUMBER );
    /* RELATE goal TO goalSpec ACROSS R9 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE goal TO goalSpec ACROSS R9" );
    Tracking_Goal_R9_Link_specifies( goalSpec, goal );
    /* SELECT any session FROM INSTANCES OF WorkoutSession */
    XTUML_OAL_STMT_TRACE( 2, "SELECT any session FROM INSTANCES OF WorkoutSession" );
    session = (Tracking_WorkoutSession *) Escher_SetGetAny( &pG_Tracking_WorkoutSession_extent.active );
    /* RELATE goal TO session ACROSS R11 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE goal TO session ACROSS R11" );
    Tracking_Goal_R11_Link_is_currently_executing( session, goal );
    /* goal.calculateStart() */
    XTUML_OAL_STMT_TRACE( 2, "goal.calculateStart()" );
    Tracking_Goal_op_calculateStart( goal );
    /* ASSIGN goal.disposition = Increase */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goal.disposition = Increase" );
    goal->disposition = GPSWatch_GoalDisposition_Increase_e;
    /* CREATE EVENT INSTANCE evaluateEvent(  ) TO goal */
    XTUML_OAL_STMT_TRACE( 2, "CREATE EVENT INSTANCE evaluateEvent(  ) TO goal" );
    evaluateEvent = Escher_NewxtUMLEvent( (void *) goal, &Tracking_Goalevent2c );
    /* ASSIGN goal.evaluationTimer = TIM::timer_start_recurring(event_inst:evaluateEvent, microseconds:evaluationPeriod) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goal.evaluationTimer = TIM::timer_start_recurring(event_inst:evaluateEvent, microseconds:evaluationPeriod)" );
    goal->evaluationTimer = TIM_timer_start_recurring( (Escher_xtUMLEvent_t *)evaluateEvent, 3000000 );
  }

}

/*
 * instance operation:  calculateStart
 */
void
Tracking_Goal_op_calculateStart( Tracking_Goal * self)
{
  Tracking_GoalSpec * goalSpec=0;
  /* SELECT one goalSpec RELATED BY self->GoalSpec[R9.specified by] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one goalSpec RELATED BY self->GoalSpec[R9.specified by]" );
  goalSpec = ( 0 != self ) ? self->GoalSpec_R9_specified_by : 0;
  /* IF ( ( goalSpec.spanType == Time ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( goalSpec.spanType == Time ) )" );
  if ( ( goalSpec->spanType == GPSWatch_GoalSpan_Time_e ) ) {
    Tracking_WorkoutTimer * workoutTimer=0;
    /* SELECT one workoutTimer RELATED BY self->WorkoutSession[R11.is currently executing within]->WorkoutTimer[R8.is timed by] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one workoutTimer RELATED BY self->WorkoutSession[R11.is currently executing within]->WorkoutTimer[R8.is timed by]" );
    workoutTimer = 0;
    {    if ( 0 != self ) {
    Tracking_WorkoutSession * WorkoutSession_R11_is_currently_executing_within = self->WorkoutSession_R11_is_currently_executing_within;
    if ( 0 != WorkoutSession_R11_is_currently_executing_within ) {
    workoutTimer = WorkoutSession_R11_is_currently_executing_within->WorkoutTimer_R8_is_timed_by;
}}}
    /* ASSIGN self.start = workoutTimer.time */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.start = workoutTimer.time" );
    self->start = workoutTimer->time;
  }
  else if ( ( goalSpec->spanType == GPSWatch_GoalSpan_Distance_e ) ) {
    Tracking_WorkoutSession * session=0;
    /* SELECT one session RELATED BY self->WorkoutSession[R11.is currently executing within] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one session RELATED BY self->WorkoutSession[R11.is currently executing within]" );
    session = ( 0 != self ) ? self->WorkoutSession_R11_is_currently_executing_within : 0;
    /* ASSIGN self.start = session.accumulatedDistance */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.start = session.accumulatedDistance" );
    self->start = session->accumulatedDistance;
  }
  else {
    /* LOG::LogFailure( message:Goal.calculateStart: Unknown Goal Span Type. ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Goal.calculateStart: Unknown Goal Span Type. )" );
    LOG_LogFailure( "Goal.calculateStart: Unknown Goal Span Type." );
  }

}

/*
 * instance operation:  evaluateAchievement
 */
GPSWatch_GoalDisposition_t
Tracking_Goal_op_evaluateAchievement( Tracking_Goal * self)
{
  GPSWatch_GoalDisposition_t goalDisposition;r_t currentValue;Tracking_WorkoutSession * session=0;Tracking_GoalSpec * goalSpec=0;
  /* SELECT one goalSpec RELATED BY self->GoalSpec[R9.specified by] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one goalSpec RELATED BY self->GoalSpec[R9.specified by]" );
  goalSpec = ( 0 != self ) ? self->GoalSpec_R9_specified_by : 0;
  /* SELECT one session RELATED BY self->WorkoutSession[R11.is currently executing within] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one session RELATED BY self->WorkoutSession[R11.is currently executing within]" );
  session = ( 0 != self ) ? self->WorkoutSession_R11_is_currently_executing_within : 0;
  /* ASSIGN currentValue = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN currentValue = 0.0" );
  currentValue = 0.0;
  /* IF ( ( goalSpec.criteriaType == HeartRate ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( goalSpec.criteriaType == HeartRate ) )" );
  if ( ( goalSpec->criteriaType == GPSWatch_GoalCriteria_HeartRate_e ) ) {
    /* ASSIGN currentValue = session.currentHeartRate */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN currentValue = session.currentHeartRate" );
    currentValue = Tracking_WorkoutSession_MDA_currentHeartRate( session );
  }
  else if ( ( goalSpec->criteriaType == GPSWatch_GoalCriteria_Pace_e ) ) {
    /* ASSIGN currentValue = session.currentPace */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN currentValue = session.currentPace" );
    currentValue = Tracking_WorkoutSession_MDA_currentPace( session );
  }
  else {
    /* LOG::LogFailure( message:Goal.evaluateAchievement: Unknown Goal Criteria Type. ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Goal.evaluateAchievement: Unknown Goal Criteria Type. )" );
    LOG_LogFailure( "Goal.evaluateAchievement: Unknown Goal Criteria Type." );
  }
  /* ASSIGN goalDisposition = Achieving */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN goalDisposition = Achieving" );
  goalDisposition = GPSWatch_GoalDisposition_Achieving_e;
  /* IF ( ( currentValue < goalSpec.minimum ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( currentValue < goalSpec.minimum ) )" );
  if ( ( currentValue < goalSpec->minimum ) ) {
    /* ASSIGN goalDisposition = Increase */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goalDisposition = Increase" );
    goalDisposition = GPSWatch_GoalDisposition_Increase_e;
  }
  else if ( ( currentValue > goalSpec->maximum ) ) {
    /* ASSIGN goalDisposition = Decrease */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN goalDisposition = Decrease" );
    goalDisposition = GPSWatch_GoalDisposition_Decrease_e;
  }
  /* IF ( ( goalSpec.criteriaType == Pace ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( goalSpec.criteriaType == Pace ) )" );
  if ( ( goalSpec->criteriaType == GPSWatch_GoalCriteria_Pace_e ) ) {
    /* IF ( ( goalDisposition == Increase ) ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( ( goalDisposition == Increase ) )" );
    if ( ( goalDisposition == GPSWatch_GoalDisposition_Increase_e ) ) {
      /* ASSIGN goalDisposition = Decrease */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN goalDisposition = Decrease" );
      goalDisposition = GPSWatch_GoalDisposition_Decrease_e;
    }
    else if ( ( goalDisposition == GPSWatch_GoalDisposition_Decrease_e ) ) {
      /* ASSIGN goalDisposition = Increase */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN goalDisposition = Increase" );
      goalDisposition = GPSWatch_GoalDisposition_Increase_e;
    }
  }
  /* RETURN goalDisposition */
  XTUML_OAL_STMT_TRACE( 1, "RETURN goalDisposition" );
  {GPSWatch_GoalDisposition_t xtumlOALrv = goalDisposition;
  return xtumlOALrv;}

}

/*
 * instance operation:  evaluateCompletion
 */
void
Tracking_Goal_op_evaluateCompletion( Tracking_Goal * self)
{
  r_t elapsedSpan;Tracking_GoalSpec * goalSpec=0;
  /* SELECT one goalSpec RELATED BY self->GoalSpec[R9.specified by] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one goalSpec RELATED BY self->GoalSpec[R9.specified by]" );
  goalSpec = ( 0 != self ) ? self->GoalSpec_R9_specified_by : 0;
  /* ASSIGN elapsedSpan = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN elapsedSpan = 0.0" );
  elapsedSpan = 0.0;
  /* IF ( ( goalSpec.spanType == Distance ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( goalSpec.spanType == Distance ) )" );
  if ( ( goalSpec->spanType == GPSWatch_GoalSpan_Distance_e ) ) {
    Tracking_WorkoutSession * session=0;
    /* SELECT one session RELATED BY self->WorkoutSession[R11.is currently executing within] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one session RELATED BY self->WorkoutSession[R11.is currently executing within]" );
    session = ( 0 != self ) ? self->WorkoutSession_R11_is_currently_executing_within : 0;
    /* ASSIGN elapsedSpan = ( session.accumulatedDistance - self.start ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN elapsedSpan = ( session.accumulatedDistance - self.start )" );
    elapsedSpan = ( session->accumulatedDistance - self->start );
  }
  else if ( ( goalSpec->spanType == GPSWatch_GoalSpan_Time_e ) ) {
    Tracking_WorkoutTimer * workoutTimer=0;
    /* SELECT one workoutTimer RELATED BY self->WorkoutSession[R11.is currently executing within]->WorkoutTimer[R8.is timed by] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one workoutTimer RELATED BY self->WorkoutSession[R11.is currently executing within]->WorkoutTimer[R8.is timed by]" );
    workoutTimer = 0;
    {    if ( 0 != self ) {
    Tracking_WorkoutSession * WorkoutSession_R11_is_currently_executing_within = self->WorkoutSession_R11_is_currently_executing_within;
    if ( 0 != WorkoutSession_R11_is_currently_executing_within ) {
    workoutTimer = WorkoutSession_R11_is_currently_executing_within->WorkoutTimer_R8_is_timed_by;
}}}
    /* ASSIGN elapsedSpan = ( workoutTimer.time - self.start ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN elapsedSpan = ( workoutTimer.time - self.start )" );
    elapsedSpan = ( workoutTimer->time - self->start );
  }
  else {
    /* LOG::LogFailure( message:Goal.evaluateCompletion: Unknown Goal Span Type. ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Goal.evaluateCompletion: Unknown Goal Span Type. )" );
    LOG_LogFailure( "Goal.evaluateCompletion: Unknown Goal Span Type." );
  }
  /* IF ( ( elapsedSpan >= goalSpec.span ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( elapsedSpan >= goalSpec.span ) )" );
  if ( ( elapsedSpan >= goalSpec->span ) ) {
    Tracking_Achievement * openAchievement=0;
    /* SELECT one openAchievement RELATED BY self->Achievement[R14.has open] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one openAchievement RELATED BY self->Achievement[R14.has open]" );
    openAchievement = ( 0 != self ) ? self->Achievement_R14_has_open : 0;
    /* IF ( not empty openAchievement ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( not empty openAchievement )" );
    if ( !( 0 == openAchievement ) ) {
      /* openAchievement.close() */
      XTUML_OAL_STMT_TRACE( 3, "openAchievement.close()" );
      Tracking_Achievement_op_close( openAchievement );
    }
    /* GENERATE Goal1:Completed() TO self */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE Goal1:Completed() TO self" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &Tracking_Goalevent1c );
      Escher_SendSelfEvent( e );
    }
  }

}

/*
 * class operation:  nextGoal
 */
void
Tracking_Goal_op_nextGoal()
{
  Tracking_WorkoutSession * session=0;
  /* SELECT any session FROM INSTANCES OF WorkoutSession */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any session FROM INSTANCES OF WorkoutSession" );
  session = (Tracking_WorkoutSession *) Escher_SetGetAny( &pG_Tracking_WorkoutSession_extent.active );
  /* IF ( not empty session ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty session )" );
  if ( !( 0 == session ) ) {
    Tracking_Goal * goal=0;
    /* SELECT one goal RELATED BY session->Goal[R11.is currently executing] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one goal RELATED BY session->Goal[R11.is currently executing]" );
    goal = ( 0 != session ) ? session->Goal_R11_is_currently_executing : 0;
    /* IF ( not empty goal ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( not empty goal )" );
    if ( !( 0 == goal ) ) {
      /* GENERATE Goal1:Completed() TO goal */
      XTUML_OAL_STMT_TRACE( 3, "GENERATE Goal1:Completed() TO goal" );
      { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( goal, &Tracking_Goalevent1c );
        Escher_SendEvent( e );
      }
    }
    else {
      /* Goal::create( sequenceNumber:GoalSpecOrigin ) */
      XTUML_OAL_STMT_TRACE( 3, "Goal::create( sequenceNumber:GoalSpecOrigin )" );
      Tracking_Goal_op_create( 1 );
    }
  }

}


/*
 * RELATE GoalSpec TO Goal ACROSS R9
 */
void
Tracking_Goal_R9_Link_specifies( Tracking_GoalSpec * part, Tracking_Goal * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Goal", "Tracking_Goal_R9_Link_specifies" );
    return;
  }
  form->GoalSpec_R9_specified_by = part;
  /* Note:  GoalSpec->Goal[R9] not navigated */
}

/*
 * RELATE WorkoutSession TO Goal ACROSS R11
 */
void
Tracking_Goal_R11_Link_is_currently_executing( Tracking_WorkoutSession * part, Tracking_Goal * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Goal", "Tracking_Goal_R11_Link_is_currently_executing" );
    return;
  }
  form->WorkoutSession_R11_is_currently_executing_within = part;
  part->Goal_R11_is_currently_executing = form;
}

/*
 * UNRELATE WorkoutSession FROM Goal ACROSS R11
 */
void
Tracking_Goal_R11_Unlink_is_currently_executing( Tracking_WorkoutSession * part, Tracking_Goal * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Goal", "Tracking_Goal_R11_Unlink_is_currently_executing" );
    return;
  }
  form->WorkoutSession_R11_is_currently_executing_within = 0;
  part->Goal_R11_is_currently_executing = 0;
}

/*
 * RELATE WorkoutSession TO Goal ACROSS R13
 */
void
Tracking_Goal_R13_Link_has_executed( Tracking_WorkoutSession * part, Tracking_Goal * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Goal", "Tracking_Goal_R13_Link_has_executed" );
    return;
  }
  /* Note:  Goal->WorkoutSession[R13] not navigated */
  Escher_SetInsertElement( &part->Goal_R13_has_executed, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE WorkoutSession FROM Goal ACROSS R13
 */
void
Tracking_Goal_R13_Unlink_has_executed( Tracking_WorkoutSession * part, Tracking_Goal * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Goal", "Tracking_Goal_R13_Unlink_has_executed" );
    return;
  }
  /* Note:  Goal->WorkoutSession[R13] not navigated */
  Escher_SetRemoveElement( &part->Goal_R13_has_executed, (Escher_ObjectSet_s *) form );
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      Goal  (Goal)
 * Component:  Tracking
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Tracking_Goal_container[ Tracking_Goal_MAX_EXTENT_SIZE ];
static Tracking_Goal Tracking_Goal_instances[ Tracking_Goal_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Tracking_Goal_extent = {
  {0}, {0}, &Tracking_Goal_container[ 0 ],
  (Escher_iHandle_t) &Tracking_Goal_instances,
  sizeof( Tracking_Goal ), Tracking_Goal_STATE_1, Tracking_Goal_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Goal  (Goal)
 * Component:  Tracking
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Executing]
 */
static void Tracking_Goal_act1( Tracking_Goal *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Goal_act1( Tracking_Goal * self, const Escher_xtUMLEvent_t * const event )
{
  GPSWatch_GoalDisposition_t disposition;
  /* ASSIGN disposition = self.evaluateAchievement() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN disposition = self.evaluateAchievement()" );
  disposition = Tracking_Goal_op_evaluateAchievement(self);
  /* IF ( ( ( self.disposition != Achieving ) and ( disposition == Achieving ) ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( ( self.disposition != Achieving ) and ( disposition == Achieving ) ) )" );
  if ( ( ( self->disposition != GPSWatch_GoalDisposition_Achieving_e ) && ( disposition == GPSWatch_GoalDisposition_Achieving_e ) ) ) {
    Tracking_Achievement * achievement;Tracking_WorkoutTimer * workoutTimer=0;
    /* CREATE OBJECT INSTANCE achievement OF Achievement */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE achievement OF Achievement" );
    achievement = (Tracking_Achievement *) Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_Achievement_CLASS_NUMBER );
    /* RELATE self TO achievement ACROSS R14 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE self TO achievement ACROSS R14" );
    Tracking_Achievement_R14_Link_has_open( self, achievement );
    /* SELECT one workoutTimer RELATED BY self->WorkoutSession[R11.is currently executing within]->WorkoutTimer[R8.is timed by] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one workoutTimer RELATED BY self->WorkoutSession[R11.is currently executing within]->WorkoutTimer[R8.is timed by]" );
    workoutTimer = 0;
    {    if ( 0 != self ) {
    Tracking_WorkoutSession * WorkoutSession_R11_is_currently_executing_within = self->WorkoutSession_R11_is_currently_executing_within;
    if ( 0 != WorkoutSession_R11_is_currently_executing_within ) {
    workoutTimer = WorkoutSession_R11_is_currently_executing_within->WorkoutTimer_R8_is_timed_by;
}}}
    /* ASSIGN achievement.startTime = workoutTimer.time */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN achievement.startTime = workoutTimer.time" );
    achievement->startTime = workoutTimer->time;
  }
  else if ( ( ( self->disposition == GPSWatch_GoalDisposition_Achieving_e ) && ( disposition != GPSWatch_GoalDisposition_Achieving_e ) ) ) {
    Tracking_Achievement * achievement=0;
    /* SELECT one achievement RELATED BY self->Achievement[R14.has open] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one achievement RELATED BY self->Achievement[R14.has open]" );
    achievement = ( 0 != self ) ? self->Achievement_R14_has_open : 0;
    /* achievement.close() */
    XTUML_OAL_STMT_TRACE( 2, "achievement.close()" );
    Tracking_Achievement_op_close( achievement );
  }
  /* ASSIGN self.disposition = disposition */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.disposition = disposition" );
  self->disposition = disposition;
  /* self.evaluateCompletion() */
  XTUML_OAL_STMT_TRACE( 1, "self.evaluateCompletion()" );
  Tracking_Goal_op_evaluateCompletion( self );
}

/*
 * State 2:  [Completed]
 */
static void Tracking_Goal_act2( Tracking_Goal *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Goal_act2( Tracking_Goal * self, const Escher_xtUMLEvent_t * const event )
{
  bool cancelSucceeded;Tracking_GoalSpec * currentGoalSpec=0;Tracking_WorkoutSession * session=0;Tracking_Achievement * openAchievement=0;Tracking_GoalSpec * nextGoalSpec=0;
  /* ASSIGN cancelSucceeded = TIM::timer_cancel(timer_inst_ref:self.evaluationTimer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN cancelSucceeded = TIM::timer_cancel(timer_inst_ref:self.evaluationTimer)" );
  cancelSucceeded = TIM_timer_cancel( self->evaluationTimer );
  /* SELECT one openAchievement RELATED BY self->Achievement[R14.has open] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one openAchievement RELATED BY self->Achievement[R14.has open]" );
  openAchievement = ( 0 != self ) ? self->Achievement_R14_has_open : 0;
  /* IF ( not empty openAchievement ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty openAchievement )" );
  if ( !( 0 == openAchievement ) ) {
    /* openAchievement.close() */
    XTUML_OAL_STMT_TRACE( 2, "openAchievement.close()" );
    Tracking_Achievement_op_close( openAchievement );
  }
  /* SELECT one session RELATED BY self->WorkoutSession[R11.is currently executing within] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one session RELATED BY self->WorkoutSession[R11.is currently executing within]" );
  session = ( 0 != self ) ? self->WorkoutSession_R11_is_currently_executing_within : 0;
  /* RELATE self TO session ACROSS R13 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE self TO session ACROSS R13" );
  Tracking_Goal_R13_Link_has_executed( session, self );
  /* UNRELATE self FROM session ACROSS R11 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE self FROM session ACROSS R11" );
  Tracking_Goal_R11_Unlink_is_currently_executing( session, self );
  /* SELECT one currentGoalSpec RELATED BY self->GoalSpec[R9.specified by] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one currentGoalSpec RELATED BY self->GoalSpec[R9.specified by]" );
  currentGoalSpec = ( 0 != self ) ? self->GoalSpec_R9_specified_by : 0;
  /* SELECT any nextGoalSpec RELATED BY session->GoalSpec[R10.includes] WHERE ( ( SELECTED.sequenceNumber == ( currentGoalSpec.sequenceNumber + 1 ) ) ) */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any nextGoalSpec RELATED BY session->GoalSpec[R10.includes] WHERE ( ( SELECTED.sequenceNumber == ( currentGoalSpec.sequenceNumber + 1 ) ) )" );
  nextGoalSpec = 0;
  if ( 0 != session ) {
    Tracking_GoalSpec * selected;
    Escher_Iterator_s iGoalSpec_R10_includes;
    Escher_IteratorReset( &iGoalSpec_R10_includes, &session->GoalSpec_R10_includes );
    while ( 0 != ( selected = (Tracking_GoalSpec *) Escher_IteratorNext( &iGoalSpec_R10_includes ) ) ) {
      if ( ( selected->sequenceNumber == ( currentGoalSpec->sequenceNumber + 1 ) ) ) {
        nextGoalSpec = selected;
        break;
  }}}
  /* IF ( not empty nextGoalSpec ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty nextGoalSpec )" );
  if ( !( 0 == nextGoalSpec ) ) {
    /* Goal::create( sequenceNumber:nextGoalSpec.sequenceNumber ) */
    XTUML_OAL_STMT_TRACE( 2, "Goal::create( sequenceNumber:nextGoalSpec.sequenceNumber )" );
    Tracking_Goal_op_create( nextGoalSpec->sequenceNumber );
  }
}

/*
 * State 3:  [Paused]
 */
static void Tracking_Goal_act3( Tracking_Goal *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Goal_act3( Tracking_Goal * self, const Escher_xtUMLEvent_t * const event )
{
  bool cancelSucceeded;
  /* ASSIGN cancelSucceeded = TIM::timer_cancel(timer_inst_ref:self.evaluationTimer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN cancelSucceeded = TIM::timer_cancel(timer_inst_ref:self.evaluationTimer)" );
  cancelSucceeded = TIM_timer_cancel( self->evaluationTimer );
}

/*
 */
static void Tracking_Goal_xact1( Tracking_Goal *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Goal_xact1( Tracking_Goal * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_xtUMLEvent_t * evaluateEvent;
  /* CREATE EVENT INSTANCE evaluateEvent(  ) TO self */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evaluateEvent(  ) TO self" );
  evaluateEvent = Escher_NewxtUMLEvent( (void *) self, &Tracking_Goalevent2c );
  /* ASSIGN self.evaluationTimer = TIM::timer_start_recurring(event_inst:evaluateEvent, microseconds:evaluationPeriod) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.evaluationTimer = TIM::timer_start_recurring(event_inst:evaluateEvent, microseconds:evaluationPeriod)" );
  self->evaluationTimer = TIM_timer_start_recurring( (Escher_xtUMLEvent_t *)evaluateEvent, 3000000 );
}

const Escher_xtUMLEventConstant_t Tracking_Goalevent1c = {
  Tracking_DOMAIN_ID, Tracking_Goal_CLASS_NUMBER, TRACKING_GOALEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Tracking_Goalevent2c = {
  Tracking_DOMAIN_ID, Tracking_Goal_CLASS_NUMBER, TRACKING_GOALEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Tracking_Goalevent3c = {
  Tracking_DOMAIN_ID, Tracking_Goal_CLASS_NUMBER, TRACKING_GOALEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Tracking_Goal_StateEventMatrix[ 3 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Tracking_Goal_STATE_1 (Executing) */
  { Tracking_Goal_STATE_2, Tracking_Goal_STATE_1, Tracking_Goal_STATE_3 },
  /* row 2:  Tracking_Goal_STATE_2 (Completed) */
  { EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN },
  /* row 3:  Tracking_Goal_STATE_3 (Paused) */
  { Tracking_Goal_STATE_2, (1<<8) + Tracking_Goal_STATE_1, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Tracking_Goal_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) Tracking_Goal_act1,  /* Executing */
    (StateAction_t) Tracking_Goal_act2,  /* Completed */
    (StateAction_t) Tracking_Goal_act3  /* Paused */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 4 ] = {
    "",
    "Executing",
    "Completed",
    "Paused"
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t Tracking_Goal_xacts[ 1 ] = {
    (StateAction_t) Tracking_Goal_xact1
  };

/*
 * instance state machine event dispatching
 */
void
Tracking_Goal_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_SEMcell_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 3 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = Tracking_Goal_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        STATE_TXN_START_TRACE( "Goal", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Tracking_Goal_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "Goal", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "Goal", current_state );
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
          STATE_TXN_IG_TRACE( "Goal", current_state );
      } else {
        STATE_TXN_START_TRACE( "Goal", current_state, state_name_strings[ current_state ] );
        ( *Tracking_Goal_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *Tracking_Goal_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "Goal", next_state, state_name_strings[ next_state ] );
      }
    }
  }
}


