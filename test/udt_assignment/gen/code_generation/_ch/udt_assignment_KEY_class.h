/*----------------------------------------------------------------------------
 * File:  udt_assignment_KEY_class.h
 *
 * Class:       IRDT  (KEY)
 * Component:   udt_assignment
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef UDT_ASSIGNMENT_KEY_CLASS_H
#define UDT_ASSIGNMENT_KEY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   IRDT  (KEY)
 */
struct udt_assignment_KEY {

  /* application analysis class attributes */
  i_t attribute;  /* - attribute */

};



#define udt_assignment_KEY_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_udt_assignment_KEY_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* UDT_ASSIGNMENT_KEY_CLASS_H */


