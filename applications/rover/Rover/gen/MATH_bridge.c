/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
 *
 * External Entity:  Math (MATH)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Rover_sys_types.h"
#include "LOG_bridge.h"
#include "MATH_bridge.h"
#include "TIM_bridge.h"

#include <math.h>

/*
 * Bridge:  bearing
 */
r_t
MATH_bearing( const r_t p_x1, const r_t p_x2, const r_t p_y1, const r_t p_y2 )
{
  r_t b = (r_t)(90 - (180/M_PI)*atan2(p_y2-p_y1, p_x2-p_x1));

  if ( b < 0 ) {
	b = 360 + b;
  }

  return b;
}


/*
 * Bridge:  abs
 */
r_t
MATH_abs( const r_t p_a )
{
  r_t result = 0.0;
  result = fabs(p_a);
  return result;
}

