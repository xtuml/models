/*----------------------------------------------------------------------------
 * File:  ExecutableComponent_KEY_class.c
 *
 * Class:       Class  (KEY)
 * Component:   ExecutableComponent
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "VerifierUDTAsSDTTests_sys_types.h"
#include "ExecutableComponent_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ExecutableComponent_KEY_container[ ExecutableComponent_KEY_MAX_EXTENT_SIZE ];
static ExecutableComponent_KEY ExecutableComponent_KEY_instances[ ExecutableComponent_KEY_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ExecutableComponent_KEY_extent = {
  {0}, {0}, &ExecutableComponent_KEY_container[ 0 ],
  (Escher_iHandle_t) &ExecutableComponent_KEY_instances,
  sizeof( ExecutableComponent_KEY ), 0, ExecutableComponent_KEY_MAX_EXTENT_SIZE
  };


