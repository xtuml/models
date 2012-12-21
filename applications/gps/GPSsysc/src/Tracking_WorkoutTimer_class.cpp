/*----------------------------------------------------------------------------
 * File:  Tracking_WorkoutTimer_class.cpp
 *
 * Class:       WorkoutTimer  (WorkoutTimer)
 * Component:   Tracking
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSsysc_sys_types.h"
#include "Tracking.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"

/*
 * instance operation:  activate
 */
void
Tracking_WorkoutTimer::Tracking_WorkoutTimer_op_activate( Tracking_WorkoutTimer * self, Tracking * thismodule)
{
  Escher_xtUMLEvent_t * v_evt;  /* evt */ 
  /* CREATE EVENT INSTANCE evt(  ) TO self */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE evt(  ) TO self" );
  v_evt = thismodule->Escher_NewxtUMLEvent( (void *) self, &Tracking_WorkoutTimerevent3c );
  v_evt->sc_e = &(thismodule->sc_Tracking_WorkoutTimerevent3);
  /* ASSIGN self.timer = TIM::timer_start_recurring(event_inst:evt, microseconds:1000000) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.timer = TIM::timer_start_recurring(event_inst:evt, microseconds:1000000)" );
  self->timer = thismodule->tim->timer_start_recurring( (Escher_xtUMLEvent_t *)v_evt, 1000000 );
  /*  SEND LOC::registerListener() */
  XTUML_OAL_STMT_TRACE( 1, " SEND LOC::registerListener()" );
  thismodule->LOC->LocationProvider_registerListener();
  /*  SEND HR::registerListener() */
  XTUML_OAL_STMT_TRACE( 1, " SEND HR::registerListener()" );
  thismodule->HR->HeartRateProvider_registerListener();

}

/*
 * instance operation:  deactivate
 */
void
Tracking_WorkoutTimer::Tracking_WorkoutTimer_op_deactivate( Tracking_WorkoutTimer * self, Tracking * thismodule)
{
  bool v_res; 
  /* ASSIGN res = TIM::timer_cancel(timer_inst_ref:self.timer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN res = TIM::timer_cancel(timer_inst_ref:self.timer)" );
  v_res = thismodule->tim->timer_cancel( self->timer );
  /*  SEND LOC::unregisterListener() */
  XTUML_OAL_STMT_TRACE( 1, " SEND LOC::unregisterListener()" );
  thismodule->LOC->LocationProvider_unregisterListener();
  /*  SEND HR::unregisterListener() */
  XTUML_OAL_STMT_TRACE( 1, " SEND HR::unregisterListener()" );
  thismodule->HR->HeartRateProvider_unregisterListener();

}


/*
 * RELATE TrackLog TO WorkoutTimer ACROSS R4
 */
void
Tracking_WorkoutTimer::Tracking_WorkoutTimer_R4_Link( Tracking_TrackLog * part, Tracking_WorkoutTimer * form, Tracking * thismodule )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "WorkoutTimer", "Tracking_WorkoutTimer::Tracking_WorkoutTimer_R4_Link" );
    return;
  }
  form->TrackLog_R4 = part;
  part->WorkoutTimer_R4 = form;
}

/*
 * UNRELATE TrackLog FROM WorkoutTimer ACROSS R4
 */
void
Tracking_WorkoutTimer::Tracking_WorkoutTimer_R4_Unlink( Tracking_TrackLog * part, Tracking_WorkoutTimer * form, Tracking * thismodule )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "WorkoutTimer", "Tracking_WorkoutTimer::Tracking_WorkoutTimer_R4_Unlink" );
    return;
  }
  form->TrackLog_R4 = 0;
  part->WorkoutTimer_R4 = 0;
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
static sys_sets::Escher_SetElement_s Tracking_WorkoutTimer_container[ Tracking_WorkoutTimer_MAX_EXTENT_SIZE ];
static Tracking_WorkoutTimer Tracking_WorkoutTimer_instances[ Tracking_WorkoutTimer_MAX_EXTENT_SIZE ];
sys_sets::Escher_Extent_t pG_Tracking_WorkoutTimer_extent = {
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
  Tracking * thismodule = (Tracking *) event->thismodule;
  Tracking_TrackLog * v_trackLog = 0; /* trackLog (TrackLog) */
 
  /* ASSIGN self.time = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.time = 0" );
  self->time = 0;
  /* UIport::setTime(time:self.time) */
  XTUML_OAL_STMT_TRACE( 1, "UIport::setTime(time:self.time)" );
  thismodule->UIport->UIif_setTime( self->time );
  /* SELECT one trackLog RELATED BY self->TrackLog[R4] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one trackLog RELATED BY self->TrackLog[R4]" );
  v_trackLog = self->TrackLog_R4;
  /* trackLog.clearTrackPoints() */
  XTUML_OAL_STMT_TRACE( 1, "trackLog.clearTrackPoints()" );
  v_trackLog->Tracking_TrackLog_op_clearTrackPoints( v_trackLog,  thismodule);
  /* trackLog.clearLapMarkers() */
  XTUML_OAL_STMT_TRACE( 1, "trackLog.clearLapMarkers()" );
  v_trackLog->Tracking_TrackLog_op_clearLapMarkers( v_trackLog,  thismodule);
  /* trackLog.clearHeartRateSamples() */
  XTUML_OAL_STMT_TRACE( 1, "trackLog.clearHeartRateSamples()" );
  v_trackLog->Tracking_TrackLog_op_clearHeartRateSamples( v_trackLog,  thismodule);
  /* GENERATE Display_A2:refresh() TO Display CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE Display_A2:refresh() TO Display CLASS" );
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &Tracking_Display_CBevent2c );
  e->sc_e = &(thismodule->sc_Tracking_Display_CBevent2);
    thismodule->Escher_SendEvent( e );
  }

  /* UNRELATE self FROM trackLog ACROSS R4 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE self FROM trackLog ACROSS R4" );
  Tracking_WorkoutTimer::Tracking_WorkoutTimer_R4_Unlink( v_trackLog, self, thismodule );
  /* DELETE OBJECT INSTANCE trackLog */
  XTUML_OAL_STMT_TRACE( 1, "DELETE OBJECT INSTANCE trackLog" );
  if ( 0 == v_trackLog ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackLog", "Escher_DeleteInstance" );
  }
  thismodule->Escher_DeleteInstance( (Escher_iHandle_t) v_trackLog, Tracking_DOMAIN_ID, Tracking_TrackLog_CLASS_NUMBER );
}

/*
 * State 2:  [running]
 */
static void Tracking_WorkoutTimer_act2( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_act2( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
}

/*
 * State 3:  [paused]
 */
static void Tracking_WorkoutTimer_act3( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_act3( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
}

/*
 */
static void Tracking_WorkoutTimer_xact1( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact1( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  Tracking_TrackLog * v_trackLog; 
  /* CREATE OBJECT INSTANCE trackLog OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE trackLog OF TrackLog" );
  v_trackLog = (Tracking_TrackLog *) thismodule->Escher_CreateInstance( Tracking_DOMAIN_ID, Tracking_TrackLog_CLASS_NUMBER );
  /* RELATE self TO trackLog ACROSS R4 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE self TO trackLog ACROSS R4" );
  Tracking_WorkoutTimer::Tracking_WorkoutTimer_R4_Link( v_trackLog, self, thismodule );
  /* trackLog.init() */
  XTUML_OAL_STMT_TRACE( 1, "trackLog.init()" );
  v_trackLog->Tracking_TrackLog_op_init( v_trackLog,  thismodule);
  /* self.activate() */
  XTUML_OAL_STMT_TRACE( 1, "self.activate()" );
  self->Tracking_WorkoutTimer_op_activate( self,  thismodule);
}

/*
 */
static void Tracking_WorkoutTimer_xact2( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact2( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  Tracking_TrackLog * v_trackLog; 
  /* SELECT any trackLog FROM INSTANCES OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any trackLog FROM INSTANCES OF TrackLog" );
  v_trackLog = (Tracking_TrackLog *) Escher_SetGetAny( &pG_Tracking_TrackLog_extent.active );
  /* IF ( not empty trackLog ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty trackLog )" );
  if ( !( 0 == v_trackLog ) ) {
    /* trackLog.addLapMarker() */
    XTUML_OAL_STMT_TRACE( 2, "trackLog.addLapMarker()" );
    v_trackLog->Tracking_TrackLog_op_addLapMarker( v_trackLog,  thismodule);
  }
}

/*
 */
static void Tracking_WorkoutTimer_xact3( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact3( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  /* self.activate() */
  XTUML_OAL_STMT_TRACE( 1, "self.activate()" );
  self->Tracking_WorkoutTimer_op_activate( self,  thismodule);
}

/*
 */
static void Tracking_WorkoutTimer_xact4( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact4( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  /* self.deactivate() */
  XTUML_OAL_STMT_TRACE( 1, "self.deactivate()" );
  self->Tracking_WorkoutTimer_op_deactivate( self,  thismodule);
}

/*
 */
static void Tracking_WorkoutTimer_xact5( Tracking_WorkoutTimer *, const Escher_xtUMLEvent_t * const );
static void
Tracking_WorkoutTimer_xact5( Tracking_WorkoutTimer * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  /* ASSIGN self.time = ( self.time + 1 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.time = ( self.time + 1 )" );
  self->time = ( self->time + 1 );
  /* UIport::setTime(time:self.time) */
  XTUML_OAL_STMT_TRACE( 1, "UIport::setTime(time:self.time)" );
  thismodule->UIport->UIif_setTime( self->time );
}

const Escher_xtUMLEventConstant_t Tracking_WorkoutTimerevent1c = {
  Tracking_DOMAIN_ID, Tracking_WorkoutTimer_CLASS_NUMBER, TRACKING_WORKOUTTIMEREVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT, 0 };

const Escher_xtUMLEventConstant_t Tracking_WorkoutTimerevent2c = {
  Tracking_DOMAIN_ID, Tracking_WorkoutTimer_CLASS_NUMBER, TRACKING_WORKOUTTIMEREVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT, 0 };

const Escher_xtUMLEventConstant_t Tracking_WorkoutTimerevent3c = {
  Tracking_DOMAIN_ID, Tracking_WorkoutTimer_CLASS_NUMBER, TRACKING_WORKOUTTIMEREVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT, 0 };



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
  Tracking * thismodule = (Tracking *) event->thismodule;
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
        /* Execute the state action and update the current state.  */
        ( *Tracking_WorkoutTimer_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
      } else {
        ( *Tracking_WorkoutTimer_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *Tracking_WorkoutTimer_acts[ next_state ] )( instance, event );
      }
    }
  }
}


