/*----------------------------------------------------------------------------
 * File:  PERSIST_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Persistence Services (PERSIST)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef PERSIST_BRIDGE_H
#define PERSIST_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "assoc_unformal_sys_types.h"

i_t PERSIST_commit( void );
i_t PERSIST_restore( void );

#ifdef	__cplusplus
}
#endif
#endif   /* PERSIST_BRIDGE_H */
