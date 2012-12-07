/*----------------------------------------------------------------------------
 * File:  Location.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef LOCATION_H
#define LOCATION_H


class Location; // forward reference
#include "GPSsysc_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"


#define Location_STATE_MODELS 2

#define Location_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define Location_GPS_CLASS_NUMBER 0
#define Location_GPS_CLASS_NUMBER_CB 1
#define Location_MAX_CLASS_NUMBERS 2

/* Provide a map of classes to task numbers.  */
#define Location_TASK_NUMBERS  0, 0

#define Location_CLASS_INFO_INIT\
  &pG_Location_GPS_extent,\
  0

#define Location_class_dispatchers\
  0,\
  Location_GPS_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef class Location_GPS Location_GPS;
typedef class Location_GPS_CB Location_GPS_CB;

/* union of class declarations so we may derive largest class size */
#define Location_CLASS_U \
  char Location_dummy;\



#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "Location.h"
#include "Location_GPS_class.h"


/*
 * roll-up of all events (with their parameters) for domain Location
 */
typedef union {
  Location_GPS_CB_Events_u namespace_dummy5;
} Location_DomainEvents_u;


/*
Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.
*/
class Location : public sc_module, public LocationProvider_provision, public LocationUtil_provision, public sys_factory, public sys_events {
  public:
  sc_port< LocationProvider_requirement > LOC;
  sc_port< LocationUtil_requirement > UTIL;

  
  SC_HAS_PROCESS( Location );
  Location( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS), sys_events(sizeof(Location_DomainEvents_u), ESCHER_SYS_MAX_XTUML_EVENTS, NUM_OF_XTUML_CLASS_THREADS) 
 {
  
    // state machine dispatcher process for GPS
    SC_THREAD( Location_GPS_sm );
      dont_initialize();
      sensitive  << sc_Location_GPS_CBevent1 << sc_Location_GPS_CBevent2 << sc_Location_GPS_CBevent3;
    for ( int cn=0; cn < Location_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
    tim = new TIM( ESCHER_SYS_MAX_XTUML_TIMERS );
    SC_THREAD( timspin );
      dont_initialize();
      sensitive << sc_xtuml_timer_event;
    tim->init( &sc_xtuml_timer_event );
  }
  void timspin( void ) { while ( true ) { tim->tick(); wait(); } }
  void LocationProvider_registerListener( void );
  void LocationProvider_unregisterListener( void );
  r4_t LocationUtil_getDistance( GPSsysc_sdt_Location, GPSsysc_sdt_Location );

  // state machine process entry points
  void Location_GPS_sm( void );
  sc_event sc_Location_GPS_CBevent1, sc_Location_GPS_CBevent2, sc_Location_GPS_CBevent3;

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if Location_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return Location_class_info[cn]; }
#endif
    virtual EventTaker_t * Escher_GetEventDispatcher( void ) { return Location_EventDispatcher; }

  private:
#if Location_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const Location_class_info[];
#endif
    static EventTaker_t Location_EventDispatcher[];
};


#endif  /* LOCATION_H */
