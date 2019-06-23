/*----------------------------------------------------------------------------
 * File:  keypad.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef KEYPAD_H
#define KEYPAD_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "calculator_sys_types.h"
void keypad_tocalc_key( const i_t );
void keypad_tocalc_result( const r_t );
void keypad_instrumentation_start_test( void );

#ifdef	__cplusplus
}
#endif
#endif  /* KEYPAD_H */
