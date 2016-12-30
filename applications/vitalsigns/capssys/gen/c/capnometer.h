/*----------------------------------------------------------------------------
 * File:  capnometer.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CAPNOMETER_H
#define CAPNOMETER_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
capnometer
*/

#include "capssys_sys_types.h"
void capnometer_monitor_off( void );
void capnometer_monitor_on( void );
void capnometer_monitor_respiration( const i_t, const i_t, const i_t, const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* CAPNOMETER_H */
