/*----------------------------------------------------------------------------
 * File:  ex2_NOI_class.h
 *
 * Class:       No Instances  (NOI)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef EX2_NOI_CLASS_H
#define EX2_NOI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   No Instances  (NOI)
 */
struct ex2_NOI {

  /* application analysis class attributes */
  Escher_UniqueID_t noi_id;  /* * noi_id */

};



#define ex2_NOI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ex2_NOI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* EX2_NOI_CLASS_H */


