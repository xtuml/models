/*----------------------------------------------------------------------------
 * File:  monitor.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_H
#define MONITOR_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "capssys_sys_types.h"
void monitor_UI_button_press( const i_t );
void monitor_UI_display( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void monitor_UI_patient( const i_t, const capssys_gender_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void monitor_pulsox_off( void );
void monitor_pulsox_on( void );
void monitor_pulsox_reading( const i_t, const i_t );
void monitor_heart_off( void );
void monitor_heart_on( void );
void monitor_heart_waveform( const i_t, const i_t );
void monitor_cuff_off( void );
void monitor_cuff_on( void );
void monitor_cuff_reading( const i_t, const i_t );
void monitor_arm_interval( const i_t );
void monitor_arm_off( void );
void monitor_arm_on( void );
void monitor_arm_responsiveness( const i_t );
void monitor_capno_off( void );
void monitor_capno_on( void );
void monitor_capno_respiration( const i_t, const i_t, const i_t, const i_t );
void monitor_PRUUI_button_press( const i_t );
void monitor_PRUUI_display( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void monitor_PRUUI_patient( const i_t, const capssys_gender_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );


#ifdef	__cplusplus
}
#endif
#endif  /* MONITOR_H */
