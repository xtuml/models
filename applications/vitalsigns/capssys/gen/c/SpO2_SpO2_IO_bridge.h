/*----------------------------------------------------------------------------
 * File:  SpO2_SpO2_IO_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  pulsox driver (SpO2_IO)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SPO2_SPO2_IO_BRIDGE_H
#define SPO2_SPO2_IO_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "capssys_sys_types.h"

i_t SpO2_SpO2_IO_read_pulse( void );
i_t SpO2_SpO2_IO_read_O2saturation( void );
void SpO2_SpO2_IO_init( void );
void SpO2_SpO2_IO_shutdown( void );

#ifdef	__cplusplus
}
#endif
#endif   /* SPO2_SPO2_IO_BRIDGE_H */
