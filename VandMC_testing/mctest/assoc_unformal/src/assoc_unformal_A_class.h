/*----------------------------------------------------------------------------
 * File:  assoc_unformal_A_class.h
 *
 * Class:       plug  (A)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_A_CLASS_H
#define ASSOC_UNFORMAL_A_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   plug  (A)
 */
struct assoc_unformal_A {

  /* application analysis class attributes */
  i_t i;  /* - i */

  /* relationship storage */
  assoc_unformal_B * B_R1;
};

void assoc_unformal_A_R1_Link( assoc_unformal_B *, assoc_unformal_A * );
void assoc_unformal_A_R1_Unlink( assoc_unformal_B *, assoc_unformal_A * );


#define assoc_unformal_A_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_A_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_A_CLASS_H */


