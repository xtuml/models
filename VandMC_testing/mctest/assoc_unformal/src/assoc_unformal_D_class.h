/*----------------------------------------------------------------------------
 * File:  assoc_unformal_D_class.h
 *
 * Class:       dog owner  (D)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_D_CLASS_H
#define ASSOC_UNFORMAL_D_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   dog owner  (D)
 */
struct assoc_unformal_D {

  /* application analysis class attributes */
  c_t name[ESCHER_SYS_MAX_STRING_LEN];  /* - name */

  /* relationship storage */
  Escher_ObjectSet_s C_R2;
};

#define assoc_unformal_C_R2_From_D( D ) ( &((D)->C_R2) )


#define assoc_unformal_D_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_D_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_D_CLASS_H */


