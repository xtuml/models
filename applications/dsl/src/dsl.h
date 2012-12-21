/*----------------------------------------------------------------------------
 * File:  dsl.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_H
#define DSL_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "dsl_sys_types.h"
void dsl_APP_finished( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void dsl_APP_load( i_t[256], const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void dsl_APP_loaded( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void dsl_APP_run( c_t[ESCHER_SYS_MAX_STRING_LEN] );


#ifdef	__cplusplus
}
#endif
#endif  /* DSL_H */
