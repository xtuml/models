/*----------------------------------------------------------------------------
 * File:  assoc_unformal_R_class.h
 *
 * Class:       license  (R)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_R_CLASS_H
#define ASSOC_UNFORMAL_R_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   license  (R)
 */
struct assoc_unformal_R {

  /* application analysis class attributes */
  c_t city[ESCHER_SYS_MAX_STRING_LEN];  /* - city */

  /* relationship storage */
  assoc_unformal_Q * Q_R9;
  assoc_unformal_P * P_R9;
};

void assoc_unformal_R_R9_Link( assoc_unformal_Q *, assoc_unformal_P *, assoc_unformal_R * );
/* Note:  Unlink Q from P across R9 using R not needed.  */


#define assoc_unformal_R_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_R_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_R_CLASS_H */


