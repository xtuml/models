%option noyywrap
%option yylineno

%{
#include <stdio.h>
#include <string.h>
#define YY_DECL int yylex()
#include "typeminer_sys_types.h"
#include "miner.h"
#include "miner.tab.h"
void yyerror( const char * s );
extern bool typeminer_parse_error;
YY_BUFFER_STATE typeminer_buffer_state;
%}

%%

[ \t\f\n\r]+ ; // ignore all whitespace

":="           return ASSIGN;
":"            return COLON;
","            return COMMA;
"&"            return CONCATENATE;
"/="           return NOT_EQUAL;
"/"            return DIVIDE;
"="            return EQUAL;
">="           return GTE;
">"            return GT;
"("            return LPAREN;
"<="           return LTE;
"<>"           return LTGT;
"<"            return LT;
"-"            return MINUS;
"+"            return PLUS;
"**"           return POWER;
".."           return RANGE_DOTS;
")"            return RPAREN;
"::"           return SCOPE;
";"            return SEMI;
"*"            return TIMES;

"abs"          return ABS;
"and"          return AND;
"anonymous"    return ANONYMOUS;
"array"        return ARRAY;
"bag"          return BAG;
"console"      return CONSOLE;
"delta"        return DELTA;
"dictionary"   return DICTIONARY;
"digits"       return DIGITS;
"disunion"     return DISUNION;
"endl"         return ENDL;
"end"          return END;
"enum"         return ENUM;
"false"        return T_FALSE;
"flush"        return FLUSH;
"instance"     return INSTANCE;
"intersection" return INTERSECTION;
"mod"          return MOD;
"not_in"       return NOT_IN;
"not"          return NOT;
"null"         return T_NULL;
"of"           return OF;
"or"           return OR;
"pragma"       return PRAGMA;
"range"        return RANGE;
"rem"          return REM;
"sequence"     return SEQUENCE;
"set"          return SET;
"structure"    return STRUCTURE;
"this"         return THIS;
"true"         return T_TRUE;
"union"        return UNION;
"xor"          return XOR;

\0\0*          return NULL_TERMINATOR;

(0|[1-9][0-9]*)                                                                                                return INTEGER;
@P[^@ \t\f\n\r]*@                                                                                              return DURATION;
@[^@ \t\f\n\r]*@                                                                                               return TIMESTAMP;
([1-9][0-9]*|0)?\.[0-9][0-9]*                                                                                  return REAL;      // simplistic implementation of REAL
'(\\([btnfr\"\\]|[0-3][0-7][0-7]|[0-7][0-7]|[0-7]|u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])|[^\\'])'      return CHARACTER;
\"(\\([btnfr\"\\]|[0-3][0-7][0-7]|[0-7][0-7]|[0-7]|u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])|[^\\\"])*\"  return STRING;

[A-Za-z_][A-Za-z_0-9]*  { memset( yylval.sval, 0, TYPEMINER_MAX_LABEL_LEN ); strncpy( yylval.sval, yytext, TYPEMINER_MAX_LABEL_LEN-1 ); return IDENTIFIER; }

.                       { /* printf( "0x%x, '%s'\n", yytext[0], yytext ); */ yyerror( "Unrecognized token" ); return UNRECOGNIZED_TOKEN; }

%%

void yyerror( const char * s ) {
  fprintf(stderr, "typeminer error: line %d: %s\n", yylineno, s);
  typeminer_parse_error = TRUE;
}

void typeminer_set_buffer( char * input, int length ) {
  char typeminer_input[length+2];
  memset( typeminer_input, 0, length + 2 );
  strncpy( typeminer_input, input, length );
  typeminer_buffer_state = yy_scan_bytes( typeminer_input, length + 2 );
}

void typeminer_clear_buffer() {
  yy_delete_buffer( typeminer_buffer_state );
}
