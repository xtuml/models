/*----------------------------------------------------------------------------
 * File:  assoc_unformal_U_class.h
 *
 * Class:       sample  (U)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_U_CLASS_H
#define ASSOC_UNFORMAL_U_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   sample  (U)
 */
struct assoc_unformal_U {

  /* application analysis class attributes */
  c_t s[ESCHER_SYS_MAX_STRING_LEN];  /* - s */

  /* relationship storage */
  assoc_unformal_S * S_R10;
  assoc_unformal_T * T_R10;
};

void assoc_unformal_U_R10_Link( assoc_unformal_S *, assoc_unformal_T *, assoc_unformal_U * );
/* Note:  Unlink S from T across R10 using U not needed.  */


#define assoc_unformal_U_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_U_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_U_CLASS_H */


