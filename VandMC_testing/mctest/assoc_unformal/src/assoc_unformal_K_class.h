/*----------------------------------------------------------------------------
 * File:  assoc_unformal_K_class.h
 *
 * Class:       sports car  (K)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_K_CLASS_H
#define ASSOC_UNFORMAL_K_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   sports car  (K)
 */
struct assoc_unformal_K {

  /* application analysis class attributes */
  i_t kID;  /* - kID */
  i_t specialcommon;  /* - specialcommon */

  /* relationship storage */
  assoc_unformal_I * I_R5;
  void * R6_subtype;
  Escher_ClassNumber_t R6_object_id;
};
void assoc_unformal_K_op_op( assoc_unformal_K * );

void assoc_unformal_K_R5_Link( assoc_unformal_I *, assoc_unformal_K * );
/* Note:  No I<-R5->K unrelate accessor needed.  */

/* Accessors to K[R6] subtypes */
#define assoc_unformal_L_R6_From_K( K ) \
   ( (((K)->R6_object_id) == assoc_unformal_L_CLASS_NUMBER) ? \
     ((assoc_unformal_L *)((K)->R6_subtype)) : (0) )



#define assoc_unformal_K_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_K_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_K_CLASS_H */


