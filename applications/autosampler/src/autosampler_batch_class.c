/*----------------------------------------------------------------------------
 * File:  autosampler_batch_class.c
 *
 * Class:       batch  (batch)
 * Component:   autosampler
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "autosampler_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "autosampler_actuator_bridge.h"
#include "autosampler_classes.h"


/*
 * RELATE probe TO batch ACROSS R2
 */
void
autosampler_batch_R2_Link_samples( autosampler_probe * part, autosampler_batch * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "batch", "autosampler_batch_R2_Link_samples" );
    return;
  }
  form->probe_R2 = part;
  part->batch_R2_samples = form;
}

/*
 * UNRELATE probe FROM batch ACROSS R2
 */
void
autosampler_batch_R2_Unlink_samples( autosampler_probe * part, autosampler_batch * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "batch", "autosampler_batch_R2_Unlink_samples" );
    return;
  }
  form->probe_R2 = 0;
  part->batch_R2_samples = 0;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s autosampler_batch_container[ autosampler_batch_MAX_EXTENT_SIZE ];
static autosampler_batch autosampler_batch_instances[ autosampler_batch_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_autosampler_batch_extent = {
  {0}, {0}, &autosampler_batch_container[ 0 ],
  (Escher_iHandle_t) &autosampler_batch_instances,
  sizeof( autosampler_batch ), autosampler_batch_STATE_1, autosampler_batch_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      batch  (batch)
 * Component:  autosampler
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [ready]
 */
static void autosampler_batch_act1( autosampler_batch *, const Escher_xtUMLEvent_t * const );
static void
autosampler_batch_act1( autosampler_batch * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [raising for safety]
 */
static void autosampler_batch_act2( autosampler_batch *, const Escher_xtUMLEvent_t * const );
static void
autosampler_batch_act2( autosampler_batch * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_probe * probe=0;
  /* SELECT one probe RELATED BY self->probe[R2] */
  probe = ( 0 != self ) ? self->probe_R2 : 0;
  /* GENERATE probe3:go_up() TO probe */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( probe, &autosampler_probeevent3c );
    Escher_SendEvent( e );
  }
}

/*
 * State 3:  [spinning into position]
 */
static void autosampler_batch_act3( autosampler_batch *, const Escher_xtUMLEvent_t * const );
static void
autosampler_batch_act3( autosampler_batch * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_spinner * spinner=0;
  /* SELECT one spinner RELATED BY self->spinner[R1] */
  spinner = ( 0 != self ) ? self->spinner_R1 : 0;
  /* GENERATE spinner2:go(position:( self.start_position + self.current_sample )) TO spinner */
  { autosampler_spinnerevent2 * e = (autosampler_spinnerevent2 *) Escher_NewxtUMLEvent( spinner, &autosampler_spinnerevent2c );
    e->p_position = ( self->start_position + self->current_sample );
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 4:  [lowering probe]
 */
static void autosampler_batch_act4( autosampler_batch *, const Escher_xtUMLEvent_t * const );
static void
autosampler_batch_act4( autosampler_batch * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_probe * probe=0;
  /* SELECT one probe RELATED BY self->probe[R2] */
  probe = ( 0 != self ) ? self->probe_R2 : 0;
  /* GENERATE probe4:go_down() TO probe */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( probe, &autosampler_probeevent4c );
    Escher_SendEvent( e );
  }
}

/*
 * State 5:  [sampling]
 */
static void autosampler_batch_act5( autosampler_batch *, const Escher_xtUMLEvent_t * const );
static void
autosampler_batch_act5( autosampler_batch * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_Timer_t * t;Escher_xtUMLEvent_t * timecomplete;
  /* CREATE EVENT INSTANCE timecomplete(  ) TO self */
  timecomplete = Escher_NewxtUMLEvent( (void *) self, &autosampler_batchevent3c );
  /* ASSIGN t = TIM::timer_start(event_inst:timecomplete, microseconds:( self.interval * 1000000 )) */
  t = TIM_timer_start( (Escher_xtUMLEvent_t *)timecomplete, ( self->interval * 1000000 ) );
  /* LOG::LogInteger( message:self.current_sample ) */
  LOG_LogInteger( self->current_sample );
}

/*
 * State 6:  [raising probe]
 */
static void autosampler_batch_act6( autosampler_batch *, const Escher_xtUMLEvent_t * const );
static void
autosampler_batch_act6( autosampler_batch * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_probe * probe=0;
  /* SELECT one probe RELATED BY self->probe[R2] */
  probe = ( 0 != self ) ? self->probe_R2 : 0;
  /* GENERATE probe3:go_up() TO probe */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( probe, &autosampler_probeevent3c );
    Escher_SendEvent( e );
  }
}

/*
 * State 7:  [selecting sample]
 */
static void autosampler_batch_act7( autosampler_batch *, const Escher_xtUMLEvent_t * const );
static void
autosampler_batch_act7( autosampler_batch * self, const Escher_xtUMLEvent_t * const event )
{
  /* IF ( ( self.current_sample < self.count ) ) */
  if ( ( self->current_sample < self->count ) ) {
    /* ASSIGN self.current_sample = ( self.current_sample + 1 ) */
    self->current_sample = ( self->current_sample + 1 );
    /* GENERATE batch5:move_to_sample() TO self */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &autosampler_batchevent5c );
      Escher_SendSelfEvent( e );
    }
  }
  else {
    /* ASSIGN self.current_sample = 0 */
    self->current_sample = 0;
    /* GENERATE batch6:move_home() TO self */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &autosampler_batchevent6c );
      Escher_SendSelfEvent( e );
    }
  }
}

/*
 * State 8:  [spinning home]
 */
static void autosampler_batch_act8( autosampler_batch *, const Escher_xtUMLEvent_t * const );
static void
autosampler_batch_act8( autosampler_batch * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_spinner * spinner=0;
  /* SELECT one spinner RELATED BY self->spinner[R1] */
  spinner = ( 0 != self ) ? self->spinner_R1 : 0;
  /* GENERATE spinner2:go(position:0) TO spinner */
  { autosampler_spinnerevent2 * e = (autosampler_spinnerevent2 *) Escher_NewxtUMLEvent( spinner, &autosampler_spinnerevent2c );
    e->p_position = 0;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t autosampler_batchevent1c = {
  autosampler_DOMAIN_ID, autosampler_batch_CLASS_NUMBER, AUTOSAMPLER_BATCHEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_batchevent2c = {
  autosampler_DOMAIN_ID, autosampler_batch_CLASS_NUMBER, AUTOSAMPLER_BATCHEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_batchevent3c = {
  autosampler_DOMAIN_ID, autosampler_batch_CLASS_NUMBER, AUTOSAMPLER_BATCHEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_batchevent4c = {
  autosampler_DOMAIN_ID, autosampler_batch_CLASS_NUMBER, AUTOSAMPLER_BATCHEVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_batchevent5c = {
  autosampler_DOMAIN_ID, autosampler_batch_CLASS_NUMBER, AUTOSAMPLER_BATCHEVENT5NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_batchevent6c = {
  autosampler_DOMAIN_ID, autosampler_batch_CLASS_NUMBER, AUTOSAMPLER_BATCHEVENT6NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t autosampler_batch_StateEventMatrix[ 8 + 1 ][ 6 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  autosampler_batch_STATE_1 (ready) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, autosampler_batch_STATE_2, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 2:  autosampler_batch_STATE_2 (raising for safety) */
  { autosampler_batch_STATE_7, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 3:  autosampler_batch_STATE_3 (spinning into position) */
  { EVENT_CANT_HAPPEN, autosampler_batch_STATE_4, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 4:  autosampler_batch_STATE_4 (lowering probe) */
  { autosampler_batch_STATE_5, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 5:  autosampler_batch_STATE_5 (sampling) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, autosampler_batch_STATE_6, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 6:  autosampler_batch_STATE_6 (raising probe) */
  { autosampler_batch_STATE_7, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 7:  autosampler_batch_STATE_7 (selecting sample) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, autosampler_batch_STATE_3, autosampler_batch_STATE_8 },
  /* row 8:  autosampler_batch_STATE_8 (spinning home) */
  { EVENT_CANT_HAPPEN, autosampler_batch_STATE_1, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t autosampler_batch_acts[ 9 ] = {
    (StateAction_t) 0,
    (StateAction_t) autosampler_batch_act1,  /* ready */
    (StateAction_t) autosampler_batch_act2,  /* raising for safety */
    (StateAction_t) autosampler_batch_act3,  /* spinning into position */
    (StateAction_t) autosampler_batch_act4,  /* lowering probe */
    (StateAction_t) autosampler_batch_act5,  /* sampling */
    (StateAction_t) autosampler_batch_act6,  /* raising probe */
    (StateAction_t) autosampler_batch_act7,  /* selecting sample */
    (StateAction_t) autosampler_batch_act8  /* spinning home */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 9 ] = {
    "",
    "ready",
    "raising for safety",
    "spinning into position",
    "lowering probe",
    "sampling",
    "raising probe",
    "selecting sample",
    "spinning home"
  };

/*
 * instance state machine event dispatching
 */
void
autosampler_batch_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 8 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = autosampler_batch_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 8 ) {
        STATE_TXN_START_TRACE( "batch", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *autosampler_batch_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "batch", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "batch", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


