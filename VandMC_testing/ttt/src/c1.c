/*----------------------------------------------------------------------------
 * File:  c1.c
 *
 * UML Component Port Messages
 * Component/Module Name:  c1
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "c1_LOG_bridge.h"
#include "c3.h"
#include "c2.h"
#include "c1_classes.h"

/*
 * Interface:  i1
 * Provided Port:  catch
 * To Provider Message:  s1
 */
void
c1_catch_s1( i_t p_sp1)
{
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; 
  /* ASSIGN s = 'tic catch' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tic catch'" );
  Escher_strcpy( s, "tic catch" );
  /* IF ( ( 3 != PARAM.sp1 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 3 != PARAM.sp1 ) )" );
  if ( ( 3 != p_sp1 ) ) {
    /* LOG::LogFailure( message:'tic catch did not get 3' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'tic catch did not get 3' )" );
    c1_LOG_LogFailure( "tic catch did not get 3" );
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
      c1_LOG_LogFailure( "tic catch did not get 3 returned from lase" );
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
c1_burn_o2( i_t p_op2)
{
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; 
  /* ASSIGN s = 'tic burn' */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN s = 'tic burn'" );
  Escher_strcpy( s, "tic burn" );
  /* LOG::LogInfo( message:s ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:s )" );
  c1_LOG_LogInfo( s );
  /* IF ( ( 3 != PARAM.op2 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( 3 != PARAM.op2 ) )" );
  if ( ( 3 != p_op2 ) ) {
    /* LOG::LogFailure( message:'tic burn did not get 3' ) */
    XTUML_OAL_STMT_TRACE( 2, "LOG::LogFailure( message:'tic burn did not get 3' )" );
    c1_LOG_LogFailure( "tic burn did not get 3" );
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
c1_toss_s1( i_t p_sp1)
{
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
  c2_catch_s2();
}

/*
 * Interface:  i2
 * Required Port:  lase
 * To Provider Message:  o2
 */
i_t
c1_lase_o2( i_t p_op2)
{
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
  c_t s[ESCHER_SYS_MAX_STRING_LEN]; 
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


void c1_execute_initialization()
{
  /*
   * Initialization Function:  test
   * Component:  c1
   */
  c1_test();

}
