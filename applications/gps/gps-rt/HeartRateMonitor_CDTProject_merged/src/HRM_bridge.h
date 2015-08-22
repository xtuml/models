/*----------------------------------------------------------------------------
 * File:  HRM_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  HearRateMonitor (HRM)
 * Realized version of the HeartRateMonitor component used in the standard example version of this model.
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef HRM_BRIDGE_H
#define HRM_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "GPSWatch_sys_types.h"

void HRM_registerListener( void );
void HRM_unregisterListener( void );

#ifdef	__cplusplus
}
#endif
#endif   /* HRM_BRIDGE_H */
