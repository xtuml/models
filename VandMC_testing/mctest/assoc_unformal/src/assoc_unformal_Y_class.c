/*----------------------------------------------------------------------------
 * File:  assoc_unformal_Y_class.c
 *
 * Class:       friendship  (Y)
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
 * RELATE <left> X TO <right> X ACROSS R12.'is pal of' USING Y
 */
void
assoc_unformal_Y_R12_Link_is_pal_of( assoc_unformal_X * left, assoc_unformal_X * right, assoc_unformal_Y * assr )
{
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Y", "assoc_unformal_Y_R12_Link_is_pal_of" );
    return;
  }
  Escher_strcpy( assr->pal, right->name );
  Escher_strcpy( assr->buddy, left->name );
  /* Initialize optimized relationship storage extended attributes */
  assr->X_R12_is_pal_of = right; /* RAL 3 */
  assr->X_R12_is_buddy_of = left;  /* RAL 4 */
  Escher_SetInsertElement( &left->Y_R12_is_pal_of, assr ); /* RAL 7 */
  Escher_SetInsertElement( &right->Y_R12_is_buddy_of, assr ); /* RAL 11 */
}

/* Note:  Unlink X from X across R12.'is pal of' USING Y not needed.  */

/*
 * RELATE <left> X TO <right> X ACROSS R12.'is buddy of' USING Y
 */
void
assoc_unformal_Y_R12_Link_is_buddy_of( assoc_unformal_X * left, assoc_unformal_X * right, assoc_unformal_Y * assr )
{
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "Y", "assoc_unformal_Y_R12_Link_is_buddy_of" );
    return;
  }
  Escher_strcpy( assr->pal, left->name );
  Escher_strcpy( assr->buddy, right->name );
  /* Initialize optimized relationship storage extended attributes */
  assr->X_R12_is_pal_of = left;  /* RAL 1 */
  assr->X_R12_is_buddy_of = right; /* RAL 2 */
  Escher_SetInsertElement( &right->Y_R12_is_pal_of, assr ); /* RAL 8 */
  Escher_SetInsertElement( &left->Y_R12_is_buddy_of, assr ); /* RAL 12 */
}

/* Note:  Unlink X from X across R12.'is buddy of' USING Y not needed.  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_Y_container[ assoc_unformal_Y_MAX_EXTENT_SIZE ];
static assoc_unformal_Y assoc_unformal_Y_instances[ assoc_unformal_Y_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_Y_extent = {
  {0}, {0}, &assoc_unformal_Y_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_Y_instances,
  sizeof( assoc_unformal_Y ), 0, assoc_unformal_Y_MAX_EXTENT_SIZE
  };


