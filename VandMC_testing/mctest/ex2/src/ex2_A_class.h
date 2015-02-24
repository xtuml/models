/*----------------------------------------------------------------------------
 * File:  ex2_A_class.h
 *
 * Class:       A  (A)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef EX2_A_CLASS_H
#define EX2_A_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   A  (A)
 */
struct ex2_A {

  /* application analysis class attributes */
  Escher_UniqueID_t a_id;  /* * a_id */
  i_t a;  /* - a */

};



#define ex2_A_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ex2_A_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* EX2_A_CLASS_H */


