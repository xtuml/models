/*----------------------------------------------------------------------------
 * File:  capnometer.c
 *
 * UML Component Port Messages
 * Component/Module Name:  capnometer
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 capnometer
 */

#include "capssys_sys_types.h"
#include "capnometer.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor.h"

/*
 * Interface:  capnoif
 * Provided Port:  monitor
 * To Provider Message:  off
 */
void
capnometer_monitor_off()
{
}

/*
 * Interface:  capnoif
 * Provided Port:  monitor
 * To Provider Message:  on
 */
void
capnometer_monitor_on()
{
}

/*
 * Interface:  capnoif
 * Provided Port:  monitor
 * From Provider Message:  respiration
 */
void
capnometer_monitor_respiration( const i_t p_etCO2, const i_t p_expiration, const i_t p_inspiration, const i_t p_rate )
{
  monitor_capno_respiration(  p_etCO2, p_expiration, p_inspiration, p_rate );
}

