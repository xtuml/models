/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Rover_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"

void bt_printf(const char * restrict format, ...);

/*
 * Bridge:  LogInfo
 */
void
LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  bt_printf("LOG::LogInfo %s\n", p_message);
}


/*
 * Bridge:  LogReal
 */
void
LOG_LogReal( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], const r_t p_r )
{
  bt_printf("LOG::LogReal %s : %f\n", p_message, p_r);
}


/*
 * Bridge:  LogInteger
 */
void
LOG_LogInteger( const i_t p_i, c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  bt_printf("LOG::LogInteger %s : %d\n", p_message, p_i);
}

