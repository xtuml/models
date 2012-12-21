/*----------------------------------------------------------------------------
 * File:  assoc_unformal_A_class.c
 *
 * Class:       plug  (A)
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
 * RELATE B TO A ACROSS R1
 */
void
assoc_unformal_A_R1_Link( assoc_unformal_B * part, assoc_unformal_A * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "assoc_unformal_A_R1_Link" );
    return;
  }
  form->B_R1 = part;
  part->A_R1 = form;
}

/*
 * UNRELATE B FROM A ACROSS R1
 */
void
assoc_unformal_A_R1_Unlink( assoc_unformal_B * part, assoc_unformal_A * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "assoc_unformal_A_R1_Unlink" );
    return;
  }
  form->B_R1 = 0;
  part->A_R1 = 0;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_A_container[ assoc_unformal_A_MAX_EXTENT_SIZE ];
static assoc_unformal_A assoc_unformal_A_instances[ assoc_unformal_A_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_A_extent = {
  {0}, {0}, &assoc_unformal_A_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_A_instances,
  sizeof( assoc_unformal_A ), 0, assoc_unformal_A_MAX_EXTENT_SIZE
  };


