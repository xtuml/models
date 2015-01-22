/*----------------------------------------------------------------------------
 * File:  stringtest_buffer_class.c
 *
 * Class:       buffer  (buffer)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "string_return_test_sys_types.h"
#include "LOG_bridge.h"
#include "stringtest_classes.h"

/*
 * class operation:  scmp
 */
xtuml_string
stringtest_buffer_op_scmp( c_t p_s1[ESCHER_SYS_MAX_STRING_LEN], c_t p_s2[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t jstr1[ESCHER_SYS_MAX_STRING_LEN];c_t jstr2[ESCHER_SYS_MAX_STRING_LEN];c_t sum[ESCHER_SYS_MAX_STRING_LEN];c_t s1[ESCHER_SYS_MAX_STRING_LEN];c_t s2[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN jstr1 = hello */
  Escher_strcpy( jstr1, "hello" );
  /* ASSIGN jstr2 = world */
  Escher_strcpy( jstr2, "world" );
  /* ASSIGN sum = ( jstr1 + jstr2 ) */
  Escher_strcpy( sum, Escher_stradd( jstr1, jstr2 ) );
  /* ASSIGN s1 = PARAM.s1 */
  Escher_strcpy( s1, p_s1 );
  /* ASSIGN s2 = PARAM.s2 */
  Escher_strcpy( s2, p_s2 );
  /* IF ( ( s1 == s2 ) ) */
  if ( ( Escher_strcmp( s1, s2 ) == 0 ) ) {
    c_t c[ESCHER_SYS_MAX_STRING_LEN];i_t count;
    /* ASSIGN c =  */
    Escher_strcpy( c, "" );
    /* ASSIGN count = 2000 */
    count = 2000;
    /* WHILE ( ( count > 0 ) ) */
    while ( ( count > 0 ) ) {
      c_t ss1[ESCHER_SYS_MAX_STRING_LEN];c_t ss2[ESCHER_SYS_MAX_STRING_LEN];
      /* ASSIGN count = ( count - 1 ) */
      count = ( count - 1 );
      /* ASSIGN ss1 = s1 */
      Escher_strcpy( ss1, s1 );
      /* ASSIGN ss2 = s2 */
      Escher_strcpy( ss2, s2 );
      /* ASSIGN c = buffer::twist(s1:jstr1, s2:ss2, s3:sum, s4:) */
      Escher_strcpy( c, stringtest_buffer_op_twist(jstr1, ss2, sum, stringtest_buffer_op_justone(ss1, ss2).s).s );
    }
    /* RETURN c */
    {xtuml_string xtumlOALrv;
    Escher_strcpy( xtumlOALrv.s, c );
    return xtumlOALrv;}
  }
  else {
    /* LOG::LogFailure( message:FAIL ) */
    LOG_LogFailure( "FAIL" );
    /* WHILE ( TRUE ) */
    while ( TRUE ) {
    }
    /* RETURN junk */
    {xtuml_string xtumlOALrv;
    Escher_strcpy( xtumlOALrv.s, "junk" );
    return xtumlOALrv;}
  }

}

/*
 * class operation:  twist
 */
xtuml_string
stringtest_buffer_op_twist( c_t p_s1[ESCHER_SYS_MAX_STRING_LEN], c_t p_s2[ESCHER_SYS_MAX_STRING_LEN], c_t p_s3[ESCHER_SYS_MAX_STRING_LEN], c_t p_s4[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t s1[ESCHER_SYS_MAX_STRING_LEN];c_t s2[ESCHER_SYS_MAX_STRING_LEN];c_t s3[ESCHER_SYS_MAX_STRING_LEN];c_t s4[ESCHER_SYS_MAX_STRING_LEN];c_t a[ESCHER_SYS_MAX_STRING_LEN];c_t b[ESCHER_SYS_MAX_STRING_LEN];c_t c[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN s1 = PARAM.s1 */
  Escher_strcpy( s1, p_s1 );
  /* ASSIGN s2 = PARAM.s2 */
  Escher_strcpy( s2, p_s2 );
  /* ASSIGN s3 = PARAM.s3 */
  Escher_strcpy( s3, p_s3 );
  /* ASSIGN s4 = PARAM.s4 */
  Escher_strcpy( s4, p_s4 );
  /* ASSIGN a = ( s1 + s2 ) */
  Escher_strcpy( a, Escher_stradd( s1, s2 ) );
  /* ASSIGN b = ( s3 + s4 ) */
  Escher_strcpy( b, Escher_stradd( s3, s4 ) );
  /* ASSIGN c = ( a + b ) */
  Escher_strcpy( c, Escher_stradd( a, b ) );
  /* RETURN s4 */
  {xtuml_string xtumlOALrv;
  Escher_strcpy( xtumlOALrv.s, s4 );
  return xtumlOALrv;}

}

/*
 * class operation:  simple
 */
xtuml_string
stringtest_buffer_op_simple()
{
  /* RETURN XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX */
  {xtuml_string xtumlOALrv;
  Escher_strcpy( xtumlOALrv.s, "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" );
  return xtumlOALrv;}

}

/*
 * class operation:  justone
 */
xtuml_string
stringtest_buffer_op_justone( c_t p_one[ESCHER_SYS_MAX_STRING_LEN], c_t p_two[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* RETURN PARAM.one */
  {xtuml_string xtumlOALrv;
  Escher_strcpy( xtumlOALrv.s, p_one );
  return xtumlOALrv;}

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      buffer  (buffer)
 * Component:  stringtest
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s stringtest_buffer_container[ stringtest_buffer_MAX_EXTENT_SIZE ];
static stringtest_buffer stringtest_buffer_instances[ stringtest_buffer_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_stringtest_buffer_extent = {
  {0}, {0}, &stringtest_buffer_container[ 0 ],
  (Escher_iHandle_t) &stringtest_buffer_instances,
  sizeof( stringtest_buffer ), 0, stringtest_buffer_MAX_EXTENT_SIZE
  };


