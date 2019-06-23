/*----------------------------------------------------------------------------
 * File:  ex2_BR_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Realized Bridge (BR)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef EX2_BR_BRIDGE_H
#define EX2_BR_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ex2_sys_types.h"
bool ex2_BR_ret_bool( const bool );
i_t ex2_BR_ret_int( const i_t );
r_t ex2_BR_ret_real( const r_t );

#ifdef	__cplusplus
}
#endif
#endif   /* EX2_BR_BRIDGE_H */
