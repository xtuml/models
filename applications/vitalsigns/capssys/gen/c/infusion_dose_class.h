/*----------------------------------------------------------------------------
 * File:  infusion_dose_class.h
 *
 * Class:       dose  (dose)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_DOSE_CLASS_H
#define INFUSION_DOSE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   dose  (dose)
 */
struct infusion_dose {

  /* application analysis class attributes */
  i_t max;  /* - max */
  i_t volume;  /* - volume */
  i_t mass;  /* - mass */

  /* relationship storage */
  /* Note:  No storage needed for dose->infusion[R5] */
};



#define infusion_dose_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_infusion_dose_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* INFUSION_DOSE_CLASS_H */


