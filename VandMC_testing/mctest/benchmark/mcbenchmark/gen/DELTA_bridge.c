/*----------------------------------------------------------------------------
 * File:  DELTA_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Delta (DELTA)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "mcbenchmark_sys_types.h"
#include "DELTA_bridge.h"

/*
 * Bridge:  timestamp
 */
i_t
DELTA_timestamp( Escher_TimeStamp_t p_t0, Escher_TimeStamp_t p_t1 )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  Escher_TimeStamp_t delta;
  /* ASSIGN delta = ( PARAM.t1 - PARAM.t0 ) */
  delta = ( p_t1 - p_t0 );
  /* RETURN 0 */
  {i_t xtumlOALrv = delta;
  return xtumlOALrv;}
}

