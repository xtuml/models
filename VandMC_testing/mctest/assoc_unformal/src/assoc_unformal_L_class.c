/*----------------------------------------------------------------------------
 * File:  assoc_unformal_L_class.c
 *
 * Class:       convertible  (L)
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
assoc_unformal_L_op_op( assoc_unformal_L * self)
{
  assoc_unformal_K * k = 0; /* k (K) */
 
  /* SELECT one k RELATED BY self->K[R6] */
  k = self->K_R6;

}


/*
 * RELATE K TO L ACROSS R6
 */
void
assoc_unformal_L_R6_Link( assoc_unformal_K * supertype, assoc_unformal_L * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "L", "assoc_unformal_L_R6_Link" );
    return;
  }
  /* Optimized linkage for L->K[R6] */
  subtype->K_R6 = supertype;
  /* Optimized linkage for K->L[R6] */
  supertype->R6_subtype = subtype;
  supertype->R6_object_id = assoc_unformal_L_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      convertible  (L)
 * Component:  assoc_unformal
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_L_container[ assoc_unformal_L_MAX_EXTENT_SIZE ];
static assoc_unformal_L assoc_unformal_L_instances[ assoc_unformal_L_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_L_extent = {
  {0}, {0}, &assoc_unformal_L_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_L_instances,
  sizeof( assoc_unformal_L ), 0, assoc_unformal_L_MAX_EXTENT_SIZE
  };


