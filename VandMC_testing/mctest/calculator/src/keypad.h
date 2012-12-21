/*----------------------------------------------------------------------------
 * File:  keypad.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef KEYPAD_H
#define KEYPAD_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "calculator_sys_types.h"
void keypad_tocalc_key( i_t );
void keypad_tocalc_result( r_t );
void keypad_instrumentation_start_test( void );


#ifdef	__cplusplus
}
#endif
#endif  /* KEYPAD_H */
