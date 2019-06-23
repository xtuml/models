/*----------------------------------------------------------------------------
 * File:  PERSIST_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Persistence Services (PERSIST)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERSIST_BRIDGE_H
#define PERSIST_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ex2_sys_types.h"
i_t PERSIST_commit( void );
i_t PERSIST_restore( void );

#ifdef	__cplusplus
}
#endif
#endif   /* PERSIST_BRIDGE_H */
