/*----------------------------------------------------------------------------
 * File:  perf_funcs_CBENCHMARK_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  C Benchmark (CBENCHMARK)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_CBENCHMARK_BRIDGE_H
#define PERF_FUNCS_CBENCHMARK_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "mcbench_sys_types.h"

void perf_funcs_CBENCHMARK_function_void_void( void );
void perf_funcs_CBENCHMARK_function_void_integer( i_t );
i_t perf_funcs_CBENCHMARK_function_integer_integer( i_t );
i_t perf_funcs_CBENCHMARK_read_struct_member( i_t );
i_t perf_funcs_CBENCHMARK_write_struct_member( i_t );

#ifdef	__cplusplus
}
#endif
#endif   /* PERF_FUNCS_CBENCHMARK_BRIDGE_H */
