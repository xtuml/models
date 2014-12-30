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
c_t *
stringtest_buffer_op_scmp( c_t p_s1[ESCHER_SYS_MAX_STRING_LEN], c_t p_s2[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t s2[ESCHER_SYS_MAX_STRING_LEN];c_t s1[ESCHER_SYS_MAX_STRING_LEN];c_t sum[ESCHER_SYS_MAX_STRING_LEN];c_t jstr2[ESCHER_SYS_MAX_STRING_LEN];c_t jstr1[ESCHER_SYS_MAX_STRING_LEN];
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
    /* RETURN s1 */
    {c_t * xtumlOALrv = s1;
    return xtumlOALrv;}
  }
  else {
    /* LOG::LogFailure( message:FAIL ) */
    LOG_LogFailure( "FAIL" );
    /* WHILE ( TRUE ) */
    while ( TRUE ) {
    }
    /* RETURN junk */
    {c_t * xtumlOALrv = "junk";
    return xtumlOALrv;}
  }

}


/*
 * RELATE host TO buffer ACROSS R1
 */
void
stringtest_buffer_R1_Link( stringtest_host * part, stringtest_buffer * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "buffer", "stringtest_buffer_R1_Link" );
    return;
  }
  /* Note:  buffer->host[R1] not navigated */
  /* Note:  host->buffer[R1] not navigated */
}

/*
 * RELATE device TO buffer ACROSS R2
 */
void
stringtest_buffer_R2_Link( stringtest_device * part, stringtest_buffer * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "buffer", "stringtest_buffer_R2_Link" );
    return;
  }
  /* Note:  buffer->device[R2] not navigated */
  /* Note:  device->buffer[R2] not navigated */
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


