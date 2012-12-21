/*----------------------------------------------------------------------------
 * File:  perf_testloop.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef PERF_TESTLOOP_H
#define PERF_TESTLOOP_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "mcbench_sys_types.h"
i_t perf_testloop_APP_bridge_integer_integer( i_t );
void perf_testloop_APP_bridge_void_integer( i_t );
void perf_testloop_APP_bridge_void_void( void );
bool perf_testloop_APP_perftest( i_t, i_t, i_t, i_t );
void perf_testloop_APP_runtest( i_t, i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* PERF_TESTLOOP_H */
