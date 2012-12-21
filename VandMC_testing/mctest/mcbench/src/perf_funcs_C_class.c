/*----------------------------------------------------------------------------
 * File:  perf_funcs_C_class.c
 *
 * Class:       c  (C)
 * Component:   perf_funcs
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "TIM_bridge.h"
#include "perf_funcs_ARCH_bridge.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "perf_funcs_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_funcs_C_container[ perf_funcs_C_MAX_EXTENT_SIZE ];
static perf_funcs_C perf_funcs_C_instances[ perf_funcs_C_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_funcs_C_extent = {
  {0}, {0}, &perf_funcs_C_container[ 0 ],
  (Escher_iHandle_t) &perf_funcs_C_instances,
  sizeof( perf_funcs_C ), 0, perf_funcs_C_MAX_EXTENT_SIZE
  };


