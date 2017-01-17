/*----------------------------------------------------------------------------
 * File:  infusion_patient_class.h
 *
 * Class:       patient  (patient)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_PATIENT_CLASS_H
#define INFUSION_PATIENT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   patient  (patient)
 */
struct infusion_patient {

  /* application analysis class attributes */
  i_t ID;  /* * ID */

};



#define infusion_patient_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_infusion_patient_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* INFUSION_PATIENT_CLASS_H */


