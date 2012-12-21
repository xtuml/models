/*----------------------------------------------------------------------------
 * File:  assoc_unformal_L_class.h
 *
 * Class:       convertible  (L)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_L_CLASS_H
#define ASSOC_UNFORMAL_L_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   convertible  (L)
 */
struct assoc_unformal_L {

  /* application analysis class attributes */
  i_t lID;  /* * lID */
  i_t specialL;  /* - specialL */

  /* relationship storage */
  assoc_unformal_K * K_R6;
};
void assoc_unformal_L_op_op( assoc_unformal_L * );

void assoc_unformal_L_R6_Link( assoc_unformal_K *, assoc_unformal_L * );
/* Note:  No K<-R6->L unrelate accessor needed.  */


#define assoc_unformal_L_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_L_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_L_CLASS_H */


