/*----------------------------------------------------------------------------
 * File:  assoc_unformal_Q_class.h
 *
 * Class:       state  (Q)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_Q_CLASS_H
#define ASSOC_UNFORMAL_Q_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   state  (Q)
 */
struct assoc_unformal_Q {

  /* application analysis class attributes */
  c_t deeeye[ESCHER_SYS_MAX_STRING_LEN];  /* - deeeye */

  /* relationship storage */
  assoc_unformal_R * R_R9;
};



#define assoc_unformal_Q_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_Q_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_Q_CLASS_H */


