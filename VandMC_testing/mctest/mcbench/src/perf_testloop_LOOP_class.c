/*----------------------------------------------------------------------------
 * File:  perf_testloop_LOOP_class.c
 *
 * Class:       loop  (LOOP)
 * Component:   perf_testloop
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "TIM_bridge.h"
#include "perf_testloop_classes.h"

/*
 * instance operation:  begin_time_measurement
 */
void
perf_testloop_LOOP_op_begin_time_measurement( perf_testloop_LOOP * self)
{
  Escher_TimeStamp_t a; 
  /* ASSIGN a = TIM::current_clock() */
  a = TIM_current_clock();
  /* ASSIGN self.time_delta = 0 */
  self->time_delta = 0;

}

/*
 * instance operation:  end_time_measurement
 */
i_t
perf_testloop_LOOP_op_end_time_measurement( perf_testloop_LOOP * self)
{
  Escher_TimeStamp_t a; 
  /* ASSIGN a = TIM::current_clock() */
  a = TIM_current_clock();
  /* ASSIGN self.time_delta = ( self.time_delta - 0 ) */
  self->time_delta = ( self->time_delta - 0 );
  /* RETURN self.time_delta */
  return self->time_delta;

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      loop  (LOOP)
 * Component:  perf_testloop
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_testloop_LOOP_container[ perf_testloop_LOOP_MAX_EXTENT_SIZE ];
static perf_testloop_LOOP perf_testloop_LOOP_instances[ perf_testloop_LOOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_testloop_LOOP_extent = {
  {0}, {0}, &perf_testloop_LOOP_container[ 0 ],
  (Escher_iHandle_t) &perf_testloop_LOOP_instances,
  sizeof( perf_testloop_LOOP ), perf_testloop_LOOP_STATE_1, perf_testloop_LOOP_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      loop  (LOOP)
 * Component:  perf_testloop
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [starting]
 */
static void perf_testloop_LOOP_act1( perf_testloop_LOOP *, const Escher_xtUMLEvent_t * const );
static void
perf_testloop_LOOP_act1( perf_testloop_LOOP * self, const Escher_xtUMLEvent_t * const event )
{
  perf_testloop_LOOPevent5 * rcvd_evt = (perf_testloop_LOOPevent5 *) event;
  bool b; Escher_xtUMLEvent_t * stop;  /* stop */ Escher_Timer_t * t; 
  /* ASSIGN self.repetitions = 0 */
  self->repetitions = 0;
  /* ASSIGN self.measured_run_time = 0 */
  self->measured_run_time = 0;
  /* ASSIGN self.duration = 0 */
  self->duration = 0;
  /* ASSIGN self.client_test_number = PARAM.testnum */
  self->client_test_number = rcvd_evt->p_testnum;
  /* ASSIGN b = APP::perftest(count:0, duration:0, phase:1, testnum:self.client_test_number) */
  b = perf_testloop_APP_perftest( 0, 0, 1, self->client_test_number );
  /* GENERATE LOOP1:go() TO self */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &perf_testloop_LOOPevent1c );
    Escher_SendSelfEvent( e );
  }
  /* CREATE EVENT INSTANCE stop(  ) TO self */
  stop = Escher_NewxtUMLEvent( (void *) self, &perf_testloop_LOOPevent2c );
  /* ASSIGN t = TIM::timer_start(event_inst:stop, microseconds:( PARAM.duration * 1000000 )) */
  t = TIM_timer_start( (Escher_xtUMLEvent_t *)stop, ( rcvd_evt->p_duration * 1000000 ) );
}

/*
 * State 2:  [running]
 */
static void perf_testloop_LOOP_act2( perf_testloop_LOOP *, const Escher_xtUMLEvent_t * const );
static void
perf_testloop_LOOP_act2( perf_testloop_LOOP * self, const Escher_xtUMLEvent_t * const event )
{
  bool b; 
  /* self.begin_time_measurement() */
  perf_testloop_LOOP_op_begin_time_measurement( self );
  /* ASSIGN b = APP::perftest(count:0, duration:0, phase:2, testnum:self.client_test_number) */
  b = perf_testloop_APP_perftest( 0, 0, 2, self->client_test_number );
  /* ASSIGN self.measured_run_time = ( self.measured_run_time + self.end_time_measurement() ) */
  self->measured_run_time = ( self->measured_run_time + perf_testloop_LOOP_op_end_time_measurement(self) );
  /* ASSIGN self.repetitions = ( self.repetitions + 1 ) */
  self->repetitions = ( self->repetitions + 1 );
  /* GENERATE LOOP1:go() TO self */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &perf_testloop_LOOPevent1c );
    Escher_SendSelfEvent( e );
  }
}

/*
 * State 3:  [unrunning]
 */
static void perf_testloop_LOOP_act3( perf_testloop_LOOP *, const Escher_xtUMLEvent_t * const );
static void
perf_testloop_LOOP_act3( perf_testloop_LOOP * self, const Escher_xtUMLEvent_t * const event )
{
  /* IF ( APP::perftest(count:0, duration:0, phase:3, testnum:self.client_test_number) ) */
  if ( perf_testloop_APP_perftest( 0, 0, 3, self->client_test_number ) ) {
    perf_testloop_LOOP * loop; 
    /* ASSIGN loop = self */
    loop = self;
    /* GENERATE LOOP1:go() TO loop */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( loop, &perf_testloop_LOOPevent1c );
      Escher_SendEvent( e );
    }
  }
}

/*
 * State 4:  [done]
 */
static void perf_testloop_LOOP_act4( perf_testloop_LOOP *, const Escher_xtUMLEvent_t * const );
static void
perf_testloop_LOOP_act4( perf_testloop_LOOP * self, const Escher_xtUMLEvent_t * const event )
{
  bool b; 
  /* ASSIGN b = APP::perftest(count:0, duration:0, phase:4, testnum:self.client_test_number) */
  b = perf_testloop_APP_perftest( 0, 0, 4, self->client_test_number );
  /* ASSIGN b = APP::perftest(count:self.repetitions, duration:self.measured_run_time, phase:5, testnum:self.client_test_number) */
  b = perf_testloop_APP_perftest( self->repetitions, self->measured_run_time, 5, self->client_test_number );
  /* ASSIGN b = APP::perftest(count:0, duration:0, phase:6, testnum:self.client_test_number) */
  b = perf_testloop_APP_perftest( 0, 0, 6, self->client_test_number );
}

const Escher_xtUMLEventConstant_t perf_testloop_LOOPevent1c = {
  perf_testloop_DOMAIN_ID, perf_testloop_LOOP_CLASS_NUMBER, PERF_TESTLOOP_LOOPEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t perf_testloop_LOOPevent2c = {
  perf_testloop_DOMAIN_ID, perf_testloop_LOOP_CLASS_NUMBER, PERF_TESTLOOP_LOOPEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t perf_testloop_LOOPevent5c = {
  perf_testloop_DOMAIN_ID, perf_testloop_LOOP_CLASS_NUMBER, PERF_TESTLOOP_LOOPEVENT5NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t perf_testloop_LOOP_StateEventMatrix[ 4 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  perf_testloop_LOOP_STATE_1 (starting) */
  { perf_testloop_LOOP_STATE_2, EVENT_IS_IGNORED, perf_testloop_LOOP_STATE_1 },
  /* row 2:  perf_testloop_LOOP_STATE_2 (running) */
  { perf_testloop_LOOP_STATE_3, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN },
  /* row 3:  perf_testloop_LOOP_STATE_3 (unrunning) */
  { perf_testloop_LOOP_STATE_2, perf_testloop_LOOP_STATE_4, EVENT_CANT_HAPPEN },
  /* row 4:  perf_testloop_LOOP_STATE_4 (done) */
  { EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, perf_testloop_LOOP_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t perf_testloop_LOOP_acts[ 5 ] = {
    (StateAction_t) 0,
    (StateAction_t) perf_testloop_LOOP_act1,  /* starting */
    (StateAction_t) perf_testloop_LOOP_act2,  /* running */
    (StateAction_t) perf_testloop_LOOP_act3,  /* unrunning */
    (StateAction_t) perf_testloop_LOOP_act4  /* done */
  };

/*
 * instance state machine event dispatching
 */
void
perf_testloop_LOOP_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 4 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = perf_testloop_LOOP_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 4 ) {
        /* Execute the state action and update the current state.  */
        ( *perf_testloop_LOOP_acts[ next_state ] )( instance, event );
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


