/*----------------------------------------------------------------------------
 * File:  ex2_TCE_class.c
 *
 * Class:       Test Compound Expressions  (TCE)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "ex2_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "TIM_bridge.h"
#include "ex2_BR_bridge.h"
#include "ex2_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ex2_TCE_container[ ex2_TCE_MAX_EXTENT_SIZE ];
static ex2_TCE ex2_TCE_instances[ ex2_TCE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ex2_TCE_extent = {
  {0}, {0}, &ex2_TCE_container[ 0 ],
  (Escher_iHandle_t) &ex2_TCE_instances,
  sizeof( ex2_TCE ), ex2_TCE_STATE_1, ex2_TCE_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Test Compound Expressions  (TCE)
 * Component:  ex2
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Compound Expressions Using Constants]
 */
static void ex2_TCE_act1( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act1( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  c_t vtrv31ex2_TRAN_op_ret_string15[ESCHER_SYS_MAX_STRING_LEN];c_t str1[ESCHER_SYS_MAX_STRING_LEN];c_t str[ESCHER_SYS_MAX_STRING_LEN];ex2_DR * dr=0;
  /* IF ( ( ( ( 1 + 2 ) * ( 3 + 4 ) ) == 21 ) ) */
  if ( ( ( ( 1 + 2 ) * ( 3 + 4 ) ) == 21 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Using Constants - integer ) */
    LOG_LogSuccess( "Test Compound Expressions - Using Constants - integer" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Using Constants - integer ) */
    LOG_LogFailure( "Test Compound Expressions - Using Constants - integer" );
  }
  /* IF ( ( ( ( ( 3.3 + 2.2 ) - 1.1 ) - 4.4 ) <= 0.000001 ) ) */
  if ( ( ( ( ( 3.3 + 2.2 ) - 1.1 ) - 4.4 ) <= 0.000001 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Using Constants - real ) */
    LOG_LogSuccess( "Test Compound Expressions - Using Constants - real" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Using Constants - real ) */
    LOG_LogFailure( "Test Compound Expressions - Using Constants - real" );
  }
  /* IF ( ( ( ( ( ( Hello + , ) +   ) + World ) + ! ) == Hello, World! ) ) */
  if ( ( Escher_strcmp( Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( "Hello", "," ), " " ), "World" ), "!" ), "Hello, World!" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Using Constants - string ) */
    LOG_LogSuccess( "Test Compound Expressions - Using Constants - string" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Using Constants - string ) */
    LOG_LogFailure( "Test Compound Expressions - Using Constants - string" );
  }
  /* ASSIGN str1 = ( Hello + World ) */
  Escher_strcpy( str1, Escher_stradd( "Hello", "World" ) );
  /* ASSIGN str = TRAN::ret_string(s:str1) */
  Escher_strcpy( str, ex2_TRAN_op_ret_string(vtrv31ex2_TRAN_op_ret_string15, str1) );
  /* IF ( ( str == HelloWorld ) ) */
  if ( ( Escher_strcmp( str, "HelloWorld" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Using Constants - string + ) */
    LOG_LogSuccess( "Test Compound Expressions - Using Constants - string +" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Using Constants - string + ) */
    LOG_LogFailure( "Test Compound Expressions - Using Constants - string +" );
  }
  /* IF ( ( TRUE or ( ( FALSE and TRUE ) and TRUE ) ) ) */
  if ( ( TRUE || ( ( FALSE && TRUE ) && TRUE ) ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Using Constants - bool 1 ) */
    LOG_LogSuccess( "Test Compound Expressions - Using Constants - bool 1" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Using Constants - bool 1 ) */
    LOG_LogFailure( "Test Compound Expressions - Using Constants - bool 1" );
  }
  /* IF ( ( not ( TRUE and FALSE ) and ( TRUE or FALSE ) ) ) */
  if ( ( !( TRUE && FALSE ) && ( TRUE || FALSE ) ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Using Constants - bool 2 ) */
    LOG_LogSuccess( "Test Compound Expressions - Using Constants - bool 2" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Using Constants - bool 2 ) */
    LOG_LogFailure( "Test Compound Expressions - Using Constants - bool 2" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [Compound Expressions Using Local Variables]
 */
static void ex2_TCE_act2( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act2( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  i_t a;i_t b;i_t c;r_t x;r_t y;r_t z;c_t s1[ESCHER_SYS_MAX_STRING_LEN];c_t s2[ESCHER_SYS_MAX_STRING_LEN];c_t s3[ESCHER_SYS_MAX_STRING_LEN];ex2_DR * dr=0;
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 4 */
  b = 4;
  /* ASSIGN c = 2 */
  c = 2;
  /* IF ( ( ( ( a - ( b / c ) ) + ( a * c ) ) == 1 ) ) */
  if ( ( ( ( a - ( b / c ) ) + ( a * c ) ) == 1 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Local Variables - integer ) */
    LOG_LogSuccess( "Test Compound Expressions - Local Variables - integer" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Local Variables - integer ) */
    LOG_LogFailure( "Test Compound Expressions - Local Variables - integer" );
  }
  /* ASSIGN x = 4.0 */
  x = 4.0;
  /* ASSIGN y = 1.5 */
  y = 1.5;
  /* ASSIGN z = 1.1 */
  z = 1.1;
  /* IF ( ( ( ( ( x + y ) - z ) > 4.3 ) and ( ( ( x + y ) - z ) < 4.5 ) ) ) */
  if ( ( ( ( ( x + y ) - z ) > 4.3 ) && ( ( ( x + y ) - z ) < 4.5 ) ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Local Variables - real ) */
    LOG_LogSuccess( "Test Compound Expressions - Local Variables - real" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Local Variables - real ) */
    LOG_LogFailure( "Test Compound Expressions - Local Variables - real" );
  }
  /* ASSIGN s1 = Hello */
  Escher_strcpy( s1, "Hello" );
  /* ASSIGN s2 = ,  */
  Escher_strcpy( s2, ", " );
  /* ASSIGN s3 = world! */
  Escher_strcpy( s3, "world!" );
  /* IF ( ( ( ( s1 + s2 ) + s3 ) == Hello, world! ) ) */
  if ( ( Escher_strcmp( Escher_stradd( Escher_stradd( s1, s2 ), s3 ), "Hello, world!" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Local Variables - string ) */
    LOG_LogSuccess( "Test Compound Expressions - Local Variables - string" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Local Variables - string ) */
    LOG_LogFailure( "Test Compound Expressions - Local Variables - string" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 3:  [Compound Expressions Using Object Attributes]
 */
static void ex2_TCE_act3( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act3( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_A * a;ex2_A * b;ex2_DR * dr=0;
  /* CREATE OBJECT INSTANCE a OF A */
  a = (ex2_A *) Escher_CreateInstance( ex2_DOMAIN_ID, ex2_A_CLASS_NUMBER );
  a->a_id = (Escher_UniqueID_t) a;
  /* CREATE OBJECT INSTANCE b OF A */
  b = (ex2_A *) Escher_CreateInstance( ex2_DOMAIN_ID, ex2_A_CLASS_NUMBER );
  b->a_id = (Escher_UniqueID_t) b;
  /* ASSIGN a.a = 5 */
  a->a = 5;
  /* ASSIGN b.a = 2 */
  b->a = 2;
  /* IF ( ( ( ( ( a.a - b.a ) * ( a.a - 3 ) ) + 1 ) == 7 ) ) */
  if ( ( ( ( ( a->a - b->a ) * ( a->a - 3 ) ) + 1 ) == 7 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Object Attributes - inst ref var ) */
    LOG_LogSuccess( "Test Compound Expressions - Object Attributes - inst ref var" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Object Attributes - inst ref var ) */
    LOG_LogFailure( "Test Compound Expressions - Object Attributes - inst ref var" );
  }
  /* ASSIGN self.a = 5 */
  self->a = 5;
  /* ASSIGN self.b = 4 */
  self->b = 4;
  /* IF ( ( ( ( self.a + self.b ) - 2 ) == 7 ) ) */
  if ( ( ( ( self->a + self->b ) - 2 ) == 7 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Object Attributes - self ) */
    LOG_LogSuccess( "Test Compound Expressions - Object Attributes - self" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Object Attributes - self ) */
    LOG_LogFailure( "Test Compound Expressions - Object Attributes - self" );
  }
  /* DELETE OBJECT INSTANCE a */
  if ( 0 == a ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) a, ex2_DOMAIN_ID, ex2_A_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE b */
  if ( 0 == b ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) b, ex2_DOMAIN_ID, ex2_A_CLASS_NUMBER );
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR3:send event with supp data() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent3c );
    Escher_SendEvent( e );
  }
}

/*
 * State 4:  [Compound Expressions Using Supplemental Data Items Received From An Event]
 */
static void ex2_TCE_act4( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act4( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent3 * rcvd_evt = (ex2_TCEevent3 *) event;
  ex2_DR * dr=0;
  /* IF ( ( ( ( PARAM.name + : age  ) + PARAM.age ) == Bob: age 31 ) ) */
  if ( ( Escher_strcmp( Escher_stradd( Escher_stradd( rcvd_evt->p_name, ": age " ), rcvd_evt->p_age ), "Bob: age 31" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Supp Data Items ) */
    LOG_LogSuccess( "Test Compound Expressions - Supp Data Items" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Supp Data Items ) */
    LOG_LogFailure( "Test Compound Expressions - Supp Data Items" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 5:  [Compound Expressions Using Function Invocations]
 */
static void ex2_TCE_act5( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act5( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_A * a=0;Escher_ObjectSet_s as_space={0}; Escher_ObjectSet_s * as = &as_space;ex2_DR * dr=0;
  /* SELECT many as FROM INSTANCES OF A */
  Escher_CopySet( as, &pG_ex2_A_extent.active );
  /* FOR EACH a IN as */
  { Escher_Iterator_s itera;
  ex2_A * iia;
  Escher_IteratorReset( &itera, as );
  while ( (iia = (ex2_A *)Escher_IteratorNext( &itera )) != 0 ) {
    a = iia; {
    /* DELETE OBJECT INSTANCE a */
    if ( 0 == a ) {
      XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) a, ex2_DOMAIN_ID, ex2_A_CLASS_NUMBER );
  }}}
  /* SELECT many as FROM INSTANCES OF A */
  Escher_CopySet( as, &pG_ex2_A_extent.active );
  /* IF ( ( ( empty as or not_empty as ) and not ( empty as and not_empty as ) ) ) */
  if ( ( ( Escher_SetIsEmpty( as ) || ( ! Escher_SetIsEmpty( as ) ) ) && !( Escher_SetIsEmpty( as ) && ( ! Escher_SetIsEmpty( as ) ) ) ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Function Invocations - not_empty/empty ) */
    LOG_LogSuccess( "Test Compound Expressions - Function Invocations - not_empty/empty" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Function Invocations - not_empty/empty ) */
    LOG_LogFailure( "Test Compound Expressions - Function Invocations - not_empty/empty" );
  }
  /* IF ( ( ( ( 2 + cardinality as ) + 1 ) == 3 ) ) */
  if ( ( ( ( 2 + Escher_SetCardinality( as ) ) + 1 ) == 3 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Function Invocations - cardinality ) */
    LOG_LogSuccess( "Test Compound Expressions - Function Invocations - cardinality" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Function Invocations - cardinality ) */
    LOG_LogFailure( "Test Compound Expressions - Function Invocations - cardinality" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
  Escher_ClearSet( as );
}

/*
 * State 6:  [Compound Expressions Using Transformer Invocations]
 */
static void ex2_TCE_act6( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act6( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  c_t vtrv8ex2_TRAN_op_ret_string13[ESCHER_SYS_MAX_STRING_LEN];c_t vtrv8ex2_TRAN_op_ret_string46[ESCHER_SYS_MAX_STRING_LEN];c_t vtrv15ex2_TRAN_op_ret_string32[ESCHER_SYS_MAX_STRING_LEN];c_t vtrv15ex2_TRAN_op_ret_string11[ESCHER_SYS_MAX_STRING_LEN];c_t s[ESCHER_SYS_MAX_STRING_LEN];ex2_DR * dr=0;
  /* IF ( ( ( ( TRAN::ret_int(1) + TRAN::ret_int(2) ) * ( TRAN::ret_int(5) - 3 ) ) == 6 ) ) */
  if ( ( ( ( ex2_TRAN_op_ret_int(1) + ex2_TRAN_op_ret_int(2) ) * ( ex2_TRAN_op_ret_int(5) - 3 ) ) == 6 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Transformer Invocations - int ) */
    LOG_LogSuccess( "Test Compound Expressions - Transformer Invocations - int" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Transformer Invocations - int ) */
    LOG_LogFailure( "Test Compound Expressions - Transformer Invocations - int" );
  }
  /* IF ( ( ( ( TRAN::ret_string(hi) +   ) + TRAN::ret_string(there) ) == hi there ) ) */
  if ( ( Escher_strcmp( Escher_stradd( Escher_stradd( ex2_TRAN_op_ret_string(vtrv8ex2_TRAN_op_ret_string13, "hi"), " " ), ex2_TRAN_op_ret_string(vtrv8ex2_TRAN_op_ret_string46, "there") ), "hi there" ) == 0 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Transformer Invocations - string ) */
    LOG_LogSuccess( "Test Compound Expressions - Transformer Invocations - string" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Transformer Invocations - string ) */
    LOG_LogFailure( "Test Compound Expressions - Transformer Invocations - string" );
  }
  /* ASSIGN s = TRAN::ret_string(s:) */
  Escher_strcpy( s, ex2_TRAN_op_ret_string(vtrv15ex2_TRAN_op_ret_string11, ex2_TRAN_op_ret_string(vtrv15ex2_TRAN_op_ret_string32, "abc")) );
  /* IF ( ( abc == s ) ) */
  if ( ( Escher_strcmp( "abc", s ) == 0 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Transformer Invocations - passing and returning a string ) */
    LOG_LogSuccess( "Test Compound Expressions - Transformer Invocations - passing and returning a string" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Transformer Invocations - passing and returning a string ) */
    LOG_LogFailure( "Test Compound Expressions - Transformer Invocations - passing and returning a string" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 7:  [Compound Expressions Using Bridge Invocations]
 */
static void ex2_TCE_act7( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act7( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_Date_t BrTstTimeDate;ex2_DR * dr=0;
  /* ASSIGN BrTstTimeDate = TIM::create_date(day:1, hour:6, minute:5, month:2, second:4, year:2003) */
  BrTstTimeDate = TIM_create_date( 1, 6, 5, 2, 4, 2003 );
  /* IF ( ( ( ( ( TIM::get_day(BrTstTimeDate) + TIM::get_month(BrTstTimeDate) ) + TIM::get_hour(BrTstTimeDate) ) + 2 ) == 11 ) ) */
  if ( ( ( ( ( TIM_get_day( BrTstTimeDate ) + TIM_get_month( BrTstTimeDate ) ) + TIM_get_hour( BrTstTimeDate ) ) + 2 ) == 11 ) ) {
    /* LOG::LogSuccess( message:Test Compund Expressions - Compound Expressions using Bridge Invocations ) */
    LOG_LogSuccess( "Test Compund Expressions - Compound Expressions using Bridge Invocations" );
  }
  else {
    /* LOG::LogFailure( message:Test Compund Expressions - Compound Expressions using Bridge Invocations ) */
    LOG_LogFailure( "Test Compund Expressions - Compound Expressions using Bridge Invocations" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 8:  [Order of Operations]
 */
static void ex2_TCE_act8( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act8( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_DR * dr=0;
  /* IF ( ( ( ( ( 1 + ( 2 * 3 ) ) - ( 6 / 3 ) ) + ( 8 % 3 ) ) == 7 ) ) */
  if ( ( ( ( ( 1 + ( 2 * 3 ) ) - ( 6 / 3 ) ) + ( 8 % 3 ) ) == 7 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Order of Operations - int ) */
    LOG_LogSuccess( "Test Compound Expressions - Order of Operations - int" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Order of Operations - int ) */
    LOG_LogFailure( "Test Compound Expressions - Order of Operations - int" );
  }
  /* IF ( ( ( ( ( 1.1 + ( 4.4 / 2 ) ) - 2.2 ) - 1.1 ) < 0.000001 ) ) */
  if ( ( ( ( ( 1.1 + ( 4.4 / 2 ) ) - 2.2 ) - 1.1 ) < 0.000001 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Order of Operations - real ) */
    LOG_LogSuccess( "Test Compound Expressions - Order of Operations - real" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Order of Operations - real ) */
    LOG_LogFailure( "Test Compound Expressions - Order of Operations - real" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 9:  [Stress Limits of Compound Expressions]
 */
static void ex2_TCE_act9( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act9( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  i_t x;ex2_DR * dr=0;
  /* ASSIGN x = ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) */
  x = ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) ) + ( ( ( 1 + 3 ) * ( 4 - 2 ) ) / ( 10 - 2 ) ) );
  /* IF ( ( x == 20 ) ) */
  if ( ( x == 20 ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Stress Limits ) */
    LOG_LogSuccess( "Test Compound Expressions - Stress Limits" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Stress Limits ) */
    LOG_LogFailure( "Test Compound Expressions - Stress Limits" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 11:  [Bridges Within Expressions]
 */
static void ex2_TCE_act11( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act11( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_Date_t date;i_t hour;i_t month;i_t day;ex2_DR * dr=0;
  /* ASSIGN date = TIM::create_date(day:1, hour:3, minute:2, month:2, second:1, year:1973) */
  date = TIM_create_date( 1, 3, 2, 2, 1, 1973 );
  /* ASSIGN hour = ( ( TIM::get_hour(date) * 22 ) + 3 ) */
  hour = ( ( TIM_get_hour( date ) * 22 ) + 3 );
  /* ASSIGN month = ( 8 - ( TIM::get_month(date) / 2 ) ) */
  month = ( 8 - ( TIM_get_month( date ) / 2 ) );
  /* ASSIGN day = ( TIM::get_day(date) + 28 ) */
  day = ( TIM_get_day( date ) + 28 );
  /* IF ( ( ( ( day == 29 ) and ( month == 7 ) ) and ( hour == 69 ) ) ) */
  if ( ( ( ( day == 29 ) && ( month == 7 ) ) && ( hour == 69 ) ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressios - Bridges within Expressions ) */
    LOG_LogSuccess( "Test Compound Expressios - Bridges within Expressions" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressios - Bridges within Expressions ) */
    LOG_LogFailure( "Test Compound Expressios - Bridges within Expressions" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR2:next test() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 12:  [Transforms Within Expressions]
 */
static void ex2_TCE_act12( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act12( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  i_t a;i_t b;i_t c;r_t pi;i_t d;
  /* ASSIGN a = ( TRAN::ret_int(5) + 10 ) */
  a = ( ex2_TRAN_op_ret_int(5) + 10 );
  /* ASSIGN b = ( ( TRAN::ret_int(8) / 4 ) + ( TRAN::ret_int(3) * 2 ) ) */
  b = ( ( ex2_TRAN_op_ret_int(8) / 4 ) + ( ex2_TRAN_op_ret_int(3) * 2 ) );
  /* ASSIGN c = ( ( TRAN::ret_int(2) * TRAN::ret_int(3) ) / TRAN::ret_int(6) ) */
  c = ( ( ex2_TRAN_op_ret_int(2) * ex2_TRAN_op_ret_int(3) ) / ex2_TRAN_op_ret_int(6) );
  /* ASSIGN pi = 3.14 */
  pi = 3.14;
  /* ASSIGN d = TRAN::ret_int_from_real(r:pi) */
  d = ex2_TRAN_op_ret_int_from_real(pi);
  /* IF ( ( ( ( ( a == 15 ) and ( b == 8 ) ) and ( c == 1 ) ) and ( d == 3 ) ) ) */
  if ( ( ( ( ( a == 15 ) && ( b == 8 ) ) && ( c == 1 ) ) && ( d == 3 ) ) ) {
    /* LOG::LogSuccess( message:Test Compound Expressions - Transforms within Expressions ) */
    LOG_LogSuccess( "Test Compound Expressions - Transforms within Expressions" );
  }
  else {
    /* LOG::LogFailure( message:Test Compound Expressions - Transforms within Expressions ) */
    LOG_LogFailure( "Test Compound Expressions - Transforms within Expressions" );
  }
  /* GENERATE TCE4:next test with supp data(b2:FALSE, i1:1, i2:2, r1:1.0, r2:2.0, b1:TRUE) TO self */
  { ex2_TCEevent4 * e = (ex2_TCEevent4 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent4c );
    e->p_b2 = FALSE;    e->p_i1 = 1;    e->p_i2 = 2;    e->p_r1 = 1.0;    e->p_r2 = 2.0;    e->p_b1 = TRUE;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 13:  [Combinine Real and Integer Data Types]
 */
static void ex2_TCE_act13( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act13( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent4 * rcvd_evt = (ex2_TCEevent4 *) event;
  i_t a;r_t x;ex2_DR * dr=0;
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN x = 1.1 */
  x = 1.1;
  /* ASSIGN x = ( ( a + 2 ) + ( x - 0.1 ) ) */
  x = ( ( a + 2 ) + ( x - 0.1 ) );
  /* IF ( ( ( x - 4.0 ) < 0.000001 ) ) */
  if ( ( ( x - 4.0 ) < 0.000001 ) ) {
    /* LOG::LogSuccess( message:Test Compund Expressions - Cobine Real and Integer Data Types ) */
    LOG_LogSuccess( "Test Compund Expressions - Cobine Real and Integer Data Types" );
  }
  else {
    /* LOG::LogFailure( message:Test Compund Expressions - Cobine Real and Integer Data Types ) */
    LOG_LogFailure( "Test Compund Expressions - Cobine Real and Integer Data Types" );
  }
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* GENERATE DR4:test complete() TO dr */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent4c );
    Escher_SendEvent( e );
  }
}

/*
 * State 14:  [Unary Ops]
 */
static void ex2_TCE_act14( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act14( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent4 * rcvd_evt = (ex2_TCEevent4 *) event;
  ex2_DR * dr=0;
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* LOG::LogInfo( message:Starting Test Compound Expressions - Unary Ops ) */
  LOG_LogInfo( "Starting Test Compound Expressions - Unary Ops" );
  /* IF ( TRUE ) */
  if ( TRUE ) {
    i_t a;i_t b;bool ans;i_t ans1;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* ASSIGN ans = not ( ( a == b ) and ( b == a ) ) */
    ans = !( ( a == b ) && ( b == a ) );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - local var ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - local var" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - local var ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - local var" );
    }
    /* ASSIGN ans = not ( ( 1 == 2 ) and ( 3 == 3 ) ) */
    ans = !( ( 1 == 2 ) && ( 3 == 3 ) );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - literal ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - literal" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - literal ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - literal" );
    }
    /* ASSIGN ans = not ( ( PARAM.b1 == PARAM.b2 ) and ( PARAM.b1 == PARAM.b1 ) ) */
    ans = !( ( rcvd_evt->p_b1 == rcvd_evt->p_b2 ) && ( rcvd_evt->p_b1 == rcvd_evt->p_b1 ) );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - rcvd_evt ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - rcvd_evt" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - rcvd_evt ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - rcvd_evt" );
    }
    /* ASSIGN ans = not ( ( self.b1 == self.b2 ) and ( self.b1 == self.b1 ) ) */
    ans = !( ( self->b1 == self->b2 ) && ( self->b1 == self->b1 ) );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - self ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - self" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - self ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - self" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans = not ( ( tce.b1 == tce.b2 ) and ( tce.b1 == tce.b1 ) ) */
    ans = !( ( tce->b1 == tce->b2 ) && ( tce->b1 == tce->b1 ) );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - inst_ref ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - inst_ref" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - inst_ref ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - inst_ref" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans = not ( ( not_empty tce and empty no_instances ) and ( empty tce and not_empty no_instances ) ) */
    ans = !( ( ( 0 != tce ) && ( 0 == no_instances ) ) && ( ( 0 == tce ) && ( 0 != no_instances ) ) );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - functions ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - functions" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - functions ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - functions" );
    }
    /* ASSIGN ans = not ( ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(FALSE) ) and ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(TRUE) ) ) */
    ans = !( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - transforms ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - transforms" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - transforms ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - transforms" );
    }
    /* ASSIGN ans = not ( ( BR::ret_bool(TRUE) and BR::ret_bool(FALSE) ) and ( BR::ret_bool(TRUE) and BR::ret_bool(TRUE) ) ) */
    ans = !( ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( FALSE ) ) && ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( TRUE ) ) );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - bridge - realized ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - bridge - realized" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - bridge - realized ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - bridge - realized" );
    }
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* ASSIGN ans1 = + ( a + b ) */
    ans1 = +( a + b );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - local var - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - local var - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - local var - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - local var - int" );
    }
    /* ASSIGN ans1 = + ( 1 + 2 ) */
    ans1 = +( 1 + 2 );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - literal - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - literal - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - literal - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - literal - int" );
    }
    /* ASSIGN ans1 = + ( PARAM.i1 + PARAM.i2 ) */
    ans1 = +( rcvd_evt->p_i1 + rcvd_evt->p_i2 );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - supp data - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - supp data - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - supp data - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - supp data - int" );
    }
    /* ASSIGN ans1 = + ( self.i1 + self.i2 ) */
    ans1 = +( self->i1 + self->i2 );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - self - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - self - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - self - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - self - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans1 = + ( tce.i1 + tce.i2 ) */
    ans1 = +( tce->i1 + tce->i2 );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - inst_ref - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - inst_ref - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - inst_ref - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - inst_ref - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans1 = + ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) ) */
    ans1 = +( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - cardinality - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - cardinality - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - cardinality - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - cardinality - int" );
    }
    /* ASSIGN ans1 = + ( TRAN::ret_int(5) + TRAN::ret_int() ) */
    ans1 = +( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - transform - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - transform - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - transform - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - transform - int" );
    }
    /* ASSIGN ans1 = + ( BR::ret_int() + BR::ret_int(6) ) */
    ans1 = +( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - bridge - realized - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - bridge - realized - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - bridge - realized - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - bridge - realized - int" );
    }
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* ASSIGN ans1 = - ( a + b ) */
    ans1 = -( a + b );
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - local var - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - local var - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - local var - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - local var - int" );
    }
    /* ASSIGN ans1 = - ( 1 + 2 ) */
    ans1 = -( 1 + 2 );
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - literal - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - literal - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - literal - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - literal - int" );
    }
    /* ASSIGN ans1 = - ( PARAM.i1 + PARAM.i2 ) */
    ans1 = -( rcvd_evt->p_i1 + rcvd_evt->p_i2 );
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - supp data - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - supp data - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - supp data - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - supp data - int" );
    }
    /* ASSIGN ans1 = - ( self.i1 + self.i2 ) */
    ans1 = -( self->i1 + self->i2 );
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - self - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - self - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - self - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - self - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans1 = - ( tce.i1 + tce.i2 ) */
    ans1 = -( tce->i1 + tce->i2 );
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - inst_ref - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - inst_ref - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - inst_ref - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - inst_ref - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans1 = - ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) ) */
    ans1 = -( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) );
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - cardinality - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - cardinality - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - cardinality - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - cardinality - int" );
    }
    /* ASSIGN ans1 = - ( TRAN::ret_int(5) + TRAN::ret_int() ) */
    ans1 = -( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) );
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - transform - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - transform - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - transform - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - transform - int" );
    }
    /* ASSIGN ans1 = - ( BR::ret_int() + BR::ret_int(6) ) */
    ans1 = -( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) );
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - bridge - realized - int ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - bridge - realized - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - bridge - realized - int ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - bridge - realized - int" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    r_t a;r_t b;r_t ans2;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a = 1.0 */
    a = 1.0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* ASSIGN ans2 = + ( a + b ) */
    ans2 = +( a + b );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - local var - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - local var - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - local var - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - local var - real" );
    }
    /* ASSIGN ans2 = + ( 1.0 + 2.0 ) */
    ans2 = +( 1.0 + 2.0 );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - literal - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - literal - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - literal - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - literal - real" );
    }
    /* ASSIGN ans2 = + ( PARAM.r1 + PARAM.r2 ) */
    ans2 = +( rcvd_evt->p_r1 + rcvd_evt->p_r2 );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - supp data - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - supp data - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - supp data - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - supp data - real" );
    }
    /* ASSIGN ans2 = + ( self.r1 + self.r2 ) */
    ans2 = +( self->r1 + self->r2 );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - self - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - self - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - self - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - self - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans2 = + ( tce.r1 + tce.r2 ) */
    ans2 = +( tce->r1 + tce->r2 );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - inst_ref - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - inst_ref - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - inst_ref - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - inst_ref - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans2 = + ( ( cardinality tce * 1.0 ) + ( 2 * ( cardinality no_instances + 1.0 ) ) ) */
    ans2 = +( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - cardinality - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - cardinality - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - cardinality - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - cardinality - real" );
    }
    /* ASSIGN ans2 = + ( TRAN::ret_real(5.0) + TRAN::ret_real() ) */
    ans2 = +( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - transform - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - transform - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - transform - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - transform - real" );
    }
    /* ASSIGN ans2 = + ( BR::ret_real() + BR::ret_real(6.0) ) */
    ans2 = +( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - bridge - realized - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - bridge - realized - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - bridge - realized - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - bridge - realized - real" );
    }
    /* ASSIGN a = 1.0 */
    a = 1.0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* ASSIGN ans2 = - ( a + b ) */
    ans2 = -( a + b );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - local var - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - local var - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - local var - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - local var - real" );
    }
    /* ASSIGN ans2 = - ( 1.0 + 2.0 ) */
    ans2 = -( 1.0 + 2.0 );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - literal - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - literal - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - literal - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - literal - real" );
    }
    /* ASSIGN ans2 = - ( PARAM.r1 + PARAM.r2 ) */
    ans2 = -( rcvd_evt->p_r1 + rcvd_evt->p_r2 );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - supp data - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - supp data - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - supp data - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - supp data - real" );
    }
    /* ASSIGN ans2 = - ( self.r1 + self.r2 ) */
    ans2 = -( self->r1 + self->r2 );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - self - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - self - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - self - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - self - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans2 = - ( tce.r1 + tce.r2 ) */
    ans2 = -( tce->r1 + tce->r2 );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - inst_ref - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - inst_ref - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - inst_ref - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - inst_ref - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans2 = - ( ( cardinality tce * 1.0 ) + ( 2 * ( cardinality no_instances + 1.0 ) ) ) */
    ans2 = -( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - cardinality - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - cardinality - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - cardinality - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - cardinality - real" );
    }
    /* ASSIGN ans2 = - ( TRAN::ret_real(5.0) + TRAN::ret_real() ) */
    ans2 = -( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - transform - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - transform - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - transform - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - transform - real" );
    }
    /* ASSIGN ans2 = - ( BR::ret_real() + BR::ret_real(6.0) ) */
    ans2 = -( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - bridge - realized - real ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - bridge - realized - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - bridge - realized - real ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - bridge - realized - real" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    bool a1;bool ans;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a1 = FALSE */
    a1 = FALSE;
    /* ASSIGN ans = not a1 */
    ans = !a1;
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - local var - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - local var - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - local var - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - local var - single" );
    }
    /* ASSIGN ans = not FALSE */
    ans = !FALSE;
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - literal - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - literal - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - literal - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - literal - single" );
    }
    /* ASSIGN ans = not PARAM.b2 */
    ans = !rcvd_evt->p_b2;
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - rcvd_evt - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - rcvd_evt - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - rcvd_evt - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - rcvd_evt - single" );
    }
    /* ASSIGN ans = not self.b2 */
    ans = !self->b2;
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - self - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - self - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - self - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - self - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans = not tce.b2 */
    ans = !tce->b2;
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - inst_ref - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - inst_ref - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - inst_ref - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - inst_ref - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans = not empty tce */
    ans = !( 0 == tce );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - functions - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - functions - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - functions - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - functions - single" );
    }
    /* ASSIGN ans = not TRAN::ret_bool(FALSE) */
    ans = !ex2_TRAN_op_ret_bool(FALSE);
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - transforms - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - transforms - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - transforms - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - transforms - single" );
    }
    /* ASSIGN ans = not BR::ret_bool(FALSE) */
    ans = !ex2_BR_ret_bool( FALSE );
    /* IF ( ( ans == TRUE ) ) */
    if ( ( ans == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of not expression - bridge - realized - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of not expression - bridge - realized - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of not expression - bridge - realized - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of not expression - bridge - realized - single" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    i_t b;i_t ans1;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN b = 2 */
    b = 2;
    /* ASSIGN ans1 = + b */
    ans1 = +b;
    /* IF ( ( ans1 == 2 ) ) */
    if ( ( ans1 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - local var - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - local var - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - local var - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - local var - int - single" );
    }
    /* ASSIGN ans1 = + 3 */
    ans1 = +3;
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - literal - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - literal - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - literal - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - literal - int - single" );
    }
    /* ASSIGN ans1 = + PARAM.i2 */
    ans1 = +rcvd_evt->p_i2;
    /* IF ( ( ans1 == 2 ) ) */
    if ( ( ans1 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - supp data - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - supp data - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - supp data - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - supp data - int - single" );
    }
    /* ASSIGN ans1 = + self.i2 */
    ans1 = +self->i2;
    /* IF ( ( ans1 == 2 ) ) */
    if ( ( ans1 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - self - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - self - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - self - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - self - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans1 = + tce.i2 */
    ans1 = +tce->i2;
    /* IF ( ( ans1 == 2 ) ) */
    if ( ( ans1 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - inst_ref - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - inst_ref - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - inst_ref - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - inst_ref - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans1 = + cardinality tce */
    ans1 = +( 0 != tce );
    /* IF ( ( ans1 == 1 ) ) */
    if ( ( ans1 == 1 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - cardinality - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - cardinality - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - cardinality - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - cardinality - int - single" );
    }
    /* ASSIGN ans1 = + TRAN::ret_int(3) */
    ans1 = +ex2_TRAN_op_ret_int(3);
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - transform - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - transform - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - transform - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - transform - int - single" );
    }
    /* ASSIGN ans1 = + BR::ret_int(3) */
    ans1 = +ex2_BR_ret_int( 3 );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - bridge - realized - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - bridge - realized - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - bridge - realized - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - bridge - realized - int - single" );
    }
    /* ASSIGN b = 2 */
    b = 2;
    /* ASSIGN ans1 = - b */
    ans1 = -b;
    /* IF ( ( ans1 == - 2 ) ) */
    if ( ( ans1 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - local var - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - local var - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - local var - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - local var - int - single" );
    }
    /* ASSIGN ans1 = - 2 */
    ans1 = -2;
    /* IF ( ( ans1 == - 2 ) ) */
    if ( ( ans1 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - literal - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - literal - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - literal - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - literal - int - single" );
    }
    /* ASSIGN ans1 = - PARAM.i2 */
    ans1 = -rcvd_evt->p_i2;
    /* IF ( ( ans1 == - 2 ) ) */
    if ( ( ans1 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - supp data - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - supp data - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - supp data - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - supp data - int - single" );
    }
    /* ASSIGN ans1 = - self.i2 */
    ans1 = -self->i2;
    /* IF ( ( ans1 == - 2 ) ) */
    if ( ( ans1 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - self - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - self - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - self - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - self - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans1 = - tce.i2 */
    ans1 = -tce->i2;
    /* IF ( ( ans1 == - 2 ) ) */
    if ( ( ans1 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - inst_ref - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - inst_ref - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - inst_ref - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - inst_ref - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans1 = - cardinality tce */
    ans1 = -( 0 != tce );
    /* IF ( ( ans1 == - 1 ) ) */
    if ( ( ans1 == -1 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - cardinality - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - cardinality - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - cardinality - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - cardinality - int - single" );
    }
    /* ASSIGN ans1 = - TRAN::ret_int(3) */
    ans1 = -ex2_TRAN_op_ret_int(3);
    /* IF ( ( ans1 == - 3 ) ) */
    if ( ( ans1 == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - transform - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - transform - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - transform - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - transform - int - single" );
    }
    /* ASSIGN ans1 = - BR::ret_int() */
    ans1 = -ex2_BR_ret_int( -3 );
    /* IF ( ( ans1 == 3 ) ) */
    if ( ( ans1 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - bridge - realized - int - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - bridge - realized - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - bridge - realized - int - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - bridge - realized - int - single" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    r_t b;r_t ans2;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* ASSIGN ans2 = + b */
    ans2 = +b;
    /* IF ( ( ( ans2 > 1.9 ) and ( ans2 < 2.1 ) ) ) */
    if ( ( ( ans2 > 1.9 ) && ( ans2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - local var - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - local var - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - local var - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - local var - real - single" );
    }
    /* ASSIGN ans2 = + 2.0 */
    ans2 = +2.0;
    /* IF ( ( ( ans2 > 1.9 ) and ( ans2 < 2.1 ) ) ) */
    if ( ( ( ans2 > 1.9 ) && ( ans2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - literal - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - literal - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - literal - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - literal - real - single" );
    }
    /* ASSIGN ans2 = + PARAM.r2 */
    ans2 = +rcvd_evt->p_r2;
    /* IF ( ( ( ans2 > 1.9 ) and ( ans2 < 2.1 ) ) ) */
    if ( ( ( ans2 > 1.9 ) && ( ans2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - supp data - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - supp data - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - supp data - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - supp data - real - single" );
    }
    /* ASSIGN ans2 = + self.r2 */
    ans2 = +self->r2;
    /* IF ( ( ( ans2 > 1.9 ) and ( ans2 < 2.1 ) ) ) */
    if ( ( ( ans2 > 1.9 ) && ( ans2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - self - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - self - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - self - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - self - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans2 = + tce.r2 */
    ans2 = +tce->r2;
    /* IF ( ( ( ans2 > 1.9 ) and ( ans2 < 2.1 ) ) ) */
    if ( ( ( ans2 > 1.9 ) && ( ans2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - inst_ref - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - inst_ref - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - inst_ref - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - inst_ref - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans2 = + ( cardinality tce * 1.0 ) */
    ans2 = +( ( 0 != tce ) * 1.0 );
    /* IF ( ( ( ans2 > 0.9 ) and ( ans2 < 1.1 ) ) ) */
    if ( ( ( ans2 > 0.9 ) && ( ans2 < 1.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - cardinality - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - cardinality - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - cardinality - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - cardinality - real - single" );
    }
    /* ASSIGN ans2 = + TRAN::ret_real(3.0) */
    ans2 = +ex2_TRAN_op_ret_real(3.0);
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - transform - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - transform - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - transform - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - transform - real - single" );
    }
    /* ASSIGN ans2 = + BR::ret_real(3.0) */
    ans2 = +ex2_BR_ret_real( 3.0 );
    /* IF ( ( ( ans2 > 2.9 ) and ( ans2 < 3.1 ) ) ) */
    if ( ( ( ans2 > 2.9 ) && ( ans2 < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - bridge - realized - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - bridge - realized - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - bridge - realized - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - bridge - realized - real - single" );
    }
    /* ASSIGN b = 3.0 */
    b = 3.0;
    /* ASSIGN ans2 = - b */
    ans2 = -b;
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - local var - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - local var - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - local var - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - local var - real - single" );
    }
    /* ASSIGN ans2 = - 3.0 */
    ans2 = -3.0;
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - literal - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - literal - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - literal - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - literal - real - single" );
    }
    /* ASSIGN ans2 = - PARAM.r2 */
    ans2 = -rcvd_evt->p_r2;
    /* IF ( ( ( ans2 > - 2.1 ) and ( ans2 < - 1.9 ) ) ) */
    if ( ( ( ans2 > -2.1 ) && ( ans2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - supp data - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - supp data - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - supp data - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - supp data - real - single" );
    }
    /* ASSIGN ans2 = - self.r2 */
    ans2 = -self->r2;
    /* IF ( ( ( ans2 > - 2.1 ) and ( ans2 < - 1.9 ) ) ) */
    if ( ( ( ans2 > -2.1 ) && ( ans2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of + (expression) - self - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of + (expression) - self - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of + (expression) - self - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of + (expression) - self - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* ASSIGN ans2 = - tce.r2 */
    ans2 = -tce->r2;
    /* IF ( ( ( ans2 > - 2.1 ) and ( ans2 < - 1.9 ) ) ) */
    if ( ( ( ans2 > -2.1 ) && ( ans2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - inst_ref - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - inst_ref - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - inst_ref - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - inst_ref - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* ASSIGN ans2 = - ( cardinality tce * 1.0 ) */
    ans2 = -( ( 0 != tce ) * 1.0 );
    /* IF ( ( ( ans2 > - 1.1 ) and ( ans2 < - .9 ) ) ) */
    if ( ( ( ans2 > -1.1 ) && ( ans2 < -.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - cardinality - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - cardinality - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - cardinality - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - cardinality - real - single" );
    }
    /* ASSIGN ans2 = - TRAN::ret_real(3.0) */
    ans2 = -ex2_TRAN_op_ret_real(3.0);
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < 2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - transform - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - transform - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - transform - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - transform - real - single" );
    }
    /* ASSIGN ans2 = - BR::ret_real(3.0) */
    ans2 = -ex2_BR_ret_real( 3.0 );
    /* IF ( ( ( ans2 > - 3.1 ) and ( ans2 < - 2.9 ) ) ) */
    if ( ( ( ans2 > -3.1 ) && ( ans2 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Unary Ops - assignment of - (expression) - bridge - realized - real - single ) */
      LOG_LogSuccess( "TCE - Unary Ops - assignment of - (expression) - bridge - realized - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Unary Ops - assignment of - (expression) - bridge - realized - real - single ) */
      LOG_LogFailure( "TCE - Unary Ops - assignment of - (expression) - bridge - realized - real - single" );
    }
  }
  /* GENERATE TCE4:next test with supp data(b2:FALSE, i1:1, i2:2, r1:1.0, r2:2.0, b1:TRUE) TO self */
  { ex2_TCEevent4 * e = (ex2_TCEevent4 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent4c );
    e->p_b2 = FALSE;    e->p_i1 = 1;    e->p_i2 = 2;    e->p_r1 = 1.0;    e->p_r2 = 2.0;    e->p_b1 = TRUE;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 15:  [If Expressions]
 */
static void ex2_TCE_act15( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act15( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent4 * rcvd_evt = (ex2_TCEevent4 *) event;
  ex2_DR * dr=0;
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* LOG::LogInfo( message:Starting Test Compound Expressions - If Expressions ) */
  LOG_LogInfo( "Starting Test Compound Expressions - If Expressions" );
  /* IF ( TRUE ) */
  if ( TRUE ) {
    i_t a;i_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( not ( ( a == b ) and ( b == a ) ) ) */
    if ( !( ( a == b ) && ( b == a ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - local var ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - local var" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - local var ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - local var" );
    }
    /* IF ( not ( ( 1 == 2 ) and ( 3 == 3 ) ) ) */
    if ( !( ( 1 == 2 ) && ( 3 == 3 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - literal ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - literal" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - literal ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - literal" );
    }
    /* IF ( not ( ( PARAM.b1 == PARAM.b2 ) and ( PARAM.b1 == PARAM.b1 ) ) ) */
    if ( !( ( rcvd_evt->p_b1 == rcvd_evt->p_b2 ) && ( rcvd_evt->p_b1 == rcvd_evt->p_b1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - rcvd_evt ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - rcvd_evt" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - rcvd_evt ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - rcvd_evt" );
    }
    /* IF ( not ( ( self.b1 == self.b2 ) and ( self.b1 == self.b1 ) ) ) */
    if ( !( ( self->b1 == self->b2 ) && ( self->b1 == self->b1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - self ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - self" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - self ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - self" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( not ( ( tce.b1 == tce.b2 ) and ( tce.b1 == tce.b1 ) ) ) */
    if ( !( ( tce->b1 == tce->b2 ) && ( tce->b1 == tce->b1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - inst_ref ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - inst_ref" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - inst_ref ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - inst_ref" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( not ( ( not_empty tce and empty no_instances ) and ( empty tce and not_empty no_instances ) ) ) */
    if ( !( ( ( 0 != tce ) && ( 0 == no_instances ) ) && ( ( 0 == tce ) && ( 0 != no_instances ) ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - functions ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - functions" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - functions ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - functions" );
    }
    /* IF ( not ( ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(FALSE) ) and ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(TRUE) ) ) ) */
    if ( !( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - transforms ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - transforms" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - transforms ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - transforms" );
    }
    /* IF ( not ( ( BR::ret_bool(TRUE) and BR::ret_bool(FALSE) ) and ( BR::ret_bool(TRUE) and BR::ret_bool(TRUE) ) ) ) */
    if ( !( ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( FALSE ) ) && ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( TRUE ) ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - bridge - realized ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - bridge - realized" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - bridge - realized ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - bridge - realized" );
    }
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( ( + ( a + b ) == 3 ) ) */
    if ( ( +( a + b ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - local var - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - local var - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - local var - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - local var - int" );
    }
    /* IF ( ( + ( 1 + 2 ) == 3 ) ) */
    if ( ( +( 1 + 2 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - literal - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - literal - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - literal - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - literal - int" );
    }
    /* IF ( ( + ( PARAM.i1 + PARAM.i2 ) == 3 ) ) */
    if ( ( +( rcvd_evt->p_i1 + rcvd_evt->p_i2 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - supp data - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - supp data - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - supp data - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - supp data - int" );
    }
    /* IF ( ( + ( self.i1 + self.i2 ) == 3 ) ) */
    if ( ( +( self->i1 + self->i2 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - self - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - self - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - self - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - self - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( + ( tce.i1 + tce.i2 ) == 3 ) ) */
    if ( ( +( tce->i1 + tce->i2 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - inst_ref - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - inst_ref - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - inst_ref - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - inst_ref - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( + ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) ) == 3 ) ) */
    if ( ( +( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - cardinality - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - cardinality - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - cardinality - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - cardinality - int" );
    }
    /* IF ( ( ( TRAN::ret_int(5) + TRAN::ret_int(- 2) ) == 3 ) ) */
    if ( ( ( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - transform - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - transform - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - transform - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - transform - int" );
    }
    /* IF ( ( + ( BR::ret_int() + BR::ret_int(6) ) == 3 ) ) */
    if ( ( +( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - bridge - realized - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - bridge - realized - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - bridge - realized - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - bridge - realized - int" );
    }
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( ( - ( a + b ) == - 3 ) ) */
    if ( ( -( a + b ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - local var - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - local var - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - local var - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - local var - int" );
    }
    /* IF ( ( - ( 1 + 2 ) == - 3 ) ) */
    if ( ( -( 1 + 2 ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - literal - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - literal - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - literal - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - literal - int" );
    }
    /* IF ( ( - ( PARAM.i1 + PARAM.i2 ) == - 3 ) ) */
    if ( ( -( rcvd_evt->p_i1 + rcvd_evt->p_i2 ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - supp data - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - supp data - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - supp data - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - supp data - int" );
    }
    /* IF ( ( - ( self.i1 + self.i2 ) == - 3 ) ) */
    if ( ( -( self->i1 + self->i2 ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - self - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - self - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - self - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - self - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( - ( tce.i1 + tce.i2 ) == - 3 ) ) */
    if ( ( -( tce->i1 + tce->i2 ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - inst_ref - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - inst_ref - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - inst_ref - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - inst_ref - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( - ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) ) == - 3 ) ) */
    if ( ( -( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - cardinality - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - cardinality - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - cardinality - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - cardinality - int" );
    }
    /* IF ( ( - ( TRAN::ret_int(5) + TRAN::ret_int() ) == - 3 ) ) */
    if ( ( -( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - transform - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - transform - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - transform - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - transform - int" );
    }
    /* IF ( ( - ( BR::ret_int() + BR::ret_int(6) ) == - 3 ) ) */
    if ( ( -( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - bridge - realized - int ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - bridge - realized - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - bridge - realized - int ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - bridge - realized - int" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    r_t a;r_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a = 1.0 */
    a = 1.0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* IF ( ( ( + ( a + b ) > 2.9 ) and ( + ( a + b ) < 3.1 ) ) ) */
    if ( ( ( +( a + b ) > 2.9 ) && ( +( a + b ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - local var - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - local var - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - local var - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - local var - real" );
    }
    /* IF ( ( ( + ( 1.0 + 2.0 ) > 2.9 ) and ( + ( 1.0 + 2.0 ) < 3.1 ) ) ) */
    if ( ( ( +( 1.0 + 2.0 ) > 2.9 ) && ( +( 1.0 + 2.0 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - literal - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - literal - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - literal - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - literal - real" );
    }
    /* IF ( ( ( + ( PARAM.r1 + PARAM.r2 ) > 2.9 ) and ( + ( PARAM.r1 + PARAM.r2 ) < 3.1 ) ) ) */
    if ( ( ( +( rcvd_evt->p_r1 + rcvd_evt->p_r2 ) > 2.9 ) && ( +( rcvd_evt->p_r1 + rcvd_evt->p_r2 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - supp data - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - supp data - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - supp data - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - supp data - real" );
    }
    /* IF ( ( ( + ( self.r1 + self.r2 ) > 2.9 ) and ( + ( self.r1 + self.r2 ) < 3.1 ) ) ) */
    if ( ( ( +( self->r1 + self->r2 ) > 2.9 ) && ( +( self->r1 + self->r2 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - self - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - self - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - self - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - self - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( ( + ( tce.r1 + tce.r2 ) > 2.9 ) and ( + ( tce.r1 + tce.r2 ) < 3.1 ) ) ) */
    if ( ( ( +( tce->r1 + tce->r2 ) > 2.9 ) && ( +( tce->r1 + tce->r2 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - inst_ref - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - inst_ref - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - inst_ref - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - inst_ref - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( ( + ( ( cardinality tce * 1.0 ) + ( 2 * ( cardinality no_instances + 1.0 ) ) ) > 2.9 ) and ( + ( ( cardinality tce * 1.0 ) + ( 2 * ( cardinality no_instances + 1.0 ) ) ) < 3.1 ) ) ) */
    if ( ( ( +( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) ) > 2.9 ) && ( +( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - cardinality - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - cardinality - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - cardinality - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - cardinality - real" );
    }
    /* IF ( ( ( + ( TRAN::ret_real(5.0) + TRAN::ret_real() ) > 2.9 ) and ( + ( TRAN::ret_real(5.0) + TRAN::ret_real() ) < 3.1 ) ) ) */
    if ( ( ( +( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) ) > 2.9 ) && ( +( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - transform - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - transform - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - transform - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - transform - real" );
    }
    /* IF ( ( ( + ( BR::ret_real() + BR::ret_real(6.0) ) > 2.9 ) and ( + ( BR::ret_real() + BR::ret_real(6.0) ) < 3.1 ) ) ) */
    if ( ( ( +( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) ) > 2.9 ) && ( +( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - bridge - realized - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - bridge - realized - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - bridge - realized - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - bridge - realized - real" );
    }
    /* ASSIGN a = 1.0 */
    a = 1.0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* IF ( ( ( - ( a + b ) > - 3.1 ) and ( - ( a + b ) < - 2.9 ) ) ) */
    if ( ( ( -( a + b ) > -3.1 ) && ( -( a + b ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - local var - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - local var - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - local var - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - local var - real" );
    }
    /* IF ( ( ( - ( 1.0 + 2.0 ) > - 3.1 ) and ( - ( 1.0 + 2.0 ) < - 2.9 ) ) ) */
    if ( ( ( -( 1.0 + 2.0 ) > -3.1 ) && ( -( 1.0 + 2.0 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - literal - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - literal - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - literal - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - literal - real" );
    }
    /* IF ( ( ( - ( PARAM.r1 + PARAM.r2 ) > - 3.1 ) and ( - ( PARAM.r1 + PARAM.r2 ) < - 2.9 ) ) ) */
    if ( ( ( -( rcvd_evt->p_r1 + rcvd_evt->p_r2 ) > -3.1 ) && ( -( rcvd_evt->p_r1 + rcvd_evt->p_r2 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - supp data - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - supp data - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - supp data - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - supp data - real" );
    }
    /* IF ( ( ( - ( self.r1 + self.r2 ) > - 3.1 ) and ( - ( self.r1 + self.r2 ) < - 2.9 ) ) ) */
    if ( ( ( -( self->r1 + self->r2 ) > -3.1 ) && ( -( self->r1 + self->r2 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - self - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - self - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - self - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - self - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( ( - ( tce.r1 + tce.r2 ) > - 3.1 ) and ( - ( tce.r1 + tce.r2 ) < - 2.9 ) ) ) */
    if ( ( ( -( tce->r1 + tce->r2 ) > -3.1 ) && ( -( tce->r1 + tce->r2 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - inst_ref - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - inst_ref - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - inst_ref - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - inst_ref - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( ( - ( ( cardinality tce * 1.0 ) + ( 2 * ( cardinality no_instances + 1.0 ) ) ) > - 3.1 ) and ( - ( ( cardinality tce * 1.0 ) + ( 2 * ( cardinality no_instances + 1.0 ) ) ) < - 2.9 ) ) ) */
    if ( ( ( -( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) ) > -3.1 ) && ( -( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - cardinality - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - cardinality - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - cardinality - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - cardinality - real" );
    }
    /* IF ( ( ( - ( TRAN::ret_real(5.0) + TRAN::ret_real() ) > - 3.1 ) and ( - ( TRAN::ret_real(5.0) + TRAN::ret_real() ) < - 2.9 ) ) ) */
    if ( ( ( -( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) ) > -3.1 ) && ( -( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - transform - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - transform - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - transform - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - transform - real" );
    }
    /* IF ( ( ( - ( BR::ret_real() + BR::ret_real(6.0) ) > - 3.1 ) and ( - ( BR::ret_real() + BR::ret_real(6.0) ) < - 2.9 ) ) ) */
    if ( ( ( -( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) ) > -3.1 ) && ( -( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - bridge - realized - real ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - bridge - realized - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - bridge - realized - real ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - bridge - realized - real" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    bool a1;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a1 = FALSE */
    a1 = FALSE;
    /* IF ( ( not a1 == TRUE ) ) */
    if ( ( !a1 == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - local var - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - local var - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - local var - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - local var - single" );
    }
    /* IF ( ( not FALSE == TRUE ) ) */
    if ( ( !FALSE == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - literal - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - literal - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - literal - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - literal - single" );
    }
    /* IF ( ( not PARAM.b2 == TRUE ) ) */
    if ( ( !rcvd_evt->p_b2 == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - rcvd_evt - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - rcvd_evt - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - rcvd_evt - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - rcvd_evt - single" );
    }
    /* IF ( ( not self.b2 == TRUE ) ) */
    if ( ( !self->b2 == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - self - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - self - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - self - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - self - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( not tce.b2 == TRUE ) ) */
    if ( ( !tce->b2 == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - inst_ref - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - inst_ref - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - inst_ref - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - inst_ref - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( not empty tce == TRUE ) ) */
    if ( ( !( 0 == tce ) == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - functions - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - functions - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - functions - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - functions - single" );
    }
    /* IF ( ( not TRAN::ret_bool(FALSE) == TRUE ) ) */
    if ( ( !ex2_TRAN_op_ret_bool(FALSE) == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - transforms - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - transforms - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - transforms - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - transforms - single" );
    }
    /* IF ( ( not BR::ret_bool(FALSE) == TRUE ) ) */
    if ( ( !ex2_BR_ret_bool( FALSE ) == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of not expression - bridge - realized - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of not expression - bridge - realized - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of not expression - bridge - realized - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of not expression - bridge - realized - single" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    i_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( ( + b == 2 ) ) */
    if ( ( +b == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - local var - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - local var - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - local var - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - local var - int - single" );
    }
    /* IF ( ( + 3 == 3 ) ) */
    if ( ( +3 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - literal - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - literal - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - literal - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - literal - int - single" );
    }
    /* IF ( ( + PARAM.i2 == 2 ) ) */
    if ( ( +rcvd_evt->p_i2 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - supp data - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - supp data - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - supp data - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - supp data - int - single" );
    }
    /* IF ( ( + self.i2 == 2 ) ) */
    if ( ( +self->i2 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - self - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - self - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - self - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - self - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( + tce.i2 == 2 ) ) */
    if ( ( +tce->i2 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - inst_ref - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - inst_ref - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - inst_ref - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - inst_ref - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( + cardinality tce == 1 ) ) */
    if ( ( +( 0 != tce ) == 1 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - cardinality - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - cardinality - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - cardinality - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - cardinality - int - single" );
    }
    /* IF ( ( + TRAN::ret_int(3) == 3 ) ) */
    if ( ( +ex2_TRAN_op_ret_int(3) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - transform - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - transform - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - transform - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - transform - int - single" );
    }
    /* IF ( ( + BR::ret_int(3) == 3 ) ) */
    if ( ( +ex2_BR_ret_int( 3 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - bridge - realized - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - bridge - realized - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - bridge - realized - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - bridge - realized - int - single" );
    }
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( ( - b == - 2 ) ) */
    if ( ( -b == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - local var - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - local var - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - local var - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - local var - int - single" );
    }
    /* IF ( ( - 2 == - 2 ) ) */
    if ( ( -2 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - literal - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - literal - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - literal - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - literal - int - single" );
    }
    /* IF ( ( - PARAM.i2 == - 2 ) ) */
    if ( ( -rcvd_evt->p_i2 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - supp data - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - supp data - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - supp data - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - supp data - int - single" );
    }
    /* IF ( ( - self.i2 == - 2 ) ) */
    if ( ( -self->i2 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - self - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - self - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - self - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - self - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( - tce.i2 == - 2 ) ) */
    if ( ( -tce->i2 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - inst_ref - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - inst_ref - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - inst_ref - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - inst_ref - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( - cardinality tce == - 1 ) ) */
    if ( ( -( 0 != tce ) == -1 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - cardinality - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - cardinality - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - cardinality - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - cardinality - int - single" );
    }
    /* IF ( ( - TRAN::ret_int(3) == - 3 ) ) */
    if ( ( -ex2_TRAN_op_ret_int(3) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - transform - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - transform - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - transform - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - transform - int - single" );
    }
    /* IF ( ( - BR::ret_int() == 3 ) ) */
    if ( ( -ex2_BR_ret_int( -3 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - bridge - realized - int - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - bridge - realized - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - bridge - realized - int - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - bridge - realized - int - single" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    r_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* IF ( ( ( + b > 1.9 ) and ( + b < 2.1 ) ) ) */
    if ( ( ( +b > 1.9 ) && ( +b < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - local var - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - local var - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - local var - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - local var - real - single" );
    }
    /* IF ( ( ( + 2.0 > 1.9 ) and ( + 2.0 < 2.1 ) ) ) */
    if ( ( ( +2.0 > 1.9 ) && ( +2.0 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - literal - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - literal - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - literal - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - literal - real - single" );
    }
    /* IF ( ( ( + PARAM.r2 > 1.9 ) and ( + PARAM.r2 < 2.1 ) ) ) */
    if ( ( ( +rcvd_evt->p_r2 > 1.9 ) && ( +rcvd_evt->p_r2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - supp data - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - supp data - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - supp data - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - supp data - real - single" );
    }
    /* IF ( ( ( + self.r2 > 1.9 ) and ( + self.r2 < 2.1 ) ) ) */
    if ( ( ( +self->r2 > 1.9 ) && ( +self->r2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - self - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - self - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - self - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - self - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( ( + tce.r2 > 1.9 ) and ( + tce.r2 < 2.1 ) ) ) */
    if ( ( ( +tce->r2 > 1.9 ) && ( +tce->r2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - inst_ref - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - inst_ref - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - inst_ref - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - inst_ref - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( ( + ( cardinality tce * 1.0 ) > 0.9 ) and ( + ( cardinality tce * 1.0 ) < 1.1 ) ) ) */
    if ( ( ( +( ( 0 != tce ) * 1.0 ) > 0.9 ) && ( +( ( 0 != tce ) * 1.0 ) < 1.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - cardinality - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - cardinality - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - cardinality - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - cardinality - real - single" );
    }
    /* IF ( ( ( + TRAN::ret_real(3.0) > 2.9 ) and ( + TRAN::ret_real(3.0) < 3.1 ) ) ) */
    if ( ( ( +ex2_TRAN_op_ret_real(3.0) > 2.9 ) && ( +ex2_TRAN_op_ret_real(3.0) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - transform - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - transform - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - transform - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - transform - real - single" );
    }
    /* IF ( ( ( + BR::ret_real(3.0) > 2.9 ) and ( + BR::ret_real(3.0) < 3.1 ) ) ) */
    if ( ( ( +ex2_BR_ret_real( 3.0 ) > 2.9 ) && ( +ex2_BR_ret_real( 3.0 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - bridge - realized - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - bridge - realized - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - bridge - realized - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - bridge - realized - real - single" );
    }
    /* ASSIGN b = 3.0 */
    b = 3.0;
    /* IF ( ( ( - b > - 3.1 ) and ( - b < - 2.9 ) ) ) */
    if ( ( ( -b > -3.1 ) && ( -b < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - local var - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - local var - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - local var - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - local var - real - single" );
    }
    /* IF ( ( ( - 3.0 > - 3.1 ) and ( - 3.0 < - 2.9 ) ) ) */
    if ( ( ( -3.0 > -3.1 ) && ( -3.0 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - literal - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - literal - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - literal - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - literal - real - single" );
    }
    /* IF ( ( ( - PARAM.r2 > - 2.1 ) and ( - PARAM.r2 < - 1.9 ) ) ) */
    if ( ( ( -rcvd_evt->p_r2 > -2.1 ) && ( -rcvd_evt->p_r2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - supp data - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - supp data - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - supp data - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - supp data - real - single" );
    }
    /* IF ( ( ( - self.r2 > - 2.1 ) and ( - self.r2 < - 1.9 ) ) ) */
    if ( ( ( -self->r2 > -2.1 ) && ( -self->r2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of + (expression) - self - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of + (expression) - self - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of + (expression) - self - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of + (expression) - self - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( ( ( - tce.r2 > - 2.1 ) and ( - tce.r2 < - 1.9 ) ) ) */
    if ( ( ( -tce->r2 > -2.1 ) && ( -tce->r2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - inst_ref - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - inst_ref - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - inst_ref - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - inst_ref - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( ( ( - ( cardinality tce * 1.0 ) > - 1.1 ) and ( - ( cardinality tce * 1.0 ) < - .9 ) ) ) */
    if ( ( ( -( ( 0 != tce ) * 1.0 ) > -1.1 ) && ( -( ( 0 != tce ) * 1.0 ) < -.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - cardinality - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - cardinality - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - cardinality - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - cardinality - real - single" );
    }
    /* IF ( ( ( - TRAN::ret_real(3.0) > - 3.1 ) and ( - TRAN::ret_real(3.0) < 2.9 ) ) ) */
    if ( ( ( -ex2_TRAN_op_ret_real(3.0) > -3.1 ) && ( -ex2_TRAN_op_ret_real(3.0) < 2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - transform - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - transform - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - transform - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - transform - real - single" );
    }
    /* IF ( ( ( - BR::ret_real(3.0) > - 3.1 ) and ( - BR::ret_real(3.0) < - 2.9 ) ) ) */
    if ( ( ( -ex2_BR_ret_real( 3.0 ) > -3.1 ) && ( -ex2_BR_ret_real( 3.0 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - If Expressions - assignment of - (expression) - bridge - realized - real - single ) */
      LOG_LogSuccess( "TCE - If Expressions - assignment of - (expression) - bridge - realized - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - If Expressions - assignment of - (expression) - bridge - realized - real - single ) */
      LOG_LogFailure( "TCE - If Expressions - assignment of - (expression) - bridge - realized - real - single" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    i_t a;i_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* SELECT any dr FROM INSTANCES OF DR */
    dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
    /* LOG::LogInfo( message:Starting Test Compound Expressions - Else Expressions ) */
    LOG_LogInfo( "Starting Test Compound Expressions - Else Expressions" );
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( !( ( a == b ) && ( b == a ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - local var ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - local var" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - local var ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - local var" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( !( ( 1 == 2 ) && ( 3 == 3 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - literal ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - literal" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - literal ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - literal" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( !( ( rcvd_evt->p_b1 == rcvd_evt->p_b2 ) && ( rcvd_evt->p_b1 == rcvd_evt->p_b1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - rcvd_evt ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - rcvd_evt" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - rcvd_evt ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - rcvd_evt" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( !( ( self->b1 == self->b2 ) && ( self->b1 == self->b1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - self ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - self" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - self ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - self" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( !( ( tce->b1 == tce->b2 ) && ( tce->b1 == tce->b1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - inst_ref ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - inst_ref" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - inst_ref ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - inst_ref" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( !( ( ( 0 != tce ) && ( 0 == no_instances ) ) && ( ( 0 == tce ) && ( 0 != no_instances ) ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - functions ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - functions" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - functions ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - functions" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( !( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - transforms ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - transforms" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - transforms ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - transforms" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( !( ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( FALSE ) ) && ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( TRUE ) ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - bridge - realized ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - bridge - realized" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - bridge - realized ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - bridge - realized" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    i_t a;i_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( +( a + b ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - local var - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - local var - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - local var - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - local var - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( +( 1 + 2 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - literal - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - literal - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - literal - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - literal - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( +( rcvd_evt->p_i1 + rcvd_evt->p_i2 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - supp data - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - supp data - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - supp data - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - supp data - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( +( self->i1 + self->i2 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - self - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - self - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - self - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - self - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( +( tce->i1 + tce->i2 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - inst_ref - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - inst_ref - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - inst_ref - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - inst_ref - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( +( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - cardinality - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - cardinality - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - cardinality - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - cardinality - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( ( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - transform - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - transform - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - transform - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - transform - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( +( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - bridge - realized - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - bridge - realized - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - bridge - realized - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - bridge - realized - int" );
    }
    /* ASSIGN a = 1 */
    a = 1;
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( -( a + b ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - local var - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - local var - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - local var - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - local var - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( -( 1 + 2 ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - literal - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - literal - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - literal - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - literal - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( -( rcvd_evt->p_i1 + rcvd_evt->p_i2 ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - supp data - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - supp data - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - supp data - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - supp data - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( -( self->i1 + self->i2 ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - self - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - self - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - self - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - self - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( -( tce->i1 + tce->i2 ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - inst_ref - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - inst_ref - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - inst_ref - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - inst_ref - int" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( -( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - cardinality - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - cardinality - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - cardinality - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - cardinality - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( -( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - transform - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - transform - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - transform - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - transform - int" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( -( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) ) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - bridge - realized - int ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - bridge - realized - int" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - bridge - realized - int ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - bridge - realized - int" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    r_t a;r_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a = 1.0 */
    a = 1.0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( ( +( a + b ) > 2.9 ) && ( +( a + b ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - local var - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - local var - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - local var - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - local var - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( ( +( 1.0 + 2.0 ) > 2.9 ) && ( +( 1.0 + 2.0 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - literal - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - literal - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - literal - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - literal - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( ( +( rcvd_evt->p_r1 + rcvd_evt->p_r2 ) > 2.9 ) && ( +( rcvd_evt->p_r1 + rcvd_evt->p_r2 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - supp data - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - supp data - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - supp data - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - supp data - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( ( +( self->r1 + self->r2 ) > 2.9 ) && ( +( self->r1 + self->r2 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - self - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - self - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - self - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - self - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( ( +( tce->r1 + tce->r2 ) > 2.9 ) && ( +( tce->r1 + tce->r2 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - inst_ref - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - inst_ref - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - inst_ref - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - inst_ref - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( ( ( +( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) ) > 2.9 ) && ( +( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - cardinality - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - cardinality - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - cardinality - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - cardinality - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) ) > 2.9 ) && ( +( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - transform - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - transform - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - transform - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - transform - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) ) > 2.9 ) && ( +( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - bridge - realized - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - bridge - realized - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - bridge - realized - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - bridge - realized - real" );
    }
    /* ASSIGN a = 1.0 */
    a = 1.0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( a + b ) > -3.1 ) && ( -( a + b ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - local var - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - local var - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - local var - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - local var - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( 1.0 + 2.0 ) > -3.1 ) && ( -( 1.0 + 2.0 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - literal - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - literal - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - literal - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - literal - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( rcvd_evt->p_r1 + rcvd_evt->p_r2 ) > -3.1 ) && ( -( rcvd_evt->p_r1 + rcvd_evt->p_r2 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - supp data - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - supp data - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - supp data - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - supp data - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( self->r1 + self->r2 ) > -3.1 ) && ( -( self->r1 + self->r2 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - self - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - self - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - self - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - self - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( tce->r1 + tce->r2 ) > -3.1 ) && ( -( tce->r1 + tce->r2 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - inst_ref - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - inst_ref - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - inst_ref - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - inst_ref - real" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) ) > -3.1 ) && ( -( ( ( 0 != tce ) * 1.0 ) + ( 2 * ( ( 0 != no_instances ) + 1.0 ) ) ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - cardinality - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - cardinality - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - cardinality - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - cardinality - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) ) > -3.1 ) && ( -( ex2_TRAN_op_ret_real(5.0) + ex2_TRAN_op_ret_real(-2.0) ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - transform - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - transform - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - transform - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - transform - real" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) ) > -3.1 ) && ( -( ex2_BR_ret_real( -3.0 ) + ex2_BR_ret_real( 6.0 ) ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - bridge - realized - real ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - bridge - realized - real" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - bridge - realized - real ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - bridge - realized - real" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    bool a1;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN a1 = FALSE */
    a1 = FALSE;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( !a1 == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - local var - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - local var - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - local var - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - local var - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( !FALSE == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - literal - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - literal - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - literal - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - literal - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( !rcvd_evt->p_b2 == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - rcvd_evt - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - rcvd_evt - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - rcvd_evt - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - rcvd_evt - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( !self->b2 == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - self - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - self - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - self - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - self - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( !tce->b2 == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - inst_ref - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - inst_ref - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - inst_ref - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - inst_ref - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( !( 0 == tce ) == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - functions - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - functions - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - functions - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - functions - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( !ex2_TRAN_op_ret_bool(FALSE) == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - transforms - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - transforms - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - transforms - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - transforms - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( !ex2_BR_ret_bool( FALSE ) == TRUE ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of not expression - bridge - realized - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of not expression - bridge - realized - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of not expression - bridge - realized - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of not expression - bridge - realized - single" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    i_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( +b == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - local var - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - local var - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - local var - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - local var - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( +3 == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - literal - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - literal - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - literal - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - literal - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( +rcvd_evt->p_i2 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - supp data - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - supp data - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - supp data - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - supp data - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( +self->i2 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - self - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - self - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - self - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - self - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( +tce->i2 == 2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - inst_ref - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - inst_ref - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - inst_ref - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - inst_ref - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( +( 0 != tce ) == 1 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - cardinality - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - cardinality - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - cardinality - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - cardinality - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( +ex2_TRAN_op_ret_int(3) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - transform - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - transform - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - transform - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - transform - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( +ex2_BR_ret_int( 3 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - bridge - realized - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - bridge - realized - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - bridge - realized - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - bridge - realized - int - single" );
    }
    /* ASSIGN b = 2 */
    b = 2;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( -b == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - local var - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - local var - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - local var - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - local var - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( -2 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - literal - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - literal - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - literal - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - literal - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( -rcvd_evt->p_i2 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - supp data - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - supp data - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - supp data - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - supp data - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( -self->i2 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - self - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - self - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - self - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - self - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( -tce->i2 == -2 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - inst_ref - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - inst_ref - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - inst_ref - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - inst_ref - int - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( -( 0 != tce ) == -1 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - cardinality - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - cardinality - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - cardinality - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - cardinality - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( -ex2_TRAN_op_ret_int(3) == -3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - transform - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - transform - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - transform - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - transform - int - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( -ex2_BR_ret_int( -3 ) == 3 ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - bridge - realized - int - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - bridge - realized - int - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - bridge - realized - int - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - bridge - realized - int - single" );
    }
  }
  /* IF ( TRUE ) */
  if ( TRUE ) {
    r_t b;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
    /* ASSIGN b = 2.0 */
    b = 2.0;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +b > 1.9 ) && ( +b < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - local var - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - local var - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - local var - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - local var - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +2.0 > 1.9 ) && ( +2.0 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - literal - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - literal - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - literal - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - literal - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +rcvd_evt->p_r2 > 1.9 ) && ( +rcvd_evt->p_r2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - supp data - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - supp data - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - supp data - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - supp data - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +self->r2 > 1.9 ) && ( +self->r2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - self - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - self - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - self - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - self - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +tce->r2 > 1.9 ) && ( +tce->r2 < 2.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - inst_ref - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - inst_ref - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - inst_ref - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - inst_ref - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +( ( 0 != tce ) * 1.0 ) > 0.9 ) && ( +( ( 0 != tce ) * 1.0 ) < 1.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - cardinality - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - cardinality - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - cardinality - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - cardinality - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +ex2_TRAN_op_ret_real(3.0) > 2.9 ) && ( +ex2_TRAN_op_ret_real(3.0) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - transform - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - transform - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - transform - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - transform - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( +ex2_BR_ret_real( 3.0 ) > 2.9 ) && ( +ex2_BR_ret_real( 3.0 ) < 3.1 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - bridge - realized - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - bridge - realized - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - bridge - realized - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - bridge - realized - real - single" );
    }
    /* ASSIGN b = 3.0 */
    b = 3.0;
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -b > -3.1 ) && ( -b < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - local var - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - local var - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - local var - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - local var - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -3.0 > -3.1 ) && ( -3.0 < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - literal - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - literal - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - literal - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - literal - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -rcvd_evt->p_r2 > -2.1 ) && ( -rcvd_evt->p_r2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - supp data - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - supp data - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - supp data - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - supp data - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -self->r2 > -2.1 ) && ( -self->r2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of + (expression) - self - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of + (expression) - self - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of + (expression) - self - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of + (expression) - self - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -tce->r2 > -2.1 ) && ( -tce->r2 < -1.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - inst_ref - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - inst_ref - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - inst_ref - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - inst_ref - real - single" );
    }
    /* SELECT any tce FROM INSTANCES OF TCE */
    tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
    /* SELECT any no_instances FROM INSTANCES OF NOI */
    no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -( ( 0 != tce ) * 1.0 ) > -1.1 ) && ( -( ( 0 != tce ) * 1.0 ) < -.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - cardinality - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - cardinality - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - cardinality - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - cardinality - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -ex2_TRAN_op_ret_real(3.0) > -3.1 ) && ( -ex2_TRAN_op_ret_real(3.0) < 2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - transform - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - transform - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - transform - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - transform - real - single" );
    }
    /* IF ( FALSE ) */
    if ( FALSE ) {
    }
    else if ( FALSE ) {
    }
    else if ( ( ( -ex2_BR_ret_real( 3.0 ) > -3.1 ) && ( -ex2_BR_ret_real( 3.0 ) < -2.9 ) ) ) {
      /* LOG::LogSuccess( message:TCE - Else Expressions - assignment of - (expression) - bridge - realized - real - single ) */
      LOG_LogSuccess( "TCE - Else Expressions - assignment of - (expression) - bridge - realized - real - single" );
    }
    else {
      /* LOG::LogFailure( message:TCE - Else Expressions - assignment of - (expression) - bridge - realized - real - single ) */
      LOG_LogFailure( "TCE - Else Expressions - assignment of - (expression) - bridge - realized - real - single" );
    }
  }
  /* GENERATE TCE4:next test with supp data(i2:2, r1:1.0, r2:2.0, b1:TRUE, b2:FALSE, i1:1) TO self */
  { ex2_TCEevent4 * e = (ex2_TCEevent4 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent4c );
    e->p_i2 = 2;    e->p_r1 = 1.0;    e->p_r2 = 2.0;    e->p_b1 = TRUE;    e->p_b2 = FALSE;    e->p_i1 = 1;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 16:  [Expressions Within Parameters]
 */
static void ex2_TCE_act16( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act16( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent4 * rcvd_evt = (ex2_TCEevent4 *) event;
  i_t a;i_t b;bool ans;i_t ans1;i_t ack_count;ex2_TCEevent5 * e1;ex2_TCEevent6 * e2;ex2_DR * dr=0;ex2_TCE * tce=0;ex2_NOI * no_instances=0;
  /* SELECT any dr FROM INSTANCES OF DR */
  dr = (ex2_DR *) Escher_SetGetAny( &pG_ex2_DR_extent.active );
  /* LOG::LogInfo( message:Starting Test Compound Expressions - Parm Expressions ) */
  LOG_LogInfo( "Starting Test Compound Expressions - Parm Expressions" );
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* ASSIGN ans = BR::ret_bool(b:not ( ( a == b ) and ( b == a ) )) */
  ans = ex2_BR_ret_bool( !( ( a == b ) && ( b == a ) ) );
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of not expression - local var ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of not expression - local var" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of not expression - local var ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of not expression - local var" );
  }
  /* ASSIGN ans = BR::ret_bool(b:not ( ( 1 == 2 ) and ( 3 == 3 ) )) */
  ans = ex2_BR_ret_bool( !( ( 1 == 2 ) && ( 3 == 3 ) ) );
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of not expression - literal ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of not expression - literal" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of not expression - literal ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of not expression - literal" );
  }
  /* ASSIGN ans = BR::ret_bool(b:not ( ( PARAM.b1 == PARAM.b2 ) and ( PARAM.b1 == PARAM.b1 ) )) */
  ans = ex2_BR_ret_bool( !( ( rcvd_evt->p_b1 == rcvd_evt->p_b2 ) && ( rcvd_evt->p_b1 == rcvd_evt->p_b1 ) ) );
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of not expression - rcvd_evt ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of not expression - rcvd_evt" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of not expression - rcvd_evt ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of not expression - rcvd_evt" );
  }
  /* ASSIGN ans = BR::ret_bool(b:not ( ( self.b1 == self.b2 ) and ( self.b1 == self.b1 ) )) */
  ans = ex2_BR_ret_bool( !( ( self->b1 == self->b2 ) && ( self->b1 == self->b1 ) ) );
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of not expression - self ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of not expression - self" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of not expression - self ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of not expression - self" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* ASSIGN ans = BR::ret_bool(b:not ( ( tce.b1 == tce.b2 ) and ( tce.b1 == tce.b1 ) )) */
  ans = ex2_BR_ret_bool( !( ( tce->b1 == tce->b2 ) && ( tce->b1 == tce->b1 ) ) );
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of not expression - inst_ref ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of not expression - inst_ref" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of not expression - inst_ref ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of not expression - inst_ref" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* ASSIGN ans = BR::ret_bool(b:not ( ( not_empty tce and empty no_instances ) and ( empty tce and not_empty no_instances ) )) */
  ans = ex2_BR_ret_bool( !( ( ( 0 != tce ) && ( 0 == no_instances ) ) && ( ( 0 == tce ) && ( 0 != no_instances ) ) ) );
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of not expression - functions ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of not expression - functions" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of not expression - functions ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of not expression - functions" );
  }
  /* ASSIGN ans = BR::ret_bool(b:not ( ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(FALSE) ) and ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(TRUE) ) )) */
  ans = ex2_BR_ret_bool( !( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) ) );
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of not expression - transforms ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of not expression - transforms" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of not expression - transforms ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of not expression - transforms" );
  }
  /* ASSIGN ans = BR::ret_bool(b:not ( ( BR::ret_bool(TRUE) and BR::ret_bool(FALSE) ) and ( BR::ret_bool(TRUE) and BR::ret_bool(TRUE) ) )) */
  ans = ex2_BR_ret_bool( !( ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( FALSE ) ) && ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( TRUE ) ) ) );
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of not expression - bridge - realized ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of not expression - bridge - realized" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of not expression - bridge - realized ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of not expression - bridge - realized" );
  }
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* ASSIGN ans1 = BR::ret_int(i:+ ( a + b )) */
  ans1 = ex2_BR_ret_int( +( a + b ) );
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - local var - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - local var - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - local var - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - local var - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:+ ( 1 + 2 )) */
  ans1 = ex2_BR_ret_int( +( 1 + 2 ) );
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - literal - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - literal - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - literal - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - literal - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:+ ( PARAM.i1 + PARAM.i2 )) */
  ans1 = ex2_BR_ret_int( +( rcvd_evt->p_i1 + rcvd_evt->p_i2 ) );
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - supp data - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - supp data - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - supp data - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - supp data - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:+ ( self.i1 + self.i2 )) */
  ans1 = ex2_BR_ret_int( +( self->i1 + self->i2 ) );
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - self - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - self - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - self - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - self - int" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* ASSIGN ans1 = BR::ret_int(i:+ ( tce.i1 + tce.i2 )) */
  ans1 = ex2_BR_ret_int( +( tce->i1 + tce->i2 ) );
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - inst_ref - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - inst_ref - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - inst_ref - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - inst_ref - int" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* ASSIGN ans1 = BR::ret_int(i:+ ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) )) */
  ans1 = ex2_BR_ret_int( +( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) ) );
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - cardinality - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - cardinality - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - cardinality - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - cardinality - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:( TRAN::ret_int(5) + TRAN::ret_int(- 2) )) */
  ans1 = ex2_BR_ret_int( ( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) ) );
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - transform - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - transform - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - transform - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - transform - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:+ ( BR::ret_int() + BR::ret_int(6) )) */
  ans1 = ex2_BR_ret_int( +( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) ) );
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - bridge - realized - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - bridge - realized - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - bridge - realized - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - bridge - realized - int" );
  }
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* ASSIGN ans1 = BR::ret_int(i:- ( a + b )) */
  ans1 = ex2_BR_ret_int( -( a + b ) );
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of - (expression) - local var - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of - (expression) - local var - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of - (expression) - local var - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of - (expression) - local var - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:- ( 1 + 2 )) */
  ans1 = ex2_BR_ret_int( -( 1 + 2 ) );
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of - (expression) - literal - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of - (expression) - literal - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of - (expression) - literal - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of - (expression) - literal - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:- ( PARAM.i1 + PARAM.i2 )) */
  ans1 = ex2_BR_ret_int( -( rcvd_evt->p_i1 + rcvd_evt->p_i2 ) );
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of - (expression) - supp data - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of - (expression) - supp data - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of - (expression) - supp data - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of - (expression) - supp data - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:- ( self.i1 + self.i2 )) */
  ans1 = ex2_BR_ret_int( -( self->i1 + self->i2 ) );
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of + (expression) - self - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of + (expression) - self - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of + (expression) - self - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of + (expression) - self - int" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* ASSIGN ans1 = BR::ret_int(i:- ( tce.i1 + tce.i2 )) */
  ans1 = ex2_BR_ret_int( -( tce->i1 + tce->i2 ) );
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of - (expression) - inst_ref - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of - (expression) - inst_ref - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of - (expression) - inst_ref - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of - (expression) - inst_ref - int" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* ASSIGN ans1 = BR::ret_int(i:- ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) )) */
  ans1 = ex2_BR_ret_int( -( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) ) );
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of - (expression) - cardinality - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of - (expression) - cardinality - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of - (expression) - cardinality - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of - (expression) - cardinality - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:- ( TRAN::ret_int(5) + TRAN::ret_int() )) */
  ans1 = ex2_BR_ret_int( -( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) ) );
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of - (expression) - transform - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of - (expression) - transform - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of - (expression) - transform - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of - (expression) - transform - int" );
  }
  /* ASSIGN ans1 = BR::ret_int(i:- ( BR::ret_int() + BR::ret_int(6) )) */
  ans1 = ex2_BR_ret_int( -( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) ) );
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Bridge Parm Expressions - assignment of - (expression) - bridge - realized - int ) */
    LOG_LogSuccess( "TCE - Bridge Parm Expressions - assignment of - (expression) - bridge - realized - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Bridge Parm Expressions - assignment of - (expression) - bridge - realized - int ) */
    LOG_LogFailure( "TCE - Bridge Parm Expressions - assignment of - (expression) - bridge - realized - int" );
  }
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* ASSIGN ans = TRAN::ret_bool(b:not ( ( a == b ) and ( b == a ) )) */
  ans = ex2_TRAN_op_ret_bool(!( ( a == b ) && ( b == a ) ));
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of not expression - local var ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of not expression - local var" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of not expression - local var ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of not expression - local var" );
  }
  /* ASSIGN ans = TRAN::ret_bool(b:not ( ( 1 == 2 ) and ( 3 == 3 ) )) */
  ans = ex2_TRAN_op_ret_bool(!( ( 1 == 2 ) && ( 3 == 3 ) ));
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of not expression - literal ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of not expression - literal" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of not expression - literal ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of not expression - literal" );
  }
  /* ASSIGN ans = TRAN::ret_bool(b:not ( ( PARAM.b1 == PARAM.b2 ) and ( PARAM.b1 == PARAM.b1 ) )) */
  ans = ex2_TRAN_op_ret_bool(!( ( rcvd_evt->p_b1 == rcvd_evt->p_b2 ) && ( rcvd_evt->p_b1 == rcvd_evt->p_b1 ) ));
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of not expression - rcvd_evt ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of not expression - rcvd_evt" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of not expression - rcvd_evt ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of not expression - rcvd_evt" );
  }
  /* ASSIGN ans = TRAN::ret_bool(b:not ( ( self.b1 == self.b2 ) and ( self.b1 == self.b1 ) )) */
  ans = ex2_TRAN_op_ret_bool(!( ( self->b1 == self->b2 ) && ( self->b1 == self->b1 ) ));
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of not expression - self ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of not expression - self" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of not expression - self ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of not expression - self" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* ASSIGN ans = TRAN::ret_bool(b:not ( ( tce.b1 == tce.b2 ) and ( tce.b1 == tce.b1 ) )) */
  ans = ex2_TRAN_op_ret_bool(!( ( tce->b1 == tce->b2 ) && ( tce->b1 == tce->b1 ) ));
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of not expression - inst_ref ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of not expression - inst_ref" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of not expression - inst_ref ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of not expression - inst_ref" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* ASSIGN ans = TRAN::ret_bool(b:not ( ( not_empty tce and empty no_instances ) and ( empty tce and not_empty no_instances ) )) */
  ans = ex2_TRAN_op_ret_bool(!( ( ( 0 != tce ) && ( 0 == no_instances ) ) && ( ( 0 == tce ) && ( 0 != no_instances ) ) ));
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of not expression - functions ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of not expression - functions" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of not expression - functions ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of not expression - functions" );
  }
  /* ASSIGN ans = TRAN::ret_bool(b:not ( ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(FALSE) ) and ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(TRUE) ) )) */
  ans = ex2_TRAN_op_ret_bool(!( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) ));
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of not expression - transforms ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of not expression - transforms" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of not expression - transforms ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of not expression - transforms" );
  }
  /* ASSIGN ans = TRAN::ret_bool(b:not ( ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(FALSE) ) and ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(TRUE) ) )) */
  ans = ex2_TRAN_op_ret_bool(!( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) ));
  /* IF ( ans ) */
  if ( ans ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of not expression - bridge - realized ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of not expression - bridge - realized" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of not expression - bridge - realized ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of not expression - bridge - realized" );
  }
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* ASSIGN ans1 = TRAN::ret_int(i:+ ( a + b )) */
  ans1 = ex2_TRAN_op_ret_int(+( a + b ));
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - local var - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - local var - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - local var - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - local var - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:+ ( 1 + 2 )) */
  ans1 = ex2_TRAN_op_ret_int(+( 1 + 2 ));
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - literal - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - literal - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - literal - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - literal - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:+ ( PARAM.i1 + PARAM.i2 )) */
  ans1 = ex2_TRAN_op_ret_int(+( rcvd_evt->p_i1 + rcvd_evt->p_i2 ));
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - supp data - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - supp data - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - supp data - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - supp data - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:+ ( self.i1 + self.i2 )) */
  ans1 = ex2_TRAN_op_ret_int(+( self->i1 + self->i2 ));
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - self - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - self - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - self - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - self - int" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* ASSIGN ans1 = TRAN::ret_int(i:+ ( tce.i1 + tce.i2 )) */
  ans1 = ex2_TRAN_op_ret_int(+( tce->i1 + tce->i2 ));
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - inst_ref - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - inst_ref - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - inst_ref - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - inst_ref - int" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* ASSIGN ans1 = TRAN::ret_int(i:+ ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) )) */
  ans1 = ex2_TRAN_op_ret_int(+( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) ));
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - cardinality - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - cardinality - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - cardinality - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - cardinality - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:( TRAN::ret_int(5) + TRAN::ret_int(- 2) )) */
  ans1 = ex2_TRAN_op_ret_int(( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) ));
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - transform - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - transform - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - transform - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - transform - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:+ ( TRAN::ret_int() + TRAN::ret_int(6) )) */
  ans1 = ex2_TRAN_op_ret_int(+( ex2_TRAN_op_ret_int(-3) + ex2_TRAN_op_ret_int(6) ));
  /* IF ( ( ans1 == 3 ) ) */
  if ( ( ans1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - bridge - realized - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - bridge - realized - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - bridge - realized - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - bridge - realized - int" );
  }
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* ASSIGN ans1 = TRAN::ret_int(i:- ( a + b )) */
  ans1 = ex2_TRAN_op_ret_int(-( a + b ));
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of - (expression) - local var - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of - (expression) - local var - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of - (expression) - local var - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of - (expression) - local var - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:- ( 1 + 2 )) */
  ans1 = ex2_TRAN_op_ret_int(-( 1 + 2 ));
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of - (expression) - literal - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of - (expression) - literal - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of - (expression) - literal - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of - (expression) - literal - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:- ( PARAM.i1 + PARAM.i2 )) */
  ans1 = ex2_TRAN_op_ret_int(-( rcvd_evt->p_i1 + rcvd_evt->p_i2 ));
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of - (expression) - supp data - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of - (expression) - supp data - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of - (expression) - supp data - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of - (expression) - supp data - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:- ( self.i1 + self.i2 )) */
  ans1 = ex2_TRAN_op_ret_int(-( self->i1 + self->i2 ));
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of + (expression) - self - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of + (expression) - self - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of + (expression) - self - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of + (expression) - self - int" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* ASSIGN ans1 = TRAN::ret_int(i:- ( tce.i1 + tce.i2 )) */
  ans1 = ex2_TRAN_op_ret_int(-( tce->i1 + tce->i2 ));
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of - (expression) - inst_ref - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of - (expression) - inst_ref - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of - (expression) - inst_ref - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of - (expression) - inst_ref - int" );
  }
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* ASSIGN ans1 = TRAN::ret_int(i:- ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) )) */
  ans1 = ex2_TRAN_op_ret_int(-( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) ));
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of - (expression) - cardinality - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of - (expression) - cardinality - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of - (expression) - cardinality - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of - (expression) - cardinality - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:- ( TRAN::ret_int(5) + TRAN::ret_int() )) */
  ans1 = ex2_TRAN_op_ret_int(-( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) ));
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of - (expression) - transform - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of - (expression) - transform - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of - (expression) - transform - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of - (expression) - transform - int" );
  }
  /* ASSIGN ans1 = TRAN::ret_int(i:- ( TRAN::ret_int() + TRAN::ret_int(6) )) */
  ans1 = ex2_TRAN_op_ret_int(-( ex2_TRAN_op_ret_int(-3) + ex2_TRAN_op_ret_int(6) ));
  /* IF ( ( ans1 == - 3 ) ) */
  if ( ( ans1 == -3 ) ) {
    /* LOG::LogSuccess( message:TCE - Transform Parm Expressions - assignment of - (expression) - bridge - realized - int ) */
    LOG_LogSuccess( "TCE - Transform Parm Expressions - assignment of - (expression) - bridge - realized - int" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Transform Parm Expressions - assignment of - (expression) - bridge - realized - int ) */
    LOG_LogFailure( "TCE - Transform Parm Expressions - assignment of - (expression) - bridge - realized - int" );
  }
  /* ASSIGN ack_count = 0 */
  ack_count = 0;
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* CREATE EVENT INSTANCE e1( b1:not ( ( a == b ) and ( b == a ) ) ) TO self */
  e1 = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent5c );
      e1->p_b1 = !( ( a == b ) && ( b == a ) );  /* GENERATE e1 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e1 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e1( b1:not ( ( 1 == 2 ) and ( 3 == 3 ) ) ) TO self */
  e1 = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent5c );
      e1->p_b1 = !( ( 1 == 2 ) && ( 3 == 3 ) );  /* GENERATE e1 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e1 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e1( b1:not ( ( PARAM.b1 == PARAM.b2 ) and ( PARAM.b1 == PARAM.b1 ) ) ) TO self */
  e1 = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent5c );
      e1->p_b1 = !( ( rcvd_evt->p_b1 == rcvd_evt->p_b2 ) && ( rcvd_evt->p_b1 == rcvd_evt->p_b1 ) );  /* GENERATE e1 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e1 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e1( b1:not ( ( self.b1 == self.b2 ) and ( self.b1 == self.b1 ) ) ) TO self */
  e1 = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent5c );
      e1->p_b1 = !( ( self->b1 == self->b2 ) && ( self->b1 == self->b1 ) );  /* GENERATE e1 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e1 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* CREATE EVENT INSTANCE e1( b1:not ( ( tce.b1 == tce.b2 ) and ( tce.b1 == tce.b1 ) ) ) TO self */
  e1 = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent5c );
      e1->p_b1 = !( ( tce->b1 == tce->b2 ) && ( tce->b1 == tce->b1 ) );  /* GENERATE e1 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e1 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* CREATE EVENT INSTANCE e1( b1:not ( ( not_empty tce and empty no_instances ) and ( empty tce and not_empty no_instances ) ) ) TO self */
  e1 = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent5c );
      e1->p_b1 = !( ( ( 0 != tce ) && ( 0 == no_instances ) ) && ( ( 0 == tce ) && ( 0 != no_instances ) ) );  /* GENERATE e1 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e1 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e1( b1:not ( ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(FALSE) ) and ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(TRUE) ) ) ) TO self */
  e1 = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent5c );
      e1->p_b1 = !( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) );  /* GENERATE e1 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e1 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e1( b1:not ( ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(FALSE) ) and ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(TRUE) ) ) ) TO self */
  e1 = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent5c );
      e1->p_b1 = !( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) );  /* GENERATE e1 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e1 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* CREATE EVENT INSTANCE e2( i1:+ ( a + b ) ) TO self */
  e2 = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent6c );
      e2->p_i1 = +( a + b );  /* GENERATE e2 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e2 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e2( i1:+ ( 1 + 2 ) ) TO self */
  e2 = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent6c );
      e2->p_i1 = +( 1 + 2 );  /* GENERATE e2 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e2 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e2( i1:+ ( PARAM.i1 + PARAM.i2 ) ) TO self */
  e2 = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent6c );
      e2->p_i1 = +( rcvd_evt->p_i1 + rcvd_evt->p_i2 );  /* GENERATE e2 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e2 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e2( i1:+ ( self.i1 + self.i2 ) ) TO self */
  e2 = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent6c );
      e2->p_i1 = +( self->i1 + self->i2 );  /* GENERATE e2 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e2 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* CREATE EVENT INSTANCE e2( i1:+ ( tce.i1 + tce.i2 ) ) TO self */
  e2 = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent6c );
      e2->p_i1 = +( tce->i1 + tce->i2 );  /* GENERATE e2 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e2 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* CREATE EVENT INSTANCE e2( i1:+ ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) ) ) TO self */
  e2 = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent6c );
      e2->p_i1 = +( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) );  /* GENERATE e2 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e2 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e2( i1:( TRAN::ret_int(5) + TRAN::ret_int(- 2) ) ) TO self */
  e2 = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent6c );
      e2->p_i1 = ( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) );  /* GENERATE e2 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e2 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE EVENT INSTANCE e2( i1:+ ( TRAN::ret_int() + TRAN::ret_int(6) ) ) TO self */
  e2 = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( (void *) self, &ex2_TCEevent6c );
      e2->p_i1 = +( ex2_TRAN_op_ret_int(-3) + ex2_TRAN_op_ret_int(6) );  /* GENERATE e2 */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e2 );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* ASSIGN self.ack_count = ack_count */
  self->ack_count = ack_count;
}

/*
 * State 17:  [Count Acks from Bool Event]
 */
static void ex2_TCE_act17( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act17( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent5 * rcvd_evt = (ex2_TCEevent5 *) event;
  /* IF ( ( PARAM.b1 == TRUE ) ) */
  if ( ( rcvd_evt->p_b1 == TRUE ) ) {
    /* LOG::LogSuccess( message:TCE - Count acks from Bool Event ) */
    LOG_LogSuccess( "TCE - Count acks from Bool Event" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Count acks from Bool Event ) */
    LOG_LogFailure( "TCE - Count acks from Bool Event" );
  }
  /* ASSIGN self.ack_count = ( self.ack_count - 1 ) */
  self->ack_count = ( self->ack_count - 1 );
  /* IF ( ( self.ack_count == 0 ) ) */
  if ( ( self->ack_count == 0 ) ) {
    /* GENERATE TCE4:next test with supp data(b2:FALSE, i1:1, i2:2, r1:1.0, r2:2.0, b1:TRUE) TO self */
    { ex2_TCEevent4 * e = (ex2_TCEevent4 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent4c );
      e->p_b2 = FALSE;      e->p_i1 = 1;      e->p_i2 = 2;      e->p_r1 = 1.0;      e->p_r2 = 2.0;      e->p_b1 = TRUE;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
}

/*
 * State 18:  [Count Acks from Int Event]
 */
static void ex2_TCE_act18( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act18( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent6 * rcvd_evt = (ex2_TCEevent6 *) event;
  /* IF ( ( PARAM.i1 == 3 ) ) */
  if ( ( rcvd_evt->p_i1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Count acks from Int Event ) */
    LOG_LogSuccess( "TCE - Count acks from Int Event" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Count acks from Int Event ) */
    LOG_LogFailure( "TCE - Count acks from Int Event" );
  }
  /* ASSIGN self.ack_count = ( self.ack_count - 1 ) */
  self->ack_count = ( self->ack_count - 1 );
  /* IF ( ( self.ack_count == 0 ) ) */
  if ( ( self->ack_count == 0 ) ) {
    /* GENERATE TCE4:next test with supp data(b2:FALSE, i1:1, i2:2, r1:1.0, r2:2.0, b1:TRUE) TO self */
    { ex2_TCEevent4 * e = (ex2_TCEevent4 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent4c );
      e->p_b2 = FALSE;      e->p_i1 = 1;      e->p_i2 = 2;      e->p_r1 = 1.0;      e->p_r2 = 2.0;      e->p_b1 = TRUE;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
}

/*
 * State 19:  [More Expressions within Parms]
 */
static void ex2_TCE_act19( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act19( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent4 * rcvd_evt = (ex2_TCEevent4 *) event;
  i_t ack_count;i_t a;i_t b;bool bv;ex2_TCE * t2;ex2_TCE * t3;ex2_TCE * tce=0;ex2_NOI * no_instances=0;Escher_ObjectSet_s tces_space={0}; Escher_ObjectSet_s * tces = &tces_space;
  /* ASSIGN ack_count = 0 */
  ack_count = 0;
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* GENERATE TCE5:bool event(b1:not ( ( a == b ) and ( b == a ) )) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( ( a == b ) && ( b == a ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE5:bool event(b1:not ( ( 1 == 2 ) and ( 3 == 3 ) )) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( ( 1 == 2 ) && ( 3 == 3 ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE5:bool event(b1:not ( ( PARAM.b1 == PARAM.b2 ) and ( PARAM.b1 == PARAM.b1 ) )) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( ( rcvd_evt->p_b1 == rcvd_evt->p_b2 ) && ( rcvd_evt->p_b1 == rcvd_evt->p_b1 ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE5:bool event(b1:not ( ( self.b1 == self.b2 ) and ( self.b1 == self.b1 ) )) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( ( self->b1 == self->b2 ) && ( self->b1 == self->b1 ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* GENERATE TCE5:bool event(b1:not ( ( tce.b1 == tce.b2 ) and ( tce.b1 == tce.b1 ) )) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( ( tce->b1 == tce->b2 ) && ( tce->b1 == tce->b1 ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* GENERATE TCE5:bool event(b1:not ( ( not_empty tce and empty no_instances ) and ( empty tce and not_empty no_instances ) )) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( ( ( 0 != tce ) && ( 0 == no_instances ) ) && ( ( 0 == tce ) && ( 0 != no_instances ) ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE5:bool event(b1:not ( ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(FALSE) ) and ( TRAN::ret_bool(TRUE) and TRAN::ret_bool(TRUE) ) )) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(FALSE) ) && ( ex2_TRAN_op_ret_bool(TRUE) && ex2_TRAN_op_ret_bool(TRUE) ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE5:bool event(b1:not ( ( BR::ret_bool(TRUE) and BR::ret_bool(FALSE) ) and ( BR::ret_bool(TRUE) and BR::ret_bool(TRUE) ) )) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( FALSE ) ) && ( ex2_BR_ret_bool( TRUE ) && ex2_BR_ret_bool( TRUE ) ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* ASSIGN a = 1 */
  a = 1;
  /* ASSIGN b = 2 */
  b = 2;
  /* GENERATE TCE6:int event(i1:+ ( a + b )) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +( a + b );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE6:int event(i1:+ ( 1 + 2 )) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +( 1 + 2 );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE6:int event(i1:+ ( PARAM.i1 + PARAM.i2 )) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +( rcvd_evt->p_i1 + rcvd_evt->p_i2 );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE6:int event(i1:+ ( self.i1 + self.i2 )) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +( self->i1 + self->i2 );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* GENERATE TCE6:int event(i1:+ ( tce.i1 + tce.i2 )) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +( tce->i1 + tce->i2 );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* GENERATE TCE6:int event(i1:+ ( cardinality tce + ( 2 * ( cardinality no_instances + 1 ) ) )) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +( ( 0 != tce ) + ( 2 * ( ( 0 != no_instances ) + 1 ) ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE6:int event(i1:( TRAN::ret_int(5) + TRAN::ret_int(- 2) )) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = ( ex2_TRAN_op_ret_int(5) + ex2_TRAN_op_ret_int(-2) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE6:int event(i1:+ ( BR::ret_int() + BR::ret_int(6) )) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +( ex2_BR_ret_int( -3 ) + ex2_BR_ret_int( 6 ) );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* ASSIGN bv = FALSE */
  bv = FALSE;
  /* GENERATE TCE5:bool event(b1:not bv) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !bv;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE5:bool event(b1:not FALSE) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !FALSE;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE5:bool event(b1:not PARAM.b2) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !rcvd_evt->p_b2;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE5:bool event(b1:not self.b2) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !self->b2;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* GENERATE TCE5:bool event(b1:not tce.b2) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !tce->b2;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* SELECT any tce FROM INSTANCES OF TCE */
  tce = (ex2_TCE *) Escher_SetGetAny( &pG_ex2_TCE_extent.active );
  /* SELECT any no_instances FROM INSTANCES OF NOI */
  no_instances = (ex2_NOI *) Escher_SetGetAny( &pG_ex2_NOI_extent.active );
  /* GENERATE TCE5:bool event(b1:not empty tce) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( 0 == tce );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* GENERATE TCE5:bool event(b1:not not_empty no_instances) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !( 0 != no_instances );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* GENERATE TCE5:bool event(b1:empty no_instances) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = ( 0 == no_instances );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* GENERATE TCE5:bool event(b1:not_empty tce) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = ( 0 != tce );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 4 ) */
  ack_count = ( ack_count + 4 );
  /* GENERATE TCE5:bool event(b1:not TRAN::ret_bool(FALSE)) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !ex2_TRAN_op_ret_bool(FALSE);
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* GENERATE TCE5:bool event(TRAN::ret_bool(b:TRUE)) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = ex2_TRAN_op_ret_bool(TRUE);
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 2 ) */
  ack_count = ( ack_count + 2 );
  /* GENERATE TCE5:bool event(b1:not BR::ret_bool(FALSE)) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = !ex2_BR_ret_bool( FALSE );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* GENERATE TCE5:bool event(BR::ret_bool(b:TRUE)) TO self */
  { ex2_TCEevent5 * e = (ex2_TCEevent5 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent5c );
    e->p_b1 = ex2_BR_ret_bool( TRUE );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 2 ) */
  ack_count = ( ack_count + 2 );
  /* ASSIGN b = 3 */
  b = 3;
  /* GENERATE TCE6:int event(i1:+ b) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +b;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE6:int event(i1:+ 3) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +3;
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* CREATE OBJECT INSTANCE t2 OF TCE */
  t2 = (ex2_TCE *) Escher_CreateInstance( ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER );
  t2->tce_id = (Escher_UniqueID_t) t2;
  /* CREATE OBJECT INSTANCE t3 OF TCE */
  t3 = (ex2_TCE *) Escher_CreateInstance( ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER );
  t3->tce_id = (Escher_UniqueID_t) t3;
  /* SELECT many tces FROM INSTANCES OF TCE */
  Escher_CopySet( tces, &pG_ex2_TCE_extent.active );
  /* GENERATE TCE6:int event(i1:+ cardinality tces) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +Escher_SetCardinality( tces );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* DELETE OBJECT INSTANCE t2 */
  if ( 0 == t2 ) {
    XTUML_EMPTY_HANDLE_TRACE( "TCE", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) t2, ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE t3 */
  if ( 0 == t3 ) {
    XTUML_EMPTY_HANDLE_TRACE( "TCE", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) t3, ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER );
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE6:int event(i1:+ TRAN::ret_int(3)) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +ex2_TRAN_op_ret_int(3);
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* GENERATE TCE6:int event(i1:+ BR::ret_int(3)) TO self */
  { ex2_TCEevent6 * e = (ex2_TCEevent6 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent6c );
    e->p_i1 = +ex2_BR_ret_int( 3 );
    Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* ASSIGN ack_count = ( ack_count + 1 ) */
  ack_count = ( ack_count + 1 );
  /* ASSIGN self.ack_count = ack_count */
  self->ack_count = ack_count;
  Escher_ClearSet( tces );
}

/*
 * State 20:  [Bool Event Acks]
 */
static void ex2_TCE_act20( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act20( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent5 * rcvd_evt = (ex2_TCEevent5 *) event;
  /* IF ( ( PARAM.b1 == TRUE ) ) */
  if ( ( rcvd_evt->p_b1 == TRUE ) ) {
    /* LOG::LogSuccess( message:TCE - Count acks from Bool Event ) */
    LOG_LogSuccess( "TCE - Count acks from Bool Event" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Count acks from Bool Event ) */
    LOG_LogFailure( "TCE - Count acks from Bool Event" );
  }
  /* ASSIGN self.ack_count = ( self.ack_count - 1 ) */
  self->ack_count = ( self->ack_count - 1 );
  /* IF ( ( self.ack_count == 0 ) ) */
  if ( ( self->ack_count == 0 ) ) {
    /* GENERATE TCE4:next test with supp data(b2:FALSE, i1:1, i2:2, r1:1.0, r2:2.0, b1:TRUE) TO self */
    { ex2_TCEevent4 * e = (ex2_TCEevent4 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent4c );
      e->p_b2 = FALSE;      e->p_i1 = 1;      e->p_i2 = 2;      e->p_r1 = 1.0;      e->p_r2 = 2.0;      e->p_b1 = TRUE;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
}

/*
 * State 21:  [Int Event Acks]
 */
static void ex2_TCE_act21( ex2_TCE *, const Escher_xtUMLEvent_t * const );
static void
ex2_TCE_act21( ex2_TCE * self, const Escher_xtUMLEvent_t * const event )
{
  ex2_TCEevent6 * rcvd_evt = (ex2_TCEevent6 *) event;
  /* IF ( ( PARAM.i1 == 3 ) ) */
  if ( ( rcvd_evt->p_i1 == 3 ) ) {
    /* LOG::LogSuccess( message:TCE - Count acks from Int Event ) */
    LOG_LogSuccess( "TCE - Count acks from Int Event" );
  }
  else {
    /* LOG::LogFailure( message:TCE - Count acks from Int Event ) */
    LOG_LogFailure( "TCE - Count acks from Int Event" );
  }
  /* ASSIGN self.ack_count = ( self.ack_count - 1 ) */
  self->ack_count = ( self->ack_count - 1 );
  /* IF ( ( self.ack_count == 0 ) ) */
  if ( ( self->ack_count == 0 ) ) {
    /* GENERATE TCE4:next test with supp data(b2:FALSE, i1:1, i2:2, r1:1.0, r2:2.0, b1:TRUE) TO self */
    { ex2_TCEevent4 * e = (ex2_TCEevent4 *) Escher_NewxtUMLEvent( self, &ex2_TCEevent4c );
      e->p_b2 = FALSE;      e->p_i1 = 1;      e->p_i2 = 2;      e->p_r1 = 1.0;      e->p_r2 = 2.0;      e->p_b1 = TRUE;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
}

const Escher_xtUMLEventConstant_t ex2_TCEevent1c = {
  ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER, EX2_TCEEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_TCEevent2c = {
  ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER, EX2_TCEEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_TCEevent3c = {
  ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER, EX2_TCEEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_TCEevent4c = {
  ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER, EX2_TCEEVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_TCEevent5c = {
  ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER, EX2_TCEEVENT5NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t ex2_TCEevent6c = {
  ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER, EX2_TCEEVENT6NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t ex2_TCE_StateEventMatrix[ 20 + 1 ][ 6 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  ex2_TCE_STATE_1 (Compound Expressions Using Constants) */
  { ex2_TCE_STATE_1, ex2_TCE_STATE_2, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 2:  ex2_TCE_STATE_2 (Compound Expressions Using Local Variables) */
  { EVENT_IS_IGNORED, ex2_TCE_STATE_3, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 3:  ex2_TCE_STATE_3 (Compound Expressions Using Object Attributes) */
  { EVENT_IS_IGNORED, EVENT_IS_IGNORED, ex2_TCE_STATE_4, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 4:  ex2_TCE_STATE_4 (Compound Expressions Using Supplemental Data Items Received From An Event) */
  { EVENT_IS_IGNORED, ex2_TCE_STATE_5, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 5:  ex2_TCE_STATE_5 (Compound Expressions Using Function Invocations) */
  { EVENT_IS_IGNORED, ex2_TCE_STATE_6, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 6:  ex2_TCE_STATE_6 (Compound Expressions Using Transformer Invocations) */
  { EVENT_IS_IGNORED, ex2_TCE_STATE_7, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 7:  ex2_TCE_STATE_7 (Compound Expressions Using Bridge Invocations) */
  { EVENT_IS_IGNORED, ex2_TCE_STATE_8, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 8:  ex2_TCE_STATE_8 (Order of Operations) */
  { EVENT_IS_IGNORED, ex2_TCE_STATE_9, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 9:  ex2_TCE_STATE_9 (Stress Limits of Compound Expressions) */
  { EVENT_IS_IGNORED, ex2_TCE_STATE_11, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 10:  ex2_TCE_STATE_11 (Bridges Within Expressions) */
  { EVENT_IS_IGNORED, ex2_TCE_STATE_12, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 11:  ex2_TCE_STATE_12 (Transforms Within Expressions) */
  { EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, ex2_TCE_STATE_14, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 12:  ex2_TCE_STATE_13 (Combinine Real and Integer Data Types) */
  { EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 13:  ex2_TCE_STATE_14 (Unary Ops) */
  { EVENT_CANT_HAPPEN, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, ex2_TCE_STATE_15, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 14:  ex2_TCE_STATE_15 (If Expressions) */
  { EVENT_CANT_HAPPEN, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, ex2_TCE_STATE_16, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 15:  ex2_TCE_STATE_16 (Expressions Within Parameters) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, ex2_TCE_STATE_17, ex2_TCE_STATE_18 },
  /* row 16:  ex2_TCE_STATE_17 (Count Acks from Bool Event) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, ex2_TCE_STATE_19, ex2_TCE_STATE_17, ex2_TCE_STATE_18 },
  /* row 17:  ex2_TCE_STATE_18 (Count Acks from Int Event) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, ex2_TCE_STATE_19, ex2_TCE_STATE_17, ex2_TCE_STATE_18 },
  /* row 18:  ex2_TCE_STATE_19 (More Expressions within Parms) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, ex2_TCE_STATE_20, ex2_TCE_STATE_21 },
  /* row 19:  ex2_TCE_STATE_20 (Bool Event Acks) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, ex2_TCE_STATE_13, ex2_TCE_STATE_20, ex2_TCE_STATE_21 },
  /* row 20:  ex2_TCE_STATE_21 (Int Event Acks) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, ex2_TCE_STATE_13, ex2_TCE_STATE_20, ex2_TCE_STATE_21 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t ex2_TCE_acts[ 21 ] = {
    (StateAction_t) 0,
    (StateAction_t) ex2_TCE_act1,  /* Compound Expressions Using Constants */
    (StateAction_t) ex2_TCE_act2,  /* Compound Expressions Using Local Variables */
    (StateAction_t) ex2_TCE_act3,  /* Compound Expressions Using Object Attributes */
    (StateAction_t) ex2_TCE_act4,  /* Compound Expressions Using Supplemental Data Items Received From An Event */
    (StateAction_t) ex2_TCE_act5,  /* Compound Expressions Using Function Invocations */
    (StateAction_t) ex2_TCE_act6,  /* Compound Expressions Using Transformer Invocations */
    (StateAction_t) ex2_TCE_act7,  /* Compound Expressions Using Bridge Invocations */
    (StateAction_t) ex2_TCE_act8,  /* Order of Operations */
    (StateAction_t) ex2_TCE_act9,  /* Stress Limits of Compound Expressions */
    (StateAction_t) ex2_TCE_act11,  /* Bridges Within Expressions */
    (StateAction_t) ex2_TCE_act12,  /* Transforms Within Expressions */
    (StateAction_t) ex2_TCE_act13,  /* Combinine Real and Integer Data Types */
    (StateAction_t) ex2_TCE_act14,  /* Unary Ops */
    (StateAction_t) ex2_TCE_act15,  /* If Expressions */
    (StateAction_t) ex2_TCE_act16,  /* Expressions Within Parameters */
    (StateAction_t) ex2_TCE_act17,  /* Count Acks from Bool Event */
    (StateAction_t) ex2_TCE_act18,  /* Count Acks from Int Event */
    (StateAction_t) ex2_TCE_act19,  /* More Expressions within Parms */
    (StateAction_t) ex2_TCE_act20,  /* Bool Event Acks */
    (StateAction_t) ex2_TCE_act21  /* Int Event Acks */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 21 ] = {
    "",
    "Compound Expressions Using Constants",
    "Compound Expressions Using Local Variables",
    "Compound Expressions Using Object Attributes",
    "Compound Expressions Using Supplemental Data Items Received From An Event",
    "Compound Expressions Using Function Invocations",
    "Compound Expressions Using Transformer Invocations",
    "Compound Expressions Using Bridge Invocations",
    "Order of Operations",
    "Stress Limits of Compound Expressions",
    "Bridges Within Expressions",
    "Transforms Within Expressions",
    "Combinine Real and Integer Data Types",
    "Unary Ops",
    "If Expressions",
    "Expressions Within Parameters",
    "Count Acks from Bool Event",
    "Count Acks from Int Event",
    "More Expressions within Parms",
    "Bool Event Acks",
    "Int Event Acks"
  };

/*
 * instance state machine event dispatching
 */
void
ex2_TCE_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 20 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = ex2_TCE_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 20 ) {
        STATE_TXN_START_TRACE( "TCE", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *ex2_TCE_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "TCE", next_state, state_name_strings[ next_state ] );

        /* Self deletion state transition? */
        if ( next_state == ex2_TCE_STATE_13 ) {          Escher_DeleteInstance( instance, ex2_DOMAIN_ID, ex2_TCE_CLASS_NUMBER );
        } else {
          instance->current_state = next_state;
        }
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "TCE", current_state );
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
          STATE_TXN_IG_TRACE( "TCE", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


