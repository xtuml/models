/*----------------------------------------------------------------------------
 * File:  assoc_unformal_OO_class.h
 *
 * Class:       queue item  (OO)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_OO_CLASS_H
#define ASSOC_UNFORMAL_OO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   queue item  (OO)
 */
struct assoc_unformal_OO {

  /* application analysis class attributes */
  i_t number;  /* - number */

  /* relationship storage */
  Escher_ObjectSet_s OO_R15_right;
  Escher_ObjectSet_s OO_R15_left;
};

      
/*
 * R15 is Simple Reflexive:  *:*
 *  Formalizing OO right participant
 *  Participant OO left formalizer
 */
/* Navigation phrase:  R15.'right' */
void assoc_unformal_OO_R15_Link_right( assoc_unformal_OO *, assoc_unformal_OO * );
/* Note:  R15.'right' never unrelated (or not needed).  */
/* Navigation phrase:  R15.'left' */
void assoc_unformal_OO_R15_Link_left( assoc_unformal_OO *, assoc_unformal_OO * );
/* Note:  R15.'left' never unrelated (or not needed).  */
#define assoc_unformal_OO_R15_From_OO_right( OO ) ( &((OO)->OO_R15_right) )
#define assoc_unformal_OO_R15_From_OO_left( OO ) ( &((OO)->OO_R15_left) )


#define assoc_unformal_OO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_OO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_OO_CLASS_H */


