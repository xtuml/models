/*----------------------------------------------------------------------------
 * File:  NIBP.c
 *
 * UML Component Port Messages
 * Component/Module Name:  NIBP
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 Non-Invasive Blood Pressure
 */

#include "capssys_sys_types.h"
#include "NIBP.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor.h"

/*
 * Interface:  NIBPif
 * Provided Port:  monitor
 * To Provider Message:  off
 */
void
NIBP_monitor_off()
{
}

/*
 * Interface:  NIBPif
 * Provided Port:  monitor
 * To Provider Message:  on
 */
void
NIBP_monitor_on()
{
}

/*
 * Interface:  NIBPif
 * Provided Port:  monitor
 * From Provider Message:  reading
 */
void
NIBP_monitor_reading( const i_t p_diastolic, const i_t p_systolic )
{
  monitor_cuff_reading(  p_diastolic, p_systolic );
}

