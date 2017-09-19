/*----------------------------------------------------------------------------
 * File:  RAND_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  random (RAND)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "lanechange_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TIM_bridge.h"
#include "DATA_bridge.h"
#include "RAND_bridge.h"
#include "RAND_bridge.h"
#include "lanechange_sys_types.h"

#include <stdlib.h>
#include <time.h>

/*
 * Bridge:  scew
 */
c_t *
RAND_scew( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_input[ESCHER_SYS_MAX_STRING_LEN], const i_t p_tolerance )
{
  r_t input = (r_t)atof( p_input );
  r_t max_delta = ( p_tolerance * input ) / 100000;

  srand(time(NULL));
  i_t x = rand();
  r_t mult = -1 + ( ( x * 2.0 ) / RAND_MAX ); // random real between -1 and 1

  r_t delta = max_delta * mult;
  r_t output = input + delta;

  sprintf( A0xtumlsret, "%f", output );
  return A0xtumlsret;
}

