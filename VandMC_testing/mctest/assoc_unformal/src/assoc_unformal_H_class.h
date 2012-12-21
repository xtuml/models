/*----------------------------------------------------------------------------
 * File:  assoc_unformal_H_class.h
 *
 * Class:       transmission  (H)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_H_CLASS_H
#define ASSOC_UNFORMAL_H_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   transmission  (H)
 */
struct assoc_unformal_H {

  /* application analysis class attributes */
  i_t hID;  /* - hID */

  /* relationship storage */
  assoc_unformal_H * H_R4_follows;
  assoc_unformal_H * H_R4_precedes;
};

      
/*
 * R4 is Simple Reflexive:  0..1:0..1
 *  Formalizing H follows participant
 *  Participant H precedes formalizer
 */
/* Navigation phrase:  R4.'follows' */
void assoc_unformal_H_R4_Link_follows( assoc_unformal_H *, assoc_unformal_H * );
/* Note:  R4.'follows' never unrelated (or not needed).  */
/* Navigation phrase:  R4.'precedes' */
void assoc_unformal_H_R4_Link_precedes( assoc_unformal_H *, assoc_unformal_H * );
/* Note:  R4.'precedes' never unrelated (or not needed).  */


#define assoc_unformal_H_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_H_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_H_CLASS_H */


