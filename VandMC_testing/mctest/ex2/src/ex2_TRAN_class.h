/*----------------------------------------------------------------------------
 * File:  ex2_TRAN_class.h
 *
 * Class:       Transformer  (TRAN)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef EX2_TRAN_CLASS_H
#define EX2_TRAN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Transformer  (TRAN)
 */
struct ex2_TRAN {

  /* application analysis class attributes */
  Escher_UniqueID_t tran_id;  /* * tran_id */
};
i_t ex2_TRAN_op_ret_int(  const i_t );
c_t * ex2_TRAN_op_ret_string(  c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
bool ex2_TRAN_op_ret_bool(  const bool );
r_t ex2_TRAN_op_ret_real(  const r_t );
c_t * ex2_TRAN_op_ret_string2(  c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * ex2_TRAN_op_ret_string3( ex2_TRAN *, c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
i_t ex2_TRAN_op_ret_int_from_real(  const r_t );


#define ex2_TRAN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ex2_TRAN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* EX2_TRAN_CLASS_H */
