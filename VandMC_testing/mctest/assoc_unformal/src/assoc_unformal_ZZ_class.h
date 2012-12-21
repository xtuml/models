/*----------------------------------------------------------------------------
 * File:  assoc_unformal_ZZ_class.h
 *
 * Class:       deal  (ZZ)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_ZZ_CLASS_H
#define ASSOC_UNFORMAL_ZZ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   deal  (ZZ)
 */
struct assoc_unformal_ZZ {

  /* application analysis class attributes */
  i_t xaction;  /* * xaction */
  i_t value;  /* - value */

  /* relationship storage */
  assoc_unformal_Z * Z_R13_sells_to;
  assoc_unformal_Z * Z_R13_buys_from;
};

/*
 * Note:  Relationship is not formalized!
 */
/* Navigation phrase:  R13.'sells to' */
void assoc_unformal_ZZ_R13_Link_sells_to( assoc_unformal_Z *, assoc_unformal_Z *, assoc_unformal_ZZ * );
/* Note:  Unlink Z from Z across R13.'sells to' USING ZZ not needed.  */
/* Navigation phrase:  R13.'buys from' */
void assoc_unformal_ZZ_R13_Link_buys_from( assoc_unformal_Z *, assoc_unformal_Z *, assoc_unformal_ZZ * );
/* Note:  Unlink Z from Z across R13.'buys from' USING ZZ not needed.  */


#define assoc_unformal_ZZ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_ZZ_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_ZZ_CLASS_H */


