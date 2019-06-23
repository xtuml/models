/*----------------------------------------------------------------------------
 * File:  sschain_SUBB_class.c
 *
 * Class:       subb  (SUBB)
 * Component:   sschain
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "subsuperchain_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "sschain_classes.h"


/*
 * RELATE SUPER TO SUBB ACROSS R2
 */
void
sschain_SUBB_R2_Link( sschain_SUPER * supertype, sschain_SUBB * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "SUBB", "sschain_SUBB_R2_Link" );
    return;
  }
  /* Optimized linkage for SUBB->SUPER[R2] */
  subtype->SUPER_R2 = supertype;
  /* Optimized linkage for SUPER->SUBB[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = sschain_SUBB_CLASS_NUMBER;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s sschain_SUBB_container[ sschain_SUBB_MAX_EXTENT_SIZE ];
static sschain_SUBB sschain_SUBB_instances[ sschain_SUBB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_sschain_SUBB_extent = {
  {0}, {0}, &sschain_SUBB_container[ 0 ],
  (Escher_iHandle_t) &sschain_SUBB_instances,
  sizeof( sschain_SUBB ), 0, sschain_SUBB_MAX_EXTENT_SIZE
  };

