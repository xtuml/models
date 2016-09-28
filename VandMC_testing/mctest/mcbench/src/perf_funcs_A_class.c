/*----------------------------------------------------------------------------
 * File:  perf_funcs_A_class.c
 *
 * Class:       a  (A)
 * Component:   perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "ARCH_bridge.h"
#include "DELTA_bridge.h"
#include "TIM_bridge.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "perf_funcs_classes.h"

/*
 * instance operation:  generate_ignored_event_to_self
 */
void
perf_funcs_A_op_generate_ignored_event_to_self( perf_funcs_A * self, const i_t p_count )
{
  i_t i;
  /* ASSIGN i = PARAM.count */
  i = p_count;
  /* WHILE ( ( 0 < i ) ) */
  while ( ( 0 < i ) ) {
    /* GENERATE A2:e2() TO self */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &perf_funcs_Aevent2c );
      Escher_SendSelfEvent( e );
    }
    /* ASSIGN i = ( i - 1 ) */
    i = ( i - 1 );
  }
}

/*
 * RELATE B TO A ACROSS R1
 */
void
perf_funcs_A_R1_Link( perf_funcs_B * part, perf_funcs_A * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "perf_funcs_A_R1_Link" );
    return;
  }
  form->bID = part->bID;
  form->B_R1 = part;
  part->A_R1 = form;
}

/*
 * UNRELATE B FROM A ACROSS R1
 */
void
perf_funcs_A_R1_Unlink( perf_funcs_B * part, perf_funcs_A * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "perf_funcs_A_R1_Unlink" );
    return;
  }
  form->bID = 0;
  form->B_R1 = 0;
  part->A_R1 = 0;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      a  (A)
 * Component:  perf_funcs
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_funcs_A_container[ perf_funcs_A_MAX_EXTENT_SIZE ];
static perf_funcs_A perf_funcs_A_instances[ perf_funcs_A_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_funcs_A_extent = {
  {0}, {0}, &perf_funcs_A_container[ 0 ],
  (Escher_iHandle_t) &perf_funcs_A_instances,
  sizeof( perf_funcs_A ), perf_funcs_A_STATE_1, perf_funcs_A_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      a  (A)
 * Component:  perf_funcs
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [spinning]
 */
static void perf_funcs_A_act1( perf_funcs_A *, const Escher_xtUMLEvent_t * const );
static void
perf_funcs_A_act1( perf_funcs_A * self, const Escher_xtUMLEvent_t * const event )
{
  perf_funcs_B * b=0;
  /* SELECT one b RELATED BY self->B[R1] */
  b = ( 0 != self ) ? self->B_R1 : 0;
  /* GENERATE B1:e1() TO b */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( b, &perf_funcs_Bevent1c );
    Escher_SendEvent( e );
  }
  /* ASSIGN self.odometer = ( self.odometer + 2 ) */
  self->odometer = ( self->odometer + 2 );
}

/*
 * State 2:  [done]
 */
static void perf_funcs_A_act2( perf_funcs_A *, const Escher_xtUMLEvent_t * const );
static void
perf_funcs_A_act2( perf_funcs_A * self, const Escher_xtUMLEvent_t * const event )
{
}

const Escher_xtUMLEventConstant_t perf_funcs_Aevent1c = {
  perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER, PERF_FUNCS_AEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };
const Escher_xtUMLEventConstant_t perf_funcs_Aevent2c = {
  perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER, PERF_FUNCS_AEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };
const Escher_xtUMLEventConstant_t perf_funcs_Aevent3c = {
  perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER, PERF_FUNCS_AEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t perf_funcs_A_StateEventMatrix[ 2 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  perf_funcs_A_STATE_1 (spinning) */
  { perf_funcs_A_STATE_1, EVENT_IS_IGNORED, perf_funcs_A_STATE_2 },
  /* row 2:  perf_funcs_A_STATE_2 (done) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t perf_funcs_A_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) perf_funcs_A_act1,  /* spinning */
    (StateAction_t) perf_funcs_A_act2  /* done */
  };

/*
 * instance state machine event dispatching
 */
void
perf_funcs_A_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = perf_funcs_A_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        /* Execute the state action and update the current state.  */
        ( *perf_funcs_A_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
      } else {
        /* empty else */
      }
    }
  }
}

