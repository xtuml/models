/*----------------------------------------------------------------------------
 * File:  infusion_pump_class.c
 *
 * Class:       pump  (pump)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "infusion_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s infusion_pump_container[ infusion_pump_MAX_EXTENT_SIZE ];
static infusion_pump infusion_pump_instances[ infusion_pump_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_infusion_pump_extent = {
  {0}, {0}, &infusion_pump_container[ 0 ],
  (Escher_iHandle_t) &infusion_pump_instances,
  sizeof( infusion_pump ), infusion_pump_STATE_1, infusion_pump_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      pump  (pump)
 * Component:  infusion
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [stopped]
 */
static void infusion_pump_act1( infusion_pump *, const Escher_xtUMLEvent_t * const );
static void
infusion_pump_act1( infusion_pump * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [pumping]
 */
static void infusion_pump_act2( infusion_pump *, const Escher_xtUMLEvent_t * const );
static void
infusion_pump_act2( infusion_pump * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 3:  [occluded]
 */
static void infusion_pump_act3( infusion_pump *, const Escher_xtUMLEvent_t * const );
static void
infusion_pump_act3( infusion_pump * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 4:  [bubble detected]
 */
static void infusion_pump_act4( infusion_pump *, const Escher_xtUMLEvent_t * const );
static void
infusion_pump_act4( infusion_pump * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 5:  [purging]
 */
static void infusion_pump_act5( infusion_pump *, const Escher_xtUMLEvent_t * const );
static void
infusion_pump_act5( infusion_pump * self, const Escher_xtUMLEvent_t * const event )
{
}








/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t infusion_pump_StateEventMatrix[ 5 + 1 ][ 0 ] = {
  /* row 0:  uninitialized state (for creation events) */
  {  },
  /* row 1:  infusion_pump_STATE_1 (stopped) */
  {  },
  /* row 2:  infusion_pump_STATE_2 (pumping) */
  {  },
  /* row 3:  infusion_pump_STATE_3 (occluded) */
  {  },
  /* row 4:  infusion_pump_STATE_4 (bubble detected) */
  {  },
  /* row 5:  infusion_pump_STATE_5 (purging) */
  {  }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t infusion_pump_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) infusion_pump_act1,  /* stopped */
    (StateAction_t) infusion_pump_act2,  /* pumping */
    (StateAction_t) infusion_pump_act3,  /* occluded */
    (StateAction_t) infusion_pump_act4,  /* bubble detected */
    (StateAction_t) infusion_pump_act5  /* purging */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 6 ] = {
    "",
    "stopped",
    "pumping",
    "occluded",
    "bubble detected",
    "purging"
  };

/*
 * instance state machine event dispatching
 */
void
infusion_pump_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 5 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = infusion_pump_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 5 ) {
        STATE_TXN_START_TRACE( "pump", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *infusion_pump_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "pump", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "pump", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


