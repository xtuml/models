/*----------------------------------------------------------------------------
 * File:  assoc_unformal_W_class.h
 *
 * Class:       person  (W)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_W_CLASS_H
#define ASSOC_UNFORMAL_W_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   person  (W)
 */
struct assoc_unformal_W {

  /* application analysis class attributes */
  c_t name[ESCHER_SYS_MAX_STRING_LEN];  /* * name */

  /* relationship storage */
  assoc_unformal_V * V_R11_is_wife_of;
  assoc_unformal_V * V_R11_is_husband_of;
};



#define assoc_unformal_W_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_W_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_W_CLASS_H */


