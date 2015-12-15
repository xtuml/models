/*----------------------------------------------------------------------------
 * File:  Tracking_Display_class.c
 *
 * Class:       Display  (Display)
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
 * class operation:  goalDispositionIndicator
 */
GPSWatch_Indicator_t
Tracking_Display_op_goalDispositionIndicator()
{
  GPSWatch_Indicator_t indicator;Tracking_WorkoutSession * session=0;Tracking_Goal * goal=0;
  /* SELECT any session FROM INSTANCES OF WorkoutSession */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any session FROM INSTANCES OF WorkoutSession" );
  session = (Tracking_WorkoutSession *) Escher_SetGetAny( &pG_Tracking_WorkoutSession_extent.active );
  /* SELECT one goal RELATED BY session->Goal[R11.is currently executing] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one goal RELATED BY session->Goal[R11.is currently executing]" );
  goal = ( 0 != session ) ? session->Goal_R11_is_currently_executing : 0;
  /* ASSIGN indicator = Blank */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN indicator = Blank" );
  indicator = GPSWatch_Indicator_Blank_e;
  /* IF ( not empty goal ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty goal )" );
  if ( !( 0 == goal ) ) {
    /* IF ( ( goal.disposition == Increase ) ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( ( goal.disposition == Increase ) )" );
    if ( ( goal->disposition == GPSWatch_GoalDisposition_Increase_e ) ) {
      /* ASSIGN indicator = Up */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN indicator = Up" );
      indicator = GPSWatch_Indicator_Up_e;
    }
    else if ( ( goal->disposition == GPSWatch_GoalDisposition_Decrease_e ) ) {
      /* ASSIGN indicator = Down */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN indicator = Down" );
      indicator = GPSWatch_Indicator_Down_e;
    }
    else {
      /* ASSIGN indicator = Flat */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN indicator = Flat" );
      indicator = GPSWatch_Indicator_Flat_e;
    }
  }
  /* RETURN indicator */
  XTUML_OAL_STMT_TRACE( 1, "RETURN indicator" );
  {GPSWatch_Indicator_t xtumlOALrv = indicator;
  return xtumlOALrv;}

}


/*
 * RELATE WorkoutSession TO Display ACROSS R7
 */
void
Tracking_Display_R7_Link_current_status_indicated_on( Tracking_WorkoutSession * part, Tracking_Display * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Display", "Tracking_Display_R7_Link_current_status_indicated_on" );
    return;
  }
  form->WorkoutSession_R7_indicates_current_status_of = part;
  part->Display_R7_current_status_indicated_on = form;
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      Display  (Display)
 * Component:  Tracking
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Tracking_Display_container[ Tracking_Display_MAX_EXTENT_SIZE ];
static Tracking_Display Tracking_Display_instances[ Tracking_Display_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Tracking_Display_extent = {
  {0}, {0}, &Tracking_Display_container[ 0 ],
  (Escher_iHandle_t) &Tracking_Display_instances,
  sizeof( Tracking_Display ), Tracking_Display_STATE_1, Tracking_Display_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Display  (Display)
 * Component:  Tracking
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [displayDistance]
 */
static void Tracking_Display_act1( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_act1( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  r_t distance;Tracking_WorkoutSession * session=0;
  /* SELECT one session RELATED BY self->WorkoutSession[R7.indicates current status of] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one session RELATED BY self->WorkoutSession[R7.indicates current status of]" );
  session = ( 0 != self ) ? self->WorkoutSession_R7_indicates_current_status_of : 0;
  /* ASSIGN distance = session.accumulatedDistance */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN distance = session.accumulatedDistance" );
  distance = session->accumulatedDistance;
  /* IF ( ( distance > 1000.0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( distance > 1000.0 ) )" );
  if ( ( distance > 1000.0 ) ) {
    /* UI::setData(unit:km, value:( distance / 1000.0 )) */
    XTUML_OAL_STMT_TRACE( 2, "UI::setData(unit:km, value:( distance / 1000.0 ))" );
    Tracking_UI_setData( GPSWatch_Unit_km_e, ( distance / 1000.0 ) );
  }
  else {
    /* UI::setData(unit:meters, value:distance) */
    XTUML_OAL_STMT_TRACE( 2, "UI::setData(unit:meters, value:distance)" );
    Tracking_UI_setData( GPSWatch_Unit_meters_e, distance );
  }
  /* UI::setIndicator(Display::goalDispositionIndicator()) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setIndicator(Display::goalDispositionIndicator())" );
  Tracking_UI_setIndicator( Tracking_Display_op_goalDispositionIndicator() );
}

/*
 * State 2:  [displaySpeed]
 */
static void Tracking_Display_act2( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_act2( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  r_t speed;Tracking_WorkoutSession * session=0;
  /* SELECT one session RELATED BY self->WorkoutSession[R7.indicates current status of] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one session RELATED BY self->WorkoutSession[R7.indicates current status of]" );
  session = ( 0 != self ) ? self->WorkoutSession_R7_indicates_current_status_of : 0;
  /* ASSIGN speed = session.currentSpeed */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN speed = session.currentSpeed" );
  speed = Tracking_WorkoutSession_MDA_currentSpeed( session );
  /* UI::setData(unit:kmPerHour, value:speed) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setData(unit:kmPerHour, value:speed)" );
  Tracking_UI_setData( GPSWatch_Unit_kmPerHour_e, speed );
  /* UI::setIndicator(Display::goalDispositionIndicator()) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setIndicator(Display::goalDispositionIndicator())" );
  Tracking_UI_setIndicator( Tracking_Display_op_goalDispositionIndicator() );
}

/*
 * State 3:  [displayPace]
 */
static void Tracking_Display_act3( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_act3( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  r_t pace;Tracking_WorkoutSession * session=0;
  /* SELECT one session RELATED BY self->WorkoutSession[R7.indicates current status of] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one session RELATED BY self->WorkoutSession[R7.indicates current status of]" );
  session = ( 0 != self ) ? self->WorkoutSession_R7_indicates_current_status_of : 0;
  /* ASSIGN pace = session.currentPace */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN pace = session.currentPace" );
  pace = Tracking_WorkoutSession_MDA_currentPace( session );
  /* UI::setData(unit:minPerKm, value:pace) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setData(unit:minPerKm, value:pace)" );
  Tracking_UI_setData( GPSWatch_Unit_minPerKm_e, pace );
  /* UI::setIndicator(Display::goalDispositionIndicator()) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setIndicator(Display::goalDispositionIndicator())" );
  Tracking_UI_setIndicator( Tracking_Display_op_goalDispositionIndicator() );
}

/*
 * State 4:  [displayHeartRate]
 */
static void Tracking_Display_act4( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_act4( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  i_t heartRate;Tracking_WorkoutSession * session=0;
  /* SELECT one session RELATED BY self->WorkoutSession[R7.indicates current status of] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one session RELATED BY self->WorkoutSession[R7.indicates current status of]" );
  session = ( 0 != self ) ? self->WorkoutSession_R7_indicates_current_status_of : 0;
  /* ASSIGN heartRate = session.currentHeartRate */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN heartRate = session.currentHeartRate" );
  heartRate = Tracking_WorkoutSession_MDA_currentHeartRate( session );
  /* UI::setData(unit:bpm, value:heartRate) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setData(unit:bpm, value:heartRate)" );
  Tracking_UI_setData( GPSWatch_Unit_bpm_e, heartRate );
  /* UI::setIndicator(Display::goalDispositionIndicator()) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setIndicator(Display::goalDispositionIndicator())" );
  Tracking_UI_setIndicator( Tracking_Display_op_goalDispositionIndicator() );
}

/*
 * State 5:  [displayLapCount]
 */
static void Tracking_Display_act5( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_act5( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_ObjectSet_s lapMarkers_space={0}; Escher_ObjectSet_s * lapMarkers = &lapMarkers_space;
  /* SELECT many lapMarkers RELATED BY self->WorkoutSession[R7.indicates current status of]->TrackLog[R4.captures path in]->LapMarker[R5.has laps defined by] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many lapMarkers RELATED BY self->WorkoutSession[R7.indicates current status of]->TrackLog[R4.captures path in]->LapMarker[R5.has laps defined by]" );
  Escher_ClearSet( lapMarkers );
  {  if ( 0 != self ) {
  Tracking_WorkoutSession * WorkoutSession_R7_indicates_current_status_of = self->WorkoutSession_R7_indicates_current_status_of;
  if ( 0 != WorkoutSession_R7_indicates_current_status_of ) {
  Tracking_TrackLog * TrackLog_R4_captures_path_in = WorkoutSession_R7_indicates_current_status_of->TrackLog_R4_captures_path_in;
  if ( 0 != TrackLog_R4_captures_path_in ) {
  Tracking_LapMarker * LapMarker_R5_has_laps_defined_by;
  Escher_Iterator_s iLapMarker_R5_has_laps_defined_by;
  Escher_IteratorReset( &iLapMarker_R5_has_laps_defined_by, &TrackLog_R4_captures_path_in->LapMarker_R5_has_laps_defined_by );
  while ( 0 != ( LapMarker_R5_has_laps_defined_by = (Tracking_LapMarker *) Escher_IteratorNext( &iLapMarker_R5_has_laps_defined_by ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) lapMarkers, LapMarker_R5_has_laps_defined_by ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) lapMarkers, LapMarker_R5_has_laps_defined_by );
  }}}}}}
  /* UI::setData(unit:laps, value:cardinality lapMarkers) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setData(unit:laps, value:cardinality lapMarkers)" );
  Tracking_UI_setData( GPSWatch_Unit_laps_e, Escher_SetCardinality( lapMarkers ) );
  /* UI::setIndicator(Display::goalDispositionIndicator()) */
  XTUML_OAL_STMT_TRACE( 1, "UI::setIndicator(Display::goalDispositionIndicator())" );
  Tracking_UI_setIndicator( Tracking_Display_op_goalDispositionIndicator() );
  Escher_ClearSet( lapMarkers ); 
}

const Escher_xtUMLEventConstant_t Tracking_Displayevent1c = {
  Tracking_DOMAIN_ID, Tracking_Display_CLASS_NUMBER, TRACKING_DISPLAYEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Tracking_Displayevent2c = {
  Tracking_DOMAIN_ID, Tracking_Display_CLASS_NUMBER, TRACKING_DISPLAYEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Tracking_Display_StateEventMatrix[ 5 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Tracking_Display_STATE_1 (displayDistance) */
  { Tracking_Display_STATE_2, Tracking_Display_STATE_1 },
  /* row 2:  Tracking_Display_STATE_2 (displaySpeed) */
  { Tracking_Display_STATE_3, Tracking_Display_STATE_2 },
  /* row 3:  Tracking_Display_STATE_3 (displayPace) */
  { Tracking_Display_STATE_4, Tracking_Display_STATE_3 },
  /* row 4:  Tracking_Display_STATE_4 (displayHeartRate) */
  { Tracking_Display_STATE_5, Tracking_Display_STATE_4 },
  /* row 5:  Tracking_Display_STATE_5 (displayLapCount) */
  { Tracking_Display_STATE_1, Tracking_Display_STATE_5 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Tracking_Display_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) Tracking_Display_act1,  /* displayDistance */
    (StateAction_t) Tracking_Display_act2,  /* displaySpeed */
    (StateAction_t) Tracking_Display_act3,  /* displayPace */
    (StateAction_t) Tracking_Display_act4,  /* displayHeartRate */
    (StateAction_t) Tracking_Display_act5  /* displayLapCount */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 6 ] = {
    "",
    "displayDistance",
    "displaySpeed",
    "displayPace",
    "displayHeartRate",
    "displayLapCount"
  };

/*
 * instance state machine event dispatching
 */
void
Tracking_Display_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 5 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = Tracking_Display_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 5 ) {
        STATE_TXN_START_TRACE( "Display", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Tracking_Display_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "Display", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


