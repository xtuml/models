/*----------------------------------------------------------------------------
 * File:  infusion_PRN_class.c
 *
 * Class:       PRN  (PRN)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "infusion_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s infusion_PRN_container[ infusion_PRN_MAX_EXTENT_SIZE ];
static infusion_PRN infusion_PRN_instances[ infusion_PRN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_infusion_PRN_extent = {
  {0}, {0}, &infusion_PRN_container[ 0 ],
  (Escher_iHandle_t) &infusion_PRN_instances,
  sizeof( infusion_PRN ), 0, infusion_PRN_MAX_EXTENT_SIZE
  };


