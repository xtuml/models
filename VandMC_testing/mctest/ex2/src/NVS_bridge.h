/*----------------------------------------------------------------------------
 * File:  NVS_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Non-Volatile Storage (NVS)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef NVS_BRIDGE_H
#define NVS_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ex2_sys_types.h"

i_t NVS_insert( const i_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
i_t NVS_update( const i_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
i_t NVS_select( const i_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
i_t NVS_remove( const i_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
i_t NVS_space_available( void );
i_t NVS_space_used( void );
i_t NVS_space_total( void );
i_t NVS_initialize( void );
i_t NVS_format( void );
i_t NVS_defrag( void );
i_t NVS_next( i_t *, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], i_t * );
i_t NVS_checksum( const i_t, const i_t );
i_t NVS_version( const i_t, const i_t );

#ifdef	__cplusplus
}
#endif
#endif   /* NVS_BRIDGE_H */
