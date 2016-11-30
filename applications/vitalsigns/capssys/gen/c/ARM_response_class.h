/*----------------------------------------------------------------------------
 * File:  ARM_response_class.h
 *
 * Class:       response  (response)
 * Component:   ARM
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef ARM_RESPONSE_CLASS_H
#define ARM_RESPONSE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   response  (response)
 */
struct ARM_response {

  /* application analysis class attributes */
  i_t response_time;  /* - response_time */

};



#define ARM_response_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ARM_response_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ARM_RESPONSE_CLASS_H */


