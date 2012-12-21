/*----------------------------------------------------------------------------
 * File:  assoc_unformal_G_class.h
 *
 * Class:       connection  (G)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_G_CLASS_H
#define ASSOC_UNFORMAL_G_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   connection  (G)
 */
struct assoc_unformal_G {

  /* application analysis class attributes */
  i_t gID;  /* - gID */

  /* relationship storage */
  assoc_unformal_F * F_R3;
  assoc_unformal_E * E_R3;
};

void assoc_unformal_G_R3_Link( assoc_unformal_F *, assoc_unformal_E *, assoc_unformal_G * );
/* Note:  Unlink F from E across R3 using G not needed.  */


#define assoc_unformal_G_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_G_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_G_CLASS_H */


