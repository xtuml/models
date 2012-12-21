/*----------------------------------------------------------------------------
 * File:  polycalc_SUB_class.c
 *
 * Class:       sub  (SUB)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE OP TO SUB ACROSS R1
 */
void
polycalc_SUB_R1_Link( polycalc_OP * supertype, polycalc_SUB * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "SUB", "polycalc_SUB_R1_Link" );
    return;
  }
  /* Optimized linkage for SUB->OP[R1] */
  subtype->OP_R1 = supertype;
  /* Optimized linkage for OP->SUB[R1] */
  supertype->R1_subtype = subtype;
  supertype->R1_object_id = polycalc_SUB_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_SUB_container[ polycalc_SUB_MAX_EXTENT_SIZE ];
static polycalc_SUB polycalc_SUB_instances[ polycalc_SUB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_SUB_extent = {
  {0}, {0}, &polycalc_SUB_container[ 0 ],
  (Escher_iHandle_t) &polycalc_SUB_instances,
  sizeof( polycalc_SUB ), polycalc_SUB_STATE_1, polycalc_SUB_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      sub  (SUB)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [sub1]
 */
static void polycalc_SUB_act1( polycalc_SUB *, const Escher_xtUMLEvent_t * const );
static void
polycalc_SUB_act1( polycalc_SUB * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_OP * op = 0; /* op (OP) */
 
  /* SELECT one op RELATED BY self->OP[R1] */
  op = self->OP_R1;
  /* ASSIGN op.result = ( op.left - op.right ) */
  op->result = ( op->left - op->right );
  /* GENERATE OP3:done() TO op */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( op, &polycalc_OPevent3c );
    Escher_SendEvent( e );
  }
}


const Escher_xtUMLEventConstant_t polycalc_SUBevent_OP_PE2c = {
  polycalc_DOMAIN_ID, polycalc_SUB_CLASS_NUMBER, POLYCALC_SUBEVENT_OP_PE2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_SUB_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_SUB_STATE_1 (sub1) */
  { polycalc_SUB_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_SUB_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_SUB_act1  /* sub1 */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_SUB_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = polycalc_SUB_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Execute the state action and update the current state.  */
        ( *polycalc_SUB_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}


