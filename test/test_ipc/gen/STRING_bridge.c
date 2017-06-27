/*----------------------------------------------------------------------------
 * File:  STRING_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  string (STRING)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "test_ipc_sys_types.h"
#include "STRING_bridge.h"

#include <string.h>

/*
 * Bridge:  itoa
 */
c_t *
STRING_itoa( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const i_t p_i )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  c_t mapping[10][ESCHER_SYS_MAX_STRING_LEN];i_t i;c_t s[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN mapping[9] = 9 */
  Escher_strcpy( mapping[9], "9" );
  /* ASSIGN mapping[8] = 8 */
  Escher_strcpy( mapping[8], "8" );
  /* ASSIGN mapping[7] = 7 */
  Escher_strcpy( mapping[7], "7" );
  /* ASSIGN mapping[6] = 6 */
  Escher_strcpy( mapping[6], "6" );
  /* ASSIGN mapping[5] = 5 */
  Escher_strcpy( mapping[5], "5" );
  /* ASSIGN mapping[4] = 4 */
  Escher_strcpy( mapping[4], "4" );
  /* ASSIGN mapping[3] = 3 */
  Escher_strcpy( mapping[3], "3" );
  /* ASSIGN mapping[2] = 2 */
  Escher_strcpy( mapping[2], "2" );
  /* ASSIGN mapping[1] = 1 */
  Escher_strcpy( mapping[1], "1" );
  /* ASSIGN mapping[0] = 0 */
  Escher_strcpy( mapping[0], "0" );
  /* ASSIGN i = PARAM.i */
  i = p_i;
  /* ASSIGN s =  */
  Escher_strcpy( s, "" );
  /* WHILE ( ( i >= 1 ) ) */
  while ( ( i >= 1 ) ) {
    i_t d;
    /* ASSIGN d = ( i % 10 ) */
    d = ( i % 10 );
    /* ASSIGN i = ( i / 10 ) */
    i = ( i / 10 );
    /* ASSIGN s = ( mapping[d] + s ) */
    Escher_strcpy( s, Escher_stradd( mapping[d], s ) );
  }
  /* RETURN s */
  {c_t * xtumlOALrv = s;
  return Escher_strcpy( A0xtumlsret, xtumlOALrv );}
}


/*
 * Bridge:  atoi
 */
i_t
STRING_atoi( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  i_t sum = 0;
  i_t factor = 1;
  c_t * character = p_s + strlen(p_s) - 1;
  while ( character >= p_s ) {
    if ( *character <= '9' && *character >= 0 ) {
      sum += factor * (*character - '0');
      factor *= 10;
      character--;
    }
    else {
      // error (non-integer character)
      return -1;
    }
  }
  return sum;
}


/*
 * Bridge:  substr
 */
c_t *
STRING_substr( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const i_t p_begin, const i_t p_end, c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  // get length of s
  i_t len = (i_t)strlen( p_s );
  A0xtumlsret[0] = '\0';

  // check that the indexes are in a valid range
  i_t begin = p_begin;
  i_t end = p_end;
  if ( begin > len - 1 ) {
    return A0xtumlsret;
  }
  if ( begin < 0 ) {
    begin = 0;
  }
  if ( end < 0 || end > len ) {
    end = len;
  }
  if ( end <= begin ) {
    return A0xtumlsret;
  }

  // if we have a string and the end is greater than begin
  if ( !(len == 0 || end <= begin) ) {

    // copy in the new string
    c_t * p = p_s + begin;
    c_t * r = A0xtumlsret;
    while ( p < p_s + end ) {
      *r++ = *p++;
    }
    *r = '\0';  // null terminate

  }

  return A0xtumlsret;
}


/*
 * Bridge:  strlen
 */
#include <string.h>
i_t
STRING_strlen( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  return strlen( p_s );
}


/*
 * Bridge:  indexof
 */
i_t
STRING_indexof( c_t p_haystack[ESCHER_SYS_MAX_STRING_LEN], c_t p_needle[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * a;
  c_t * b;
  c_t * c;

  // check arguments
  if ( !p_needle || !p_haystack ) return -1;

  a = p_haystack;
  b = p_needle;
  if (*b == '\0') {
    return 0;   // if needle is empty string, by definition, the index is 0
  }

  // search through to find first character match
  for ( ; *a != 0; a += 1) {
    if (*a == *b) {

      // check the rest of the string
      c = a;
      while ( *c++ == *b++ ) {
        if ( *b == '\0' ) {
          return a - p_haystack;
        }
        if ( *c == '\0' ) {
          break;
        }
      }
    }
    // reset b
    b = p_needle;
  }

  // no match found
  return -1;
}


/*
 * Bridge:  getword
 */
c_t *
STRING_getword( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const i_t p_i, const i_t p_j, c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  trim
 */
c_t *
STRING_trim( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  i_t len = strlen( p_s );
  A0xtumlsret[0] = '\0';

  c_t * a;
  c_t * b;

  // find the first non whitespace character
  a = p_s;
  for ( ; *a != '\0'; a++ ) {
    if ( *a != ' ' && *a != '\r' && *a != '\t' && *a != '\n' ) break;   // found non whitespace
  }

  // find last non whitespace character
  b = p_s + ( len - 1 );
  for ( ; b != p_s; b-- ) {
    if ( *a != ' ' && *a != '\r' && *a != '\t' && *a != '\n' ) break;   // found non whitespace
  }

  // check if they crossed ( all whitespace )
  if ( b >= a ) {
    STRING_substr( A0xtumlsret, (const i_t)(a - p_s), (const i_t)(b - p_s)+1, p_s );
  }

  return A0xtumlsret;
}


/*
 * Bridge:  quote
 */
c_t *
STRING_quote( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  escapetics
 */
c_t *
STRING_escapetics( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  unescapetics
 */
c_t *
STRING_unescapetics( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}

