/*----------------------------------------------------------------------------
 * File:  calc_OP_class.h
 *
 * Class:       op  (OP)
 * Component:   calc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
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
  calc_VAL * VAL_R2;
  calc_VAL * VAL_R3;
};
void calc_OP_op_combine( calc_OP * );

void calc_OP_R2_Link( calc_VAL *, calc_OP * );
/* Note:  VAL<-R2->OP unrelate accessor not needed */
void calc_OP_R3_Link( calc_VAL *, calc_OP * );
void calc_OP_R3_Unlink( calc_VAL *, calc_OP * );


#define calc_OP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_calc_OP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* CALC_OP_CLASS_H */


