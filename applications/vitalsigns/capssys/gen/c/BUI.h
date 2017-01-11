/*----------------------------------------------------------------------------
 * File:  BUI.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef BUI_H
#define BUI_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
Bedside Monitoring Unit User Interface
*/

#include "capssys_sys_types.h"
void BUI_monitor_button_press( const i_t );
void BUI_monitor_display( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void BUI_monitor_patient( const i_t, const capssys_gender_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* BUI_H */
