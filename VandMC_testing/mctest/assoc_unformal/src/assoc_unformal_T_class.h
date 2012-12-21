/*----------------------------------------------------------------------------
 * File:  assoc_unformal_T_class.h
 *
 * Class:       analog input  (T)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_T_CLASS_H
#define ASSOC_UNFORMAL_T_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   analog input  (T)
 */
struct assoc_unformal_T {

  /* application analysis class attributes */
  c_t t[ESCHER_SYS_MAX_STRING_LEN];  /* - t */

  /* relationship storage */
  assoc_unformal_U * U_R10;
};



#define assoc_unformal_T_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_T_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_T_CLASS_H */


