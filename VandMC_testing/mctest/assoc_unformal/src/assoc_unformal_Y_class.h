/*----------------------------------------------------------------------------
 * File:  assoc_unformal_Y_class.h
 *
 * Class:       friendship  (Y)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_Y_CLASS_H
#define ASSOC_UNFORMAL_Y_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   friendship  (Y)
 */
struct assoc_unformal_Y {

  /* application analysis class attributes */
  i_t duration;  /* - duration */
  i_t closeness;  /* - closeness */
  c_t buddy[ESCHER_SYS_MAX_STRING_LEN];  /* * buddy (R12) */
  c_t pal[ESCHER_SYS_MAX_STRING_LEN];  /* * pal (R12) */

  /* relationship storage */
  assoc_unformal_X * X_R12_is_pal_of;
  assoc_unformal_X * X_R12_is_buddy_of;
};

/*

 * R12 is Associative Reflexive:  1-(0..*:0..*)
 *
 *  Referential attribute friendship.pal
 *    refers across R12 in the direction of is pal of (R_AONE)
 *
 *  Referential attribute friendship.buddy
 *    refers across R12 in the direction of is buddy of (R_AOTH)
 */
/* Navigation phrase:  R12.'is pal of' */
void assoc_unformal_Y_R12_Link_is_pal_of( assoc_unformal_X *, assoc_unformal_X *, assoc_unformal_Y * );
/* Note:  Unlink X from X across R12.'is pal of' USING Y not needed.  */
/* Navigation phrase:  R12.'is buddy of' */
void assoc_unformal_Y_R12_Link_is_buddy_of( assoc_unformal_X *, assoc_unformal_X *, assoc_unformal_Y * );
/* Note:  Unlink X from X across R12.'is buddy of' USING Y not needed.  */


#define assoc_unformal_Y_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_Y_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_Y_CLASS_H */


