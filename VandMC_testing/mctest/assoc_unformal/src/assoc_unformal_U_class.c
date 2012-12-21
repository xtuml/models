/*----------------------------------------------------------------------------
 * File:  assoc_unformal_U_class.c
 *
 * Class:       sample  (U)
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
 * RELATE S TO T ACROSS R10 USING U
 */
void
assoc_unformal_U_R10_Link( assoc_unformal_S * aone, assoc_unformal_T * aoth, assoc_unformal_U * assr )
{
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "U", "assoc_unformal_U_R10_Link" );
    return;
  }
  /* Initialize optimized relationship storage extended attributes */
  assr->S_R10 = aone;
  assr->T_R10 = aoth;
  Escher_SetInsertElement( &aone->U_R10, assr );
  aoth->U_R10 = assr;
}

/* Note:  Unlink S from T across R10 using U not needed.  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_U_container[ assoc_unformal_U_MAX_EXTENT_SIZE ];
static assoc_unformal_U assoc_unformal_U_instances[ assoc_unformal_U_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_U_extent = {
  {0}, {0}, &assoc_unformal_U_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_U_instances,
  sizeof( assoc_unformal_U ), 0, assoc_unformal_U_MAX_EXTENT_SIZE
  };


