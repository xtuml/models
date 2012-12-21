/*----------------------------------------------------------------------------
 * File:  assoc_unformal_O_class.c
 *
 * Class:       group member  (O)
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
 * RELATE <left> O TO <right> O ACROSS R8.'learns from'
 */
void
assoc_unformal_O_R8_Link_learns_from( assoc_unformal_O * left, assoc_unformal_O * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O", "assoc_unformal_O_R8_Link_learns_from" );
    return;
  }
  left->O_R8_learns_from = right; /* SR L1 */
  Escher_SetInsertElement( &right->O_R8_teaches, left );
}

/* Note:  R8.'learns from' never unrelated (or not needed).  */

/*
 * RELATE <left> O TO <right> O ACROSS R8.'teaches'
 */
void
assoc_unformal_O_R8_Link_teaches( assoc_unformal_O * left, assoc_unformal_O * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O", "assoc_unformal_O_R8_Link_teaches" );
    return;
  }
  right->O_R8_learns_from = left; /* SR L4 */
  Escher_SetInsertElement( &left->O_R8_teaches, right );
}

/* Note:  R8.'teaches' never unrelated (or not needed).  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_O_container[ assoc_unformal_O_MAX_EXTENT_SIZE ];
static assoc_unformal_O assoc_unformal_O_instances[ assoc_unformal_O_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_O_extent = {
  {0}, {0}, &assoc_unformal_O_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_O_instances,
  sizeof( assoc_unformal_O ), 0, assoc_unformal_O_MAX_EXTENT_SIZE
  };


