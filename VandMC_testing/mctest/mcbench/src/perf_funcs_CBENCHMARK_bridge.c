/*----------------------------------------------------------------------------
 * File:  perf_funcs_CBENCHMARK_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  C Benchmark (CBENCHMARK)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "TIM_bridge.h"
#include "perf_funcs_ARCH_bridge.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "perf_funcs_classes.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "mcbench_sys_types.h"

/*
 * Bridge:  function_void_void
 */
void
perf_funcs_CBENCHMARK_function_void_void()
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  function_void_integer
 */
void
perf_funcs_CBENCHMARK_function_void_integer( i_t p_i)
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  function_integer_integer
 */
i_t
perf_funcs_CBENCHMARK_function_integer_integer( i_t p_i)
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN PARAM.i */
  return p_i;
}


/*
 * Bridge:  read_struct_member
 */
i_t
perf_funcs_CBENCHMARK_read_struct_member( i_t p_i)
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN ( 10 * PARAM.i ) */
  return ( 10 * p_i );
}


/*
 * Bridge:  write_struct_member
 */
i_t
perf_funcs_CBENCHMARK_write_struct_member( i_t p_i)
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN ( 10 * PARAM.i ) */
  return ( 10 * p_i );
}


