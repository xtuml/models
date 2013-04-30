/*----------------------------------------------------------------------------
 * File:  ExecutableComponent_KEY_class.h
 *
 * Class:       Class  (KEY)
 * Component:   ExecutableComponent
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef EXECUTABLECOMPONENT_KEY_CLASS_H
#define EXECUTABLECOMPONENT_KEY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class  (KEY)
 */
struct ExecutableComponent_KEY {

  /* application analysis class attributes */
  i_t AttributeAsUDTType;  /* - AttributeAsUDTType */

};



#define ExecutableComponent_KEY_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ExecutableComponent_KEY_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* EXECUTABLECOMPONENT_KEY_CLASS_H */


