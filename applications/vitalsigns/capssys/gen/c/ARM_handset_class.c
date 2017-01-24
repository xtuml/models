/*----------------------------------------------------------------------------
 * File:  ARM_handset_class.c
 *
 * Class:       handset  (handset)
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
static Escher_SetElement_s ARM_handset_container[ ARM_handset_MAX_EXTENT_SIZE ];
static ARM_handset ARM_handset_instances[ ARM_handset_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ARM_handset_extent = {
  {0}, {0}, &ARM_handset_container[ 0 ],
  (Escher_iHandle_t) &ARM_handset_instances,
  sizeof( ARM_handset ), 0, ARM_handset_MAX_EXTENT_SIZE
  };


