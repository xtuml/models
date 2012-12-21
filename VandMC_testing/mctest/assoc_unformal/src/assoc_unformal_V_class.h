/*----------------------------------------------------------------------------
 * File:  assoc_unformal_V_class.h
 *
 * Class:       marriage  (V)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_V_CLASS_H
#define ASSOC_UNFORMAL_V_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   marriage  (V)
 */
struct assoc_unformal_V {

  /* application analysis class attributes */
  Escher_UniqueID_t vID;  /* * vID */
  i_t year;  /* - year */
  c_t wife[ESCHER_SYS_MAX_STRING_LEN];  /* *2 wife (R11) */
  c_t husband[ESCHER_SYS_MAX_STRING_LEN];  /* *2 husband (R11) */

  /* relationship storage */
  assoc_unformal_W * W_R11_is_wife_of;
  assoc_unformal_W * W_R11_is_husband_of;
};

/*

 * R11 is Associative Reflexive:  1-(0..1:0..1)
 *
 *  Referential attribute marriage.husband
 *    refers across R11 in the direction of is wife of (R_AONE)
 *
 *  Referential attribute marriage.wife
 *    refers across R11 in the direction of is husband of (R_AOTH)
 */
/* Navigation phrase:  R11.'is wife of' */
void assoc_unformal_V_R11_Link_is_wife_of( assoc_unformal_W *, assoc_unformal_W *, assoc_unformal_V * );
/* Note:  Unlink W from W across R11.'is wife of' USING V not needed.  */
/* Navigation phrase:  R11.'is husband of' */
void assoc_unformal_V_R11_Link_is_husband_of( assoc_unformal_W *, assoc_unformal_W *, assoc_unformal_V * );
/* Note:  Unlink W from W across R11.'is husband of' USING V not needed.  */


#define assoc_unformal_V_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_V_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_V_CLASS_H */


