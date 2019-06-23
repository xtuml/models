/*----------------------------------------------------------------------------
 * File:  polycalc_MUL_class.c
 *
 * Class:       mul  (MUL)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE OP TO MUL ACROSS R1
 */
void
polycalc_MUL_R1_Link( polycalc_OP * supertype, polycalc_MUL * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "MUL", "polycalc_MUL_R1_Link" );
    return;
  }
  /* Optimized linkage for MUL->OP[R1] */
  subtype->OP_R1 = supertype;
  /* Optimized linkage for OP->MUL[R1] */
  supertype->R1_subtype = subtype;
  supertype->R1_object_id = polycalc_MUL_CLASS_NUMBER;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_MUL_container[ polycalc_MUL_MAX_EXTENT_SIZE ];
static polycalc_MUL polycalc_MUL_instances[ polycalc_MUL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_MUL_extent = {
  {0}, {0}, &polycalc_MUL_container[ 0 ],
  (Escher_iHandle_t) &polycalc_MUL_instances,
  sizeof( polycalc_MUL ), polycalc_MUL_STATE_1, polycalc_MUL_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      mul  (MUL)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [mul1]
 */
static void polycalc_MUL_act1( polycalc_MUL *, const Escher_xtUMLEvent_t * const );
static void
polycalc_MUL_act1( polycalc_MUL * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_OP * op=0;
  /* SELECT one op RELATED BY self->OP[R1] */
  op = ( 0 != self ) ? self->OP_R1 : 0;
  /* ASSIGN op.result = ( op.left * op.right ) */
  ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.result" ))->result = ( ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.left" ))->left * ((polycalc_OP *)xtUML_detect_empty_handle( op, "OP", "op.right" ))->right );
  /* GENERATE OP3:done() TO op */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( op, &polycalc_OPevent3c );
    Escher_SendEvent( e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_MULevent_OP_PE2c = {
  polycalc_DOMAIN_ID, polycalc_MUL_CLASS_NUMBER, POLYCALC_MULEVENT_OP_PE2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_MUL_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_MUL_STATE_1 (mul1) */
  { polycalc_MUL_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_MUL_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_MUL_act1  /* mul1 */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_MUL_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = polycalc_MUL_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_MUL_acts[ next_state ] )( instance, event );
      } else {
        /* empty else */
      }
    }
  }
}

