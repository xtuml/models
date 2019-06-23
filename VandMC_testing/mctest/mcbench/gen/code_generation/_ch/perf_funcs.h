/*----------------------------------------------------------------------------
 * File:  perf_funcs.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_H
#define PERF_FUNCS_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "mcbench_sys_types.h"
i_t perf_funcs_TESTLOOP_bridge_integer_integer( const i_t );
void perf_funcs_TESTLOOP_bridge_void_integer( const i_t );
void perf_funcs_TESTLOOP_bridge_void_void( void );
bool perf_funcs_TESTLOOP_perftest( const i_t, const i_t, const i_t, const i_t );
void perf_funcs_TESTLOOP_runtest( const i_t, const i_t );

#ifdef	__cplusplus
}
#endif
#endif  /* PERF_FUNCS_H */
