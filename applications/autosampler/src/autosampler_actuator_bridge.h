/*----------------------------------------------------------------------------
 * File:  autosampler_actuator_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  actuator (actuator)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef AUTOSAMPLER_ACTUATOR_BRIDGE_H
#define AUTOSAMPLER_ACTUATOR_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "autosampler_sys_types.h"

void autosampler_actuator_spin( const i_t, const i_t );
void autosampler_actuator_raise( void );
void autosampler_actuator_lower( void );

#ifdef	__cplusplus
}
#endif
#endif   /* AUTOSAMPLER_ACTUATOR_BRIDGE_H */
