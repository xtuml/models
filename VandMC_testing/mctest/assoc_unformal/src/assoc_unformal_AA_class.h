/*----------------------------------------------------------------------------
 * File:  assoc_unformal_AA_class.h
 *
 * Class:       student  (AA)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_AA_CLASS_H
#define ASSOC_UNFORMAL_AA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   student  (AA)
 */
struct assoc_unformal_AA {

  /* application analysis class attributes */

  /* relationship storage */
  /* Note:  No storage needed for AA->BB[R14] */
};

void assoc_unformal_AA_R14_Link( assoc_unformal_BB *, assoc_unformal_AA * );
/* Note:  BB<<-R14->>AA unrelate accessor not needed */
#define assoc_unformal_BB_R14_From_AA( AA ) ( &((AA)->BB_R14) )


#define assoc_unformal_AA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_AA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_AA_CLASS_H */


