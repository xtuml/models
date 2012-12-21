/*----------------------------------------------------------------------------
 * File:  assoc_unformal_C_class.h
 *
 * Class:       dog  (C)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_C_CLASS_H
#define ASSOC_UNFORMAL_C_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   dog  (C)
 */
struct assoc_unformal_C {

  /* application analysis class attributes */

  /* relationship storage */
  assoc_unformal_D * D_R2;
};

void assoc_unformal_C_R2_Link( assoc_unformal_D *, assoc_unformal_C * );
void assoc_unformal_C_R2_Unlink( assoc_unformal_D *, assoc_unformal_C * );


#define assoc_unformal_C_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_C_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_C_CLASS_H */


