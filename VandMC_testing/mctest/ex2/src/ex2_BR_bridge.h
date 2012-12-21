/*----------------------------------------------------------------------------
 * File:  ex2_BR_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Realized Bridge (BR)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef EX2_BR_BRIDGE_H
#define EX2_BR_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ex2_sys_types.h"

bool ex2_BR_ret_bool( bool );
i_t ex2_BR_ret_int( i_t );
r_t ex2_BR_ret_real( r_t );

#ifdef	__cplusplus
}
#endif
#endif   /* EX2_BR_BRIDGE_H */
