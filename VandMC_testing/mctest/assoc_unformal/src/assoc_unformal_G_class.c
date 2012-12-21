/*----------------------------------------------------------------------------
 * File:  assoc_unformal_G_class.c
 *
 * Class:       connection  (G)
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
 * RELATE F TO E ACROSS R3 USING G
 */
void
assoc_unformal_G_R3_Link( assoc_unformal_F * aone, assoc_unformal_E * aoth, assoc_unformal_G * assr )
{
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "G", "assoc_unformal_G_R3_Link" );
    return;
  }
  /* Initialize optimized relationship storage extended attributes */
  assr->F_R3 = aone;
  assr->E_R3 = aoth;
  Escher_SetInsertElement( &aone->G_R3, assr );
  Escher_SetInsertElement( &aoth->G_R3, assr );
}

/* Note:  Unlink F from E across R3 using G not needed.  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_G_container[ assoc_unformal_G_MAX_EXTENT_SIZE ];
static assoc_unformal_G assoc_unformal_G_instances[ assoc_unformal_G_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_G_extent = {
  {0}, {0}, &assoc_unformal_G_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_G_instances,
  sizeof( assoc_unformal_G ), 0, assoc_unformal_G_MAX_EXTENT_SIZE
  };


