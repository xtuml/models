/*----------------------------------------------------------------------------
 * File:  Tracking_Display_class.cpp
 *
 * Class:       Display  (Display)
 * Component:   Tracking
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSsysc_sys_types.h"
#include "Tracking.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static sys_sets::Escher_SetElement_s Tracking_Display_container[ Tracking_Display_MAX_EXTENT_SIZE ];
static Tracking_Display Tracking_Display_instances[ Tracking_Display_MAX_EXTENT_SIZE ];
sys_sets::Escher_Extent_t pG_Tracking_Display_extent = {
  {0}, {0}, &Tracking_Display_container[ 0 ],
  (Escher_iHandle_t) &Tracking_Display_instances,
  sizeof( Tracking_Display ), 0, Tracking_Display_MAX_EXTENT_SIZE
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
static void Tracking_Display_CB_act1( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_CB_act1( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  r4_t v_distance; Tracking_TrackLog * v_trackLog; 
  /* ASSIGN distance = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN distance = 0.0" );
  v_distance = 0.0;
  /* SELECT any trackLog FROM INSTANCES OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any trackLog FROM INSTANCES OF TrackLog" );
  v_trackLog = (Tracking_TrackLog *) Escher_SetGetAny( &pG_Tracking_TrackLog_extent.active );
  /* IF ( not empty trackLog ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty trackLog )" );
  if ( !( 0 == v_trackLog ) ) {
    /* ASSIGN distance = trackLog.distance */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN distance = trackLog.distance" );
    v_distance = v_trackLog->distance;
  }
  /* IF ( ( distance > 1000.0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( distance > 1000.0 ) )" );
  if ( ( v_distance > 1000.0 ) ) {
    /* UIport::setData(unit:km, value:( distance / 1000.0 )) */
    XTUML_OAL_STMT_TRACE( 2, "UIport::setData(unit:km, value:( distance / 1000.0 ))" );
    thismodule->UIport->UIif_setData( GPSsysc_Unit_km_e, ( v_distance / 1000.0 ) );
  }
  else {
    /* UIport::setData(unit:meters, value:distance) */
    XTUML_OAL_STMT_TRACE( 2, "UIport::setData(unit:meters, value:distance)" );
    thismodule->UIport->UIif_setData( GPSsysc_Unit_meters_e, v_distance );
  }
}

/*
 * State 2:  [displaySpeed]
 */
static void Tracking_Display_CB_act2( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_CB_act2( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  r4_t v_speed; Tracking_TrackLog * v_trackLog; 
  /* ASSIGN speed = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN speed = 0.0" );
  v_speed = 0.0;
  /* SELECT any trackLog FROM INSTANCES OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any trackLog FROM INSTANCES OF TrackLog" );
  v_trackLog = (Tracking_TrackLog *) Escher_SetGetAny( &pG_Tracking_TrackLog_extent.active );
  /* IF ( not empty trackLog ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty trackLog )" );
  if ( !( 0 == v_trackLog ) ) {
    /* ASSIGN speed = trackLog.currentSpeed */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN speed = trackLog.currentSpeed" );
    v_speed = v_trackLog->currentSpeed;
  }
  /* UIport::setData(unit:kmPerHour, value:speed) */
  XTUML_OAL_STMT_TRACE( 1, "UIport::setData(unit:kmPerHour, value:speed)" );
  thismodule->UIport->UIif_setData( GPSsysc_Unit_kmPerHour_e, v_speed );
}

/*
 * State 3:  [displayPace]
 */
static void Tracking_Display_CB_act3( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_CB_act3( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  r4_t v_pace; Tracking_TrackLog * v_trackLog; 
  /* ASSIGN pace = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN pace = 0.0" );
  v_pace = 0.0;
  /* SELECT any trackLog FROM INSTANCES OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any trackLog FROM INSTANCES OF TrackLog" );
  v_trackLog = (Tracking_TrackLog *) Escher_SetGetAny( &pG_Tracking_TrackLog_extent.active );
  /* IF ( not empty trackLog ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty trackLog )" );
  if ( !( 0 == v_trackLog ) ) {
    /* ASSIGN pace = trackLog.currentPace */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN pace = trackLog.currentPace" );
    v_pace = Tracking_TrackLog_MDA_currentPace( v_trackLog );
  }
  /* UIport::setData(unit:minPerKm, value:pace) */
  XTUML_OAL_STMT_TRACE( 1, "UIport::setData(unit:minPerKm, value:pace)" );
  thismodule->UIport->UIif_setData( GPSsysc_Unit_minPerKm_e, v_pace );
}

/*
 * State 4:  [displayHeartRate]
 */
static void Tracking_Display_CB_act4( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_CB_act4( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  r4_t v_heartRate; Tracking_TrackLog * v_trackLog; 
  /* ASSIGN heartRate = 0.0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN heartRate = 0.0" );
  v_heartRate = 0.0;
  /* SELECT any trackLog FROM INSTANCES OF TrackLog */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any trackLog FROM INSTANCES OF TrackLog" );
  v_trackLog = (Tracking_TrackLog *) Escher_SetGetAny( &pG_Tracking_TrackLog_extent.active );
  /* IF ( not empty trackLog ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not empty trackLog )" );
  if ( !( 0 == v_trackLog ) ) {
    /* ASSIGN heartRate = trackLog.currentHeartRate */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN heartRate = trackLog.currentHeartRate" );
    v_heartRate = v_trackLog->currentHeartRate;
  }
  /* UIport::setData(unit:bpm, value:heartRate) */
  XTUML_OAL_STMT_TRACE( 1, "UIport::setData(unit:bpm, value:heartRate)" );
  thismodule->UIport->UIif_setData( GPSsysc_Unit_bpm_e, v_heartRate );
}

/*
 * State 5:  [displayLapCount]
 */
static void Tracking_Display_CB_act5( Tracking_Display *, const Escher_xtUMLEvent_t * const );
static void
Tracking_Display_CB_act5( Tracking_Display * self, const Escher_xtUMLEvent_t * const event )
{
  Tracking * thismodule = (Tracking *) event->thismodule;
  sys_sets::Escher_ObjectSet_s v_lapMarkers_space={0}; sys_sets::Escher_ObjectSet_s * v_lapMarkers = &v_lapMarkers_space; /* v_lapMarkers (LapMarker) */ 
  /* SELECT many lapMarkers FROM INSTANCES OF LapMarker */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many lapMarkers FROM INSTANCES OF LapMarker" );
  thismodule->Escher_CopySet( v_lapMarkers, &pG_Tracking_LapMarker_extent.active );
  /* UIport::setData(unit:laps, value:cardinality lapMarkers) */
  XTUML_OAL_STMT_TRACE( 1, "UIport::setData(unit:laps, value:cardinality lapMarkers)" );
  thismodule->UIport->UIif_setData( GPSsysc_Unit_laps_e, thismodule->Escher_SetCardinality( v_lapMarkers ) );
  thismodule->Escher_ClearSet( v_lapMarkers );
}

const Escher_xtUMLEventConstant_t Tracking_Display_CBevent1c = {
  Tracking_DOMAIN_ID, Tracking_Display_CLASS_NUMBER_CB, TRACKING_DISPLAY_CBEVENT1NUM,
  ESCHER_IS_ASSIGNER_EVENT, 0 };

const Escher_xtUMLEventConstant_t Tracking_Display_CBevent2c = {
  Tracking_DOMAIN_ID, Tracking_Display_CLASS_NUMBER_CB, TRACKING_DISPLAY_CBEVENT2NUM,
  ESCHER_IS_ASSIGNER_EVENT, 0 };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Tracking_Display_CB_StateEventMatrix[ 5 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Tracking_Display_CB_STATE_1 (displayDistance) */
  { Tracking_Display_CB_STATE_1, Tracking_Display_CB_STATE_2 },
  /* row 2:  Tracking_Display_CB_STATE_2 (displaySpeed) */
  { Tracking_Display_CB_STATE_2, Tracking_Display_CB_STATE_3 },
  /* row 3:  Tracking_Display_CB_STATE_3 (displayPace) */
  { Tracking_Display_CB_STATE_3, Tracking_Display_CB_STATE_4 },
  /* row 4:  Tracking_Display_CB_STATE_4 (displayHeartRate) */
  { Tracking_Display_CB_STATE_4, Tracking_Display_CB_STATE_5 },
  /* row 5:  Tracking_Display_CB_STATE_5 (displayLapCount) */
  { Tracking_Display_CB_STATE_5, Tracking_Display_CB_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Tracking_Display_CB_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) Tracking_Display_CB_act1,  /* displayDistance */
    (StateAction_t) Tracking_Display_CB_act2,  /* displaySpeed */
    (StateAction_t) Tracking_Display_CB_act3,  /* displayPace */
    (StateAction_t) Tracking_Display_CB_act4,  /* displayHeartRate */
    (StateAction_t) Tracking_Display_CB_act5  /* displayLapCount */
  };

/*
 * class-based state machine event dispatching
 */
void
Tracking_Display_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { Tracking_Display_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_StateNumber_t next_state = Tracking_Display_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 5 ) {
    /* Execute the state action and update the current state.  */
    ( *Tracking_Display_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
    } else {
      /* Translation/memory/stack error, etc - TBD */
    }
  }
}


