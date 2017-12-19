/*----------------------------------------------------------------------------
 * File:  typeminer_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  typeminer (typeminer)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "typeminer_sys_types.h"
#include "typeminer_bridge.h"
#include <string.h>

int typeminer_miner( char *, int );

c_t  typeminer_labels[1024][ESCHER_SYS_MAX_STRING_LEN];
i_t  typeminer_count;
bool typeminer_parse_error;

/*
 * Bridge:  referreds
 */
i_t
typeminer_referreds( c_t p_body[ESCHER_SYS_MAX_STRING_LEN], c_t p_labels[1024][ESCHER_SYS_MAX_STRING_LEN], c_t p_name[ESCHER_SYS_MAX_STRING_LEN] )
{
  // clear globals
  memset( typeminer_labels, 0, 1024 * ESCHER_SYS_MAX_STRING_LEN );
  typeminer_count = 0;
  typeminer_parse_error = 0;

  // run the typeminer
  typeminer_miner( p_body, ESCHER_SYS_MAX_STRING_LEN );

  // if there was a parse error, return -1
  if ( typeminer_parse_error ) return -1;

  // copy the results
  memcpy( p_labels, typeminer_labels, 1024 * ESCHER_SYS_MAX_STRING_LEN );
  return typeminer_count;
}

// check if a label is a core type
bool typeminer_is_core_type( c_t label[ESCHER_SYS_MAX_STRING_LEN] ) {
  c_t CORE_TYPES[11][ESCHER_SYS_MAX_STRING_LEN] = { "character", "string", "boolean", "byte", "integer", "long_integer",
                                                    "real", "device", "duration", "timestamp", "timer" };
  for ( i_t i = 0; i < 11; i++ ) {
    if ( !strncmp( CORE_TYPES[i], label, ESCHER_SYS_MAX_STRING_LEN ) ) return 1;
  }
  return 0;
}

// check if a label is already in the list
bool typeminer_labels_contains( c_t label[ESCHER_SYS_MAX_STRING_LEN] ) {
  for ( i_t i = 0; i < 1024 && i < typeminer_count; i++ ) {
    if ( !strncmp( typeminer_labels[i], label, ESCHER_SYS_MAX_STRING_LEN ) ) return 1;
  }
  return 0;
}

// add a label to the list of existing labels
void typeminer_add_label( c_t label[ESCHER_SYS_MAX_STRING_LEN] ) {
  if ( !typeminer_is_core_type( label ) && !typeminer_labels_contains( label ) ) {
    strncpy( typeminer_labels[ typeminer_count++ ], label, ESCHER_SYS_MAX_STRING_LEN );
  }
}
