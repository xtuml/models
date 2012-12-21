/*----------------------------------------------------------------------------
 * File:  assoc_unformal_R_class.c
 *
 * Class:       license  (R)
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
 * RELATE Q TO P ACROSS R9 USING R
 */
void
assoc_unformal_R_R9_Link( assoc_unformal_Q * aone, assoc_unformal_P * aoth, assoc_unformal_R * assr )
{
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "R", "assoc_unformal_R_R9_Link" );
    return;
  }
  /* Initialize optimized relationship storage extended attributes */
  assr->Q_R9 = aone;
  assr->P_R9 = aoth;
  aone->R_R9 = assr;
  aoth->R_R9 = assr;
}

/* Note:  Unlink Q from P across R9 using R not needed.  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_R_container[ assoc_unformal_R_MAX_EXTENT_SIZE ];
static assoc_unformal_R assoc_unformal_R_instances[ assoc_unformal_R_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_R_extent = {
  {0}, {0}, &assoc_unformal_R_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_R_instances,
  sizeof( assoc_unformal_R ), 0, assoc_unformal_R_MAX_EXTENT_SIZE
  };


