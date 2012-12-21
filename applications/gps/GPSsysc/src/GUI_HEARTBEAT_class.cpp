/*----------------------------------------------------------------------------
 * File:  GUI_HEARTBEAT_class.cpp
 *
 * Class:       UI Heartbeat  (HEARTBEAT)
 * Component:   GUI
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSsysc_sys_types.h"
#include "GUI.h"
#include "GUI_GuiBridge_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static sys_sets::Escher_SetElement_s GUI_HEARTBEAT_container[ GUI_HEARTBEAT_MAX_EXTENT_SIZE ];
static GUI_HEARTBEAT GUI_HEARTBEAT_instances[ GUI_HEARTBEAT_MAX_EXTENT_SIZE ];
sys_sets::Escher_Extent_t pG_GUI_HEARTBEAT_extent = {
  {0}, {0}, &GUI_HEARTBEAT_container[ 0 ],
  (Escher_iHandle_t) &GUI_HEARTBEAT_instances,
  sizeof( GUI_HEARTBEAT ), GUI_HEARTBEAT_STATE_1, GUI_HEARTBEAT_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      UI Heartbeat  (HEARTBEAT)
 * Component:  GUI
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [beating]
 */
static void GUI_HEARTBEAT_act1( GUI_HEARTBEAT *, const Escher_xtUMLEvent_t * const );
static void
GUI_HEARTBEAT_act1( GUI_HEARTBEAT * self, const Escher_xtUMLEvent_t * const event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  /* GuiBridge::receive(  ) */
  XTUML_OAL_STMT_TRACE( 1, "GuiBridge::receive(  )" );
  GUI_GuiBridge::receive( thismodule );
}

const Escher_xtUMLEventConstant_t GUI_HEARTBEATevent1c = {
  GUI_DOMAIN_ID, GUI_HEARTBEAT_CLASS_NUMBER, GUI_HEARTBEATEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT, 0 };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t GUI_HEARTBEAT_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  GUI_HEARTBEAT_STATE_1 (beating) */
  { GUI_HEARTBEAT_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t GUI_HEARTBEAT_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) GUI_HEARTBEAT_act1  /* beating */
  };

/*
 * instance state machine event dispatching
 */
void
GUI_HEARTBEAT_Dispatch( Escher_xtUMLEvent_t * event )
{
  GUI * thismodule = (GUI *) event->thismodule;
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 1 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = GUI_HEARTBEAT_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Execute the state action and update the current state.  */
        ( *GUI_HEARTBEAT_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


