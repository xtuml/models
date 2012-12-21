/*----------------------------------------------------------------------------
 * File:  assoc_unformal_J_class.h
 *
 * Class:       sedan  (J)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_J_CLASS_H
#define ASSOC_UNFORMAL_J_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   sedan  (J)
 */
struct assoc_unformal_J {

  /* application analysis class attributes */
  i_t specialJ;  /* - specialJ */

  /* relationship storage */
  assoc_unformal_I * I_R5;
};
void assoc_unformal_J_op_op( assoc_unformal_J * );

void assoc_unformal_J_R5_Link( assoc_unformal_I *, assoc_unformal_J * );
/* Note:  No I<-R5->J unrelate accessor needed.  */


#define assoc_unformal_J_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_J_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_J_CLASS_H */


