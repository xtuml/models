/*----------------------------------------------------------------------------
 * File:  assoc_unformal_T_class.c
 *
 * Class:       analog input  (T)
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


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_T_container[ assoc_unformal_T_MAX_EXTENT_SIZE ];
static assoc_unformal_T assoc_unformal_T_instances[ assoc_unformal_T_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_T_extent = {
  {0}, {0}, &assoc_unformal_T_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_T_instances,
  sizeof( assoc_unformal_T ), 0, assoc_unformal_T_MAX_EXTENT_SIZE
  };


