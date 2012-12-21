/*----------------------------------------------------------------------------
 * File:  sschain_SUPER_class.h
 *
 * Class:       super  (SUPER)
 * Component:   sschain
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef SSCHAIN_SUPER_CLASS_H
#define SSCHAIN_SUPER_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   super  (SUPER)
 */
struct sschain_SUPER {

  /* application analysis class attributes */

  /* relationship storage */
  /* Note:  No storage needed for SUPER->TOP[R1] */
  void * R2_subtype;
  Escher_ClassNumber_t R2_object_id;
};

void sschain_SUPER_R1_Link( sschain_TOP *, sschain_SUPER * );
/* Note:  TOP<-R1->>SUPER unrelate accessor not needed */

/* Accessors to SUPER[R2] subtypes */
#define sschain_SUBB_R2_From_SUPER( SUPER ) \
   ( (((SUPER)->R2_object_id) == sschain_SUBB_CLASS_NUMBER) ? \
     ((sschain_SUBB *)((SUPER)->R2_subtype)) : (0) )
#define sschain_SUBA_R2_From_SUPER( SUPER ) \
   ( (((SUPER)->R2_object_id) == sschain_SUBA_CLASS_NUMBER) ? \
     ((sschain_SUBA *)((SUPER)->R2_subtype)) : (0) )



#define sschain_SUPER_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_sschain_SUPER_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* SSCHAIN_SUPER_CLASS_H */


