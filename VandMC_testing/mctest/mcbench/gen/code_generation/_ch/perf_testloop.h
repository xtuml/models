/*----------------------------------------------------------------------------
 * File:  perf_testloop.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_TESTLOOP_H
#define PERF_TESTLOOP_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "mcbench_sys_types.h"
i_t perf_testloop_APP_bridge_integer_integer( const i_t );
void perf_testloop_APP_bridge_void_integer( const i_t );
void perf_testloop_APP_bridge_void_void( void );
bool perf_testloop_APP_perftest( const i_t, const i_t, const i_t, const i_t );
void perf_testloop_APP_runtest( const i_t, const i_t );

#ifdef	__cplusplus
}
#endif
#endif  /* PERF_TESTLOOP_H */
