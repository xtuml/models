/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
 *
 * External Entity:  C Benchmark (CBENCHMARK)
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
perf_funcs_CBENCHMARK_function_void_integer( const i_t p_i )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  function_integer_integer
 */
i_t
perf_funcs_CBENCHMARK_function_integer_integer( const i_t p_i )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN PARAM.i */
  {i_t xtumlOALrv = p_i;
  return xtumlOALrv;}
}


/*
 * Bridge:  read_struct_member
 */
i_t
perf_funcs_CBENCHMARK_read_struct_member( const i_t p_i )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN ( 10 * PARAM.i ) */
  {i_t xtumlOALrv = ( 10 * p_i );
  return xtumlOALrv;}
}


/*
 * Bridge:  write_struct_member
 */
i_t
perf_funcs_CBENCHMARK_write_struct_member( const i_t p_i )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN ( 10 * PARAM.i ) */
  {i_t xtumlOALrv = ( 10 * p_i );
  return xtumlOALrv;}
}

