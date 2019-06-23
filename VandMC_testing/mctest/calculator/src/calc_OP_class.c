/*----------------------------------------------------------------------------
 * File:  calc_OP_class.c
 *
 * Class:       op  (OP)
 * Component:   calc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "calculator_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "calc_classes.h"

/*
 * instance operation:  combine
 */
void
calc_OP_op_combine( calc_OP * self)
{

}

/*
 * RELATE EXPR TO OP ACROSS R1
 */
void
calc_OP_R1_Link_is_combined_by( calc_EXPR * part, calc_OP * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "OP", "calc_OP_R1_Link_is_combined_by" );
    return;
  }
  /* Note:  OP->EXPR[R1] not navigated */
  part->OP_R1_is_combined_by = form;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      op  (OP)
 * Component:  calc
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s calc_OP_container[ calc_OP_MAX_EXTENT_SIZE ];
static calc_OP calc_OP_instances[ calc_OP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_calc_OP_extent = {
  {0}, {0}, &calc_OP_container[ 0 ],
  (Escher_iHandle_t) &calc_OP_instances,
  sizeof( calc_OP ), 0, calc_OP_MAX_EXTENT_SIZE
  };

