/*----------------------------------------------------------------------------
 * File:  assoc_unformal_ZZ_class.c
 *
 * Class:       deal  (ZZ)
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
 * RELATE <left> Z TO <right> Z ACROSS R13.'sells to' USING ZZ
 */
void
assoc_unformal_ZZ_R13_Link_sells_to( assoc_unformal_Z * left, assoc_unformal_Z * right, assoc_unformal_ZZ * assr )
{
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ZZ", "assoc_unformal_ZZ_R13_Link_sells_to" );
    return;
  }
  /* Initialize optimized relationship storage extended attributes */
  assr->Z_R13_sells_to = right; /* RAL 3 */
  assr->Z_R13_buys_from = left;  /* RAL 4 */
  Escher_SetInsertElement( &left->ZZ_R13_sells_to, assr ); /* RAL 7 */
  Escher_SetInsertElement( &right->ZZ_R13_buys_from, assr ); /* RAL 11 */
}

/* Note:  Unlink Z from Z across R13.'sells to' USING ZZ not needed.  */

/*
 * RELATE <left> Z TO <right> Z ACROSS R13.'buys from' USING ZZ
 */
void
assoc_unformal_ZZ_R13_Link_buys_from( assoc_unformal_Z * left, assoc_unformal_Z * right, assoc_unformal_ZZ * assr )
{
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ZZ", "assoc_unformal_ZZ_R13_Link_buys_from" );
    return;
  }
  /* Initialize optimized relationship storage extended attributes */
  assr->Z_R13_sells_to = left;  /* RAL 1 */
  assr->Z_R13_buys_from = right; /* RAL 2 */
  Escher_SetInsertElement( &right->ZZ_R13_sells_to, assr ); /* RAL 8 */
  Escher_SetInsertElement( &left->ZZ_R13_buys_from, assr ); /* RAL 12 */
}

/* Note:  Unlink Z from Z across R13.'buys from' USING ZZ not needed.  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_ZZ_container[ assoc_unformal_ZZ_MAX_EXTENT_SIZE ];
static assoc_unformal_ZZ assoc_unformal_ZZ_instances[ assoc_unformal_ZZ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_ZZ_extent = {
  {0}, {0}, &assoc_unformal_ZZ_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_ZZ_instances,
  sizeof( assoc_unformal_ZZ ), 0, assoc_unformal_ZZ_MAX_EXTENT_SIZE
  };


