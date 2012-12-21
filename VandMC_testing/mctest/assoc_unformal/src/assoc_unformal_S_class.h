/*----------------------------------------------------------------------------
 * File:  assoc_unformal_S_class.h
 *
 * Class:       AtoD converter  (S)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_S_CLASS_H
#define ASSOC_UNFORMAL_S_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   AtoD converter  (S)
 */
struct assoc_unformal_S {

  /* application analysis class attributes */
  c_t s[ESCHER_SYS_MAX_STRING_LEN];  /* - s */

  /* relationship storage */
  Escher_ObjectSet_s U_R10;
};

#define assoc_unformal_U_R10_From_S( S ) ( &((S)->U_R10) )


#define assoc_unformal_S_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_S_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_S_CLASS_H */


