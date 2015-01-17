/*----------------------------------------------------------------------------
 * File:  stringtest_buffer_class.h
 *
 * Class:       buffer  (buffer)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRINGTEST_BUFFER_CLASS_H
#define STRINGTEST_BUFFER_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   buffer  (buffer)
 */
struct stringtest_buffer {

  /* application analysis class attributes */
  c_t cache[ESCHER_SYS_MAX_STRING_LEN];  /* - cache */

  /* relationship storage */
  /* Note:  No storage needed for buffer->host[R1] */
  /* Note:  No storage needed for buffer->device[R2] */
};
xtuml_string stringtest_buffer_op_scmp(  c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
xtuml_string stringtest_buffer_op_twist(  c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
xtuml_string stringtest_buffer_op_simple( void );
xtuml_string stringtest_buffer_op_justone(  c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );



#define stringtest_buffer_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_stringtest_buffer_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* STRINGTEST_BUFFER_CLASS_H */


