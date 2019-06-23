/*----------------------------------------------------------------------------
 * File:  calc_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  calc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CALC_CLASSES_H
#define CALC_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  calc
 */
extern Escher_Extent_t * const calc_class_info[];
extern const EventTaker_t calc_EventDispatcher[];
void calc_execute_initialization( void );

#define calc_STATE_MODELS 2
/* Define constants to map to class numbers.  */
#define calc_EXPR_CLASS_NUMBER 0
#define calc_VAL_CLASS_NUMBER 1
#define calc_OP_CLASS_NUMBER 2
#define calc_MAX_CLASS_NUMBERS 3

/* Provide a map of classes to task numbers.  */
#define calc_TASK_NUMBERS  0, 0

#define calc_class_dispatchers\
  calc_EXPR_Dispatch,\
  calc_VAL_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct calc_EXPR calc_EXPR;
typedef struct calc_VAL calc_VAL;
typedef struct calc_OP calc_OP;

/* union of class declarations so we may derive largest class size */
#define calc_CLASS_U \
  char calc_dummy;\

/*
 * Internal enumerated and structured data types for component:  calc
 */
/*
 * Enumerated Data Type:  optype
 */
typedef enum {
 calc_optype__UNINITIALIZED__e = -1,
 calc_optype_plus_e = 0,
 calc_optype_minus_e = 1,
 calc_optype_multiply_e = 2,
 calc_optype_divide_e = 3,
 calc_optype_equals_e = 4
} calculator_optype_t;


#include "LOG_bridge.h"
#include "ARCH_bridge.h"
#include "calc.h"
#include "calc_EXPR_class.h"
#include "calc_OP_class.h"
#include "calc_VAL_class.h"
/*
 * roll-up of all events (with their parameters) for component calc
 */
typedef union {
  calc_EXPR_Events_u calc_EXPR_Events_u_namespace;
  calc_VAL_Events_u calc_VAL_Events_u_namespace;
} calc_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* CALC_CLASSES_H */
