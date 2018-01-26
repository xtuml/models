%{
#include <string.h>
#include "typeminer_sys_types.h"
#include "miner.h"
extern int yylex();
extern int yylex_destroy(void);
extern int yyparse();
extern int yylineno;
extern FILE * yyin;
void yyerror( const char * s );
void typeminer_set_buffer( char *, int );
void typeminer_clear_buffer();
%}

%locations

%union {
  char sval[TYPEMINER_MAX_LABEL_LEN];
  char * strval;
}

%token<sval> IDENTIFIER

%token ABS AND ANONYMOUS ARRAY ASSIGN BAG CHARACTER COLON COMMA CONCATENATE CONSOLE
%token DELTA DICTIONARY DIGITS DISUNION DIVIDE DURATION END ENDL ENUM EQUAL T_FALSE
%token FLUSH GT GTE INSTANCE INTEGER INTERSECTION LPAREN LT LTE LTGT MINUS MOD NOT
%token NOT_EQUAL NOT_IN T_NULL NULL_TERMINATOR OF OR PLUS POWER PRAGMA RANGE RANGE_DOTS
%token REAL REM RPAREN SCOPE SEMI SEQUENCE SET STRING STRUCTURE THIS TIMES TIMESTAMP
%token T_TRUE UNION UNRECOGNIZED_TOKEN XOR

%type<strval> scopedName

%start type

%%

type                          : typeDefinition NULL_TERMINATOR
                              ;

typeDefinition                : structureTypeDefinition
                              | enumerationTypeDefinition
                              | constrainedTypeDefinition
                              | typeReferenceWithCA
                              | unconstrainedArrayDefinition
                              ;

structureTypeDefinition       : STRUCTURE
                                  structureComponentDefinition structureComponentDefinitions
                                END STRUCTURE
                              | STRUCTURE
                                  structureComponentDefinition structureComponentDefinitions
                                END
                              ;

structureComponentDefinitions : /* Empty */
                              | structureComponentDefinition structureComponentDefinitions
                              ;

structureComponentDefinition  : IDENTIFIER COLON typeReference
                                initializer
                                SEMI pragmaList
                              ;

initializer                   : /* Empty */
                              | ASSIGN expression
                              | EQUAL expression
                              ;

enumerationTypeDefinition     : ENUM LPAREN
                                  enumerator enumerators
                                RPAREN
                              ;

enumerators                   : /* Empty */
                              | COMMA enumerator enumerators
                              ;

enumerator                    : IDENTIFIER initializer
                              ;

constrainedTypeDefinition     : namedTypeRef typeConstraint
                              ;

namedTypeRef                  : ANONYMOUS scopedName { typeminer_add_label( typeminer_labels, $2 ); }
                              | scopedName           { typeminer_add_label( typeminer_labels, $1 ); }
                              | ANONYMOUS IDENTIFIER { char * id = (char *)malloc( TYPEMINER_MAX_LABEL_LEN );
                                                       memset( id, 0, TYPEMINER_MAX_LABEL_LEN );
                                                       strcpy( id, $2 );
                                                       typeminer_add_label( typeminer_labels, id );
                                                     }
                              | IDENTIFIER           { char * id = (char *)malloc( TYPEMINER_MAX_LABEL_LEN );
                                                       memset( id, 0, TYPEMINER_MAX_LABEL_LEN );
                                                       strcpy( id, $1 );
                                                       typeminer_add_label( typeminer_labels, id );
                                                     }
                              ;

scopedName                    : IDENTIFIER SCOPE IDENTIFIER {  $$ = (char *)malloc( TYPEMINER_MAX_LABEL_LEN );
                                                               memset( $$, 0, TYPEMINER_MAX_LABEL_LEN );
                                                               if ( strlen( $1 ) + strlen( $3 ) + 2 < TYPEMINER_MAX_LABEL_LEN ) {
                                                                 strcpy( $$, $1 );
                                                                 strcat( $$, "::" );
                                                                 strcat( $$, $3 );
                                                               }
                                                            }
                              ;

typeConstraint                : rangeConstraint
                              | deltaConstraint
                              | digitsConstraint
                              ;

rangeConstraint               : RANGE expression
                              ;

deltaConstraint               : DELTA expression rangeConstraint
                              ;

digitsConstraint              : DIGITS expression rangeConstraint
                              ;

typeReferenceWithCA           : typeReference
                              | constrainedArrayTypeRef
                              ;

constrainedArrayTypeRef       : namedTypeRef arrayBounds
                              ;

arrayBounds                   : LPAREN expression RPAREN
                              ;

unconstrainedArrayDefinition  : ARRAY LPAREN
                                  namedTypeRef RANGE LTGT
                                RPAREN
                                OF typeReference
                              ;

typeReference                 : namedTypeRef
                              | instanceTypeRef
                              | collectionTypeRef
                              ;

instanceTypeRef               : ANONYMOUS INSTANCE OF scopedName
                              | INSTANCE OF scopedName
                              | ANONYMOUS INSTANCE OF IDENTIFIER
                              | INSTANCE OF IDENTIFIER
                              ;

collectionTypeRef             : ANONYMOUS SEQUENCE LPAREN expression RPAREN OF typeReference
                              | SEQUENCE LPAREN expression RPAREN OF typeReference
                              | ANONYMOUS SEQUENCE OF typeReference
                              | SEQUENCE OF typeReference
                              | ANONYMOUS ARRAY arrayBounds OF typeReference
                              | ARRAY arrayBounds OF typeReference
                              | ANONYMOUS SET OF typeReference
                              | SET OF typeReference
                              | ANONYMOUS BAG OF typeReference
                              | BAG OF typeReference
                              | ANONYMOUS DICTIONARY dictKeyType OF typeReference
                              | DICTIONARY dictKeyType OF typeReference
                              | ANONYMOUS DICTIONARY OF typeReference
                              | DICTIONARY OF typeReference
                              | ANONYMOUS DICTIONARY
                              | DICTIONARY
                              ;

dictKeyType                   : namedTypeRef
                              | instanceTypeRef
                              ;

pragmaList                    : /* Empty */
                              | pragma SEMI pragmaList
                              ;

pragma                        : PRAGMA IDENTIFIER
                                LPAREN
                                RPAREN
                              | PRAGMA IDENTIFIER
                                LPAREN
                                  pragmaValues
                                RPAREN
                              ;

pragmaValues                  : expression
                              | expression COMMA pragmaValues
                              ;

expression                    : rangeExpression
                              ;

rangeExpression               : logicalOr
                              | logicalOr RANGE_DOTS logicalOr
                              ;

logicalOr                     : logicalXor
                              | logicalXor OR logicalOr
                              ;

logicalXor                    : logicalAnd
                              | logicalAnd XOR logicalXor
                              ;

logicalAnd                    : equality
                              | equality AND logicalAnd
                              ;

equality                      : relationalExp
                              | relationalExp EQUAL equality
                              | relationalExp NOT_EQUAL equality
                              ;

relationalExp                 : additiveExp
                              | additiveExp LT relationalExp
                              | additiveExp GT relationalExp
                              | additiveExp LTE relationalExp
                              | additiveExp GTE relationalExp
                              ;

additiveExp                   : multExp 
                              | multExp PLUS additiveExp
                              | multExp MINUS additiveExp
                              | multExp CONCATENATE additiveExp
                              | multExp UNION additiveExp
                              | multExp NOT_IN additiveExp
                              ;

multExp                       : unaryExp 
                              | unaryExp TIMES multExp
                              | unaryExp DIVIDE multExp
                              | unaryExp MOD multExp
                              | unaryExp POWER multExp
                              | unaryExp REM multExp
                              | unaryExp INTERSECTION multExp
                              | unaryExp DISUNION multExp
                              ;

unaryExp                      : unaryOperator unaryExp
                              | literal
                              | parenthesisedExpression
                              | nameExpression
                              | collectionTypeRef
                              ;

unaryOperator                 : MINUS
                              | PLUS
                              | NOT
                              | ABS
                              ;

nameExpression                : scopedName           { typeminer_add_label( typeminer_labels, $1 ); }
                              | IDENTIFIER           { char * id = (char *)malloc( TYPEMINER_MAX_LABEL_LEN );
                                                       memset( id, 0, TYPEMINER_MAX_LABEL_LEN );
                                                       strcpy( id, $1 );
                                                       typeminer_add_label( typeminer_labels, id );
                                                     }
                              ;

parenthesisedExpression       : LPAREN expression RPAREN
                              ;

literal                       : INTEGER
                              | REAL
                              | CHARACTER
                              | STRING
                              | TIMESTAMP
                              | DURATION
                              | T_TRUE
                              | T_FALSE
                              | T_NULL
                              | FLUSH
                              | ENDL
                              | THIS
                              | CONSOLE
                              ;

%%

void typeminer_miner( char * input, int length ) {
  typeminer_set_buffer( input, length );
  yylineno = 1;
  yyparse();
  typeminer_clear_buffer();
}
