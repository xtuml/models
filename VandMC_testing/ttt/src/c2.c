/*----------------------------------------------------------------------------
 * File:  c2.c
 *
 * UML Component Port Messages
 * Component/Module Name:  c2
 *
 * 
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "c1.h"
#include "c3.h"
#include "c2_classes.h"

/*
 * Interface:  i1
 * Provided Port:  catch
 * To Provider Message:  s1
 */
void
c2_catch_s1( const i_t p_sp1)
{
  /* <message compname="c2" compnum="1" portname="catch" portnum="0" msgname="s1" msgnum="0"/> */
  COMP_MSG_START_TRACE( "%d", 1, 0, 0, p_sp1 );
  { c2_TAC_A_CBevent1 * e = (c2_TAC_A_CBevent1 *) Escher_NewxtUMLEvent( (void *) 0, &c2_TAC_A_CBevent1c );
    e->p_sp1 = p_sp1;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }

}

/*
 * Interface:  i1
 * Provided Port:  catch
 * To Provider Message:  s2
 */
void
c2_catch_s2()
{
  /* <message compname="c2" compnum="1" portname="catch" portnum="0" msgname="s2" msgnum="1"/> */
  COMP_MSG_START_TRACE( "", 1, 0, 1 );
}

/*
 * Interface:  i2
 * Provided Port:  burn
 * To Provider Message:  o2
 */
i_t
c2_burn_o2( const i_t p_op2)
{
  /* <message compname="c2" compnum="1" portname="burn" portnum="1" msgname="o2" msgnum="0"/> */
  COMP_MSG_START_TRACE( "%d", 1, 1, 0, p_op2 );
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; i_t p; 
  /* ASSIGN s = 'tac burn' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tac burn'" );
  Escher_strcpy( s, "tac burn" );
  /* LOG::LogInfo( message:s ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:s )" );
  LOG_LogInfo( s );
  /* ASSIGN p = PARAM.op2 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN p = PARAM.op2" );
  p = p_op2;
  /* IF ( ( 2 != PARAM.op2 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 2 != PARAM.op2 ) )" );
  if ( ( 2 != p_op2 ) ) {
    /* LOG::LogFailure( message:'tac burn did not get 2' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'tac burn did not get 2' )" );
    LOG_LogFailure( "tac burn did not get 2" );
  }
  else {
    /* RETURN ( lase::o2(3) + 1 ) */
    XTUML_OAL_STMT_TRACE( 2, "RETURN ( lase::o2(3) + 1 )" );
    return ( c2_lase_o2( 3 ) + 1 );
  }
  /* RETURN 0 */
  XTUML_OAL_STMT_TRACE( 1, "RETURN 0" );
  return 0;
}

/*
 * Interface:  i2
 * Provided Port:  burn
 * To Provider Message:  o3
 */
void
c2_burn_o3()
{
  /* <message compname="c2" compnum="1" portname="burn" portnum="1" msgname="o3" msgnum="1"/> */
  COMP_MSG_START_TRACE( "", 1, 1, 1 );
}

/*
 * Interface:  i2
 * Provided Port:  burn
 * To Provider Message:  o4
 */
i_t
c2_burn_o4()
{
  /* <message compname="c2" compnum="1" portname="burn" portnum="1" msgname="o4" msgnum="2"/> */
  COMP_MSG_START_TRACE( "", 1, 1, 2 );
  /* RETURN 999 */
  XTUML_OAL_STMT_TRACE( 1, "RETURN 999" );
  return 999;
}

/*
 * Interface:  i1
 * Required Port:  toss
 * To Provider Message:  s1
 */
void
c2_toss_s1( const i_t p_sp1)
{
  /* <message compname="c2" compnum="1" portname="toss" portnum="2" msgname="s1" msgnum="0"/> */
  COMP_MSG_START_TRACE( "%d", 1, 2, 0, p_sp1 );
  c3_catch_s1(  p_sp1 );
}

/*
 * Interface:  i1
 * Required Port:  toss
 * To Provider Message:  s2
 */
void
c2_toss_s2()
{
  /* <message compname="c2" compnum="1" portname="toss" portnum="2" msgname="s2" msgnum="1"/> */
  COMP_MSG_START_TRACE( "", 1, 2, 1 );
  c3_catch_s2();
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o2
 */
i_t
c2_lase_o2( const i_t p_op2)
{
  /* <message compname="c2" compnum="1" portname="lase" portnum="3" msgname="o2" msgnum="0"/> */
  COMP_MSG_START_TRACE( "%d", 1, 3, 0, p_op2 );
return   c1_burn_o2(  p_op2 );
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o3
 */
void
c2_lase_o3()
{
  /* <message compname="c2" compnum="1" portname="lase" portnum="3" msgname="o3" msgnum="1"/> */
  COMP_MSG_START_TRACE( "", 1, 3, 1 );
  c1_burn_o3();
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o4
 */
i_t
c2_lase_o4()
{
  /* <message compname="c2" compnum="1" portname="lase" portnum="3" msgname="o4" msgnum="2"/> */
  COMP_MSG_START_TRACE( "", 1, 3, 2 );
return   c1_burn_o4();
}

/*
 * UML Domain Functions (Synchronous Services)
 */

#if c2_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const c2_class_info[ c2_MAX_CLASS_NUMBERS ] = {
  c2_CLASS_INFO_INIT
};
#endif

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t c2_EventDispatcher[ c2_STATE_MODELS ] = {
  c2_class_dispatchers
};

void c2_execute_initialization()
{
}
