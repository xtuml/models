/*----------------------------------------------------------------------------
 * File:  Location_GPS_class.c
 *
 * Class:       GPS  (GPS)
 * Component:   Location
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "GPSWatch_sys_types.h"
#include "LOG_bridge.h"
#include "MATH_bridge.h"
#include "TIM_bridge.h"
#include "Location_classes.h"

/*
 * class operation:  activate
 */
void
Location_GPS_op_activate()
{
  Escher_xtUMLEvent_t * tick;Location_GPS * gps=0;
  /* SELECT any gps FROM INSTANCES OF GPS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any gps FROM INSTANCES OF GPS" );
  gps = (Location_GPS *) Escher_SetGetAny( &pG_Location_GPS_extent.active );
  /* IF ( empty gps ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( empty gps )" );
  if ( ( 0 == gps ) ) {
    /* CREATE OBJECT INSTANCE gps OF GPS */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE gps OF GPS" );
    gps = (Location_GPS *) Escher_CreateInstance( Location_DOMAIN_ID, Location_GPS_CLASS_NUMBER );
    /* ASSIGN gps.motionSegments = 0 */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.motionSegments = 0" );
    gps->motionSegments = 0;
    /* ASSIGN gps.currentLatitude = initialLatitude */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.currentLatitude = initialLatitude" );
    gps->currentLatitude = 32.432237;
    /* ASSIGN gps.currentLongitude = initialLongitude */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.currentLongitude = initialLongitude" );
    gps->currentLongitude = -110.812283;
  }
  /* CREATE EVENT INSTANCE tick(  ) TO CLASS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE tick(  ) TO CLASS" );
  tick = Escher_NewxtUMLEvent( (void *) 0, &Location_GPS_CBevent1c );
  /* ASSIGN gps.timer = TIM::timer_start_recurring(event_inst:tick, microseconds:updatePeriod) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN gps.timer = TIM::timer_start_recurring(event_inst:tick, microseconds:updatePeriod)" );
  gps->timer = TIM_timer_start_recurring( (Escher_xtUMLEvent_t *)tick, 1000000 );

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      GPS  (GPS)
 * Component:  Location
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Location_GPS_container[ Location_GPS_MAX_EXTENT_SIZE ];
static Location_GPS Location_GPS_instances[ Location_GPS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Location_GPS_extent = {
  {0}, {0}, &Location_GPS_container[ 0 ],
  (Escher_iHandle_t) &Location_GPS_instances,
  sizeof( Location_GPS ), 0, Location_GPS_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      GPS  (GPS)
 * Component:  Location
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [idle]
 */
static void Location_GPS_CB_act1( Location_GPS *, const Escher_xtUMLEvent_t * const );
static void
Location_GPS_CB_act1( Location_GPS * self, const Escher_xtUMLEvent_t * const event )
{
  bool res;Location_GPS * gps=0;
  /* SELECT any gps FROM INSTANCES OF GPS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any gps FROM INSTANCES OF GPS" );
  gps = (Location_GPS *) Escher_SetGetAny( &pG_Location_GPS_extent.active );
  /* ASSIGN res = TIM::timer_cancel(timer_inst_ref:gps.timer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN res = TIM::timer_cancel(timer_inst_ref:gps.timer)" );
  res = TIM_timer_cancel( gps->timer );
  /* LOG::LogInfo( message:Location listener unregistered. ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:Location listener unregistered. )" );
  LOG_LogInfo( "Location listener unregistered." );
  /* IF ( not res ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not res )" );
  if ( !res ) {
    /* LOG::LogFailure( message:Location listener: timer_cancel() failed. ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Location listener: timer_cancel() failed. )" );
    LOG_LogFailure( "Location listener: timer_cancel() failed." );
  }
}

/*
 * State 2:  [locating]
 */
static void Location_GPS_CB_act2( Location_GPS *, const Escher_xtUMLEvent_t * const );
static void
Location_GPS_CB_act2( Location_GPS * self, const Escher_xtUMLEvent_t * const event )
{
  Location_GPS * gps=0;
  /* SELECT any gps FROM INSTANCES OF GPS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any gps FROM INSTANCES OF GPS" );
  gps = (Location_GPS *) Escher_SetGetAny( &pG_Location_GPS_extent.active );
  /* IF ( ( ( gps.motionSegments % 3 ) == 0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( ( gps.motionSegments % 3 ) == 0 ) )" );
  if ( ( ( gps->motionSegments % 3 ) == 0 ) ) {
    /* ASSIGN gps.currentLongitude = ( gps.currentLongitude + ( longitudeIncrement * 2 ) ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.currentLongitude = ( gps.currentLongitude + ( longitudeIncrement * 2 ) )" );
    gps->currentLongitude = ( gps->currentLongitude + ( 0.00002 * 2 ) );
    /* ASSIGN gps.currentLatitude = ( gps.currentLatitude + latitudeIncrement ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.currentLatitude = ( gps.currentLatitude + latitudeIncrement )" );
    gps->currentLatitude = ( gps->currentLatitude + 0.00001 );
  }
  else if ( ( ( gps->motionSegments % 5 ) == 0 ) ) {
    /* ASSIGN gps.currentLongitude = ( gps.currentLongitude + longitudeIncrement ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.currentLongitude = ( gps.currentLongitude + longitudeIncrement )" );
    gps->currentLongitude = ( gps->currentLongitude + 0.00002 );
    /* ASSIGN gps.currentLatitude = ( gps.currentLatitude + ( latitudeIncrement * 3 ) ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.currentLatitude = ( gps.currentLatitude + ( latitudeIncrement * 3 ) )" );
    gps->currentLatitude = ( gps->currentLatitude + ( 0.00001 * 3 ) );
  }
  else {
    /* ASSIGN gps.currentLongitude = ( gps.currentLongitude + longitudeIncrement ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.currentLongitude = ( gps.currentLongitude + longitudeIncrement )" );
    gps->currentLongitude = ( gps->currentLongitude + 0.00002 );
    /* ASSIGN gps.currentLatitude = ( gps.currentLatitude + latitudeIncrement ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN gps.currentLatitude = ( gps.currentLatitude + latitudeIncrement )" );
    gps->currentLatitude = ( gps->currentLatitude + 0.00001 );
  }
}

/*
 */
static void Location_GPS_CB_xact1( Location_GPS *, const Escher_xtUMLEvent_t * const );
static void
Location_GPS_CB_xact1( Location_GPS * self, const Escher_xtUMLEvent_t * const event )
{
  /* GPS::activate() */
  XTUML_OAL_STMT_TRACE( 1, "GPS::activate()" );
  Location_GPS_op_activate();
  /* LOG::LogInfo( message:Location listener registered. ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:Location listener registered. )" );
  LOG_LogInfo( "Location listener registered." );
}

/*
 */
static void Location_GPS_CB_xact2( Location_GPS *, const Escher_xtUMLEvent_t * const );
static void
Location_GPS_CB_xact2( Location_GPS * self, const Escher_xtUMLEvent_t * const event )
{
  Location_GPS * gps=0;
  /* SELECT any gps FROM INSTANCES OF GPS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any gps FROM INSTANCES OF GPS" );
  gps = (Location_GPS *) Escher_SetGetAny( &pG_Location_GPS_extent.active );
  /* ASSIGN gps.motionSegments = ( gps.motionSegments + 1 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN gps.motionSegments = ( gps.motionSegments + 1 )" );
  gps->motionSegments = ( gps->motionSegments + 1 );
}

const Escher_xtUMLEventConstant_t Location_GPS_CBevent1c = {
  Location_DOMAIN_ID, Location_GPS_CLASS_NUMBER_CB, LOCATION_GPS_CBEVENT1NUM,
  ESCHER_IS_ASSIGNER_EVENT };

const Escher_xtUMLEventConstant_t Location_GPS_CBevent2c = {
  Location_DOMAIN_ID, Location_GPS_CLASS_NUMBER_CB, LOCATION_GPS_CBEVENT2NUM,
  ESCHER_IS_ASSIGNER_EVENT };

const Escher_xtUMLEventConstant_t Location_GPS_CBevent3c = {
  Location_DOMAIN_ID, Location_GPS_CLASS_NUMBER_CB, LOCATION_GPS_CBEVENT3NUM,
  ESCHER_IS_ASSIGNER_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Location_GPS_CB_StateEventMatrix[ 2 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Location_GPS_CB_STATE_1 (idle) */
  { EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, (1<<8) + Location_GPS_CB_STATE_2 },
  /* row 2:  Location_GPS_CB_STATE_2 (locating) */
  { (2<<8) + Location_GPS_CB_STATE_2, Location_GPS_CB_STATE_1, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Location_GPS_CB_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) Location_GPS_CB_act1,  /* idle */
    (StateAction_t) Location_GPS_CB_act2  /* locating */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings_CB[ 3 ] = {
    "",
    "idle",
    "locating"
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t Location_GPS_CB_xacts[ 2 ] = {
    (StateAction_t) Location_GPS_CB_xact1,
    (StateAction_t) Location_GPS_CB_xact2
  };

/*
 * class-based state machine event dispatching
 */
void
Location_GPS_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { Location_GPS_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_SEMcell_t next_state = Location_GPS_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 2 ) {
    STATE_TXN_START_TRACE( "GPS", current_state, state_name_strings_CB[ current_state ] );
    /* Execute the state action and update the current state.  */
    ( *Location_GPS_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
    STATE_TXN_END_TRACE( "GPS", next_state, state_name_strings_CB[ next_state ] );
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
      STATE_TXN_CH_TRACE( "GPS", current_state );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
      STATE_TXN_IG_TRACE( "GPS", current_state );
    } else {
      STATE_TXN_START_TRACE( "GPS", current_state, state_name_strings_CB[ current_state ] );
      ( *Location_GPS_CB_xacts[ (next_state>>8)-1 ] )( &class_based_singleton, event );
      next_state = next_state & 0x00ff;
      class_based_singleton.current_state = next_state;
      ( *Location_GPS_CB_acts[ next_state ] )( &class_based_singleton, event );
      STATE_TXN_END_TRACE( "GPS", next_state, state_name_strings_CB[ next_state ] );
    }
  }
}


