/*----------------------------------------------------------------------------
 * File:  ECG.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef ECG_H
#define ECG_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
electrocardiograph
*/

#include "capssys_sys_types.h"
void ECG_monitor_off( void );
void ECG_monitor_on( void );
void ECG_monitor_waveform( const i_t, const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* ECG_H */
