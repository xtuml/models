/*----------------------------------------------------------------------------
 * File:  pump.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PUMP_H
#define PUMP_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "capssys_sys_types.h"
void pump_Port1_flow( const i_t );
void pump_Port1_off( void );
void pump_Port1_on( void );
void pump_Port1_status( const i_t, const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* PUMP_H */
