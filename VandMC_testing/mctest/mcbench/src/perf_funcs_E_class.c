/*----------------------------------------------------------------------------
 * File:  perf_funcs_E_class.c
 *
 * Class:       e  (E)
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
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_funcs_E_container[ perf_funcs_E_MAX_EXTENT_SIZE ];
static perf_funcs_E perf_funcs_E_instances[ perf_funcs_E_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_funcs_E_extent = {
  {0}, {0}, &perf_funcs_E_container[ 0 ],
  (Escher_iHandle_t) &perf_funcs_E_instances,
  sizeof( perf_funcs_E ), 0, perf_funcs_E_MAX_EXTENT_SIZE
  };

