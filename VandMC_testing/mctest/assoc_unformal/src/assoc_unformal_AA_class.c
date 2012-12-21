/*----------------------------------------------------------------------------
 * File:  assoc_unformal_AA_class.c
 *
 * Class:       student  (AA)
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
 * RELATE BB TO AA ACROSS R14
 */
void
assoc_unformal_AA_R14_Link( assoc_unformal_BB * part, assoc_unformal_AA * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "AA", "assoc_unformal_AA_R14_Link" );
    return;
  }
  /* Note:  AA->BB[R14] not navigated */
  Escher_SetInsertElement( &part->AA_R14, (Escher_ObjectSet_s *) form );
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_AA_container[ assoc_unformal_AA_MAX_EXTENT_SIZE ];
static assoc_unformal_AA assoc_unformal_AA_instances[ assoc_unformal_AA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_AA_extent = {
  {0}, {0}, &assoc_unformal_AA_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_AA_instances,
  sizeof( assoc_unformal_AA ), 0, assoc_unformal_AA_MAX_EXTENT_SIZE
  };


