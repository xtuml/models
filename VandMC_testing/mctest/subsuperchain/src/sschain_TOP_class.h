/*----------------------------------------------------------------------------
 * File:  sschain_TOP_class.h
 *
 * Class:       top  (TOP)
 * Component:   sschain
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef SSCHAIN_TOP_CLASS_H
#define SSCHAIN_TOP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   top  (TOP)
 */
struct sschain_TOP {

  /* application analysis class attributes */

  /* relationship storage */
  Escher_ObjectSet_s SUPER_R1;
};

#define sschain_SUPER_R1_From_TOP( TOP ) ( &((TOP)->SUPER_R1) )


#define sschain_TOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_sschain_TOP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* SSCHAIN_TOP_CLASS_H */


