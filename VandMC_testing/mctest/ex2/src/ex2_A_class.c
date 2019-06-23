/*----------------------------------------------------------------------------
 * File:  ex2_A_class.c
 *
 * Class:       A  (A)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "ex2_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "TIM_bridge.h"
#include "ex2_BR_bridge.h"
#include "ex2_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ex2_A_container[ ex2_A_MAX_EXTENT_SIZE ];
static ex2_A ex2_A_instances[ ex2_A_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ex2_A_extent = {
  {0}, {0}, &ex2_A_container[ 0 ],
  (Escher_iHandle_t) &ex2_A_instances,
  sizeof( ex2_A ), 0, ex2_A_MAX_EXTENT_SIZE
  };

