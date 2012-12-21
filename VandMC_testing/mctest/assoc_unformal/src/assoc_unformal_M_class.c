/*----------------------------------------------------------------------------
 * File:  assoc_unformal_M_class.c
 *
 * Class:       report line  (M)
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
 * RELATE <left> N TO <right> N ACROSS R7.'works for' USING M
 */
void
assoc_unformal_M_R7_Link_works_for( assoc_unformal_N * left, assoc_unformal_N * right, assoc_unformal_M * assr )
{
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "M", "assoc_unformal_M_R7_Link_works_for" );
    return;
  }
  /* Initialize optimized relationship storage extended attributes */
  assr->N_R7_works_for = right; /* RAL 3 */
  assr->N_R7_manages = left;  /* RAL 4 */
  left->M_R7_works_for = assr; /* RAL 5 */
  Escher_SetInsertElement( &right->M_R7_manages, assr ); /* RAL 11 */
}

/* Note:  Unlink N from N across R7.'works for' USING M not needed.  */

/*
 * RELATE <left> N TO <right> N ACROSS R7.'manages' USING M
 */
void
assoc_unformal_M_R7_Link_manages( assoc_unformal_N * left, assoc_unformal_N * right, assoc_unformal_M * assr )
{
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "M", "assoc_unformal_M_R7_Link_manages" );
    return;
  }
  /* Initialize optimized relationship storage extended attributes */
  assr->N_R7_works_for = left;  /* RAL 1 */
  assr->N_R7_manages = right; /* RAL 2 */
  right->M_R7_works_for = assr; /* RAL 6 */
  Escher_SetInsertElement( &left->M_R7_manages, assr ); /* RAL 12 */
}

/* Note:  Unlink N from N across R7.'manages' USING M not needed.  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_M_container[ assoc_unformal_M_MAX_EXTENT_SIZE ];
static assoc_unformal_M assoc_unformal_M_instances[ assoc_unformal_M_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_M_extent = {
  {0}, {0}, &assoc_unformal_M_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_M_instances,
  sizeof( assoc_unformal_M ), 0, assoc_unformal_M_MAX_EXTENT_SIZE
  };


