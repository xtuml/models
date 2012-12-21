/*----------------------------------------------------------------------------
 * File:  perf_funcs_CBENCH_class.c
 *
 * Class:       C benchmark  (CBENCH)
 * Component:   perf_funcs
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "TIM_bridge.h"
#include "perf_funcs_ARCH_bridge.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "perf_funcs_classes.h"

/*
 * class operation:  function_void_void
 */
bool
perf_funcs_CBENCH_op_function_void_void( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* CBENCHMARK::function_void_void(  ) */
      perf_funcs_CBENCHMARK_function_void_void();
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'C function void void' ) */
    perf_funcs_report( i, p_duration, "C function void void" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  function_void_integer
 */
bool
perf_funcs_CBENCH_op_function_void_integer( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* CBENCHMARK::function_void_integer( i:i ) */
      perf_funcs_CBENCHMARK_function_void_integer( i );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'C function void integer' ) */
    perf_funcs_report( i, p_duration, "C function void integer" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  function_integer_integer
 */
bool
perf_funcs_CBENCH_op_function_integer_integer( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; i_t j; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* ASSIGN j = 0 */
  j = 0;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN j = CBENCHMARK::function_integer_integer(i:i) */
      j = perf_funcs_CBENCHMARK_function_integer_integer( i );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'C function integer integer' ) */
    perf_funcs_report( i, p_duration, "C function integer integer" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  read_struct_member
 */
bool
perf_funcs_CBENCH_op_read_struct_member( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    i_t j; 
    /* ASSIGN j = CBENCHMARK::read_struct_member(i:iterations) */
    j = perf_funcs_CBENCHMARK_read_struct_member( iterations );
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'C read struct member' ) */
    perf_funcs_report( i, p_duration, "C read struct member" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  write_struct_member
 */
bool
perf_funcs_CBENCH_op_write_struct_member( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; i_t j; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* ASSIGN j = 0 */
  j = 0;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    /* ASSIGN j = CBENCHMARK::write_struct_member(i:iterations) */
    j = perf_funcs_CBENCHMARK_write_struct_member( iterations );
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'C write struct member' ) */
    perf_funcs_report( i, p_duration, "C write struct member" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      C benchmark  (CBENCH)
 * Component:  perf_funcs
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_funcs_CBENCH_container[ perf_funcs_CBENCH_MAX_EXTENT_SIZE ];
static perf_funcs_CBENCH perf_funcs_CBENCH_instances[ perf_funcs_CBENCH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_funcs_CBENCH_extent = {
  {0}, {0}, &perf_funcs_CBENCH_container[ 0 ],
  (Escher_iHandle_t) &perf_funcs_CBENCH_instances,
  sizeof( perf_funcs_CBENCH ), 0, perf_funcs_CBENCH_MAX_EXTENT_SIZE
  };


