/*----------------------------------------------------------------------------
 * File:  perf_testloop.c
 *
 * UML Component Port Messages
 * Component/Module Name:  perf_testloop
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "TIM_bridge.h"
#include "perf_funcs.h"
#include "perf_testloop_classes.h"

/*
 * Interface:  benchif
 * Required Port:  APP
 * From Provider Message:  runtest
 */
void
perf_testloop_APP_runtest( i_t p_duration, i_t p_testnum)
{
  /* ::runtest( duration:PARAM.duration, testnum:PARAM.testnum ) */
  perf_testloop_runtest( p_duration, p_testnum );
}

/*
 * Interface:  benchif
 * Required Port:  APP
 * From Provider Message:  bridge_integer_integer
 */
i_t
perf_testloop_APP_bridge_integer_integer( i_t p_i)
{
  /* RETURN PARAM.i */
  return p_i;
}

/*
 * Interface:  benchif
 * Required Port:  APP
 * From Provider Message:  bridge_void_integer
 */
void
perf_testloop_APP_bridge_void_integer( i_t p_i)
{
  i_t i; 
  /* ASSIGN i = PARAM.i */
  i = p_i;
}

/*
 * Interface:  benchif
 * Required Port:  APP
 * From Provider Message:  bridge_void_void
 */
void
perf_testloop_APP_bridge_void_void()
{
}

/*
 * Interface:  benchif
 * Required Port:  APP
 * To Provider Message:  perftest
 */
bool
perf_testloop_APP_perftest( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
return   perf_funcs_TESTLOOP_perftest(  p_count, p_duration, p_phase, p_testnum );
}

/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  runtest
 */
void
perf_testloop_runtest( i_t p_duration, i_t p_testnum)
{
  perf_testloop_LOOP * loop=0; 
  /* SELECT any loop FROM INSTANCES OF LOOP */
  loop = (perf_testloop_LOOP *) Escher_SetGetAny( &pG_perf_testloop_LOOP_extent.active );
  /* IF ( empty loop ) */
  if ( ( 0 == loop ) ) {
    /* CREATE OBJECT INSTANCE loop OF LOOP */
    loop = (perf_testloop_LOOP *) Escher_CreateInstance( perf_testloop_DOMAIN_ID, perf_testloop_LOOP_CLASS_NUMBER );
  }
  /* GENERATE LOOP5:begin(duration:PARAM.duration, testnum:PARAM.testnum) TO loop */
  { perf_testloop_LOOPevent5 * e = (perf_testloop_LOOPevent5 *) Escher_NewxtUMLEvent( loop, &perf_testloop_LOOPevent5c );
    e->p_duration = p_duration;    e->p_testnum = p_testnum;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }

}


/*
 * Domain Function:  bridge_void_void
 */
void
perf_testloop_bridge_void_void()
{

}


/*
 * Domain Function:  bridge_void_integer
 */
void
perf_testloop_bridge_void_integer( i_t p_i)
{

}


/*
 * Domain Function:  bridge_integer_integer
 */
i_t
perf_testloop_bridge_integer_integer( i_t p_i)
{
  /* RETURN PARAM.i */
  return p_i;

}

#if perf_testloop_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const perf_testloop_class_info[ perf_testloop_MAX_CLASS_NUMBERS ] = {
  perf_testloop_CLASS_INFO_INIT
};
#endif

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t perf_testloop_EventDispatcher[ perf_testloop_STATE_MODELS ] = {
  perf_testloop_class_dispatchers
};

void perf_testloop_execute_initialization()
{
}
