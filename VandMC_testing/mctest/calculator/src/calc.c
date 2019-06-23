/*----------------------------------------------------------------------------
 * File:  calc.c
 *
 * UML Component Port Messages
 * Component/Module Name:  calc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "calculator_sys_types.h"
#include "calc.h"
#include "LOG_bridge.h"
#include "ARCH_bridge.h"
#include "keypad.h"
#include "calc_classes.h"

/*
 * Interface:  keyIO
 * Required Port:  kb
 * From Provider Message:  key
 */
void
calc_kb_key( const i_t p_code )
{
  calc_EXPR * expression=0;
  /* LOG::LogInfo( message:Calculator received key code from keypad. ) */
  LOG_LogInfo( "Calculator received key code from keypad." );
  /* LOG::LogInteger( message:PARAM.code ) */
  LOG_LogInteger( p_code );
  /* SELECT any expression FROM INSTANCES OF EXPR */
  expression = (calc_EXPR *) Escher_SetGetAny( &pG_calc_EXPR_extent.active );
  /* IF ( empty expression ) */
  if ( ( 0 == expression ) ) {
    calc_OP * op;calc_VAL * operand1;
    /* CREATE OBJECT INSTANCE expression OF EXPR */
    expression = (calc_EXPR *) Escher_CreateInstance( calc_DOMAIN_ID, calc_EXPR_CLASS_NUMBER );
    /* expression.init() */
    calc_EXPR_op_init( expression );
    /* CREATE OBJECT INSTANCE operand1 OF VAL */
    operand1 = (calc_VAL *) Escher_CreateInstance( calc_DOMAIN_ID, calc_VAL_CLASS_NUMBER );
    /* operand1.init() */
    calc_VAL_op_init( operand1 );
    /* CREATE OBJECT INSTANCE op OF OP */
    op = (calc_OP *) Escher_CreateInstance( calc_DOMAIN_ID, calc_OP_CLASS_NUMBER );
    /* RELATE expression TO op ACROSS R1 */
    calc_OP_R1_Link_is_combined_by( expression, op );
    /* RELATE op TO operand1 ACROSS R2 */
    calc_VAL_R2_Link_has_left( op, operand1 );
  }
  /* expression.addkey( code:PARAM.code ) */
  calc_EXPR_op_addkey( expression,  p_code );
}

/*
 * Interface:  keyIO
 * Required Port:  kb
 * To Provider Message:  result
 */
void
calc_kb_result( const r_t p_value )
{
  keypad_tocalc_result(  p_value );
}
/*
 * UML Domain Functions (Synchronous Services)
 */

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const calc_class_info[ calc_MAX_CLASS_NUMBERS ] = {
  &pG_calc_EXPR_extent,
  &pG_calc_VAL_extent,
  &pG_calc_OP_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t calc_EventDispatcher[ calc_STATE_MODELS ] = {
  calc_class_dispatchers
};

void calc_execute_initialization()
{
}
