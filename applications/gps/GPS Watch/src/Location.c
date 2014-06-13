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
 * From Provider Message:  locationUpdate
 */
void
Location_LOC_locationUpdate( GPSWatch_sdt_Location p_location )
{
  Tracking_LOC_locationUpdate(  p_location );
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
Location_UTIL_getDistance( GPSWatch_sdt_Location p_fromLocation, GPSWatch_sdt_Location p_toLocation )
{
  r_t sumSquares;r_t deltaLong;r_t deltaLat;
  /* ASSIGN deltaLat = ( PARAM.toLocation.latitude - PARAM.fromLocation.latitude ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN deltaLat = ( PARAM.toLocation.latitude - PARAM.fromLocation.latitude )" );
  deltaLat = ( p_toLocation.latitude - p_fromLocation.latitude );
  /* ASSIGN deltaLong = ( PARAM.toLocation.longitude - PARAM.fromLocation.longitude ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN deltaLong = ( PARAM.toLocation.longitude - PARAM.fromLocation.longitude )" );
  deltaLong = ( p_toLocation.longitude - p_fromLocation.longitude );
  /* ASSIGN sumSquares = ( ( deltaLat * deltaLat ) + ( deltaLong * deltaLong ) ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN sumSquares = ( ( deltaLat * deltaLat ) + ( deltaLong * deltaLong ) )" );
  sumSquares = ( ( deltaLat * deltaLat ) + ( deltaLong * deltaLong ) );
  /* RETURN MATH::sqrt(x:sumSquares) */
  XTUML_OAL_STMT_TRACE( 1, "RETURN MATH::sqrt(x:sumSquares)" );
  return MATH_sqrt( sumSquares );}

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
