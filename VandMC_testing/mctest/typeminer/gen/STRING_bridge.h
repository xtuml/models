/*----------------------------------------------------------------------------
 * File:  STRING_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  string (STRING)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRING_BRIDGE_H
#define STRING_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "typeminer_sys_types.h"
c_t * STRING_itoa( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
i_t STRING_atoi( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * STRING_substr( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
i_t STRING_strlen( c_t[ESCHER_SYS_MAX_STRING_LEN] );
i_t STRING_indexof( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * STRING_getword( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * STRING_trim( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
#define STRING_quote( A ) "\""
c_t * STRING_escapetics( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * STRING_unescapetics( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * STRING_idtoa( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], Escher_UniqueID_t );

#ifdef	__cplusplus
}
#endif
#endif   /* STRING_BRIDGE_H */
