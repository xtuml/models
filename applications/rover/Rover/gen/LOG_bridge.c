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

/*
 * Bridge:  LogInfo
 */
void
LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  printf("%s\n", p_message);
  fflush(stdout);
}


/*
 * Bridge:  LogReal
 */
void
LOG_LogReal( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], const r_t p_r )
{
  printf("%s : %f\n", p_message, p_r);
  fflush(stdout);
}


/*
 * Bridge:  LogInteger
 */
void
LOG_LogInteger( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], const i_t p_i )
{
  printf("%s : %d\n", p_message, p_i);
  fflush(stdout);
}

