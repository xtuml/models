/*----------------------------------------------------------------------------
 * File:  dsl.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_H
#define DSL_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "dsl_sys_types.h"
void dsl_APP_finished( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void dsl_APP_load( i_t[256], i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void dsl_APP_loaded( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void dsl_APP_run( c_t[ESCHER_SYS_MAX_STRING_LEN] );


#ifdef	__cplusplus
}
#endif
#endif  /* DSL_H */
