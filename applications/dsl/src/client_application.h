/*----------------------------------------------------------------------------
 * File:  client_application.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CLIENT_APPLICATION_H
#define CLIENT_APPLICATION_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "dsl_sys_types.h"
void client_application_VM_finished( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void client_application_VM_load( i_t[256], const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void client_application_VM_loaded( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void client_application_VM_run( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void client_application_instrumentation_start_test( void );


#ifdef	__cplusplus
}
#endif
#endif  /* CLIENT_APPLICATION_H */
