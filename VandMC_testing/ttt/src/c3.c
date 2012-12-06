/*----------------------------------------------------------------------------
 * File:  c3.c
 *
 * UML Component Port Messages
 * Component/Module Name:  c3
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "c2.h"
#include "c1.h"
#include "c3_classes.h"

/*
 * Interface:  i1
 * Provided Port:  catch
 * To Provider Message:  s1
 */
void
c3_catch_s1( const i_t p_sp1)
{
COMP_MSG_START_TRACE( "%d", c3_DOMAIN_ID, 0, 0, p_sp1 );
  { c3_TOE_A_CBevent1 * e = (c3_TOE_A_CBevent1 *) Escher_NewxtUMLEvent( (void *) 0, &c3_TOE_A_CBevent1c );
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
c3_catch_s2()
{
COMP_MSG_START_TRACE( "", c3_DOMAIN_ID, 0, 1 );
}

/*
 * Interface:  i2
 * Provided Port:  burn
 * To Provider Message:  o2
 */
i_t
c3_burn_o2( const i_t p_op2)
{
COMP_MSG_START_TRACE( "%d", c3_DOMAIN_ID, 1, 0, p_op2 );
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; i_t p; 
  /* ASSIGN s = 'toe burn' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'toe burn'" );
  Escher_strcpy( s, "toe burn" );
  /* LOG::LogInfo( message:s ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:s )" );
  LOG_LogInfo( s );
  /* ASSIGN p = PARAM.op2 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN p = PARAM.op2" );
  p = p_op2;
  /* IF ( ( 1 != PARAM.op2 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 1 != PARAM.op2 ) )" );
  if ( ( 1 != p_op2 ) ) {
    /* LOG::LogFailure( message:'toe burn did not get 1' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'toe burn did not get 1' )" );
    LOG_LogFailure( "toe burn did not get 1" );
  }
  else {
    /* RETURN ( lase::o2(2) + 1 ) */
    XTUML_OAL_STMT_TRACE( 2, "RETURN ( lase::o2(2) + 1 )" );
    return ( c3_lase_o2( 2 ) + 1 );
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
c3_burn_o3()
{
COMP_MSG_START_TRACE( "", c3_DOMAIN_ID, 1, 1 );
}

/*
 * Interface:  i2
 * Provided Port:  burn
 * To Provider Message:  o4
 */
i_t
c3_burn_o4()
{
COMP_MSG_START_TRACE( "", c3_DOMAIN_ID, 1, 2 );
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
c3_toss_s1( const i_t p_sp1)
{
COMP_MSG_START_TRACE( "%d", c3_DOMAIN_ID, 2, 0, p_sp1 );
  c1_catch_s1(  p_sp1 );
}

/*
 * Interface:  i1
 * Required Port:  toss
 * To Provider Message:  s2
 */
void
c3_toss_s2()
{
COMP_MSG_START_TRACE( "", c3_DOMAIN_ID, 2, 1 );
  c1_catch_s2();
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o2
 */
i_t
c3_lase_o2( const i_t p_op2)
{
COMP_MSG_START_TRACE( "%d", c3_DOMAIN_ID, 3, 0, p_op2 );
return   c2_burn_o2(  p_op2 );
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o3
 */
void
c3_lase_o3()
{
COMP_MSG_START_TRACE( "", c3_DOMAIN_ID, 3, 1 );
  c2_burn_o3();
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o4
 */
i_t
c3_lase_o4()
{
COMP_MSG_START_TRACE( "", c3_DOMAIN_ID, 3, 2 );
return   c2_burn_o4();
}

/*
 * UML Domain Functions (Synchronous Services)
 */

#if c3_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const c3_class_info[ c3_MAX_CLASS_NUMBERS ] = {
  c3_CLASS_INFO_INIT
};
#endif

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t c3_EventDispatcher[ c3_STATE_MODELS ] = {
  c3_class_dispatchers
};

void c3_execute_initialization()
{
}
