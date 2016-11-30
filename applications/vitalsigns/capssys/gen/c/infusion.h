/*----------------------------------------------------------------------------
 * File:  infusion.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_H
#define INFUSION_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
drug infusion application
*/

#include "capssys_sys_types.h"
void infusion_pump_flow( const i_t );
void infusion_pump_off( void );
void infusion_pump_on( void );
void infusion_pump_status( const i_t, const i_t );
void infusion_UI_button_press( const i_t );
void infusion_UI_display( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void infusion_UI_patient( const i_t, const capssys_gender_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* INFUSION_H */
