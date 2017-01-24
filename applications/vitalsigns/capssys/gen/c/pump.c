/*----------------------------------------------------------------------------
 * File:  pump.c
 *
 * UML Component Port Messages
 * Component/Module Name:  pump
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "pump.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "infusion.h"

/*
 * Interface:  pumpif
 * Provided Port:  Port1
 * To Provider Message:  flow
 */
void
pump_Port1_flow( const i_t p_rate )
{
}

/*
 * Interface:  pumpif
 * Provided Port:  Port1
 * To Provider Message:  off
 */
void
pump_Port1_off()
{
}

/*
 * Interface:  pumpif
 * Provided Port:  Port1
 * To Provider Message:  on
 */
void
pump_Port1_on()
{
}

/*
 * Interface:  pumpif
 * Provided Port:  Port1
 * From Provider Message:  status
 */
void
pump_Port1_status( const i_t p_exception, const i_t p_flow )
{
  infusion_pump_status(  p_exception, p_flow );
}

