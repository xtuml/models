/*----------------------------------------------------------------------------
 * File:  assoc_unformal_X_class.h
 *
 * Class:       friend  (X)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_X_CLASS_H
#define ASSOC_UNFORMAL_X_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   friend  (X)
 */
struct assoc_unformal_X {

  /* application analysis class attributes */
  c_t name[ESCHER_SYS_MAX_STRING_LEN];  /* * name */
  i_t age;  /* - age */

  /* relationship storage */
  Escher_ObjectSet_s Y_R12_is_pal_of;
  Escher_ObjectSet_s Y_R12_is_buddy_of;
};

#define assoc_unformal_Y_R12_From_X_is_pal_of( X ) ( &((X)->Y_R12_is_pal_of) )
#define assoc_unformal_Y_R12_From_X_is_buddy_of( X ) ( &((X)->Y_R12_is_buddy_of) )


#define assoc_unformal_X_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_X_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_X_CLASS_H */


