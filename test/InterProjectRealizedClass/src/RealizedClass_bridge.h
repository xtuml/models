/*----------------------------------------------------------------------------
 * File:  RealizedClass_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  RealizedClass (RealizedClass)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef REALIZEDCLASS_BRIDGE_H
#define REALIZEDCLASS_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "InterProjectRealizedClass_sys_types.h"

Escher_UniqueID_t RealizedClass_ReturnUniqueID( void );
bool RealizedClass_ReturnBoolean( void );
r_t RealizedClass_ReturnReal( void );
c_t * RealizedClass_ReturnString( c_t[ESCHER_SYS_MAX_STRING_LEN] );
i_t RealizedClass_ReturnInteger( void );
void RealizedClass_ByValueAndByRef( i_t *, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void RealizedClass_ByValue( const r_t, const bool, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void RealizedClass_ByRef( r_t *, bool *, i_t *, c_t[ESCHER_SYS_MAX_STRING_LEN] );

#ifdef	__cplusplus
}
#endif
#endif   /* REALIZEDCLASS_BRIDGE_H */
