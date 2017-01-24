/*----------------------------------------------------------------------------
 * File:  PUI.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PUI_H
#define PUI_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
Patient Room Unit User Interface
*/

#include "capssys_sys_types.h"
void PUI_monitor_button_press( const i_t );
void PUI_monitor_display( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void PUI_monitor_patient( const i_t, const capssys_gender_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void PUI_infusion_button_press( const i_t );
void PUI_infusion_display( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void PUI_infusion_patient( const i_t, const capssys_gender_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* PUI_H */
