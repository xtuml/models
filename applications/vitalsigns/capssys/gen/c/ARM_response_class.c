/*----------------------------------------------------------------------------
 * File:  ARM_response_class.c
 *
 * Class:       response  (response)
 * Component:   ARM
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "ARM_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ARM_response_container[ ARM_response_MAX_EXTENT_SIZE ];
static ARM_response ARM_response_instances[ ARM_response_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ARM_response_extent = {
  {0}, {0}, &ARM_response_container[ 0 ],
  (Escher_iHandle_t) &ARM_response_instances,
  sizeof( ARM_response ), 0, ARM_response_MAX_EXTENT_SIZE
  };


