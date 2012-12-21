/*----------------------------------------------------------------------------
 * File:  assoc_unformal_V_class.c
 *
 * Class:       marriage  (V)
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
 * RELATE <left> W TO <right> W ACROSS R11.'is wife of' USING V
 */
void
assoc_unformal_V_R11_Link_is_wife_of( assoc_unformal_W * left, assoc_unformal_W * right, assoc_unformal_V * assr )
{
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "V", "assoc_unformal_V_R11_Link_is_wife_of" );
    return;
  }
  Escher_strcpy( assr->husband, right->name );
  Escher_strcpy( assr->wife, left->name );
  /* Initialize optimized relationship storage extended attributes */
  assr->W_R11_is_wife_of = right; /* RAL 3 */
  assr->W_R11_is_husband_of = left;  /* RAL 4 */
  left->V_R11_is_wife_of = assr; /* RAL 5 */
  right->V_R11_is_husband_of = assr; /* RAL 9 */
}

/* Note:  Unlink W from W across R11.'is wife of' USING V not needed.  */

/*
 * RELATE <left> W TO <right> W ACROSS R11.'is husband of' USING V
 */
void
assoc_unformal_V_R11_Link_is_husband_of( assoc_unformal_W * left, assoc_unformal_W * right, assoc_unformal_V * assr )
{
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "V", "assoc_unformal_V_R11_Link_is_husband_of" );
    return;
  }
  Escher_strcpy( assr->husband, left->name );
  Escher_strcpy( assr->wife, right->name );
  /* Initialize optimized relationship storage extended attributes */
  assr->W_R11_is_wife_of = left;  /* RAL 1 */
  assr->W_R11_is_husband_of = right; /* RAL 2 */
  right->V_R11_is_wife_of = assr; /* RAL 6 */
  left->V_R11_is_husband_of = assr; /* RAL 10 */
}

/* Note:  Unlink W from W across R11.'is husband of' USING V not needed.  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_V_container[ assoc_unformal_V_MAX_EXTENT_SIZE ];
static assoc_unformal_V assoc_unformal_V_instances[ assoc_unformal_V_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_V_extent = {
  {0}, {0}, &assoc_unformal_V_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_V_instances,
  sizeof( assoc_unformal_V ), 0, assoc_unformal_V_MAX_EXTENT_SIZE
  };


