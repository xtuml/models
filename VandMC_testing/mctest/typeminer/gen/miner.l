%option noyywrap
%option yylineno

%{
#include <stdio.h>
#include <string.h>
#define YY_DECL int yylex()
#include "miner.tab.h"
%}

%%

[ \t\f\n\r]+ ; // ignore all whitespace

":="           { return ASSIGN; }
":"            { return COLON; }
","            { return COMMA; }
"="            { return EQUAL; }
"("            { return LPAREN; }
"<>"           { return LTGT; }
")"            { return RPAREN; }
"::"           { return SCOPE; }
";"            { return SEMI; }

"anonymous"    { return ANONYMOUS; }
"array"        { return ARRAY; }
"bag"          { return BAG; }
"delta"        { return DELTA; }
"dictionary"   { return DICTIONARY; }
"digits"       { return DIGITS; }
"end"          { return END; }
"enum"         { return ENUM; }
"instance"     { return INSTANCE; }
"of"           { return OF; }
"pragma"       { return PRAGMA; }
"range"        { return RANGE; }
"sequence"     { return SEQUENCE; }
"set"          { return SET; }
"structure"    { return STRUCTURE; }

[A-Za-z_][A-Za-z_0-9]* { strncpy( yylval.sval, yytext, 256 ); return IDENTIFIER; }

%%

void yyerror( const char * s ) {
  fprintf(stderr, "typeminer error: line %d: %s\n", yylineno, s);
  exit(1);
}
