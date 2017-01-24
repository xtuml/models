/*----------------------------------------------------------------------------
 * File:  NIBP.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef NIBP_H
#define NIBP_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
Non-Invasive Blood Pressure
*/

#include "capssys_sys_types.h"
void NIBP_monitor_off( void );
void NIBP_monitor_on( void );
void NIBP_monitor_reading( const i_t, const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* NIBP_H */
