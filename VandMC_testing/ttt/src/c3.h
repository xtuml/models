/*----------------------------------------------------------------------------
 * File:  c3.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef C3_H
#define C3_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ttt_sys_types.h"
void c3_catch_s1( const i_t );
void c3_catch_s2( void );
i_t c3_burn_o2( const i_t );
void c3_burn_o3( void );
i_t c3_burn_o4( void );
void c3_toss_s1( const i_t );
void c3_toss_s2( void );
i_t c3_lase_o2( const i_t );
void c3_lase_o3( void );
i_t c3_lase_o4( void );


#ifdef	__cplusplus
}
#endif
#endif  /* C3_H */
