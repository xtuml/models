/*----------------------------------------------------------------------------
 * File:  calc_EXPR_class.h
 *
 * Class:       expression  (EXPR)
 * Component:   calc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef CALC_EXPR_CLASS_H
#define CALC_EXPR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   expression  (EXPR)
 */
struct calc_EXPR {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  r_t evaluation;  /* - evaluation */
  i_t raw[80];  /* - raw */
  i_t index;  /* - index */
  i_t outdex;  /* - outdex */

  /* relationship storage */
  calc_OP * OP_R1;
};
i_t calc_EXPR_op_getkey( calc_EXPR * );
void calc_EXPR_op_init( calc_EXPR * );
void calc_EXPR_op_addkey( calc_EXPR *, i_t );
void calc_EXPR_op_combine( calc_EXPR *, i_t );

void calc_EXPR_R1_Link( calc_OP *, calc_EXPR * );
/* Note:  OP<-R1->EXPR unrelate accessor not needed */


#define calc_EXPR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_calc_EXPR_extent;

/*
 * instance event:  EXPR2:'op'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_code; /* code */
} calc_EXPRevent2;
extern const Escher_xtUMLEventConstant_t calc_EXPRevent2c;

/*
 * instance event:  EXPR4:'symbol'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_code; /* code */
} calc_EXPRevent4;
extern const Escher_xtUMLEventConstant_t calc_EXPRevent4c;

/*
 * union of events targeted towards 'EXPR' state machine
 */
typedef union {
  calc_EXPRevent2 expr21;  
  calc_EXPRevent4 expr42;  
} calc_EXPR_Events_u;

/*
 * enumeration of state model states for class
 */
#define calc_EXPR_STATE_1 1  /* state [1]:  (entering op1) */
#define calc_EXPR_STATE_2 2  /* state [2]:  (entering operator) */
#define calc_EXPR_STATE_3 3  /* state [3]:  (entering op2) */
#define calc_EXPR_STATE_4 4  /* state [4]:  (combining) */
/*
 * enumeration of state model event numbers
 */
#define CALC_EXPREVENT2NUM 0  /* EXPR2:'op' */
#define CALC_EXPREVENT4NUM 1  /* EXPR4:'symbol' */
extern void calc_EXPR_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* CALC_EXPR_CLASS_H */


