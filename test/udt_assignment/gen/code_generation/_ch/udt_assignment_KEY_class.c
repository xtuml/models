/*----------------------------------------------------------------------------
 * File:  udt_assignment_KEY_class.c
 *
 * Class:       IRDT  (KEY)
 * Component:   udt_assignment
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "udt_assignment_sys_types.h"
#include "udt_assignment_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s udt_assignment_KEY_container[ udt_assignment_KEY_MAX_EXTENT_SIZE ];
static udt_assignment_KEY udt_assignment_KEY_instances[ udt_assignment_KEY_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_udt_assignment_KEY_extent = {
  {0}, {0}, &udt_assignment_KEY_container[ 0 ],
  (Escher_iHandle_t) &udt_assignment_KEY_instances,
  sizeof( udt_assignment_KEY ), 0, udt_assignment_KEY_MAX_EXTENT_SIZE
  };


