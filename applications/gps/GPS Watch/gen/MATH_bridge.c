/*----------------------------------------------------------------------------
 * File:  MATH_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Math (MATH)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "GPSWatch_sys_types.h"
#include "LOG_bridge.h"
#include "MATH_bridge.h"
#include "TIM_bridge.h"
#include "MATH_bridge.h"
#include "GPSWatch_sys_types.h"
#include <math.h>

/*
 * Bridge:  sqrt
 */
r_t
MATH_sqrt( const r_t p_x )
{
  return( sqrt( p_x ) );
}


