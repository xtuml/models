/*----------------------------------------------------------------------------
 * File:  assoc_unformal_BB_class.h
 *
 * Class:       course  (BB)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_BB_CLASS_H
#define ASSOC_UNFORMAL_BB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   course  (BB)
 */
struct assoc_unformal_BB {

  /* application analysis class attributes */

  /* relationship storage */
  Escher_ObjectSet_s AA_R14;
};

#define assoc_unformal_AA_R14_From_BB( BB ) ( &((BB)->AA_R14) )


#define assoc_unformal_BB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_BB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_BB_CLASS_H */


