/*----------------------------------------------------------------------------
 * File:  infusion_facility_class.h
 *
 * Class:       facility  (facility)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_FACILITY_CLASS_H
#define INFUSION_FACILITY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   facility  (facility)
 */
struct infusion_facility {

  /* application analysis class attributes */
  i_t network;  /* - network */

};



#define infusion_facility_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_infusion_facility_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* INFUSION_FACILITY_CLASS_H */


