/*----------------------------------------------------------------------------
 * File:  TestComponent.c
 *
 * UML Component Port Messages
 * Component/Module Name:  TestComponent
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "InterProjectRealizedClass_sys_types.h"
#include "TestComponent.h"
#include "RealizedClass_bridge.h"
#include "LOG_bridge.h"
#include "TestComponent_classes.h"

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  InterProjectRealizedFunction
 */
void
TestComponent_InterProjectRealizedFunction()
{
  c_t vbrv130RealizedClass_ReturnString33[ESCHER_SYS_MAX_STRING_LEN];Escher_UniqueID_t returnedUniqueID;c_t returnedString[ESCHER_SYS_MAX_STRING_LEN];r_t returnedReal;bool returnedBoolean;i_t returnedInteger;c_t sentence[ESCHER_SYS_MAX_STRING_LEN];i_t digit;r_t real;bool logic;c_t word[ESCHER_SYS_MAX_STRING_LEN];i_t number;
  /* ASSIGN number = 5 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN number = 5" );
  number = 5;
  /* ASSIGN word = Hello */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN word = Hello" );
  Escher_strcpy( word, "Hello" );
  /* ASSIGN logic = FALSE */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN logic = FALSE" );
  logic = FALSE;
  /* ASSIGN real = 0.1 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN real = 0.1" );
  real = 0.1;
  /* RealizedClass::ByRef( fraction:real, logic:logic, number:number, word:word ) */
  XTUML_OAL_STMT_TRACE( 1, "RealizedClass::ByRef( fraction:real, logic:logic, number:number, word:word )" );
  RealizedClass_ByRef( &(real), &(logic), &(number), word );
  /* IF ( ( number == 10 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( number == 10 ) )" );
  if ( ( number == 10 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( word == Hello Back ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( word == Hello Back ) )" );
  if ( ( Escher_strcmp( word, "Hello Back" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( logic == TRUE ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( logic == TRUE ) )" );
  if ( ( logic == TRUE ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( real == 1.1 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( real == 1.1 ) )" );
  if ( ( real == 1.1 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* ASSIGN number = ( number + 1 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN number = ( number + 1 )" );
  number = ( number + 1 );
  /* ASSIGN word = ( word + ! ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN word = ( word + ! )" );
  Escher_strcpy( word, Escher_stradd( word, "!" ) );
  /* ASSIGN logic = ( logic and FALSE ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN logic = ( logic and FALSE )" );
  logic = ( logic && FALSE );
  /* ASSIGN real = ( real + 1.1 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN real = ( real + 1.1 )" );
  real = ( real + 1.1 );
  /* IF ( ( number == 11 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( number == 11 ) )" );
  if ( ( number == 11 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( word == Hello Back! ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( word == Hello Back! ) )" );
  if ( ( Escher_strcmp( word, "Hello Back!" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( logic == FALSE ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( logic == FALSE ) )" );
  if ( ( logic == FALSE ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( real == 2.2 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( real == 2.2 ) )" );
  if ( ( real == 2.2 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* ASSIGN number = 5 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN number = 5" );
  number = 5;
  /* ASSIGN word = Hello */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN word = Hello" );
  Escher_strcpy( word, "Hello" );
  /* ASSIGN logic = FALSE */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN logic = FALSE" );
  logic = FALSE;
  /* ASSIGN real = 0.1 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN real = 0.1" );
  real = 0.1;
  /* RealizedClass::ByValue( fraction:real, logic:logic, number:number, word:word ) */
  XTUML_OAL_STMT_TRACE( 1, "RealizedClass::ByValue( fraction:real, logic:logic, number:number, word:word )" );
  RealizedClass_ByValue( real, logic, number, word );
  /* IF ( ( number == 5 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( number == 5 ) )" );
  if ( ( number == 5 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( word == Hello ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( word == Hello ) )" );
  if ( ( Escher_strcmp( word, "Hello" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( logic == FALSE ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( logic == FALSE ) )" );
  if ( ( logic == FALSE ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( real == 0.1 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( real == 0.1 ) )" );
  if ( ( real == 0.1 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* ASSIGN number = 5 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN number = 5" );
  number = 5;
  /* ASSIGN word = Hello */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN word = Hello" );
  Escher_strcpy( word, "Hello" );
  /* ASSIGN logic = FALSE */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN logic = FALSE" );
  logic = FALSE;
  /* ASSIGN real = 0.1 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN real = 0.1" );
  real = 0.1;
  /* ASSIGN digit = 10 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN digit = 10" );
  digit = 10;
  /* ASSIGN sentence = This is sentence */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN sentence = This is sentence" );
  Escher_strcpy( sentence, "This is sentence" );
  /* RealizedClass::ByValueAndByRef( digit:digit, number:number, sentence:sentence, word:word ) */
  XTUML_OAL_STMT_TRACE( 1, "RealizedClass::ByValueAndByRef( digit:digit, number:number, sentence:sentence, word:word )" );
  RealizedClass_ByValueAndByRef( &(digit), number, sentence, word );
  /* IF ( ( number == 5 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( number == 5 ) )" );
  if ( ( number == 5 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( word == Hello ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( word == Hello ) )" );
  if ( ( Escher_strcmp( word, "Hello" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( digit == 100 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( digit == 100 ) )" );
  if ( ( digit == 100 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( sentence == Hello World ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( sentence == Hello World ) )" );
  if ( ( Escher_strcmp( sentence, "Hello World" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* ASSIGN returnedInteger = RealizedClass::ReturnInteger() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN returnedInteger = RealizedClass::ReturnInteger()" );
  returnedInteger = RealizedClass_ReturnInteger();
  /* ASSIGN returnedBoolean = RealizedClass::ReturnBoolean() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN returnedBoolean = RealizedClass::ReturnBoolean()" );
  returnedBoolean = RealizedClass_ReturnBoolean();
  /* ASSIGN returnedReal = RealizedClass::ReturnReal() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN returnedReal = RealizedClass::ReturnReal()" );
  returnedReal = RealizedClass_ReturnReal();
  /* ASSIGN returnedString = RealizedClass::ReturnString() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN returnedString = RealizedClass::ReturnString()" );
  Escher_strcpy( returnedString, RealizedClass_ReturnString( vbrv130RealizedClass_ReturnString33 ) );
  /* ASSIGN returnedUniqueID = RealizedClass::ReturnUniqueID() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN returnedUniqueID = RealizedClass::ReturnUniqueID()" );
  returnedUniqueID = RealizedClass_ReturnUniqueID();
  /* IF ( ( returnedInteger == 500 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( returnedInteger == 500 ) )" );
  if ( ( returnedInteger == 500 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( returnedString == Hello World ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( returnedString == Hello World ) )" );
  if ( ( Escher_strcmp( returnedString, "Hello World" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( returnedBoolean == TRUE ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( returnedBoolean == TRUE ) )" );
  if ( ( returnedBoolean == TRUE ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }
  /* IF ( ( returnedReal == 0.5 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( returnedReal == 0.5 ) )" );
  if ( ( returnedReal == 0.5 ) ) {
    /* LOG::LogSuccess( message:Correct Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogSuccess( message:Correct Value )" );
    LOG_LogSuccess( "Correct Value" );
  }
  else {
    /* LOG::LogFailure( message:Wrong Value ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:Wrong Value )" );
    LOG_LogFailure( "Wrong Value" );
  }

}

void TestComponent_execute_initialization()
{
}
