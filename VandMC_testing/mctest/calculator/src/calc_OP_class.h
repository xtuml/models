/*----------------------------------------------------------------------------
 * File:  calc_OP_class.h
 *
 * Class:       op  (OP)
 * Component:   calc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CALC_OP_CLASS_H
#define CALC_OP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   op  (OP)
 */
struct calc_OP {

  /* application analysis class attributes */
  i_t op;  /* - op */
  /* relationship storage */
  /* Note:  No storage needed for OP->EXPR[R1] */
  calc_VAL * VAL_R2_has_left;
  calc_VAL * VAL_R3_has_right;
};
void calc_OP_op_combine( calc_OP * );
void calc_OP_R1_Link_is_combined_by( calc_EXPR *, calc_OP * );
/* Note:  EXPR<-R1->OP unrelate accessor not needed */

#define calc_OP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_calc_OP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* CALC_OP_CLASS_H */
