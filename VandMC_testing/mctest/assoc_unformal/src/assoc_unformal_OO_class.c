/*----------------------------------------------------------------------------
 * File:  assoc_unformal_OO_class.c
 *
 * Class:       queue item  (OO)
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
 * RELATE <left> OO TO <right> OO ACROSS R15.'right'
 */
void
assoc_unformal_OO_R15_Link_right( assoc_unformal_OO * left, assoc_unformal_OO * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "OO", "assoc_unformal_OO_R15_Link_right" );
    return;
  }
  Escher_SetInsertElement( &left->OO_R15_right, right );
  Escher_SetInsertElement( &right->OO_R15_left, left );
}

/* Note:  R15.'right' never unrelated (or not needed).  */

/*
 * RELATE <left> OO TO <right> OO ACROSS R15.'left'
 */
void
assoc_unformal_OO_R15_Link_left( assoc_unformal_OO * left, assoc_unformal_OO * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "OO", "assoc_unformal_OO_R15_Link_left" );
    return;
  }
  Escher_SetInsertElement( &right->OO_R15_right, left );
  Escher_SetInsertElement( &left->OO_R15_left, right );
}

/* Note:  R15.'left' never unrelated (or not needed).  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_OO_container[ assoc_unformal_OO_MAX_EXTENT_SIZE ];
static assoc_unformal_OO assoc_unformal_OO_instances[ assoc_unformal_OO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_OO_extent = {
  {0}, {0}, &assoc_unformal_OO_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_OO_instances,
  sizeof( assoc_unformal_OO ), 0, assoc_unformal_OO_MAX_EXTENT_SIZE
  };


