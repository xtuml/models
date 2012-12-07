/*----------------------------------------------------------------------------
 * File:  Tracking.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_H
#define TRACKING_H


class Tracking; // forward reference
#include "GPSsysc_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"


#define Tracking_STATE_MODELS 3

#define Tracking_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define Tracking_Display_CLASS_NUMBER 0
#define Tracking_WorkoutTimer_CLASS_NUMBER 1
#define Tracking_Display_CLASS_NUMBER_CB 2
#define Tracking_HeartRateSample_CLASS_NUMBER 3
#define Tracking_LapMarker_CLASS_NUMBER 4
#define Tracking_TrackLog_CLASS_NUMBER 5
#define Tracking_TrackPoint_CLASS_NUMBER 6
#define Tracking_MAX_CLASS_NUMBERS 7

/* Provide a map of classes to task numbers.  */
#define Tracking_TASK_NUMBERS  0, 0, 0

#define Tracking_CLASS_INFO_INIT\
  &pG_Tracking_Display_extent,\
  &pG_Tracking_WorkoutTimer_extent,\
  0,\
  &pG_Tracking_HeartRateSample_extent,\
  &pG_Tracking_LapMarker_extent,\
  &pG_Tracking_TrackLog_extent,\
  &pG_Tracking_TrackPoint_extent

#define Tracking_class_dispatchers\
  0,\
  Tracking_WorkoutTimer_Dispatch,\
  Tracking_Display_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef class Tracking_Display Tracking_Display;
typedef class Tracking_WorkoutTimer Tracking_WorkoutTimer;
typedef class Tracking_Display_CB Tracking_Display_CB;
typedef class Tracking_HeartRateSample Tracking_HeartRateSample;
typedef class Tracking_LapMarker Tracking_LapMarker;
typedef class Tracking_TrackLog Tracking_TrackLog;
typedef class Tracking_TrackPoint Tracking_TrackPoint;

/* union of class declarations so we may derive largest class size */
#define Tracking_CLASS_U \
  char Tracking_dummy;\



#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "Tracking.h"
#include "Tracking_Display_class.h"
#include "Tracking_HeartRateSample_class.h"
#include "Tracking_LapMarker_class.h"
#include "Tracking_TrackLog_class.h"
#include "Tracking_TrackPoint_class.h"
#include "Tracking_WorkoutTimer_class.h"


/*
 * roll-up of all events (with their parameters) for domain Tracking
 */
typedef union {
  Tracking_WorkoutTimer_Events_u namespace_dummy6;
  Tracking_Display_CB_Events_u namespace_dummy7;
} Tracking_DomainEvents_u;


/*
The Tracking component encapsulates the entire application software. This is the 
only component in the system from which code will be generated for the final 
product.
*/
class Tracking : public sc_module, public LocationProvider_requirement, public UIif_requirement, public HeartRateProvider_requirement, public LocationUtil_requirement, public sys_factory, public sys_events {
  public:
  sc_port< LocationProvider_provision > LOC;
  sc_port< UIif_provision > UIport;
  sc_port< HeartRateProvider_provision > HR;
  sc_port< LocationUtil_provision > UTIL;

  
  SC_HAS_PROCESS( Tracking );
  Tracking( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS), sys_events(sizeof(Tracking_DomainEvents_u), ESCHER_SYS_MAX_XTUML_EVENTS, NUM_OF_XTUML_CLASS_THREADS) 
 {
  
    // state machine dispatcher process for Display
    SC_THREAD( Tracking_Display_sm );
      dont_initialize();
      sensitive  << sc_Tracking_Display_CBevent1 << sc_Tracking_Display_CBevent2;
    // state machine dispatcher process for WorkoutTimer
    SC_THREAD( Tracking_WorkoutTimer_sm );
      dont_initialize();
      sensitive  << sc_Tracking_WorkoutTimerevent1 << sc_Tracking_WorkoutTimerevent2 << sc_Tracking_WorkoutTimerevent3;
    for ( int cn=0; cn < Tracking_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
    tim = new TIM( ESCHER_SYS_MAX_XTUML_TIMERS );
    SC_THREAD( timspin );
      dont_initialize();
      sensitive << sc_xtuml_timer_event;
    tim->init( &sc_xtuml_timer_event );
  }
  void timspin( void ) { while ( true ) { tim->tick(); wait(); } }
  void LocationProvider_locationUpdate( GPSsysc_sdt_Location );
  void UIif_startStopPressed( void );
  void UIif_lapResetPressed( void );
  void UIif_lightPressed( void );
  void UIif_modePressed( void );
  void UIif_setTargetPressed( void );
  void HeartRateProvider_heartRateChanged( r4_t );

  // state machine process entry points
  void Tracking_Display_sm( void );
  void Tracking_WorkoutTimer_sm( void );
  sc_event sc_Tracking_Display_CBevent1, sc_Tracking_Display_CBevent2;
  sc_event sc_Tracking_WorkoutTimerevent1, sc_Tracking_WorkoutTimerevent2, sc_Tracking_WorkoutTimerevent3;

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if Tracking_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return Tracking_class_info[cn]; }
#endif
    virtual EventTaker_t * Escher_GetEventDispatcher( void ) { return Tracking_EventDispatcher; }

  private:
#if Tracking_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const Tracking_class_info[];
#endif
    static EventTaker_t Tracking_EventDispatcher[];
};


#endif  /* TRACKING_H */
