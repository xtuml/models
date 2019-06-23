/*----------------------------------------------------------------------------
 * File:  sschain_SUPER_class.c
 *
 * Class:       super  (SUPER)
 * Component:   sschain
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "subsuperchain_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "sschain_classes.h"


/*
 * RELATE TOP TO SUPER ACROSS R1
 */
void
sschain_SUPER_R1_Link( sschain_TOP * part, sschain_SUPER * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "SUPER", "sschain_SUPER_R1_Link" );
    return;
  }
  /* Note:  SUPER->TOP[R1] not navigated */
  Escher_SetInsertElement( &part->SUPER_R1, (Escher_ObjectSet_s *) form );
}

/* Accessors to SUPER[R2] subtypes */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s sschain_SUPER_container[ sschain_SUPER_MAX_EXTENT_SIZE ];
static sschain_SUPER sschain_SUPER_instances[ sschain_SUPER_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_sschain_SUPER_extent = {
  {0}, {0}, &sschain_SUPER_container[ 0 ],
  (Escher_iHandle_t) &sschain_SUPER_instances,
  sizeof( sschain_SUPER ), 0, sschain_SUPER_MAX_EXTENT_SIZE
  };

