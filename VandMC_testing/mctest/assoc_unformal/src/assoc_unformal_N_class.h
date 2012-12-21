/*----------------------------------------------------------------------------
 * File:  assoc_unformal_N_class.h
 *
 * Class:       employee  (N)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_N_CLASS_H
#define ASSOC_UNFORMAL_N_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   employee  (N)
 */
struct assoc_unformal_N {

  /* application analysis class attributes */
  c_t name[ESCHER_SYS_MAX_STRING_LEN];  /* - name */

  /* relationship storage */
  assoc_unformal_M * M_R7_works_for;
  Escher_ObjectSet_s M_R7_manages;
};

#define assoc_unformal_M_R7_From_N_manages( N ) ( &((N)->M_R7_manages) )


#define assoc_unformal_N_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_N_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_N_CLASS_H */


