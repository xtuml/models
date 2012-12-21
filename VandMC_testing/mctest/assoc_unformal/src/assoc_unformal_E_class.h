/*----------------------------------------------------------------------------
 * File:  assoc_unformal_E_class.h
 *
 * Class:       host  (E)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_E_CLASS_H
#define ASSOC_UNFORMAL_E_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   host  (E)
 */
struct assoc_unformal_E {

  /* application analysis class attributes */
  i_t eID;  /* - eID */
  r_t ratio;  /* - ratio */

  /* relationship storage */
  Escher_ObjectSet_s G_R3;
};

#define assoc_unformal_G_R3_From_E( E ) ( &((E)->G_R3) )


#define assoc_unformal_E_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_E_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_E_CLASS_H */


