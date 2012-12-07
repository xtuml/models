/*----------------------------------------------------------------------------
 * File:  HeartRateMonitor.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef HEARTRATEMONITOR_H
#define HEARTRATEMONITOR_H


class HeartRateMonitor; // forward reference
#include "GPSsysc_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"


#define HeartRateMonitor_STATE_MODELS 2

#define HeartRateMonitor_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define HeartRateMonitor_HeartRateMonitor_CLASS_NUMBER 0
#define HeartRateMonitor_HeartRateMonitor_CLASS_NUMBER_CB 1
#define HeartRateMonitor_MAX_CLASS_NUMBERS 2

/* Provide a map of classes to task numbers.  */
#define HeartRateMonitor_TASK_NUMBERS  0, 0

#define HeartRateMonitor_CLASS_INFO_INIT\
  &pG_HeartRateMonitor_HeartRateMonitor_extent,\
  0

#define HeartRateMonitor_class_dispatchers\
  0,\
  HeartRateMonitor_HeartRateMonitor_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef class HeartRateMonitor_HeartRateMonitor HeartRateMonitor_HeartRateMonitor;
typedef class HeartRateMonitor_HeartRateMonitor_CB HeartRateMonitor_HeartRateMonitor_CB;

/* union of class declarations so we may derive largest class size */
#define HeartRateMonitor_CLASS_U \
  char HeartRateMonitor_dummy;\



#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "HeartRateMonitor.h"
#include "HeartRateMonitor_HeartRateMonitor_class.h"


/*
 * roll-up of all events (with their parameters) for domain HeartRateMonitor
 */
typedef union {
  HeartRateMonitor_HeartRateMonitor_CB_Events_u namespace_dummy4;
} HeartRateMonitor_DomainEvents_u;


/*
Simulates a pulse monitor hardware/firmware. This component is only behavioral and included for testing purposes.
*/
class HeartRateMonitor : public sc_module, public HeartRateProvider_provision, public sys_factory, public sys_events {
  public:
  sc_port< HeartRateProvider_requirement > HR;

  
  SC_HAS_PROCESS( HeartRateMonitor );
  HeartRateMonitor( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS), sys_events(sizeof(HeartRateMonitor_DomainEvents_u), ESCHER_SYS_MAX_XTUML_EVENTS, NUM_OF_XTUML_CLASS_THREADS) 
 {
  
    // state machine dispatcher process for HeartRateMonitor
    SC_THREAD( HeartRateMonitor_HeartRateMonitor_sm );
      dont_initialize();
      sensitive  << sc_HeartRateMonitor_HeartRateMonitor_CBevent1 << sc_HeartRateMonitor_HeartRateMonitor_CBevent2 << sc_HeartRateMonitor_HeartRateMonitor_CBevent3;
    for ( int cn=0; cn < HeartRateMonitor_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
    tim = new TIM( ESCHER_SYS_MAX_XTUML_TIMERS );
    SC_THREAD( timspin );
      dont_initialize();
      sensitive << sc_xtuml_timer_event;
    tim->init( &sc_xtuml_timer_event );
  }
  void timspin( void ) { while ( true ) { tim->tick(); wait(); } }
  void HeartRateProvider_registerListener( void );
  void HeartRateProvider_unregisterListener( void );

  // state machine process entry points
  void HeartRateMonitor_HeartRateMonitor_sm( void );
  sc_event sc_HeartRateMonitor_HeartRateMonitor_CBevent1, sc_HeartRateMonitor_HeartRateMonitor_CBevent2, sc_HeartRateMonitor_HeartRateMonitor_CBevent3;

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if HeartRateMonitor_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return HeartRateMonitor_class_info[cn]; }
#endif
    virtual EventTaker_t * Escher_GetEventDispatcher( void ) { return HeartRateMonitor_EventDispatcher; }

  private:
#if HeartRateMonitor_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const HeartRateMonitor_class_info[];
#endif
    static EventTaker_t HeartRateMonitor_EventDispatcher[];
};


#endif  /* HEARTRATEMONITOR_H */
