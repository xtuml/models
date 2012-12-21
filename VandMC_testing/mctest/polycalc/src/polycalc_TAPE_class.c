/*----------------------------------------------------------------------------
 * File:  polycalc_TAPE_class.c
 *
 * Class:       tape drive  (TAPE)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE LOCATION TO TAPE ACROSS R100
 */
void
polycalc_TAPE_R100_Link( polycalc_LOCATION * supertype, polycalc_TAPE * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TAPE", "polycalc_TAPE_R100_Link" );
    return;
  }
  /* Optimized linkage for TAPE->LOCATION[R100] */
  subtype->LOCATION_R100 = supertype;
  /* Optimized linkage for LOCATION->TAPE[R100] */
  supertype->R100_subtype = subtype;
  supertype->R100_object_id = polycalc_TAPE_CLASS_NUMBER;
}


/*
 * UNRELATE LOCATION FROM TAPE ACROSS R100
 */
void
polycalc_TAPE_R100_Unlink( polycalc_LOCATION * supertype, polycalc_TAPE * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TAPE", "polycalc_TAPE_R100_Unlink" );
    return;
  }
  subtype->LOCATION_R100 = 0;
  supertype->R100_subtype = 0;
  supertype->R100_object_id = 0;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_TAPE_container[ polycalc_TAPE_MAX_EXTENT_SIZE ];
static polycalc_TAPE polycalc_TAPE_instances[ polycalc_TAPE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_TAPE_extent = {
  {0}, {0}, &polycalc_TAPE_container[ 0 ],
  (Escher_iHandle_t) &polycalc_TAPE_instances,
  sizeof( polycalc_TAPE ), polycalc_TAPE_STATE_1, polycalc_TAPE_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      tape drive  (TAPE)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [spinning up]
 */
static void polycalc_TAPE_act1( polycalc_TAPE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_TAPE_act1( polycalc_TAPE * self, const Escher_xtUMLEvent_t * const event )
{
  /* LOG::LogInfo( message:'tape drive spinning up' ) */
  LOG_LogInfo( "tape drive spinning up" );
}

const Escher_xtUMLEventConstant_t polycalc_TAPEevent_LOCATION_PE3c = {
  polycalc_DOMAIN_ID, polycalc_TAPE_CLASS_NUMBER, POLYCALC_TAPEEVENT_LOCATION_PE3NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_TAPE_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_TAPE_STATE_1 (spinning up) */
  { polycalc_TAPE_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_TAPE_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_TAPE_act1  /* spinning up */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_TAPE_Dispatch( Escher_xtUMLEvent_t * event )
{
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
      next_state = polycalc_TAPE_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Execute the state action and update the current state.  */
        ( *polycalc_TAPE_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


