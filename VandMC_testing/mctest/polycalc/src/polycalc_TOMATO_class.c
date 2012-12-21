/*----------------------------------------------------------------------------
 * File:  polycalc_TOMATO_class.c
 *
 * Class:       tomato  (TOMATO)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE FRUIT TO TOMATO ACROSS R3
 */
void
polycalc_TOMATO_R3_Link( polycalc_FRUIT * supertype, polycalc_TOMATO * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TOMATO", "polycalc_TOMATO_R3_Link" );
    return;
  }
  /* Optimized linkage for TOMATO->FRUIT[R3] */
  subtype->FRUIT_R3 = supertype;
  /* Optimized linkage for FRUIT->TOMATO[R3] */
  supertype->R3_subtype = subtype;
  supertype->R3_object_id = polycalc_TOMATO_CLASS_NUMBER;
}


/*
 * RELATE VEGETABLE TO TOMATO ACROSS R4
 */
void
polycalc_TOMATO_R4_Link( polycalc_VEGETABLE * supertype, polycalc_TOMATO * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TOMATO", "polycalc_TOMATO_R4_Link" );
    return;
  }
  /* Optimized linkage for TOMATO->VEGETABLE[R4] */
  subtype->VEGETABLE_R4 = supertype;
  /* Optimized linkage for VEGETABLE->TOMATO[R4] */
  supertype->R4_subtype = subtype;
  supertype->R4_object_id = polycalc_TOMATO_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_TOMATO_container[ polycalc_TOMATO_MAX_EXTENT_SIZE ];
static polycalc_TOMATO polycalc_TOMATO_instances[ polycalc_TOMATO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_TOMATO_extent = {
  {0}, {0}, &polycalc_TOMATO_container[ 0 ],
  (Escher_iHandle_t) &polycalc_TOMATO_instances,
  sizeof( polycalc_TOMATO ), polycalc_TOMATO_STATE_1, polycalc_TOMATO_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      tomato  (TOMATO)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [juicing]
 */
static void polycalc_TOMATO_act1( polycalc_TOMATO *, const Escher_xtUMLEvent_t * const );
static void
polycalc_TOMATO_act1( polycalc_TOMATO * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_FRUIT * fruit = 0; /* fruit (FRUIT) */
 
  /* SELECT one fruit RELATED BY self->FRUIT[R3] */
  fruit = self->FRUIT_R3;
  /* GENERATE FRUIT2:juiced(percentage:35) TO fruit */
  { polycalc_FRUITevent2 * e = (polycalc_FRUITevent2 *) Escher_NewxtUMLEvent( fruit, &polycalc_FRUITevent2c );
    e->p_percentage = 35;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 2:  [weeding]
 */
static void polycalc_TOMATO_act2( polycalc_TOMATO *, const Escher_xtUMLEvent_t * const );
static void
polycalc_TOMATO_act2( polycalc_TOMATO * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_VEGETABLE * vegetable = 0; /* vegetable (VEGETABLE) */
 
  /* SELECT one vegetable RELATED BY self->VEGETABLE[R4] */
  vegetable = self->VEGETABLE_R4;
  /* GENERATE VEGETABLE2:grown(height:42) TO vegetable */
  { polycalc_VEGETABLEevent2 * e = (polycalc_VEGETABLEevent2 *) Escher_NewxtUMLEvent( vegetable, &polycalc_VEGETABLEevent2c );
    e->p_height = 42;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_TOMATOevent_FRUIT_PE1c = {
  polycalc_DOMAIN_ID, polycalc_TOMATO_CLASS_NUMBER, POLYCALC_TOMATOEVENT_FRUIT_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t polycalc_TOMATOevent_VEGETABLE_PE1c = {
  polycalc_DOMAIN_ID, polycalc_TOMATO_CLASS_NUMBER, POLYCALC_TOMATOEVENT_VEGETABLE_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_TOMATO_StateEventMatrix[ 2 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_TOMATO_STATE_1 (juicing) */
  { polycalc_TOMATO_STATE_1, polycalc_TOMATO_STATE_2 },
  /* row 2:  polycalc_TOMATO_STATE_2 (weeding) */
  { polycalc_TOMATO_STATE_1, polycalc_TOMATO_STATE_2 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_TOMATO_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_TOMATO_act1,  /* juicing */
    (StateAction_t) polycalc_TOMATO_act2  /* weeding */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_TOMATO_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_TOMATO_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        /* Execute the state action and update the current state.  */
        ( *polycalc_TOMATO_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


