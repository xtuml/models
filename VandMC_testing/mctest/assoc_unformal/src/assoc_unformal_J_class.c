/*----------------------------------------------------------------------------
 * File:  assoc_unformal_J_class.c
 *
 * Class:       sedan  (J)
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
 * instance operation:  op
 */
void
assoc_unformal_J_op_op( assoc_unformal_J * self)
{
  assoc_unformal_I * i = 0; /* i (I) */
 
  /* SELECT one i RELATED BY self->I[R5] */
  i = self->I_R5;

}


/*
 * RELATE I TO J ACROSS R5
 */
void
assoc_unformal_J_R5_Link( assoc_unformal_I * supertype, assoc_unformal_J * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "J", "assoc_unformal_J_R5_Link" );
    return;
  }
  /* Optimized linkage for J->I[R5] */
  subtype->I_R5 = supertype;
  /* Optimized linkage for I->J[R5] */
  supertype->R5_subtype = subtype;
  supertype->R5_object_id = assoc_unformal_J_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      sedan  (J)
 * Component:  assoc_unformal
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_J_container[ assoc_unformal_J_MAX_EXTENT_SIZE ];
static assoc_unformal_J assoc_unformal_J_instances[ assoc_unformal_J_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_J_extent = {
  {0}, {0}, &assoc_unformal_J_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_J_instances,
  sizeof( assoc_unformal_J ), 0, assoc_unformal_J_MAX_EXTENT_SIZE
  };


