/*----------------------------------------------------------------------------
 * File:  assoc_unformal_O_class.h
 *
 * Class:       group member  (O)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_O_CLASS_H
#define ASSOC_UNFORMAL_O_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   group member  (O)
 */
struct assoc_unformal_O {

  /* application analysis class attributes */
  c_t voo[ESCHER_SYS_MAX_STRING_LEN];  /* - voo */

  /* relationship storage */
  assoc_unformal_O * O_R8_learns_from;
  Escher_ObjectSet_s O_R8_teaches;
};

      
/*
 * R8 is Simple Reflexive:  0..1:*
 * Note:  Reflexive association is asymmetric.
 *  Formalizing O learns from participant
 *  Participant O teaches formalizer
 */
/* Navigation phrase:  R8.'learns from' */
void assoc_unformal_O_R8_Link_learns_from( assoc_unformal_O *, assoc_unformal_O * );
/* Note:  R8.'learns from' never unrelated (or not needed).  */
/* Navigation phrase:  R8.'teaches' */
void assoc_unformal_O_R8_Link_teaches( assoc_unformal_O *, assoc_unformal_O * );
/* Note:  R8.'teaches' never unrelated (or not needed).  */
#define assoc_unformal_O_R8_From_O_teaches( O ) ( &((O)->O_R8_teaches) )


#define assoc_unformal_O_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_O_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_O_CLASS_H */


