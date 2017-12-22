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
#include "miner.h"
#include "typeminer_bridge.h"
#include <string.h>
#include <stdlib.h>
int typeminer_miner( char *, int );

#define LABEL_MAX 1024  // this constant corresponds to the modeled constant lable::max

// global data
struct typeminer_label_list *  typeminer_labels = NULL;
bool                           typeminer_parse_error = FALSE;

char * CORE_TYPES[11] = { "character", "string", "boolean", "byte", "integer", "long_integer",
                                                    "real", "device", "duration", "timestamp", "timer" };

/*
 * Bridge:  referreds
 */
i_t
typeminer_referreds( c_t p_body[ESCHER_SYS_MAX_STRING_LEN], c_t p_labels[LABEL_MAX][ESCHER_SYS_MAX_STRING_LEN], c_t p_name[ESCHER_SYS_MAX_STRING_LEN] )
{
  // initialize label list
  typeminer_labels = typeminer_label_list_init();

  // run the typeminer
  typeminer_miner( p_body, strnlen( p_body, ESCHER_SYS_MAX_STRING_LEN - 1 ) + 1 );

  // if there was a parse error, return -1
  int count;
  if ( !typeminer_parse_error ) {

    // copy the results
    struct typeminer_list_node * node = NULL != typeminer_labels ? typeminer_labels->head : NULL;
    for ( int i = 0; NULL != node && i < LABEL_MAX; i++ ) {
      memset( p_labels[i], 0, ESCHER_SYS_MAX_STRING_LEN );
      strncpy( p_labels[i], node->label, ESCHER_SYS_MAX_STRING_LEN-1 );
      node = node->next;
    }

    count = typeminer_labels->count;

  }
  else count = -1;

  // dispose list
  typeminer_label_list_dispose( typeminer_labels );
  typeminer_labels = NULL;

  return count;
}

// check if a label is a core type
bool typeminer_is_core_type( char * label ) {
  for ( int i = 0; i < 11; i++ ) {
    if ( !strncmp( CORE_TYPES[i], label, TYPEMINER_MAX_LABEL_LEN ) ) return TRUE;
  }
  return FALSE;
}

// check if a label is already in the list
bool typeminer_labels_contains( struct typeminer_label_list * list, char * label ) {
  struct typeminer_list_node * node = NULL != list ? list->head : NULL;
  for ( int i = 0; NULL != node && i < LABEL_MAX; i++ ) {
    if ( !strncmp( node->label, label, TYPEMINER_MAX_LABEL_LEN ) ) return TRUE;
    node = node->next;
  }
  return FALSE;
}

// dispose a list
void typeminer_label_list_dispose( struct typeminer_label_list * list ) {
  if ( NULL != list ) {
    // dispose the first node
    typeminer_list_node_dispose( list->head );
    list->head = NULL;
    // free the list
    free( list );
  }
}

// dispose a list node
void typeminer_list_node_dispose( struct typeminer_list_node * node ) {
  if ( NULL != node ) {
    // dispose the next node
    typeminer_list_node_dispose( node->next );
    node->next = NULL;
    // free the label string
    free( node->label );
    node->label = NULL;
    // free this node
    free( node );
  }
}

// initialize a new list
struct typeminer_label_list * typeminer_label_list_init() {
  struct typeminer_label_list * list = (struct typeminer_label_list *)malloc( sizeof(struct typeminer_label_list) );
  list->count = 0;
  list->head = NULL;
  return list;
}

// add a label to the list
void typeminer_add_label( struct typeminer_label_list * list, char * label ) {
  if ( NULL != list && NULL != label && !typeminer_is_core_type( label ) && !typeminer_labels_contains( list, label ) ) {
    // create a new node
    struct typeminer_list_node * node = (struct typeminer_list_node *)malloc( sizeof(struct typeminer_list_node) );
    node->next = NULL;
    node->label = label;
    // add the node to the list
    if ( NULL == list->head ) {
      list->head = node;
    }
    else {
      struct typeminer_list_node * last_node = list->head;
      struct typeminer_list_node * next_node = last_node->next;
      while ( NULL != next_node ) {
        last_node = next_node;
        next_node = last_node->next;
      }
      last_node->next = node;
    }
    // increment the count
    list->count++;
  }
}
