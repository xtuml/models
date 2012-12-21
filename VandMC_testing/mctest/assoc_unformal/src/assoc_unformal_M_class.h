/*----------------------------------------------------------------------------
 * File:  assoc_unformal_M_class.h
 *
 * Class:       report line  (M)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_M_CLASS_H
#define ASSOC_UNFORMAL_M_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   report line  (M)
 */
struct assoc_unformal_M {

  /* application analysis class attributes */
  c_t department[ESCHER_SYS_MAX_STRING_LEN];  /* - department */

  /* relationship storage */
  assoc_unformal_N * N_R7_works_for;
  assoc_unformal_N * N_R7_manages;
};

/*
 * Note:  Relationship is not formalized!
 */
/* Navigation phrase:  R7.'works for' */
void assoc_unformal_M_R7_Link_works_for( assoc_unformal_N *, assoc_unformal_N *, assoc_unformal_M * );
/* Note:  Unlink N from N across R7.'works for' USING M not needed.  */
/* Navigation phrase:  R7.'manages' */
void assoc_unformal_M_R7_Link_manages( assoc_unformal_N *, assoc_unformal_N *, assoc_unformal_M * );
/* Note:  Unlink N from N across R7.'manages' USING M not needed.  */


#define assoc_unformal_M_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_M_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_M_CLASS_H */


