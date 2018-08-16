/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Sumo_sys_types.h"
#include "EV3B_bridge.h"
#include "EV3COL_bridge.h"
#include "EV3GYR_bridge.h"
#include "EV3M_bridge.h"
#include "EV3TCH_bridge.h"
#include "EV3TCH2_bridge.h"
#include "EV3ULS_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"

extern void sumo_log_printf(const char * restrict format, ...);

/*
 * Bridge:  LogSuccess
 */
void
LOG_LogSuccess( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  sumo_log_printf("SUCCESS: %s\n", p_message);
}


/*
 * Bridge:  LogFailure
 */
void
LOG_LogFailure( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  sumo_log_printf("FAILURE: %s\n", p_message);
}


/*
 * Bridge:  LogInfo
 */
void
LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  sumo_log_printf("INFO: %s\n", p_message);
}


/*
 * Bridge:  LogDate
 */
void
LOG_LogDate( Escher_Date_t p_d, c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  LogTime
 */
void
LOG_LogTime( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t p_t )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  LogReal
 */
void
LOG_LogReal( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], const r_t p_r )
{
  sumo_log_printf("INFO: %s: %f\n", p_message, p_r);
}


/*
 * Bridge:  LogInteger
 */
void
LOG_LogInteger( const i_t p_message )
{
  sumo_log_printf("INFO: %d\n", p_message);
}

