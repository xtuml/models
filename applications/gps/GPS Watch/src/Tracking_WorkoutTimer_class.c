/*----------------------------------------------------------------------------
 * File:  Tracking_WorkoutTimer_class.c
 *
 * Class:       WorkoutTimer  (WorkoutTimer)
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
 * instance operation:  activate
 */
void
Tracking_WorkoutTimer_op_activate( Tracking_WorkoutTimer * self)
{
  Escher_xtUMLEvent_t * evt;Tracking_Goal * executingGoal=0;
  /* CREATE EVENT INSTANCE evt(  ) TO self */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO self" );
  evt = Escher_NewxtUMLEvent( (void *) self, &Tracking_WorkoutTimerevent3c );
  /* ASSIGN self.timer = TIM::timer_start_recurring(event_inst:evt, microseconds:( timerPeriod * 1000000 )) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.timer = TIM::timer_start_recurring(event_inst:evt, microseconds:( timerPeriod * 1000000 ))" );
  self->timer = TIM_timer_start_recurring( (Escher_xtUMLEvent_t *)evt, ( 1 * 1000000 ) );
  /* SELECT one executingGoal RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]->Goal[R11.is currently executing] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one executingGoal RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]->Goal[R11.is currently executing]" );
  executingGoal = 0;
  {  if ( 0 != self ) {
  Tracking_WorkoutSession * WorkoutSession_R8_acts_as_the_stopwatch_for = self->WorkoutSession_R8_acts_as_the_stopwatch_for;
  if ( 0 != WorkoutSession_R8_acts_as_the_stopwatch_for ) {
  executingGoal = WorkoutSession_R8_acts_as_the_stopwatch_for->Goal_R11_is_currently_executing;
}}}
  /* IF ( not empty executingGoal ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty executingGoal )" );
  if ( !( 0 == executingGoal ) ) {
    /* GENERATE Goal2:Evaluate() TO executingGoal */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE Goal2:Evaluate() TO executingGoal" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( executingGoal, &Tracking_Goalevent2c );
      Escher_SendEvent( e );
    }
  }
  /* SEND LOC::registerListener() */
  XTUML_OAL_STMT_TRACE( 1, "SEND LOC::registerListener()" );
  Tracking_LOC_registerListener();
  /* SEND HR::registerListener() */
  XTUML_OAL_STMT_TRACE( 1, "SEND HR::registerListener()" );
  Tracking_HR_registerListener();

}

/*
 * instance operation:  deactivate
 */
void
Tracking_WorkoutTimer_op_deactivate( Tracking_WorkoutTimer * self)
{
  bool cancelSucceeded;Tracking_Goal * executingGoal=0;
  /* ASSIGN cancelSucceeded = TIM::timer_cancel(timer_inst_ref:self.timer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN cancelSucceeded = TIM::timer_cancel(timer_inst_ref:self.timer)" );
  cancelSucceeded = TIM_timer_cancel( self->timer );
  /* SELECT one executingGoal RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]->Goal[R11.is currently executing] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one executingGoal RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]->Goal[R11.is currently executing]" );
  executingGoal = 0;
  {  if ( 0 != self ) {
  Tracking_WorkoutSession * WorkoutSession_R8_acts_as_the_stopwatch_for = self->WorkoutSession_R8_acts_as_the_stopwatch_for;
  if ( 0 != WorkoutSession_R8_acts_as_the_stopwatch_for ) {
  executingGoal = WorkoutSession_R8_acts_as_the_stopwatch_for->Goal_R11_is_currently_executing;
}}}
  /* IF ( not empty executingGoal ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty executingGoal )" );
  if ( !( 0 == executingGoal ) ) {
    /* GENERATE Goal3:Pause() TO executingGoal */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE Goal3:Pause() TO executingGoal" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( executingGoal, &Tracking_Goalevent3c );
      Escher_SendEvent( e );
    }
  }
  /* SEND LOC::unregisterListener() */
  XTUML_OAL_STMT_TRACE( 1, "SEND LOC::unregisterListener()" );
  Tracking_LOC_unregisterListener();
  /* SEND HR::unregisterListener() */
  XTUML_OAL_STMT_TRACE( 1, "SEND HR::unregisterListener()" );
  Tracking_HR_unregisterListener();

}

/*
 * instance operation:  initialize
 */
void
Tracking_WorkoutTimer_op_initialize( Tracking_WorkoutTimer * self)
{
  /* ASSIGN self.time = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.time = 0" );
  self->time = 0;

}


/*
 * RELATE WorkoutSession TO WorkoutTimer ACROSS R8
 */
void
Tracking_WorkoutTimer_R8_Link_is_timed_by( Tracking_WorkoutSession * part, Tracking_WorkoutTimer * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "WorkoutTimer", "Tracking_WorkoutTimer_R8_Link_is_timed_by" );
    return;
  }
  form->WorkoutSession_R8_acts_as_the_stopwatch_for = part;
  part->WorkoutTimer_R8_is_timed_by = form;
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      WorkoutTimer  (WorkoutTimer)
 * Component:  Tracking
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Tracking_WorkoutTimer_container[ Tracking_WorkoutTimer_MAX_EXTENT_SIZE ];
static Tracking_WorkoutTimer Tracking_WorkoutTimer_instances[ Tracking_WorkoutTimer_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Tracking_WorkoutTimer_extent = {
  {0}, {0}, &Tracking_WorkoutTimer_container[ 0 ],
  (Escher_iHandle_t) &Tracking_WorkoutTimer_instances,
  sizeof( Tracking_WorkoutTimer ), Tracking_WorkoutTimer_STATE_1, Tracking_WorkoutTimer_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      WorkoutTimer  (WorkoutTimer)
 * Component:  Tracking
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [stopped]
 */
static void Tracking_WorkoutTimer_act1( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_act1( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking_Display * display=0;Tracking_WorkoutSession * session=0;
  /* SELECT one session RELATED BY self->WorkoutSession[R8.acts as the stopwatch for] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one session RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]" );
  session = ( 0 != self ) ? self->WorkoutSession_R8_acts_as_the_stopwatch_for : 0;
  /* session.reset() */
  XTUML_OAL_STMT_TRACE( 1, "session.reset()" );
  Tracking_WorkoutSession_op_reset( session );
  /* UI::setTime(time:self.time) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setTime(time:self.time)" );
  Tracking_UI_setTime( self->time );
  /* SELECT one display RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]->Display[R7.current status indicated on] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one display RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]->Display[R7.current status indicated on]" );
  display = 0;
  {  if ( 0 != self ) {
  Tracking_WorkoutSession * WorkoutSession_R8_acts_as_the_stopwatch_for = self->WorkoutSession_R8_acts_as_the_stopwatch_for;
  if ( 0 != WorkoutSession_R8_acts_as_the_stopwatch_for ) {
  display = WorkoutSession_R8_acts_as_the_stopwatch_for->Display_R7_current_status_indicated_on;
}}}
  /* GENERATE Display2:refresh() TO display */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE Display2:refresh() TO display" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( display, &Tracking_Displayevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [running]
 */
static void Tracking_WorkoutTimer_act2( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_act2( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 3:  [paused]
 */
static void Tracking_WorkoutTimer_act3( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_act3( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 */
static void Tracking_WorkoutTimer_xact1( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact1( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  /* self.activate() */
  XTUML_OAL_STMT_TRACE( 1, "self.activate()" );
  Tracking_WorkoutTimer_op_activate( self );
}

/*
 */
static void Tracking_WorkoutTimer_xact2( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact2( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking_TrackLog * trackLog=0;
  /* SELECT any trackLog FROM INSTANCES OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any trackLog FROM INSTANCES OF TrackLog" );
  trackLog = (Tracking_TrackLog *) Escher_SetGetAny( &pG_Tracking_TrackLog_extent.active );
  /* IF ( not empty trackLog ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty trackLog )" );
  if ( !( 0 == trackLog ) ) {
    /* trackLog.addLapMarker() */
    XTUML_OAL_STMT_TRACE( 2, "trackLog.addLapMarker()" );
    Tracking_TrackLog_op_addLapMarker( trackLog );
  }
}

/*
 */
static void Tracking_WorkoutTimer_xact3( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact3( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  /* self.activate() */
  XTUML_OAL_STMT_TRACE( 1, "self.activate()" );
  Tracking_WorkoutTimer_op_activate( self );
}

/*
 */
static void Tracking_WorkoutTimer_xact4( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact4( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  /* self.deactivate() */
  XTUML_OAL_STMT_TRACE( 1, "self.deactivate()" );
  Tracking_WorkoutTimer_op_deactivate( self );
}

/*
 */
static void Tracking_WorkoutTimer_xact5( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact5( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking_TrackLog * trackLog=0;
  /* ASSIGN self.time = ( self.time + timerPeriod ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.time = ( self.time + timerPeriod )" );
  self->time = ( self->time + 1 );
  /* SELECT one trackLog RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]->TrackLog[R4.captures path in] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one trackLog RELATED BY self->WorkoutSession[R8.acts as the stopwatch for]->TrackLog[R4.captures path in]" );
  trackLog = 0;
  {  if ( 0 != self ) {
  Tracking_WorkoutSession * WorkoutSession_R8_acts_as_the_stopwatch_for = self->WorkoutSession_R8_acts_as_the_stopwatch_for;
  if ( 0 != WorkoutSession_R8_acts_as_the_stopwatch_for ) {
  trackLog = WorkoutSession_R8_acts_as_the_stopwatch_for->TrackLog_R4_captures_path_in;
}}}
  /* trackLog.addTrackPoint() */
  XTUML_OAL_STMT_TRACE( 1, "trackLog.addTrackPoint()" );
  Tracking_TrackLog_op_addTrackPoint( trackLog );
  /* UI::setTime(time:self.time) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setTime(time:self.time)" );
  Tracking_UI_setTime( self->time );
}

const Escher_xtUMLEventConstant_t Tracking_WorkoutTimerevent1c = {
  Tracking_DOMAIN_ID, Tracking_WorkoutTimer_CLASS_NUMBER, TRACKING_WORKOUTTIMEREVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Tracking_WorkoutTimerevent2c = {
  Tracking_DOMAIN_ID, Tracking_WorkoutTimer_CLASS_NUMBER, TRACKING_WORKOUTTIMEREVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Tracking_WorkoutTimerevent3c = {
  Tracking_DOMAIN_ID, Tracking_WorkoutTimer_CLASS_NUMBER, TRACKING_WORKOUTTIMEREVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Tracking_WorkoutTimer_StateEventMatrix[ 3 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Tracking_WorkoutTimer_STATE_1 (stopped) */
  { (1<<8) + Tracking_WorkoutTimer_STATE_2, EVENT_IS_IGNORED, EVENT_IS_IGNORED },
  /* row 2:  Tracking_WorkoutTimer_STATE_2 (running) */
  { (4<<8) + Tracking_WorkoutTimer_STATE_3, (2<<8) + Tracking_WorkoutTimer_STATE_2, (5<<8) + Tracking_WorkoutTimer_STATE_2 },
  /* row 3:  Tracking_WorkoutTimer_STATE_3 (paused) */
  { (3<<8) + Tracking_WorkoutTimer_STATE_2, Tracking_WorkoutTimer_STATE_1, EVENT_IS_IGNORED }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Tracking_WorkoutTimer_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) Tracking_WorkoutTimer_act1,  /* stopped */
    (StateAction_t) Tracking_WorkoutTimer_act2,  /* running */
    (StateAction_t) Tracking_WorkoutTimer_act3  /* paused */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 4 ] = {
    "",
    "stopped",
    "running",
    "paused"
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t Tracking_WorkoutTimer_xacts[ 5 ] = {
    (StateAction_t) Tracking_WorkoutTimer_xact1,
    (StateAction_t) Tracking_WorkoutTimer_xact2,
    (StateAction_t) Tracking_WorkoutTimer_xact3,
    (StateAction_t) Tracking_WorkoutTimer_xact4,
    (StateAction_t) Tracking_WorkoutTimer_xact5
  };

/*
 * instance state machine event dispatching
 */
void
Tracking_WorkoutTimer_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = Tracking_WorkoutTimer_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        STATE_TXN_START_TRACE( "WorkoutTimer", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Tracking_WorkoutTimer_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "WorkoutTimer", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
          STATE_TXN_IG_TRACE( "WorkoutTimer", current_state );
      } else {
        STATE_TXN_START_TRACE( "WorkoutTimer", current_state, state_name_strings[ current_state ] );
        ( *Tracking_WorkoutTimer_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *Tracking_WorkoutTimer_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "WorkoutTimer", next_state, state_name_strings[ next_state ] );
      }
    }
  }
}


