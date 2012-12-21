/*----------------------------------------------------------------------------
 * File:  assoc_unformal_I_class.h
 *
 * Class:       car  (I)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_I_CLASS_H
#define ASSOC_UNFORMAL_I_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   car  (I)
 */
struct assoc_unformal_I {

  /* application analysis class attributes */
  i_t iID;  /* - iID */
  i_t common;  /* - common */

  /* relationship storage */
  void * R5_subtype;
  Escher_ClassNumber_t R5_object_id;
};


/* Accessors to I[R5] subtypes */
#define assoc_unformal_J_R5_From_I( I ) \
   ( (((I)->R5_object_id) == assoc_unformal_J_CLASS_NUMBER) ? \
     ((assoc_unformal_J *)((I)->R5_subtype)) : (0) )
#define assoc_unformal_K_R5_From_I( I ) \
   ( (((I)->R5_object_id) == assoc_unformal_K_CLASS_NUMBER) ? \
     ((assoc_unformal_K *)((I)->R5_subtype)) : (0) )



#define assoc_unformal_I_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_I_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_I_CLASS_H */


