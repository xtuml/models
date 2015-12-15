/*----------------------------------------------------------------------------
 * File:  Location.c
 *
 * UML Component Port Messages
 * Component/Module Name:  Location
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.
 */

#include "GPSWatch_sys_types.h"
#include "Location.h"
#include "MATH_bridge.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "Tracking.h"
#include "Location_classes.h"

/*
 * Interface:  LocationProvider
 * Provided Port:  LOC
 * To Provider Message:  getLocation
 */
void
Location_LOC_getLocation( r_t * p_latitude, r_t * p_longitude )
{
  Location_GPS * gps=0;
  /* SELECT any gps FROM INSTANCES OF GPS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any gps FROM INSTANCES OF GPS" );
  gps = (Location_GPS *) Escher_SetGetAny( &pG_Location_GPS_extent.active );
  /* ASSIGN PARAM.latitude = gps.currentLatitude */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN PARAM.latitude = gps.currentLatitude" );
  (*p_latitude) = gps->currentLatitude;
  /* ASSIGN PARAM.longitude = gps.currentLongitude */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN PARAM.longitude = gps.currentLongitude" );
  (*p_longitude) = gps->currentLongitude;
}

/*
 * Interface:  LocationProvider
 * Provided Port:  LOC
 * To Provider Message:  registerListener
 */
void
Location_LOC_registerListener()
{
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( (void *) 0, &Location_GPS_CBevent2c );
    Escher_SendEvent( e );
  }

}

/*
 * Interface:  LocationProvider
 * Provided Port:  LOC
 * To Provider Message:  unregisterListener
 */
void
Location_LOC_unregisterListener()
{
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( (void *) 0, &Location_GPS_CBevent3c );
    Escher_SendEvent( e );
  }

}

/*
 * Interface:  LocationUtil
 * Provided Port:  UTIL
 * To Provider Message:  getDistance
 */
r_t
Location_UTIL_getDistance( const r_t p_fromLat, const r_t p_fromLong, const r_t p_toLat, const r_t p_toLong )
{
  r_t sumSquares;r_t deltaLong;r_t deltaLat;
  /* ASSIGN deltaLat = ( PARAM.toLat - PARAM.fromLat ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN deltaLat = ( PARAM.toLat - PARAM.fromLat )" );
  deltaLat = ( p_toLat - p_fromLat );
  /* ASSIGN deltaLong = ( PARAM.toLong - PARAM.fromLong ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN deltaLong = ( PARAM.toLong - PARAM.fromLong )" );
  deltaLong = ( p_toLong - p_fromLong );
  /* ASSIGN sumSquares = ( ( deltaLat * deltaLat ) + ( deltaLong * deltaLong ) ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN sumSquares = ( ( deltaLat * deltaLat ) + ( deltaLong * deltaLong ) )" );
  sumSquares = ( ( deltaLat * deltaLat ) + ( deltaLong * deltaLong ) );
  /* RETURN ( ( MATH::sqrt(sumSquares) * kmPerDegree ) * 1000 ) */
  XTUML_OAL_STMT_TRACE( 1, "RETURN ( ( MATH::sqrt(sumSquares) * kmPerDegree ) * 1000 )" );
  {r_t xtumlOALrv = ( ( MATH_sqrt( sumSquares ) * 111.32 ) * 1000 );
  return xtumlOALrv;}
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const Location_class_info[ Location_MAX_CLASS_NUMBERS ] = {
  &pG_Location_GPS_extent,
  0
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t Location_EventDispatcher[ Location_STATE_MODELS ] = {
  Location_class_dispatchers
};

void Location_execute_initialization()
{
}
