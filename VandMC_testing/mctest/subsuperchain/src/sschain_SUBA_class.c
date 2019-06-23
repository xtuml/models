/*----------------------------------------------------------------------------
 * File:  sschain_SUBA_class.c
 *
 * Class:       suba  (SUBA)
 * Component:   sschain
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "subsuperchain_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "sschain_classes.h"


/*
 * RELATE SUPER TO SUBA ACROSS R2
 */
void
sschain_SUBA_R2_Link( sschain_SUPER * supertype, sschain_SUBA * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "SUBA", "sschain_SUBA_R2_Link" );
    return;
  }
  /* Optimized linkage for SUBA->SUPER[R2] */
  subtype->SUPER_R2 = supertype;
  /* Optimized linkage for SUPER->SUBA[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = sschain_SUBA_CLASS_NUMBER;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s sschain_SUBA_container[ sschain_SUBA_MAX_EXTENT_SIZE ];
static sschain_SUBA sschain_SUBA_instances[ sschain_SUBA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_sschain_SUBA_extent = {
  {0}, {0}, &sschain_SUBA_container[ 0 ],
  (Escher_iHandle_t) &sschain_SUBA_instances,
  sizeof( sschain_SUBA ), 0, sschain_SUBA_MAX_EXTENT_SIZE
  };

