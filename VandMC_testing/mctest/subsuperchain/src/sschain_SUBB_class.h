/*----------------------------------------------------------------------------
 * File:  sschain_SUBB_class.h
 *
 * Class:       subb  (SUBB)
 * Component:   sschain
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef SSCHAIN_SUBB_CLASS_H
#define SSCHAIN_SUBB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   subb  (SUBB)
 */
struct sschain_SUBB {

  /* application analysis class attributes */
  i_t j;  /* - j */

  /* relationship storage */
  sschain_SUPER * SUPER_R2;
};

void sschain_SUBB_R2_Link( sschain_SUPER *, sschain_SUBB * );
/* Note:  No SUPER<-R2->SUBB unrelate accessor needed.  */


#define sschain_SUBB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_sschain_SUBB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* SSCHAIN_SUBB_CLASS_H */


