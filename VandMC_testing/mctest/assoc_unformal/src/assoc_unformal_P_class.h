/*----------------------------------------------------------------------------
 * File:  assoc_unformal_P_class.h
 *
 * Class:       automobile  (P)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_P_CLASS_H
#define ASSOC_UNFORMAL_P_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   automobile  (P)
 */
struct assoc_unformal_P {

  /* application analysis class attributes */
  c_t eyedee[ESCHER_SYS_MAX_STRING_LEN];  /* - eyedee */

  /* relationship storage */
  assoc_unformal_R * R_R9;
};



#define assoc_unformal_P_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_P_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_P_CLASS_H */


