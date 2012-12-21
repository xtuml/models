/*----------------------------------------------------------------------------
 * File:  perf_funcs_D_class.c
 *
 * Class:       d  (D)
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
 * RELATE C TO D ACROSS R2
 */
void
perf_funcs_D_R2_Link( perf_funcs_C * part, perf_funcs_D * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "D", "perf_funcs_D_R2_Link" );
    return;
  }
  form->cID = part->cID;
  form->C_R2 = part;
  Escher_SetInsertElement( &part->D_R2, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C FROM D ACROSS R2
 */
void
perf_funcs_D_R2_Unlink( perf_funcs_C * part, perf_funcs_D * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "D", "perf_funcs_D_R2_Unlink" );
    return;
  }
  form->cID = 0;
  form->C_R2 = 0;
  Escher_SetRemoveElement( &part->D_R2, (Escher_ObjectSet_s *) form );
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_funcs_D_container[ perf_funcs_D_MAX_EXTENT_SIZE ];
static perf_funcs_D perf_funcs_D_instances[ perf_funcs_D_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_funcs_D_extent = {
  {0}, {0}, &perf_funcs_D_container[ 0 ],
  (Escher_iHandle_t) &perf_funcs_D_instances,
  sizeof( perf_funcs_D ), 0, perf_funcs_D_MAX_EXTENT_SIZE
  };


