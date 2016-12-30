/*----------------------------------------------------------------------------
 * File:  ARM.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef ARM_H
#define ARM_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
automated response monitor
*/

#include "capssys_sys_types.h"
void ARM_monitor_interval( const i_t );
void ARM_monitor_off( void );
void ARM_monitor_on( void );
void ARM_monitor_responsiveness( const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* ARM_H */
