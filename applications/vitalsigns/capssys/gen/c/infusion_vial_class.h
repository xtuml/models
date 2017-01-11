/*----------------------------------------------------------------------------
 * File:  infusion_vial_class.h
 *
 * Class:       vial  (vial)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_VIAL_CLASS_H
#define INFUSION_VIAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   vial  (vial)
 */
struct infusion_vial {

  /* application analysis class attributes */
  i_t bar_code;  /* - bar_code */

};



#define infusion_vial_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_infusion_vial_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* INFUSION_VIAL_CLASS_H */


