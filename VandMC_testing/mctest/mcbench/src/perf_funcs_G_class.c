/*----------------------------------------------------------------------------
 * File:  perf_funcs_G_class.c
 *
 * Class:       g  (G)
 * Component:   perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "ARCH_bridge.h"
#include "DELTA_bridge.h"
#include "TIM_bridge.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "perf_funcs_classes.h"


/*
 * RELATE E TO F ACROSS R3 USING G
 */
void
perf_funcs_G_R3_Link( perf_funcs_E * aone, perf_funcs_F * aoth, perf_funcs_G * assr )
{
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "G", "perf_funcs_G_R3_Link" );
    return;
  }
  assr->eID = aone->eID;
  assr->fID = aoth->fID;
  /* Initialize optimized relationship storage extended attributes */
  assr->E_R3 = aone;
  assr->F_R3 = aoth;
  aone->G_R3 = assr;
  aoth->G_R3 = assr;
}

/*
 * UNRELATE E FROM F ACROSS R3 USING G
 */
void
perf_funcs_G_R3_Unlink( perf_funcs_E * aone, perf_funcs_F * aoth, perf_funcs_G * assr )
{
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "G", "perf_funcs_G_R3_Unlink" );
    return;
  }
  assr->E_R3 = 0;
  assr->F_R3 = 0;
  aone->G_R3 = 0;
  aoth->G_R3 = 0;
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_funcs_G_container[ perf_funcs_G_MAX_EXTENT_SIZE ];
static perf_funcs_G perf_funcs_G_instances[ perf_funcs_G_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_funcs_G_extent = {
  {0}, {0}, &perf_funcs_G_container[ 0 ],
  (Escher_iHandle_t) &perf_funcs_G_instances,
  sizeof( perf_funcs_G ), 0, perf_funcs_G_MAX_EXTENT_SIZE
  };

