/*----------------------------------------------------------------------------
 * File:  perf_funcs_CBENCH_class.h
 *
 * Class:       C benchmark  (CBENCH)
 * Component:   perf_funcs
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_CBENCH_CLASS_H
#define PERF_FUNCS_CBENCH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   C benchmark  (CBENCH)
 */
struct perf_funcs_CBENCH {

  /* application analysis class attributes */
  i_t phase;  /* - phase */

};
bool perf_funcs_CBENCH_op_function_void_void(  i_t, i_t, i_t, i_t );
bool perf_funcs_CBENCH_op_function_void_integer(  i_t, i_t, i_t, i_t );
bool perf_funcs_CBENCH_op_function_integer_integer(  i_t, i_t, i_t, i_t );
bool perf_funcs_CBENCH_op_read_struct_member(  i_t, i_t, i_t, i_t );
bool perf_funcs_CBENCH_op_write_struct_member(  i_t, i_t, i_t, i_t );



#define perf_funcs_CBENCH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_funcs_CBENCH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_CBENCH_CLASS_H */


