/*----------------------------------------------------------------------------
 * File:  STRING_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  String (STRING)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "lanechange_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TIM_bridge.h"
#include "DATA_bridge.h"
#include "STRING_bridge.h"
#include "lanechange_sys_types.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
 * Bridge:  atogforce
 */
r_t
STRING_atogforce( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  r_t result = (r_t)atof( p_s );
  return result;
}


/*
 * Bridge:  atometers
 */
r_t
STRING_atometers( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  r_t result = (r_t)atof( p_s );
  return result;
}


/*
 * Bridge:  atodegrees
 */
r_t
STRING_atodegrees( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  r_t result = (r_t)atof( p_s );
  return result;
}


/*
 * Bridge:  atoaxis
 */
lanechange_axis_t
STRING_atoaxis( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  lanechange_axis_t result = lanechange_axis_NULL_e;
  if ( !strncmp( "X", p_s, ESCHER_SYS_MAX_STRING_LEN ) ) {
    result = lanechange_axis_X_e;
  }
  else if ( !strncmp( "Y", p_s, ESCHER_SYS_MAX_STRING_LEN ) ) {
    result = lanechange_axis_Y_e;
  }
  return result;
}


/*
 * Bridge:  axistoa
 */
c_t *
STRING_axistoa( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const lanechange_axis_t p_axis )
{
  switch ( p_axis ) {
    case lanechange_axis_X_e:
      strncpy( A0xtumlsret, "X", ESCHER_SYS_MAX_STRING_LEN );
      break;
    case lanechange_axis_Y_e:
      strncpy( A0xtumlsret, "Y", ESCHER_SYS_MAX_STRING_LEN );
      break;
    default:
      strncpy( A0xtumlsret, "NULL", ESCHER_SYS_MAX_STRING_LEN );
      break;
  }
  return A0xtumlsret;
}


/*
 * Bridge:  degreestoa
 */
c_t *
STRING_degreestoa( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const r_t p_degrees )
{
  sprintf( A0xtumlsret, "%f", p_degrees );
  return A0xtumlsret;
}


/*
 * Bridge:  meterstoa
 */
c_t *
STRING_meterstoa( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const r_t p_meters )
{
  sprintf( A0xtumlsret, "%f", p_meters );
  return A0xtumlsret;
}


/*
 * Bridge:  gforcetoa
 */
c_t *
STRING_gforcetoa( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const r_t p_gs )
{
  sprintf( A0xtumlsret, "%f", p_gs );
  return A0xtumlsret;
}

