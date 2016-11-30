/*----------------------------------------------------------------------------
 * File:  infusion_PRN_class.h
 *
 * Class:       PRN  (PRN)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_PRN_CLASS_H
#define INFUSION_PRN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   PRN  (PRN)
 */
struct infusion_PRN {

  /* application analysis class attributes */
  i_t volume;  /* - volume */

};



#define infusion_PRN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_infusion_PRN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* INFUSION_PRN_CLASS_H */


