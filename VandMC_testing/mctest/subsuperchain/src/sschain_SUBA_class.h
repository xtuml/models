/*----------------------------------------------------------------------------
 * File:  sschain_SUBA_class.h
 *
 * Class:       suba  (SUBA)
 * Component:   sschain
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SSCHAIN_SUBA_CLASS_H
#define SSCHAIN_SUBA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   suba  (SUBA)
 */
struct sschain_SUBA {

  /* application analysis class attributes */
  i_t i;  /* - i */
  /* relationship storage */
  sschain_SUPER * SUPER_R2;
};

void sschain_SUBA_R2_Link( sschain_SUPER *, sschain_SUBA * );
/* Note:  No SUPER<-R2->SUBA unrelate accessor needed.  */

#define sschain_SUBA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_sschain_SUBA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* SSCHAIN_SUBA_CLASS_H */
