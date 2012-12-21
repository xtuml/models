/*----------------------------------------------------------------------------
 * File:  calc_OP_class.c
 *
 * Class:       op  (OP)
 * Component:   calc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
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
 * RELATE VAL TO OP ACROSS R2
 */
void
calc_OP_R2_Link( calc_VAL * part, calc_OP * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "OP", "calc_OP_R2_Link" );
    return;
  }
  form->VAL_R2 = part;
  /* Note:  VAL->OP[R2] not navigated */
}

/*
 * RELATE VAL TO OP ACROSS R3
 */
void
calc_OP_R3_Link( calc_VAL * part, calc_OP * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "OP", "calc_OP_R3_Link" );
    return;
  }
  form->VAL_R3 = part;
  /* Note:  VAL->OP[R3] not navigated */
}

/*
 * UNRELATE VAL FROM OP ACROSS R3
 */
void
calc_OP_R3_Unlink( calc_VAL * part, calc_OP * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "OP", "calc_OP_R3_Unlink" );
    return;
  }
  form->VAL_R3 = 0;
  /* Note:  VAL->OP[R3] not navigated */
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


