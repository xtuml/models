/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
 *
 * External Entity:  Realized Bridge (BR)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "ex2_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "TIM_bridge.h"
#include "ex2_BR_bridge.h"
#include "ex2_classes.h"

/*
 * Bridge:  ret_bool
 */
bool
ex2_BR_ret_bool( const bool p_b )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN PARAM.b */
  {bool xtumlOALrv = p_b;
  return xtumlOALrv;}
}


/*
 * Bridge:  ret_int
 */
i_t
ex2_BR_ret_int( const i_t p_i )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN PARAM.i */
  {i_t xtumlOALrv = p_i;
  return xtumlOALrv;}
}


/*
 * Bridge:  ret_real
 */
r_t
ex2_BR_ret_real( const r_t p_r )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN PARAM.r */
  {r_t xtumlOALrv = p_r;
  return xtumlOALrv;}
}

