/*----------------------------------------------------------------------------
 * File:  assoc_unformal_H_class.c
 *
 * Class:       transmission  (H)
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
 * RELATE <left> H TO <right> H ACROSS R4.'follows'
 */
void
assoc_unformal_H_R4_Link_follows( assoc_unformal_H * left, assoc_unformal_H * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "H", "assoc_unformal_H_R4_Link_follows" );
    return;
  }
  left->H_R4_follows = right; /* SR L1 */
  right->H_R4_precedes = left; /* SR L2 */
}

/* Note:  R4.'follows' never unrelated (or not needed).  */

/*
 * RELATE <left> H TO <right> H ACROSS R4.'precedes'
 */
void
assoc_unformal_H_R4_Link_precedes( assoc_unformal_H * left, assoc_unformal_H * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "H", "assoc_unformal_H_R4_Link_precedes" );
    return;
  }
  right->H_R4_follows = left; /* SR L4 */
  left->H_R4_precedes = right; /* SR L5 */
}

/* Note:  R4.'precedes' never unrelated (or not needed).  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_H_container[ assoc_unformal_H_MAX_EXTENT_SIZE ];
static assoc_unformal_H assoc_unformal_H_instances[ assoc_unformal_H_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_H_extent = {
  {0}, {0}, &assoc_unformal_H_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_H_instances,
  sizeof( assoc_unformal_H ), 0, assoc_unformal_H_MAX_EXTENT_SIZE
  };


