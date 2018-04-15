/*----------------------------------------------------------------------------
 * File:  navigation_V_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  valhalla (V)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "lanechange_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TIM_bridge.h"
#include "DATA_bridge.h"
#include "navigation_POLY_bridge.h"
#include "navigation_V_bridge.h"
#include "navigation_classes.h"
#include "navigation_V_bridge.h"
#include "lanechange_sys_types.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

const char * APP_KEY = "mapzen-jDwpv81";
c_t current_instruction[ESCHER_SYS_MAX_STRING_LEN] = { 0 };

/*
 * Bridge:  trace_route
 */
c_t *
navigation_V_trace_route( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_encoded_polyline[ESCHER_SYS_MAX_STRING_LEN] )
{

  // populate input temp file
  FILE * input_file = fopen( "input_file.txt", "w" );
  fprintf( input_file, "{\"encoded_polyline\":\"%s\",\"shape_match\":\"map_snap\",\"costing\":\"auto\",\"directions_options\":{\"units\":\"miles\"}}", p_encoded_polyline );
  fclose( input_file );

  // set up in/out and call curl
  system( "cat input_file.txt | curl -s -H \"Content-Type: application/json\" -X POST -d @- https://valhalla.mapzen.com/trace_route?api_key=mapzen-jDwpv81 | jq -r '.trip.legs[]?.maneuvers[-2:-1][]?.instruction' > output_file.txt" );

  // read the output file
  FILE * output_file = fopen( "output_file.txt", "r" );
  int num_read = fread( A0xtumlsret, 1, ESCHER_SYS_MAX_STRING_LEN-1, output_file );
  fclose( output_file );
  A0xtumlsret[num_read] = '\0';

  // if they match, return empty string
  if ( !strncmp( A0xtumlsret, current_instruction, ESCHER_SYS_MAX_STRING_LEN ) ) A0xtumlsret[0] = '\0';
  else {
    // copy most recent into the current buffer
    memcpy( current_instruction, A0xtumlsret, ESCHER_SYS_MAX_STRING_LEN );
  }

  return A0xtumlsret;
}

