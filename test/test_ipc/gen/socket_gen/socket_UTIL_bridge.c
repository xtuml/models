/*----------------------------------------------------------------------------
 * File:  socket_UTIL_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  utilities (UTIL)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "test_ipc_sys_types.h"
#include "socket_UTIL_bridge.h"

#include <string.h>

void print_debug( char * s ) {
#ifdef DEBUG_SOCKETS
  fprintf( stderr, "%s\n", s );
#endif
}

void print_fatal( char * s ) {
  fprintf( stderr, "%s\n", s );
}

/*
 * Bridge:  datatostring
 */
c_t *
socket_UTIL_datatostring( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const void * p_data, const i_t p_size )
{
  memcpy( A0xtumlsret, p_data, p_size );
  A0xtumlsret[p_size] = '\0';
  return A0xtumlsret;
}


/*
 * Bridge:  print
 */
void
socket_UTIL_print( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  print_debug( p_s );
}


/*
 * Bridge:  report_error
 */
void
socket_UTIL_report_error( const i_t p_code, const test_ipc_error_levels_t p_level )
{
  c_t message[ESCHER_SYS_MAX_STRING_LEN];
  switch ( p_code ) {
    case 0:
      // silent
      break;
    default:
      snprintf( message, ESCHER_SYS_MAX_STRING_LEN, "%s %d", "Unrecognized error code.", p_code );
      break;
  }
  if ( p_level == socket_error_levels_fatal_e ) print_fatal( message );
  else print_debug( message );
}


/*
 * Bridge:  id_factory
 */
i_t
socket_UTIL_id_factory()
{
  static i_t id = -1;
  id += 2;
  return id;
}


/*
 * Bridge:  stringtodata
 */
void *
socket_UTIL_stringtodata( c_t p_string[ESCHER_SYS_MAX_STRING_LEN] )
{
  return (void*)p_string;
}

