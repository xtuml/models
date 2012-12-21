/*----------------------------------------------------------------------------
 * File:  assoc_unformal_C_class.c
 *
 * Class:       dog  (C)
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
 * RELATE D TO C ACROSS R2
 */
void
assoc_unformal_C_R2_Link( assoc_unformal_D * part, assoc_unformal_C * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "C", "assoc_unformal_C_R2_Link" );
    return;
  }
  form->D_R2 = part;
  Escher_SetInsertElement( &part->C_R2, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE D FROM C ACROSS R2
 */
void
assoc_unformal_C_R2_Unlink( assoc_unformal_D * part, assoc_unformal_C * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "C", "assoc_unformal_C_R2_Unlink" );
    return;
  }
  form->D_R2 = 0;
  Escher_SetRemoveElement( &part->C_R2, (Escher_ObjectSet_s *) form );
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_C_container[ assoc_unformal_C_MAX_EXTENT_SIZE ];
static assoc_unformal_C assoc_unformal_C_instances[ assoc_unformal_C_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_C_extent = {
  {0}, {0}, &assoc_unformal_C_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_C_instances,
  sizeof( assoc_unformal_C ), 0, assoc_unformal_C_MAX_EXTENT_SIZE
  };


