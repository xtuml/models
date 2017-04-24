/*----------------------------------------------------------------------------
 * File:  DATA_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  data (DATA)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DATA_BRIDGE_H
#define DATA_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "lanechange_sys_types.h"
void DATA_read( c_t[ESCHER_SYS_MAX_STRING_LEN] );

#define MAX_FILE_LEN 1000000    // 1 MB

// parser data
c_t filename[ESCHER_SYS_MAX_STRING_LEN];
int pointnum;
int valnum;

int DATA_internal_next_token( int );
int DATA_internal_tokenizer_1( const int );
int DATA_internal_tokenizer_2( const int );
int DATA_internal_tokenizer_3( const int );
int DATA_internal_tokenizer_4( const int );
int DATA_internal_tokenizer_5( const int );
int DATA_internal_tokenizer_6( const int );
void DATA_internal_tokenizer_init( c_t input[MAX_FILE_LEN] );

#define DATA_LEX_ERR        0
#define DATA_TOK_COMMA      1 
#define DATA_TOK_NEWLINE    2
#define DATA_TOK_STRING     3
#define DATA_TOK_REAL       4
#define DATA_TOK_COMMENT    5
#define DATA_TOK_WS         6
#define DATA_TOK_EOF        7

typedef union {
  c_t string[MAX_FILE_LEN];
} DATA_internal_token_type;

// global variables
int DATA_internal_cursor;
DATA_internal_token_type DATA_internal_token_data;
c_t DATA_internal_token_text[MAX_FILE_LEN];
c_t DATA_internal_input[MAX_FILE_LEN];
int DATA_internal_eof_reached;

int DATA_internal_parser_1();
int DATA_internal_parser_2();
int DATA_internal_parser_3();
int DATA_internal_parser_4();
int DATA_internal_parser_5();
int DATA_internal_parser_6();
int DATA_internal_parser_7();
int DATA_internal_parser_8();
int DATA_internal_parser_9();
int DATA_internal_parser_10();
int DATA_internal_parser_11();
int DATA_internal_parser_12();
int DATA_internal_parser_13();
int DATA_internal_parser_14();
int DATA_internal_parser_15();
int DATA_internal_parser_16();
void DATA_internal_parser_init();

#define DATA_RULE_FILE          0
#define DATA_RULE_LINE          1
#define DATA_RULE_LINES         2
#define DATA_RULE_VALUE         3
#define DATA_RULE_VALUES        4
#define DATA_RULE_NEWLINES      5

#define DATA_ACTION_NONE        0
#define DATA_ACTION_SHIFT       1 
#define DATA_ACTION_REDUCE      2

void DATA_internal_null_semantic();
void DATA_internal_semantic_create_file();
void DATA_internal_semantic_create_point();
void DATA_internal_semantic_create_value();

// global data
int DATA_internal_goto_using;

#ifdef	__cplusplus
}
#endif
#endif   /* DATA_BRIDGE_H */
