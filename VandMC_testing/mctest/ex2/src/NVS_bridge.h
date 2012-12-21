/*----------------------------------------------------------------------------
 * File:  NVS_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Non-Volatile Storage (NVS)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef NVS_BRIDGE_H
#define NVS_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ex2_sys_types.h"

i_t NVS_insert( i_t, i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], i_t );
i_t NVS_update( i_t, i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], i_t );
i_t NVS_select( i_t, i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], i_t );
i_t NVS_remove( i_t, i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], i_t );
i_t NVS_space_available( void );
i_t NVS_space_used( void );
i_t NVS_space_total( void );
i_t NVS_initialize( void );
i_t NVS_format( void );
i_t NVS_defrag( void );
i_t NVS_next( i_t *, i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], i_t * );
i_t NVS_checksum( i_t, i_t );
i_t NVS_version( i_t, i_t );

#ifdef	__cplusplus
}
#endif
#endif   /* NVS_BRIDGE_H */
