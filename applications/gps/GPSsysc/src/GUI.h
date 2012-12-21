/*----------------------------------------------------------------------------
 * File:  GUI.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef GUI_H
#define GUI_H


class GUI; // forward reference
#include "GPSsysc_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"


#define GUI_STATE_MODELS 4

#define GUI_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define GUI_TestCase_CLASS_NUMBER 0
#define GUI_UI_CLASS_NUMBER 1
#define GUI_HEARTBEAT_CLASS_NUMBER 2
#define GUI_UI_CLASS_NUMBER_CB 3
#define GUI_MAX_CLASS_NUMBERS 4

/* Provide a map of classes to task numbers.  */
#define GUI_TASK_NUMBERS  0, 0, 0, 0

#define GUI_CLASS_INFO_INIT\
  &pG_GUI_TestCase_extent,\
  &pG_GUI_UI_extent,\
  &pG_GUI_HEARTBEAT_extent,\
  0

#define GUI_class_dispatchers\
  GUI_TestCase_Dispatch,\
  0,\
  GUI_HEARTBEAT_Dispatch,\
  GUI_UI_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef class GUI_TestCase GUI_TestCase;
typedef class GUI_UI GUI_UI;
typedef class GUI_HEARTBEAT GUI_HEARTBEAT;
typedef class GUI_UI_CB GUI_UI_CB;

/* union of class declarations so we may derive largest class size */
#define GUI_CLASS_U \
  char GUI_dummy;\



#include "GUI_GuiBridge_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "GUI.h"
#include "GUI_TestCase_class.h"
#include "GUI_UI_class.h"
#include "GUI_HEARTBEAT_class.h"


/*
 * roll-up of all events (with their parameters) for domain GUI
 */
typedef union {
  GUI_TestCase_Events_u namespace_dummy8;
  GUI_HEARTBEAT_Events_u namespace_dummy9;
  GUI_UI_CB_Events_u namespace_dummy10;
} GUI_DomainEvents_u;


/*
Simulates the user interface and has the ability to connect an external GUI.

It is using the BridgePoint Java API to connect to the GUI in Verifier mode.
There are also handwritten C code that implments parts of this component to 
allow generated code to connect to the exact same GUI.
*/
class GUI : public sc_module, public UIif_provision, public sys_factory, public sys_events {
  public:
  sc_port< UIif_requirement > UI;

  
  SC_HAS_PROCESS( GUI );
  GUI( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS), sys_events(sizeof(GUI_DomainEvents_u), ESCHER_SYS_MAX_XTUML_EVENTS, NUM_OF_XTUML_CLASS_THREADS) 
 {
  
    // state machine dispatcher process for TestCase
    SC_THREAD( GUI_TestCase_sm );
      dont_initialize();
      sensitive  << sc_GUI_TestCaseevent1 << sc_GUI_TestCaseevent2 << sc_GUI_TestCaseevent3;
    // state machine dispatcher process for UI
    SC_THREAD( GUI_UI_sm );
      dont_initialize();
      sensitive  << sc_GUI_UI_CBevent3 << sc_GUI_UI_CBevent4 << sc_GUI_UI_CBevent5 << sc_GUI_UI_CBevent6 << sc_GUI_UI_CBevent7;
    // state machine dispatcher process for UI Heartbeat
    SC_THREAD( GUI_HEARTBEAT_sm );
      dont_initialize();
      sensitive  << sc_GUI_HEARTBEATevent1;
    SC_THREAD(GUI_init);
    for ( int cn=0; cn < GUI_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
    tim = new TIM( ESCHER_SYS_MAX_XTUML_TIMERS );
    SC_THREAD( timspin );
      dont_initialize();
      sensitive << sc_xtuml_timer_event;
    tim->init( &sc_xtuml_timer_event );
  }
  void timspin( void ) { while ( true ) { tim->tick(); wait(); } }
  void UIif_setTime( i_t );
  void UIif_setData( Unit_t, r4_t );

  void GUI_RunTestCase( void );
  void GUI_init( void );
  // state machine process entry points
  void GUI_TestCase_sm( void );
  void GUI_UI_sm( void );
  void GUI_HEARTBEAT_sm( void );
  sc_event sc_GUI_TestCaseevent1, sc_GUI_TestCaseevent2, sc_GUI_TestCaseevent3;
  sc_event sc_GUI_UI_CBevent3, sc_GUI_UI_CBevent4, sc_GUI_UI_CBevent5, sc_GUI_UI_CBevent6, sc_GUI_UI_CBevent7;
  sc_event sc_GUI_HEARTBEATevent1;

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if GUI_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return GUI_class_info[cn]; }
#endif
    virtual EventTaker_t * Escher_GetEventDispatcher( void ) { return GUI_EventDispatcher; }

  private:
#if GUI_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const GUI_class_info[];
#endif
    static EventTaker_t GUI_EventDispatcher[];
};


#endif  /* GUI_H */
