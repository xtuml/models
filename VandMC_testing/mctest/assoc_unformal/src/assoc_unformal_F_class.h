/*----------------------------------------------------------------------------
 * File:  assoc_unformal_F_class.h
 *
 * Class:       device  (F)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_F_CLASS_H
#define ASSOC_UNFORMAL_F_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   device  (F)
 */
struct assoc_unformal_F {

  /* application analysis class attributes */
  i_t fID;  /* - fID */
  bool enabled;  /* - enabled */

  /* relationship storage */
  Escher_ObjectSet_s G_R3;
};

#define assoc_unformal_G_R3_From_F( F ) ( &((F)->G_R3) )


#define assoc_unformal_F_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_F_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_F_CLASS_H */


