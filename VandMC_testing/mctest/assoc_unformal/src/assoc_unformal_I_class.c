/*----------------------------------------------------------------------------
 * File:  assoc_unformal_I_class.c
 *
 * Class:       car  (I)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "assoc_unformal_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "assoc_unformal_classes.h"


/* Accessors to I[R5] subtypes */


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_I_container[ assoc_unformal_I_MAX_EXTENT_SIZE ];
static assoc_unformal_I assoc_unformal_I_instances[ assoc_unformal_I_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_I_extent = {
  {0}, {0}, &assoc_unformal_I_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_I_instances,
  sizeof( assoc_unformal_I ), 0, assoc_unformal_I_MAX_EXTENT_SIZE
  };


