/*----------------------------------------------------------------------------
 * File:  c2.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * 
 *--------------------------------------------------------------------------*/

#ifndef C2_H
#define C2_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ttt_sys_types.h"
void c2_catch_s1( const i_t );
void c2_catch_s2( void );
i_t c2_burn_o2( const i_t );
void c2_burn_o3( void );
i_t c2_burn_o4( void );
void c2_toss_s1( const i_t );
void c2_toss_s2( void );
i_t c2_lase_o2( const i_t );
void c2_lase_o3( void );
i_t c2_lase_o4( void );


#ifdef	__cplusplus
}
#endif
#endif  /* C2_H */
