/*----------------------------------------------------------------------------
 * File:  infusion_infusion_class.c
 *
 * Class:       infusion  (infusion)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "infusion_classes.h"

/*
 * instance operation:  init
 */
void
infusion_infusion_op_init( infusion_infusion * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      infusion  (infusion)
 * Component:  infusion
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s infusion_infusion_container[ infusion_infusion_MAX_EXTENT_SIZE ];
static infusion_infusion infusion_infusion_instances[ infusion_infusion_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_infusion_infusion_extent = {
  {0}, {0}, &infusion_infusion_container[ 0 ],
  (Escher_iHandle_t) &infusion_infusion_instances,
  sizeof( infusion_infusion ), infusion_infusion_STATE_1, infusion_infusion_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      infusion  (infusion)
 * Component:  infusion
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [loading]
 * Note: Self creation state (asynchronous creation)
 */
static void infusion_infusion_act1( infusion_infusion *, const Escher_xtUMLEvent_t * const );
static void
infusion_infusion_act1( infusion_infusion * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [maintaining]
 */
static void infusion_infusion_act2( infusion_infusion *, const Escher_xtUMLEvent_t * const );
static void
infusion_infusion_act2( infusion_infusion * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 3:  [stopped]
 */
static void infusion_infusion_act3( infusion_infusion *, const Escher_xtUMLEvent_t * const );
static void
infusion_infusion_act3( infusion_infusion * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 4:  [paused]
 */
static void infusion_infusion_act4( infusion_infusion *, const Escher_xtUMLEvent_t * const );
static void
infusion_infusion_act4( infusion_infusion * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 5:  [PRNing]
 */
static void infusion_infusion_act5( infusion_infusion *, const Escher_xtUMLEvent_t * const );
static void
infusion_infusion_act5( infusion_infusion * self, const Escher_xtUMLEvent_t * const event )
{
}








/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t infusion_infusion_StateEventMatrix[ 5 + 1 ][ 0 ] = {
  /* row 0:  uninitialized state (for creation events) */
  {  },
  /* row 1:  infusion_infusion_STATE_1 (loading) */
  {  },
  /* row 2:  infusion_infusion_STATE_2 (maintaining) */
  {  },
  /* row 3:  infusion_infusion_STATE_3 (stopped) */
  {  },
  /* row 4:  infusion_infusion_STATE_4 (paused) */
  {  },
  /* row 5:  infusion_infusion_STATE_5 (PRNing) */
  {  }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t infusion_infusion_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) infusion_infusion_act1,  /* loading */
    (StateAction_t) infusion_infusion_act2,  /* maintaining */
    (StateAction_t) infusion_infusion_act3,  /* stopped */
    (StateAction_t) infusion_infusion_act4,  /* paused */
    (StateAction_t) infusion_infusion_act5  /* PRNing */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 6 ] = {
    "",
    "loading",
    "maintaining",
    "stopped",
    "paused",
    "PRNing"
  };

/*
 * instance state machine event dispatching
 */
void
infusion_infusion_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance;
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != GetIsCreationEvent( event ) ) {
    instance = Escher_CreateInstance( infusion_DOMAIN_ID, infusion_infusion_CLASS_NUMBER );
    if ( 0 != instance ) {
      instance->current_state = UNINITIALIZED_STATE;
      SetEventTargetInstance( event, instance );
    } else {
      /* Instance allocation failure - USER RECOVERY LOGIC IS TBD */
      UserEventNoInstanceCallout( 0 );
    }
  } else {
    instance = GetEventTargetInstance( event );
  }
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 5 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = infusion_infusion_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 5 ) {
        STATE_TXN_START_TRACE( "infusion", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *infusion_infusion_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "infusion", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "infusion", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


