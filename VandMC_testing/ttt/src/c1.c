/*----------------------------------------------------------------------------
 * File:  c1.c
 *
 * UML Component Port Messages
 * Component/Module Name:  c1
 *
 * 
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "c3.h"
#include "c2.h"
#include "c1_classes.h"

/*
 * Interface:  i1
 * Provided Port:  catch
 * To Provider Message:  s1
 */
void
c1_catch_s1( const i_t p_sp1)
{
  /* <message compname="c1" compnum="0" portname="catch" portnum="0" msgname="s1" msgnum="0"/> */
  COMP_MSG_START_TRACE( "%d", 0, 0, 0, p_sp1 );
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; c1_PONG * pong=0; 
  /* ASSIGN s = 'tic catch' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tic catch'" );
  Escher_strcpy( s, "tic catch" );
  /* SELECT any pong FROM INSTANCES OF PONG */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any pong FROM INSTANCES OF PONG" );
  pong = (c1_PONG *) Escher_SetGetAny( &pG_c1_PONG_extent.active );
  /* GENERATE PONG1:back() TO pong */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE PONG1:back() TO pong" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( pong, &c1_PONGevent1c );
    Escher_SendEvent( e );
  }
  /* IF ( ( 3 != PARAM.sp1 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 3 != PARAM.sp1 ) )" );
  if ( ( 3 != p_sp1 ) ) {
    /* LOG::LogFailure( message:'tic catch did not get 3' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'tic catch did not get 3' )" );
    LOG_LogFailure( "tic catch did not get 3" );
  }
  else {
    i_t r; 
    /* ASSIGN r = lase::o2(op2:1) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN r = lase::o2(op2:1)" );
    r = c1_lase_o2( 1 );
    /* IF ( ( 3 != r ) ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( ( 3 != r ) )" );
    if ( ( 3 != r ) ) {
      /* LOG::LogFailure( message:'tic catch did not get 3 returned from lase' ) */
      XTUML_OAL_STMT_TRACE( 3, "LOG::LogFailure( message:'tic catch did not get 3 returned from lase' )" );
      LOG_LogFailure( "tic catch did not get 3 returned from lase" );
    }
  }
}

/*
 * Interface:  i1
 * Provided Port:  catch
 * To Provider Message:  s2
 */
void
c1_catch_s2()
{
  /* <message compname="c1" compnum="0" portname="catch" portnum="0" msgname="s2" msgnum="1"/> */
  COMP_MSG_START_TRACE( "", 0, 0, 1 );
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; i_t r; 
  /* ASSIGN s = 'tic catch s2' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tic catch s2'" );
  Escher_strcpy( s, "tic catch s2" );
  /* ASSIGN r = lase::o2(op2:1) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN r = lase::o2(op2:1)" );
  r = c1_lase_o2( 1 );
}

/*
 * Interface:  i2
 * Provided Port:  burn
 * To Provider Message:  o2
 */
i_t
c1_burn_o2( const i_t p_op2)
{
  /* <message compname="c1" compnum="0" portname="burn" portnum="1" msgname="o2" msgnum="0"/> */
  COMP_MSG_START_TRACE( "%d", 0, 1, 0, p_op2 );
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; 
  /* ASSIGN s = 'tic burn' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tic burn'" );
  Escher_strcpy( s, "tic burn" );
  /* LOG::LogInfo( message:s ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:s )" );
  LOG_LogInfo( s );
  /* IF ( ( 3 != PARAM.op2 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 3 != PARAM.op2 ) )" );
  if ( ( 3 != p_op2 ) ) {
    /* LOG::LogFailure( message:'tic burn did not get 3' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'tic burn did not get 3' )" );
    LOG_LogFailure( "tic burn did not get 3" );
  }
  else {
    /*  SEND toss::s1(sp1:1) */
    XTUML_OAL_STMT_TRACE( 2, " SEND toss::s1(sp1:1)" );
    c1_toss_s1( 1 );
  }
  /* RETURN 1 */
  XTUML_OAL_STMT_TRACE( 1, "RETURN 1" );
  return 1;
}

/*
 * Interface:  i2
 * Provided Port:  burn
 * To Provider Message:  o3
 */
void
c1_burn_o3()
{
  /* <message compname="c1" compnum="0" portname="burn" portnum="1" msgname="o3" msgnum="1"/> */
  COMP_MSG_START_TRACE( "", 0, 1, 1 );
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; 
  /* ASSIGN s = 'tic burn o3' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tic burn o3'" );
  Escher_strcpy( s, "tic burn o3" );
  /*  SEND toss::s1(sp1:1) */
  XTUML_OAL_STMT_TRACE( 1, " SEND toss::s1(sp1:1)" );
  c1_toss_s1( 1 );
}

/*
 * Interface:  i2
 * Provided Port:  burn
 * To Provider Message:  o4
 */
i_t
c1_burn_o4()
{
  /* <message compname="c1" compnum="0" portname="burn" portnum="1" msgname="o4" msgnum="2"/> */
  COMP_MSG_START_TRACE( "", 0, 1, 2 );
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; 
  /* ASSIGN s = 'tic.burn::o4' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tic.burn::o4'" );
  Escher_strcpy( s, "tic.burn::o4" );
  /* RETURN 1 */
  XTUML_OAL_STMT_TRACE( 1, "RETURN 1" );
  return 1;
}

/*
 * Interface:  i1
 * Required Port:  toss
 * To Provider Message:  s1
 */
void
c1_toss_s1( const i_t p_sp1)
{
  /* <message compname="c1" compnum="0" portname="toss" portnum="2" msgname="s1" msgnum="0"/> */
  COMP_MSG_START_TRACE( "%d", 0, 2, 0, p_sp1 );
  c2_catch_s1(  p_sp1 );
}

/*
 * Interface:  i1
 * Required Port:  toss
 * To Provider Message:  s2
 */
void
c1_toss_s2()
{
  /* <message compname="c1" compnum="0" portname="toss" portnum="2" msgname="s2" msgnum="1"/> */
  COMP_MSG_START_TRACE( "", 0, 2, 1 );
  c2_catch_s2();
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o2
 */
i_t
c1_lase_o2( const i_t p_op2)
{
  /* <message compname="c1" compnum="0" portname="lase" portnum="3" msgname="o2" msgnum="0"/> */
  COMP_MSG_START_TRACE( "%d", 0, 3, 0, p_op2 );
return   c3_burn_o2(  p_op2 );
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o3
 */
void
c1_lase_o3()
{
  /* <message compname="c1" compnum="0" portname="lase" portnum="3" msgname="o3" msgnum="1"/> */
  COMP_MSG_START_TRACE( "", 0, 3, 1 );
  c3_burn_o3();
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o4
 */
i_t
c1_lase_o4()
{
  /* <message compname="c1" compnum="0" portname="lase" portnum="3" msgname="o4" msgnum="2"/> */
  COMP_MSG_START_TRACE( "", 0, 3, 2 );
return   c3_burn_o4();
}

/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  setup
 */
void
c1_setup()
{

}


/*
 * Domain Function:  test
 */
void
c1_test()
{
  c1_PING * ping; c1_PONG * pong; c_t s[ESCHER_SYS_MAX_STRING_LEN]; 
  /* CREATE OBJECT INSTANCE ping OF PING */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE ping OF PING" );
  ping = (c1_PING *) Escher_CreateInstance( c1_DOMAIN_ID, c1_PING_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE pong OF PONG */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE pong OF PONG" );
  pong = (c1_PONG *) Escher_CreateInstance( c1_DOMAIN_ID, c1_PONG_CLASS_NUMBER );
  /* RELATE ping TO pong ACROSS R1 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE ping TO pong ACROSS R1" );
  c1_PING_R1_Link( pong, ping );
  /* ASSIGN ping.i = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN ping.i = 0" );
  ping->i = 0;
  /* ASSIGN pong.s = 'pong' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN pong.s = 'pong'" );
  Escher_strcpy( pong->s, "pong" );
  /* ASSIGN s = 'tic function test' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tic function test'" );
  Escher_strcpy( s, "tic function test" );
  /*  SEND toss::s1(sp1:1) */
  XTUML_OAL_STMT_TRACE( 1, " SEND toss::s1(sp1:1)" );
  c1_toss_s1( 1 );

}

#if c1_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const c1_class_info[ c1_MAX_CLASS_NUMBERS ] = {
  c1_CLASS_INFO_INIT
};
#endif

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t c1_EventDispatcher[ c1_STATE_MODELS ] = {
  c1_class_dispatchers
};

void c1_execute_initialization()
{
  /*
   * Initialization Function:  test
   * Component:  c1
   */
  c1_test();

}
