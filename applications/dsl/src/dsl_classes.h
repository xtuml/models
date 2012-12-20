/*----------------------------------------------------------------------------
 * File:  dsl_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_CLASSES_H
#define DSL_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  dsl
 */
extern Escher_Extent_t * const dsl_class_info[];
extern const EventTaker_t dsl_EventDispatcher[];
extern void dsl_execute_initialization( void );

#define dsl_STATE_MODELS 6


/* Define constants to map to class numbers.  */
#define dsl_PROGRAM_CLASS_NUMBER 0
#define dsl_INSTRUCTION_CLASS_NUMBER 1
#define dsl_CARHOME_CLASS_NUMBER 2
#define dsl_CARNEXT_CLASS_NUMBER 3
#define dsl_NEEDLEUP_CLASS_NUMBER 4
#define dsl_NEEDLEDOWN_CLASS_NUMBER 5
#define dsl_OPIF_CLASS_NUMBER 6
#define dsl_FORLOOP_CLASS_NUMBER 7
#define dsl_DELAY_CLASS_NUMBER 8
#define dsl_WHILELOOP_CLASS_NUMBER 9
#define dsl_STEP_CLASS_NUMBER 10
#define dsl_DEFROST_CLASS_NUMBER 11
#define dsl_COOK_CLASS_NUMBER 12
#define dsl_SPIN_CLASS_NUMBER 13
#define dsl_SPINREVERSE_CLASS_NUMBER 14
#define dsl_COOKSTOP_CLASS_NUMBER 15
#define dsl_LEDCMD_CLASS_NUMBER 16
#define dsl_LEDSOFF_CLASS_NUMBER 17
#define dsl_LEDSON_CLASS_NUMBER 18
#define dsl_LEDWALK_CLASS_NUMBER 19
#define dsl_LEDWORM_CLASS_NUMBER 20
#define dsl_ASCMD_CLASS_NUMBER 21
#define dsl_MAX_CLASS_NUMBERS 22

/* Provide a map of classes to task numbers.  */
#define dsl_TASK_NUMBERS  0, 0, 0, 0, 0, 0

#define dsl_CLASS_INFO_INIT\
  &pG_dsl_PROGRAM_extent,\
  &pG_dsl_INSTRUCTION_extent,\
  &pG_dsl_CARHOME_extent,\
  &pG_dsl_CARNEXT_extent,\
  &pG_dsl_NEEDLEUP_extent,\
  &pG_dsl_NEEDLEDOWN_extent,\
  &pG_dsl_OPIF_extent,\
  &pG_dsl_FORLOOP_extent,\
  &pG_dsl_DELAY_extent,\
  &pG_dsl_WHILELOOP_extent,\
  &pG_dsl_STEP_extent,\
  &pG_dsl_DEFROST_extent,\
  &pG_dsl_COOK_extent,\
  &pG_dsl_SPIN_extent,\
  &pG_dsl_SPINREVERSE_extent,\
  &pG_dsl_COOKSTOP_extent,\
  &pG_dsl_LEDCMD_extent,\
  &pG_dsl_LEDSOFF_extent,\
  &pG_dsl_LEDSON_extent,\
  &pG_dsl_LEDWALK_extent,\
  &pG_dsl_LEDWORM_extent,\
  &pG_dsl_ASCMD_extent

#define dsl_class_dispatchers\
  dsl_PROGRAM_Dispatch,\
  dsl_INSTRUCTION_Dispatch,\
  dsl_CARHOME_Dispatch,\
  dsl_CARNEXT_Dispatch,\
  dsl_NEEDLEUP_Dispatch,\
  dsl_NEEDLEDOWN_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct dsl_PROGRAM dsl_PROGRAM;
typedef struct dsl_INSTRUCTION dsl_INSTRUCTION;
typedef struct dsl_CARHOME dsl_CARHOME;
typedef struct dsl_CARNEXT dsl_CARNEXT;
typedef struct dsl_NEEDLEUP dsl_NEEDLEUP;
typedef struct dsl_NEEDLEDOWN dsl_NEEDLEDOWN;
typedef struct dsl_OPIF dsl_OPIF;
typedef struct dsl_FORLOOP dsl_FORLOOP;
typedef struct dsl_DELAY dsl_DELAY;
typedef struct dsl_WHILELOOP dsl_WHILELOOP;
typedef struct dsl_STEP dsl_STEP;
typedef struct dsl_DEFROST dsl_DEFROST;
typedef struct dsl_COOK dsl_COOK;
typedef struct dsl_SPIN dsl_SPIN;
typedef struct dsl_SPINREVERSE dsl_SPINREVERSE;
typedef struct dsl_COOKSTOP dsl_COOKSTOP;
typedef struct dsl_LEDCMD dsl_LEDCMD;
typedef struct dsl_LEDSOFF dsl_LEDSOFF;
typedef struct dsl_LEDSON dsl_LEDSON;
typedef struct dsl_LEDWALK dsl_LEDWALK;
typedef struct dsl_LEDWORM dsl_LEDWORM;
typedef struct dsl_ASCMD dsl_ASCMD;

/* union of class declarations so we may derive largest class size */
#define dsl_CLASS_U \
  char dsl_dummy;\



#include "dsl.h"
#include "dsl_PROGRAM_class.h"
#include "dsl_INSTRUCTION_class.h"
#include "dsl_OPIF_class.h"
#include "dsl_FORLOOP_class.h"
#include "dsl_DELAY_class.h"
#include "dsl_WHILELOOP_class.h"
#include "dsl_STEP_class.h"
#include "dsl_DEFROST_class.h"
#include "dsl_COOK_class.h"
#include "dsl_SPIN_class.h"
#include "dsl_SPINREVERSE_class.h"
#include "dsl_COOKSTOP_class.h"
#include "dsl_LEDCMD_class.h"
#include "dsl_LEDSOFF_class.h"
#include "dsl_LEDSON_class.h"
#include "dsl_LEDWALK_class.h"
#include "dsl_LEDWORM_class.h"
#include "dsl_ASCMD_class.h"
#include "dsl_CARHOME_class.h"
#include "dsl_CARNEXT_class.h"
#include "dsl_NEEDLEUP_class.h"
#include "dsl_NEEDLEDOWN_class.h"


/*
 * roll-up of all events (with their parameters) for domain dsl
 */
typedef union {
} dsl_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* DSL_CLASSES_H */

