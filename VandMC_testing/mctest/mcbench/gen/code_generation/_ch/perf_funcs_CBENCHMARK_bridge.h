/*----------------------------------------------------------------------------
 * File:  perf_funcs_CBENCHMARK_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  C Benchmark (CBENCHMARK)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_CBENCHMARK_BRIDGE_H
#define PERF_FUNCS_CBENCHMARK_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "mcbench_sys_types.h"
void perf_funcs_CBENCHMARK_function_void_void( void );
void perf_funcs_CBENCHMARK_function_void_integer( const i_t );
i_t perf_funcs_CBENCHMARK_function_integer_integer( const i_t );
i_t perf_funcs_CBENCHMARK_read_struct_member( const i_t );
i_t perf_funcs_CBENCHMARK_write_struct_member( const i_t );

#ifdef	__cplusplus
}
#endif
#endif   /* PERF_FUNCS_CBENCHMARK_BRIDGE_H */
