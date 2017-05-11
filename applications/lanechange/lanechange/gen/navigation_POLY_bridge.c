/*----------------------------------------------------------------------------
 * File:  navigation_POLY_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  polyline (POLY)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "lanechange_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TIM_bridge.h"
#include "DATA_bridge.h"
#include "navigation_POLY_bridge.h"
#include "navigation_classes.h"
#include "navigation_POLY_bridge.h"
#include "lanechange_sys_types.h"

#include <math.h>

// encode a single value, return the length of the encoded version
i_t
navigation_POLY_encode_value( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], r_t p_value, r_t p_prev_value )
{
  // string index
  i_t index = 0;

  // multiply the value by 1e6 and round
  s4_t long_val         = (s4_t)( p_value * 1e6 );
  s4_t long_prev_val    = (s4_t)( p_prev_value * 1e6 );

  // take the difference between the values
  s4_t diff_val = ( long_val - long_prev_val );

  // left shift one bit
  s4_t shift_val = ( diff_val << 1 );

  // if the value was negative, invert
  s4_t invert_val;
  if ( diff_val < 0 ) invert_val = ( ~shift_val );
  else invert_val = shift_val;

  uc_t chunk;
  uc_t offset = 0;
  i_t num_bits = ilogb( (double)invert_val );
  while ( offset < num_bits ) {
    // set next chunk
    chunk = ( ( invert_val >> offset ) & 0x1f );

    // add 5 bits to the offset
    offset += 5;

    // if not on the last chunk OR with 0x20
    if ( offset < num_bits ) chunk |= 0x20;

    // add 63
    chunk += 63;

    // add to the string
    A0xtumlsret[index++] = chunk;
  }

  // null terminate the string
  A0xtumlsret[index] = '\0';

  // return
  return index;
}

/*
 * Bridge:  encode
 */
c_t *
navigation_POLY_encode( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], lanechange_sdt_location p_point, lanechange_sdt_location p_prev_point )
{
  i_t len;
  len = navigation_POLY_encode_value( A0xtumlsret, p_point.latitude, p_prev_point.latitude );
  len = navigation_POLY_encode_value( &A0xtumlsret[len], p_point.longitude, p_prev_point.longitude );
  return A0xtumlsret;
}
