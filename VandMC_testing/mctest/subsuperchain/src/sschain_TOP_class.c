/*----------------------------------------------------------------------------
 * File:  sschain_TOP_class.c
 *
 * Class:       top  (TOP)
 * Component:   sschain
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "subsuperchain_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "sschain_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s sschain_TOP_container[ sschain_TOP_MAX_EXTENT_SIZE ];
static sschain_TOP sschain_TOP_instances[ sschain_TOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_sschain_TOP_extent = {
  {0}, {0}, &sschain_TOP_container[ 0 ],
  (Escher_iHandle_t) &sschain_TOP_instances,
  sizeof( sschain_TOP ), 0, sschain_TOP_MAX_EXTENT_SIZE
  };

