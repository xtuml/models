/*----------------------------------------------------------------------------
 * File:  Location.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  Location
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/
/*
 Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.
 */

#include "Location.h"

/*
 * Interface:  LocationProvider
 * Provided Port:  LOC
 * To Provider Message:  registerListener
 */
void
Location::LocationProvider_registerListener()
{
  Location * thismodule = this;
  /* Provided Port:  LOC */
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &Location_GPS_CBevent2c );
  e->sc_e = &(thismodule->sc_Location_GPS_CBevent2);
    thismodule->Escher_SendEvent( e );
  }



}

/*
 * Interface:  LocationProvider
 * Provided Port:  LOC
 * To Provider Message:  unregisterListener
 */
void
Location::LocationProvider_unregisterListener()
{
  Location * thismodule = this;
  /* Provided Port:  LOC */
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &Location_GPS_CBevent3c );
  e->sc_e = &(thismodule->sc_Location_GPS_CBevent3);
    thismodule->Escher_SendEvent( e );
  }



}

/*
 * Interface:  LocationUtil
 * Provided Port:  UTIL
 * To Provider Message:  getDistance
 */
r4_t
Location::LocationUtil_getDistance( GPSsysc_sdt_Location p_getDistance_fromLocation, GPSsysc_sdt_Location p_getDistance_toLocation)
{
  Location * thismodule = this;
  /* Provided Port:  UTIL */
  /* RETURN ( PARAM.getDistance_fromLocation.longitude + PARAM.getDistance_toLocation.latitude ) */
  XTUML_OAL_STMT_TRACE( 1, "RETURN ( PARAM.getDistance_fromLocation.longitude + PARAM.getDistance_toLocation.latitude )" );
  return ( p_getDistance_fromLocation.longitude + p_getDistance_toLocation.latitude );


}

#if Location_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const Location::Location_class_info[ Location_MAX_CLASS_NUMBERS ] = {
  Location_CLASS_INFO_INIT
};
#endif


/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
EventTaker_t Location::Location_EventDispatcher[ Location_STATE_MODELS ] = {
  Location_class_dispatchers
};
/*
 * UML Domain Functions (Synchronous Services)
 */

// state machine dispatcher process for GPS
void Location::Location_GPS_sm()
{
  Location * thismodule = this;
  while ( true ) {
    thismodule->ooa_loop( Location_DOMAIN_ID, Location_GPS_CLASS_NUMBER, (void *) this );
    wait();
  }
}

