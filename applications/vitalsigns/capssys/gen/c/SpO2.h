/*----------------------------------------------------------------------------
 * File:  SpO2.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SPO2_H
#define SPO2_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
Pulse Oximeter
*/

#include "capssys_sys_types.h"
void SpO2_monitor_off( void );
void SpO2_monitor_on( void );
void SpO2_monitor_reading( const i_t, const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* SPO2_H */
