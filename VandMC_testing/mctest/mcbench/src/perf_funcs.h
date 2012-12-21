/*----------------------------------------------------------------------------
 * File:  perf_funcs.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_H
#define PERF_FUNCS_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "mcbench_sys_types.h"
i_t perf_funcs_TESTLOOP_bridge_integer_integer( i_t );
void perf_funcs_TESTLOOP_bridge_void_integer( i_t );
void perf_funcs_TESTLOOP_bridge_void_void( void );
bool perf_funcs_TESTLOOP_perftest( i_t, i_t, i_t, i_t );
void perf_funcs_TESTLOOP_runtest( i_t, i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* PERF_FUNCS_H */
