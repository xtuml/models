/*----------------------------------------------------------------------------
 * File:  SpO2_finger_class.c
 *
 * Class:       finger  (finger)
 * Component:   SpO2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "SpO2_SpO2_IO_bridge.h"
#include "SpO2_classes.h"

/*
 * class operation:  init
 */
void
SpO2_finger_op_init()
{
  SpO2_finger * finger;
  /* CREATE OBJECT INSTANCE finger OF finger */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE finger OF finger" );
  finger = (SpO2_finger *) Escher_CreateInstance( SpO2_DOMAIN_ID, SpO2_finger_CLASS_NUMBER );
  /* ASSIGN finger.index = smoothing_buffer_length */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN finger.index = smoothing_buffer_length" );
  finger->index = 8;
  /* ASSIGN finger.O2sum = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN finger.O2sum = 0" );
  finger->O2sum = 0;
  /* ASSIGN finger.pulsesum = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN finger.pulsesum = 0" );
  finger->pulsesum = 0;
  /* WHILE ( ( finger.index > 0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "WHILE ( ( finger.index > 0 ) )" );
  while ( ( finger->index > 0 ) ) {
    /* ASSIGN finger.index = ( finger.index - 1 ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN finger.index = ( finger.index - 1 )" );
    finger->index = ( finger->index - 1 );
    /* ASSIGN finger.O2saturation[finger->index] = 0 */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN finger.O2saturation[finger->index] = 0" );
    finger->O2saturation[finger->index] = 0;
    /* ASSIGN finger.pulse[finger->index] = 0 */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN finger.pulse[finger->index] = 0" );
    finger->pulse[finger->index] = 0;
  }
  /* SpO2_IO::init(  ) */
  XTUML_OAL_STMT_TRACE( 1, "SpO2_IO::init(  )" );
  SpO2_SpO2_IO_init();

}

/*
 * class operation:  off
 */
void
SpO2_finger_op_off()
{
  SpO2_finger * finger=0;
  /* SELECT any finger FROM INSTANCES OF finger */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any finger FROM INSTANCES OF finger" );
  finger = (SpO2_finger *) Escher_SetGetAny( &pG_SpO2_finger_extent.active );
  /* IF ( not_empty finger ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty finger )" );
  if ( ( 0 != finger ) ) {
    /* GENERATE finger3:stop() TO finger */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE finger3:stop() TO finger" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( finger, &SpO2_fingerevent3c );
      Escher_SendEvent( e );
    }
  }

}

/*
 * class operation:  on
 */
void
SpO2_finger_op_on()
{
  SpO2_finger * finger=0;
  /* SELECT any finger FROM INSTANCES OF finger */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any finger FROM INSTANCES OF finger" );
  finger = (SpO2_finger *) Escher_SetGetAny( &pG_SpO2_finger_extent.active );
  /* GENERATE finger2:go() TO finger */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE finger2:go() TO finger" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( finger, &SpO2_fingerevent2c );
    Escher_SendEvent( e );
  }

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      finger  (finger)
 * Component:  SpO2
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s SpO2_finger_container[ SpO2_finger_MAX_EXTENT_SIZE ];
static SpO2_finger SpO2_finger_instances[ SpO2_finger_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_SpO2_finger_extent = {
  {0}, {0}, &SpO2_finger_container[ 0 ],
  (Escher_iHandle_t) &SpO2_finger_instances,
  sizeof( SpO2_finger ), SpO2_finger_STATE_1, SpO2_finger_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      finger  (finger)
 * Component:  SpO2
 *--------------------------------------------------------------------------*/

/*
 * State 2:  [reading]
 */
static void SpO2_finger_act2( SpO2_finger *, const Escher_xtUMLEvent_t * const );
static void
SpO2_finger_act2( SpO2_finger * self, const Escher_xtUMLEvent_t * const event )
{
  /* SEND monitor::reading(O2saturation:( self.O2sum / self.O2saturation.length ), pulse:( self.pulsesum / self.pulse.length )) */
  XTUML_OAL_STMT_TRACE( 1, "SEND monitor::reading(O2saturation:( self.O2sum / self.O2saturation.length ), pulse:( self.pulsesum / self.pulse.length ))" );
  SpO2_monitor_reading( ( self->O2sum / 8 /* self.O2saturation.length */ ), ( self->pulsesum / 8 /* self.pulse.length */ ) );
}

/*
 * State 1:  [idle]
 */
static void SpO2_finger_act1( SpO2_finger *, const Escher_xtUMLEvent_t * const );
static void
SpO2_finger_act1( SpO2_finger * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 */
static void SpO2_finger_xact1( SpO2_finger *, const Escher_xtUMLEvent_t * const );
static void
SpO2_finger_xact1( SpO2_finger * self, const Escher_xtUMLEvent_t * const event )
{
  i_t o2;i_t p;
  /* ASSIGN o2 = SpO2_IO::read_O2saturation() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN o2 = SpO2_IO::read_O2saturation()" );
  o2 = SpO2_SpO2_IO_read_O2saturation();
  /* ASSIGN p = SpO2_IO::read_pulse() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN p = SpO2_IO::read_pulse()" );
  p = SpO2_SpO2_IO_read_pulse();
  /* ASSIGN self.O2sum = ( self.O2sum - self.O2saturation[self->index] ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.O2sum = ( self.O2sum - self.O2saturation[self->index] )" );
  self->O2sum = ( self->O2sum - self->O2saturation[self->index] );
  /* ASSIGN self.pulsesum = ( self.pulsesum - self.pulse[self->index] ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.pulsesum = ( self.pulsesum - self.pulse[self->index] )" );
  self->pulsesum = ( self->pulsesum - self->pulse[self->index] );
  /* ASSIGN self.index = ( self.index + 1 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.index = ( self.index + 1 )" );
  self->index = ( self->index + 1 );
  /* ASSIGN self.index = ( self.index % smoothing_buffer_length ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.index = ( self.index % smoothing_buffer_length )" );
  self->index = ( self->index % 8 );
  /* ASSIGN self.O2saturation[self->index] = o2 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.O2saturation[self->index] = o2" );
  self->O2saturation[self->index] = o2;
  /* ASSIGN self.pulse[self->index] = p */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.pulse[self->index] = p" );
  self->pulse[self->index] = p;
  /* ASSIGN self.O2sum = ( self.O2sum + self.O2saturation[self->index] ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.O2sum = ( self.O2sum + self.O2saturation[self->index] )" );
  self->O2sum = ( self->O2sum + self->O2saturation[self->index] );
  /* ASSIGN self.pulsesum = ( self.pulsesum + self.pulse[self->index] ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.pulsesum = ( self.pulsesum + self.pulse[self->index] )" );
  self->pulsesum = ( self->pulsesum + self->pulse[self->index] );
}

/*
 */
static void SpO2_finger_xact2( SpO2_finger *, const Escher_xtUMLEvent_t * const );
static void
SpO2_finger_xact2( SpO2_finger * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_xtUMLEvent_t * e;
  /* CREATE EVENT INSTANCE e(  ) TO self */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE e(  ) TO self" );
  e = Escher_NewxtUMLEvent( (void *) self, &SpO2_fingerevent1c );
  /* ASSIGN self.timer = TIM::timer_start_recurring(event_inst:e, microseconds:1000000) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.timer = TIM::timer_start_recurring(event_inst:e, microseconds:1000000)" );
  self->timer = TIM_timer_start_recurring( (Escher_xtUMLEvent_t *)e, 1000000 );
}

/*
 */
static void SpO2_finger_xact3( SpO2_finger *, const Escher_xtUMLEvent_t * const );
static void
SpO2_finger_xact3( SpO2_finger * self, const Escher_xtUMLEvent_t * const event )
{
  bool success;
  /* ASSIGN success = TIM::timer_cancel(timer_inst_ref:self.timer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN success = TIM::timer_cancel(timer_inst_ref:self.timer)" );
  success = TIM_timer_cancel( self->timer );
}

const Escher_xtUMLEventConstant_t SpO2_fingerevent1c = {
  SpO2_DOMAIN_ID, SpO2_finger_CLASS_NUMBER, SPO2_FINGEREVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t SpO2_fingerevent2c = {
  SpO2_DOMAIN_ID, SpO2_finger_CLASS_NUMBER, SPO2_FINGEREVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t SpO2_fingerevent3c = {
  SpO2_DOMAIN_ID, SpO2_finger_CLASS_NUMBER, SPO2_FINGEREVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t SpO2_finger_StateEventMatrix[ 2 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  SpO2_finger_STATE_1 (idle) */
  { EVENT_CANT_HAPPEN, (2<<8) + SpO2_finger_STATE_2, EVENT_CANT_HAPPEN },
  /* row 2:  SpO2_finger_STATE_2 (reading) */
  { (1<<8) + SpO2_finger_STATE_2, EVENT_CANT_HAPPEN, (3<<8) + SpO2_finger_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t SpO2_finger_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) SpO2_finger_act1,  /* idle */
    (StateAction_t) SpO2_finger_act2  /* reading */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 3 ] = {
    "",
    "idle",
    "reading"
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t SpO2_finger_xacts[ 3 ] = {
    (StateAction_t) SpO2_finger_xact1,
    (StateAction_t) SpO2_finger_xact2,
    (StateAction_t) SpO2_finger_xact3
  };

/*
 * instance state machine event dispatching
 */
void
SpO2_finger_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_SEMcell_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = SpO2_finger_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        STATE_TXN_START_TRACE( "finger", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *SpO2_finger_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "finger", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "finger", current_state );
      } else {
        STATE_TXN_START_TRACE( "finger", current_state, state_name_strings[ current_state ] );
        ( *SpO2_finger_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *SpO2_finger_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "finger", next_state, state_name_strings[ next_state ] );
      }
    }
  }
}


