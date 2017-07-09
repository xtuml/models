/*----------------------------------------------------------------------------
 * File:  DATA_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  data (DATA)
 * 
 *--------------------------------------------------------------------------*/

#include "lanechange_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TIM_bridge.h"
#include "DATA_bridge.h"
#include "DATA_bridge.h"
#include "lanechange_sys_types.h"

#include "GPS_datafile_class.h"
#include "GPS_datapoint_class.h"
#include "GPS_datavalue_class.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

//#define DEBUG
#ifdef DEBUG
void debug_print( const char * format, ... ) {
  va_list args;
  va_start (args, format);
  vfprintf (stderr, format, args);
  va_end (args);
}
#else
void debug_print( const char * format, ... ) {}
#endif

/*
 * Bridge:  read
 */
void
DATA_read( c_t p_file[ESCHER_SYS_MAX_STRING_LEN] )
{
  // copy filename
  memset( filename, 0, ESCHER_SYS_MAX_STRING_LEN );
  strncpy( filename, p_file, ESCHER_SYS_MAX_STRING_LEN );
  pointnum = 1;
  valnum = 1;

  // open file
  FILE * f = fopen( p_file, "r" );

  // read contents into buffer
  c_t file_string[MAX_FILE_LEN];
  memset( file_string, 0, MAX_FILE_LEN );
  if ( f ) fread( file_string, 1, MAX_FILE_LEN, f );

  // parse file
  DATA_internal_tokenizer_init( file_string );
  DATA_internal_parser_init();
  DATA_internal_parser_1();
}

void DATA_internal_semantic_create_point() {
  debug_print( "Executing semantic for 'line' rule\n" );
  pointnum++;
  valnum = 1;
}

void DATA_internal_semantic_create_value() {
  debug_print( "Executing semantic for 'value' rule\n" );
  GPS_datavalue_op_create( filename, valnum++, pointnum, DATA_internal_token_data.string );
}

/*----------------------------------------------------------------------------
 *
 * The grammar for the data file is as follows:
 *
 * file:        line+ ;
 * 
 * line:        value ( COMMA value )* newlines ;
 * 
 * value:       STRING | REAL ;
 *
 * newlines:    NEWLINE+ ;
 *
 * COMMA:       ',' ;
 * NEWLINE:     '\n' | EOF ;
 * STRING:      '"' ^[ '"' | '\n' | EOF ]* '"' ;
 * REAL:        '-'? [0-9]+ ( '.' [0-9]+ )? ;
 * COMMENT:     '//' .* $ {hidden} ;
 * WS:          ' ' | '\t' | '\r' {hidden};
 *
 *--------------------------------------------------------------------------*/

/***************************/
/* TOKENIZER               */
/***************************/

// internal functions
c_t DATA_internal_get_char( const int cursor ) {
  c_t character;
  if ( cursor >= MAX_FILE_LEN )
    character = '\0';
  else character = DATA_internal_input[cursor];
  return character;
}

void DATA_internal_add_character( c_t character ) {
    int len = strlen( DATA_internal_token_text );
    if ( len >= MAX_FILE_LEN - 1 )
      DATA_internal_token_text[MAX_FILE_LEN-1] = '\0';
    else {
      DATA_internal_token_text[len] = character;
      DATA_internal_token_text[len+1] = '\0';
    }
}

void DATA_internal_tokenizer_init( c_t input[MAX_FILE_LEN] ) {
  DATA_internal_cursor = 0;
  memset( &DATA_internal_token_data, 0, sizeof(DATA_internal_token_type) );
  memset( DATA_internal_token_text, 0, sizeof(c_t) * MAX_FILE_LEN );
  DATA_internal_eof_reached = FALSE;
  memcpy( DATA_internal_input, input, sizeof(c_t) * MAX_FILE_LEN );
}

int DATA_internal_next_token( int lookahead ) {
  // set up variables
  int cursor = DATA_internal_cursor;
  int backup_cursor = cursor;
  int backup_eof_reached = DATA_internal_eof_reached;
  memset( DATA_internal_token_text, 0, MAX_FILE_LEN );

  // check eof
  if ( DATA_internal_eof_reached ) return DATA_TOK_EOF;

  // get next character
  c_t character = DATA_internal_get_char( cursor );

  // check character
  int token;
  switch ( character ) {
    case ',':
      DATA_internal_add_character( character );
      token = DATA_TOK_COMMA;
      break;
    case '\0':
      DATA_internal_eof_reached = 1;
    case '\n':
      DATA_internal_add_character( character );
      token = DATA_TOK_NEWLINE;
      break;
    case '"':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_1( cursor + 1 );
      break;
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_2( cursor + 1 );
      break;
    case '-':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_7( cursor + 1 );
      break;
    case '/':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_3( cursor + 1 );
      break;
    case ' ':
    case '\t':
    case '\r':
      DATA_internal_add_character( character );
      token = DATA_TOK_WS;
      break;
    default:
      token = DATA_LEX_ERR;
      break;
  }

  // set token data
  if ( DATA_TOK_STRING == token ) {
      memcpy( DATA_internal_token_data.string, &DATA_internal_token_text[1], strlen( DATA_internal_token_text ) - 2 );
      DATA_internal_token_data.string[strlen( DATA_internal_token_text ) - 2] = '\0';
  }
  else if ( DATA_TOK_REAL == token ) {
      memcpy( DATA_internal_token_data.string, DATA_internal_token_text, strlen( DATA_internal_token_text ) );
      DATA_internal_token_data.string[strlen( DATA_internal_token_text )] = '\0';
  }

  // move the cursor
  if ( DATA_LEX_ERR != token ) {
    DATA_internal_cursor += strlen( DATA_internal_token_text );
  }

  // if we have a hidden token, get the next token
  if ( DATA_TOK_COMMENT == token || DATA_TOK_WS == token ) {
    token = DATA_internal_next_token( lookahead );
  }

  // if lookahead, restore
  if ( lookahead ) {
    DATA_internal_cursor = backup_cursor;
    DATA_internal_eof_reached = backup_eof_reached;
  }

  // return the token
  return token;
}

int DATA_internal_tokenizer_1( const int cursor ) {
  // get next character
  c_t character = DATA_internal_get_char( cursor );

  // check character
  int token;
  switch ( character ) {
    case '"':
      DATA_internal_add_character( character );
      token = DATA_TOK_STRING;
      break;
    case '\0':
      DATA_internal_eof_reached = TRUE;
    case '\n':
      token = DATA_LEX_ERR;
      break;
    default:
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_1( cursor + 1 );
      break;
  }

  // return the token
  return token;
}

int DATA_internal_tokenizer_2( const int cursor ) {
  // get next character
  c_t character = DATA_internal_get_char( cursor );

  // check character
  int token;
  switch ( character ) {
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_2( cursor + 1 );
      break;
    case '.':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_4( cursor + 1 );
      break;
    default:
      token = DATA_TOK_REAL;
      break;
  }

  // return the token
  return token;
}


int DATA_internal_tokenizer_3( const int cursor ) {
  // get next character
  c_t character = DATA_internal_get_char( cursor );

  // check character
  int token;
  switch ( character ) {
    case '/':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_6( cursor + 1 );
      break;
    default:
      token = DATA_LEX_ERR;
      break;
  }

  // return the token
  return token;
}


int DATA_internal_tokenizer_4( const int cursor ) {
  // get next character
  c_t character = DATA_internal_get_char( cursor );

  // check character
  int token;
  switch ( character ) {
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_5( cursor + 1 );
      break;
    default:
      token = DATA_LEX_ERR;
      break;
  }

  // return the token
  return token;
}


int DATA_internal_tokenizer_5( const int cursor ) {
  // get next character
  c_t character = DATA_internal_get_char( cursor );

  // check character
  int token;
  switch ( character ) {
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_5( cursor + 1 );
      break;
    default:
      token = DATA_TOK_REAL;
      break;
  }

  // return the token
  return token;
}


int DATA_internal_tokenizer_6( const int cursor ) {
  // get next character
  c_t character = DATA_internal_get_char( cursor );

  // check character
  int token;
  switch ( character ) {
    case '\0':
      DATA_internal_eof_reached = TRUE;
    case '\n':
      token = DATA_TOK_COMMENT;
      break;
    default:
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_6( cursor + 1 );
      break;
  }

  // return the token
  return token;
}

int DATA_internal_tokenizer_7( const int cursor ) {
  // get next character
  c_t character = DATA_internal_get_char( cursor );

  // check character
  int token;
  switch ( character ) {
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      DATA_internal_add_character( character );
      token = DATA_internal_tokenizer_2( cursor + 1 );
      break;
    default:
      token = DATA_LEX_ERR;
      break;
  }

  // return the token
  return token;
}

/***************************/
/* PARSER                  */
/***************************/

/*----------------------------------------------------------------------------------------------------
 *
 * Production rules:
 *
 * 0. file      -> line lines
 * 1. lines     -> line lines
 * 2. lines     -> epsilon
 * 3. line      -> value values NEWLINE newlines
 * 4. values    -> COMMA value values
 * 5. values    -> epsilon
 * 6. value     -> STRING
 * 7. value     -> REAL
 * 8. newlines  -> NEWLINE newlines
 * 9. newlines  -> epsilon
 *
 *
 * Parse table:
 *
 * | State  | COMMA | NEWLINE | STRING | REAL | EOF | file | line | lines | value | values | newlines |
 * |--------|-------|---------|--------|------|-----|------|------|-------|-------|--------|----------|
 * | 1      |       |         | S2     | S3   |     |      | G13  |       | G4    |        |          |
 * | 2      | R6    | R6      | R6     | R6   | R6  | R6   |      |       |       |        |          |
 * | 3      | R7    | R7      | R7     | R7   | R7  | R7   |      |       |       |        |          |
 * | 4      | S5    | R5      |        |      |     |      |      |       |       | G8     |          |
 * | 5      |       |         | S2     | S3   |     |      |      |       | G6    |        |          |
 * | 6      | S5    | R5      |        |      |     |      |      |       |       | G7     |          |
 * | 7      | R4    | R4      | R4     | R4   | R4  | R4   |      |       |       |        |          |
 * | 8      |       | S9      |        |      |     |      |      |       |       |        |          |
 * | 9      |       | S10     | R9     | R9   | R9  |      |      |       |       |        | G12      |
 * | 10     |       | S10     | R9     | R9   | R9  |      |      |       |       |        | G11      |
 * | 11     | R8    | R8      | R8     | R8   | R8  | R8   |      |       |       |        |          |
 * | 12     | R3    | R3      | R3     | R3   | R3  | R3   |      |       |       |        |          |
 * | 13     |       |         | S2     | S3   | R2  |      | G14  | G16   | G4    |        |          |
 * | 14     |       |         | S2     | S3   | R2  |      | G14  | G15   | G4    |        |          |
 * | 15     | R1    | R1      | R1     | R1   | R1  | R1   |      |       |       |        |          |
 * | 16(acc)| R0    | R0      | R0     | R0   | R0  | R0   |      |       |       |        |          |
 * |--------|-------|---------|--------|------|-----|------|------|-------|-------|--------|----------|
 *
 *----------------------------------------------------------------------------------------------------*/

int (*DATA_internal_parse_states[17])() = { 
  NULL,
  &DATA_internal_parser_1,
  &DATA_internal_parser_2,
  &DATA_internal_parser_3,
  &DATA_internal_parser_4,
  &DATA_internal_parser_5,
  &DATA_internal_parser_6,
  &DATA_internal_parser_7,
  &DATA_internal_parser_8,
  &DATA_internal_parser_9,
  &DATA_internal_parser_10,
  &DATA_internal_parser_11,
  &DATA_internal_parser_12,
  &DATA_internal_parser_13,
  &DATA_internal_parser_14,
  &DATA_internal_parser_15,
  &DATA_internal_parser_16
};

void (*DATA_internal_parse_semantics[10])() = { 
  &DATA_internal_null_semantic,
  &DATA_internal_null_semantic,
  &DATA_internal_null_semantic,
  &DATA_internal_semantic_create_point,
  &DATA_internal_null_semantic,
  &DATA_internal_null_semantic,
  &DATA_internal_semantic_create_value,
  &DATA_internal_semantic_create_value,
  &DATA_internal_null_semantic,
  &DATA_internal_null_semantic
};

// internal functions
void DATA_internal_null_semantic() {
}

void DATA_internal_parse_error() {
  printf( "Parse error.\n" );
}

void DATA_internal_parser_init() {
  DATA_internal_goto_using = -1;
}

int DATA_internal_parser_1() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  switch ( token ) {
    case DATA_TOK_STRING:
      shift_state = 2;
      break;
    case DATA_TOK_REAL:
      shift_state = 3;
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  // shift
  debug_print( "shifting to state %d\n", shift_state );
  // TODO add token data to stack
  token = DATA_internal_next_token( FALSE );
  int reduce_num = DATA_internal_parse_states[shift_state]();

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      case DATA_RULE_LINE:
        goto_state = 13;
        break;
      case DATA_RULE_VALUE:
        goto_state = 4;
        break;
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_2() {
  // reduce
  DATA_internal_goto_using = DATA_RULE_VALUE;
  DATA_internal_parse_semantics[6]();
  debug_print( "reducing with rule VALUE\n");
  return 1;
}

int DATA_internal_parser_3() {
  // reduce
  DATA_internal_goto_using = DATA_RULE_VALUE;
  DATA_internal_parse_semantics[7]();
  debug_print( "reducing with rule VALUE\n");
  return 1;
}

int DATA_internal_parser_4() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  int action = DATA_ACTION_NONE;
  switch ( token ) {
    case DATA_TOK_COMMA:
      shift_state = 5;
      action = DATA_ACTION_SHIFT;
      break;
    case DATA_TOK_NEWLINE:
      action = DATA_ACTION_REDUCE; // epsilon reduction
      DATA_internal_goto_using = DATA_RULE_VALUES;
      DATA_internal_parse_semantics[5]();
      debug_print( "epsilon reduction on rule VALUES\n");
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  int reduce_num = 1;
  if ( DATA_ACTION_SHIFT == action ) {
    // shift
    debug_print( "shifting to state %d\n", shift_state );
    // TODO add token data to stack
    token = DATA_internal_next_token( FALSE );
    reduce_num = DATA_internal_parse_states[shift_state]();
  }

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      case DATA_RULE_VALUES:
        goto_state = 8;
        break;
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_5() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  switch ( token ) {
    case DATA_TOK_STRING:
      shift_state = 2;
      break;
    case DATA_TOK_REAL:
      shift_state = 3;
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  // shift
  debug_print( "shifting to state %d\n", shift_state );
  // TODO add token data to stack
  token = DATA_internal_next_token( FALSE );
  int reduce_num = DATA_internal_parse_states[shift_state]();

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      case DATA_RULE_VALUE:
        goto_state = 6;
        break;
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_6() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  int action = DATA_ACTION_NONE;
  switch ( token ) {
    case DATA_TOK_COMMA:
      shift_state = 5;
      action = DATA_ACTION_SHIFT;
      break;
    case DATA_TOK_NEWLINE:
      action = DATA_ACTION_REDUCE; // epsilon reduction
      DATA_internal_goto_using = DATA_RULE_VALUES;
      DATA_internal_parse_semantics[5]();
      debug_print( "epsilon reduction on rule VALUES\n");
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  int reduce_num = 1;
  if ( DATA_ACTION_SHIFT == action ) {
    // shift
    debug_print( "shifting to state %d\n", shift_state );
    // TODO add token data to stack
    token = DATA_internal_next_token( FALSE );
    reduce_num = DATA_internal_parse_states[shift_state]();
  }

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      case DATA_RULE_VALUES:
        goto_state = 7;
        break;
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_7() {
  // reduce
  DATA_internal_goto_using = DATA_RULE_VALUES;
  DATA_internal_parse_semantics[4]();
  debug_print( "reducing with rule VALUES\n");
  return 3;
}

int DATA_internal_parser_8() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  switch ( token ) {
    case DATA_TOK_NEWLINE:
      shift_state = 9;
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  // shift
  debug_print( "shifting to state %d\n", shift_state );
  // TODO add token data to stack
  token = DATA_internal_next_token( FALSE );
  int reduce_num = DATA_internal_parse_states[shift_state]();

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_9() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  int action = DATA_ACTION_NONE;
  switch ( token ) {
    case DATA_TOK_NEWLINE:
      shift_state = 10;
      action = DATA_ACTION_SHIFT;
      break;
    case DATA_TOK_STRING:
    case DATA_TOK_REAL:
    case DATA_TOK_EOF:
      action = DATA_ACTION_REDUCE; // epsilon reduction
      DATA_internal_goto_using = DATA_RULE_NEWLINES;
      DATA_internal_parse_semantics[9]();
      debug_print( "epsilon reduction on rule NEWLINES\n");
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  int reduce_num = 1;
  if ( DATA_ACTION_SHIFT == action ) {
    // shift
    debug_print( "shifting to state %d\n", shift_state );
    // TODO add token data to stack
    token = DATA_internal_next_token( FALSE );
    reduce_num = DATA_internal_parse_states[shift_state]();
  }

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      case DATA_RULE_NEWLINES:
        goto_state = 12;
        break;
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_10() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  int action = DATA_ACTION_NONE;
  switch ( token ) {
    case DATA_TOK_NEWLINE:
      shift_state = 10;
      action = DATA_ACTION_SHIFT;
      break;
    case DATA_TOK_STRING:
    case DATA_TOK_REAL:
    case DATA_TOK_EOF:
      action = DATA_ACTION_REDUCE; // epsilon reduction
      DATA_internal_goto_using = DATA_RULE_NEWLINES;
      DATA_internal_parse_semantics[9]();
      debug_print( "epsilon reduction on rule NEWLINES\n");
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  int reduce_num = 1;
  if ( DATA_ACTION_SHIFT == action ) {
    // shift
    debug_print( "shifting to state %d\n", shift_state );
    // TODO add token data to stack
    token = DATA_internal_next_token( FALSE );
    reduce_num = DATA_internal_parse_states[shift_state]();
  }

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      case DATA_RULE_NEWLINES:
        goto_state = 11;
        break;
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_11() {
  // reduce
  DATA_internal_goto_using = DATA_RULE_NEWLINES;
  DATA_internal_parse_semantics[8]();
  debug_print( "reducing with rule NEWLINES\n");
  return 2;
}

int DATA_internal_parser_12() {
  // reduce
  DATA_internal_goto_using = DATA_RULE_LINE;
  DATA_internal_parse_semantics[3]();
  debug_print( "reducing with rule LINE\n");
  return 4;
}

int DATA_internal_parser_13() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  int action = DATA_ACTION_NONE;
  switch ( token ) {
    case DATA_TOK_STRING:
      shift_state = 2;
      action = DATA_ACTION_SHIFT;
      break;
    case DATA_TOK_REAL:
      shift_state = 3;
      action = DATA_ACTION_SHIFT;
      break;
    case DATA_TOK_EOF:
      action = DATA_ACTION_REDUCE; // epsilon reduction
      DATA_internal_goto_using = DATA_RULE_LINES;
      DATA_internal_parse_semantics[2]();
      debug_print( "epsilon reduction on rule LINES\n");
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  int reduce_num = 1;
  if ( DATA_ACTION_SHIFT == action ) {
    // shift
    debug_print( "shifting to state %d\n", shift_state );
    // TODO add token data to stack
    token = DATA_internal_next_token( FALSE );
    reduce_num = DATA_internal_parse_states[shift_state]();
  }

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      case DATA_RULE_LINE:
        goto_state = 14;
        break;
      case DATA_RULE_LINES:
        goto_state = 16;
        break;
      case DATA_RULE_VALUE:
        goto_state = 4;
        break;
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_14() {
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  int shift_state = -1;
  int action = DATA_ACTION_NONE;
  switch ( token ) {
    case DATA_TOK_STRING:
      shift_state = 2;
      action = DATA_ACTION_SHIFT;
      break;
    case DATA_TOK_REAL:
      shift_state = 3;
      action = DATA_ACTION_SHIFT;
      break;
    case DATA_TOK_EOF:
      action = DATA_ACTION_REDUCE; // epsilon reduction
      DATA_internal_goto_using = DATA_RULE_LINES;
      DATA_internal_parse_semantics[2]();
      debug_print( "epsilon reduction on rule LINES\n");
      break;
    default:
      DATA_internal_parse_error();
      parse_error = TRUE;
      break;
  }

  // short circuit parse error
  if ( parse_error ) return 0;

  int reduce_num = 1;
  if ( DATA_ACTION_SHIFT == action ) {
    // shift
    debug_print( "shifting to state %d\n", shift_state );
    // TODO add token data to stack
    token = DATA_internal_next_token( FALSE );
    reduce_num = DATA_internal_parse_states[shift_state]();
  }

  while ( reduce_num == 1 ) {
    // check table for goto state
    int goto_state = -1;
    switch ( DATA_internal_goto_using ) {
      case DATA_RULE_LINE:
        goto_state = 14;
        break;
      case DATA_RULE_LINES:
        goto_state = 15;
        break;
      case DATA_RULE_VALUE:
        goto_state = 4;
        break;
      default:
        DATA_internal_parse_error();
        parse_error = TRUE;
        break;
    }

    // short circuit parse error
    if ( parse_error ) return 0;

    // goto
    debug_print( "going to state %d\n", goto_state );
    reduce_num = DATA_internal_parse_states[goto_state]();
  }

  // return through this state if reduce_num is greater than 0
  if ( reduce_num > 1 ) return reduce_num - 1;
  else return 0;
}

int DATA_internal_parser_15() {
  // reduce
  DATA_internal_goto_using = DATA_RULE_LINES;
  DATA_internal_parse_semantics[1]();
  debug_print( "reducing with rule LINES\n");
  return 2;
}

int DATA_internal_parser_16() {
  // ACCEPTING STATE
  int parse_error = FALSE;

  // lookahead
  int token = DATA_internal_next_token( TRUE );

  // check table
  switch ( token ) {
    case DATA_TOK_EOF:
      DATA_internal_parse_semantics[0]();
      debug_print( "ACCEPT\n" );
      break;
    default:
      DATA_internal_parse_error();
      break;
  }

  return 0;
}
