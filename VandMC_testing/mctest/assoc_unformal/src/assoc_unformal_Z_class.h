/*----------------------------------------------------------------------------
 * File:  assoc_unformal_Z_class.h
 *
 * Class:       dealer  (Z)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_Z_CLASS_H
#define ASSOC_UNFORMAL_Z_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   dealer  (Z)
 */
struct assoc_unformal_Z {

  /* application analysis class attributes */
  c_t name[ESCHER_SYS_MAX_STRING_LEN];  /* * name */
  i_t worth;  /* - worth */

  /* relationship storage */
  Escher_ObjectSet_s ZZ_R13_sells_to;
  Escher_ObjectSet_s ZZ_R13_buys_from;
};

#define assoc_unformal_ZZ_R13_From_Z_sells_to( Z ) ( &((Z)->ZZ_R13_sells_to) )
#define assoc_unformal_ZZ_R13_From_Z_buys_from( Z ) ( &((Z)->ZZ_R13_buys_from) )


#define assoc_unformal_Z_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_Z_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_Z_CLASS_H */


