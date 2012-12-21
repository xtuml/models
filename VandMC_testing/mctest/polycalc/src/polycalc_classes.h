/*----------------------------------------------------------------------------
 * File:  polycalc_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_CLASSES_H
#define POLYCALC_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  polycalc
 */
extern Escher_Extent_t * const polycalc_class_info[];
extern const EventTaker_t polycalc_EventDispatcher[];
extern void polycalc_execute_initialization( void );

#define polycalc_STATE_MODELS 21


/* Define constants to map to class numbers.  */
#define polycalc_ADD_CLASS_NUMBER 0
#define polycalc_DIV_CLASS_NUMBER 1
#define polycalc_GARDEN_CLASS_NUMBER 2
#define polycalc_GENERAL_CLASS_NUMBER 3
#define polycalc_MUL_CLASS_NUMBER 4
#define polycalc_OP_CLASS_NUMBER 5
#define polycalc_PUZZLE_CLASS_NUMBER 6
#define polycalc_SUB_CLASS_NUMBER 7
#define polycalc_CD_CLASS_NUMBER 8
#define polycalc_DRIVE_CLASS_NUMBER 9
#define polycalc_LOCATION_CLASS_NUMBER 10
#define polycalc_PORTAL_CLASS_NUMBER 11
#define polycalc_TAPE_CLASS_NUMBER 12
#define polycalc_DVD_CLASS_NUMBER 13
#define polycalc_CARROT_CLASS_NUMBER 14
#define polycalc_FRUIT_CLASS_NUMBER 15
#define polycalc_ORANGE_CLASS_NUMBER 16
#define polycalc_TOMATO_CLASS_NUMBER 17
#define polycalc_VEGETABLE_CLASS_NUMBER 18
#define polycalc_PUZZLE_CLASS_NUMBER_CB 19
#define polycalc_LOCATION_CLASS_NUMBER_CB 20
#define polycalc_MAX_CLASS_NUMBERS 21

/* Provide a map of classes to task numbers.  */
#define polycalc_TASK_NUMBERS  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

#define polycalc_CLASS_INFO_INIT\
  &pG_polycalc_ADD_extent,\
  &pG_polycalc_DIV_extent,\
  &pG_polycalc_GARDEN_extent,\
  &pG_polycalc_GENERAL_extent,\
  &pG_polycalc_MUL_extent,\
  &pG_polycalc_OP_extent,\
  &pG_polycalc_PUZZLE_extent,\
  &pG_polycalc_SUB_extent,\
  &pG_polycalc_CD_extent,\
  &pG_polycalc_DRIVE_extent,\
  &pG_polycalc_LOCATION_extent,\
  &pG_polycalc_PORTAL_extent,\
  &pG_polycalc_TAPE_extent,\
  &pG_polycalc_DVD_extent,\
  &pG_polycalc_CARROT_extent,\
  &pG_polycalc_FRUIT_extent,\
  &pG_polycalc_ORANGE_extent,\
  &pG_polycalc_TOMATO_extent,\
  &pG_polycalc_VEGETABLE_extent,\
  0,\
  0

#define polycalc_class_dispatchers\
  polycalc_ADD_Dispatch,\
  polycalc_DIV_Dispatch,\
  polycalc_GARDEN_Dispatch,\
  polycalc_GENERAL_Dispatch,\
  polycalc_MUL_Dispatch,\
  polycalc_OP_Dispatch,\
  polycalc_PUZZLE_Dispatch,\
  polycalc_SUB_Dispatch,\
  polycalc_CD_Dispatch,\
  polycalc_DRIVE_Dispatch,\
  polycalc_LOCATION_Dispatch,\
  polycalc_PORTAL_Dispatch,\
  polycalc_TAPE_Dispatch,\
  polycalc_DVD_Dispatch,\
  polycalc_CARROT_Dispatch,\
  polycalc_FRUIT_Dispatch,\
  polycalc_ORANGE_Dispatch,\
  polycalc_TOMATO_Dispatch,\
  polycalc_VEGETABLE_Dispatch,\
  polycalc_PUZZLE_CBDispatch,\
  polycalc_LOCATION_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct polycalc_ADD polycalc_ADD;
typedef struct polycalc_DIV polycalc_DIV;
typedef struct polycalc_GARDEN polycalc_GARDEN;
typedef struct polycalc_GENERAL polycalc_GENERAL;
typedef struct polycalc_MUL polycalc_MUL;
typedef struct polycalc_OP polycalc_OP;
typedef struct polycalc_PUZZLE polycalc_PUZZLE;
typedef struct polycalc_SUB polycalc_SUB;
typedef struct polycalc_CD polycalc_CD;
typedef struct polycalc_DRIVE polycalc_DRIVE;
typedef struct polycalc_LOCATION polycalc_LOCATION;
typedef struct polycalc_PORTAL polycalc_PORTAL;
typedef struct polycalc_TAPE polycalc_TAPE;
typedef struct polycalc_DVD polycalc_DVD;
typedef struct polycalc_CARROT polycalc_CARROT;
typedef struct polycalc_FRUIT polycalc_FRUIT;
typedef struct polycalc_ORANGE polycalc_ORANGE;
typedef struct polycalc_TOMATO polycalc_TOMATO;
typedef struct polycalc_VEGETABLE polycalc_VEGETABLE;
typedef struct polycalc_PUZZLE_CB polycalc_PUZZLE_CB;
typedef struct polycalc_LOCATION_CB polycalc_LOCATION_CB;

/* union of class declarations so we may derive largest class size */
#define polycalc_CLASS_U \
  char polycalc_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
extern void polycalc_test( void );
extern void polycalc_deeptest( void );
extern void polycalc_xit( void );



#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc.h"
#include "polycalc_ADD_class.h"
#include "polycalc_DIV_class.h"
#include "polycalc_GARDEN_class.h"
#include "polycalc_GENERAL_class.h"
#include "polycalc_MUL_class.h"
#include "polycalc_OP_class.h"
#include "polycalc_PUZZLE_class.h"
#include "polycalc_SUB_class.h"
#include "polycalc_CD_class.h"
#include "polycalc_DRIVE_class.h"
#include "polycalc_LOCATION_class.h"
#include "polycalc_PORTAL_class.h"
#include "polycalc_TAPE_class.h"
#include "polycalc_DVD_class.h"
#include "polycalc_CARROT_class.h"
#include "polycalc_FRUIT_class.h"
#include "polycalc_ORANGE_class.h"
#include "polycalc_TOMATO_class.h"
#include "polycalc_VEGETABLE_class.h"


/*
 * roll-up of all events (with their parameters) for domain polycalc
 */
typedef union {
  polycalc_ADD_Events_u polycalc_ADD_Events_u_namespace;
  polycalc_DIV_Events_u polycalc_DIV_Events_u_namespace;
  polycalc_GARDEN_Events_u polycalc_GARDEN_Events_u_namespace;
  polycalc_GENERAL_Events_u polycalc_GENERAL_Events_u_namespace;
  polycalc_MUL_Events_u polycalc_MUL_Events_u_namespace;
  polycalc_OP_Events_u polycalc_OP_Events_u_namespace;
  polycalc_PUZZLE_Events_u polycalc_PUZZLE_Events_u_namespace;
  polycalc_SUB_Events_u polycalc_SUB_Events_u_namespace;
  polycalc_CD_Events_u polycalc_CD_Events_u_namespace;
  polycalc_DRIVE_Events_u polycalc_DRIVE_Events_u_namespace;
  polycalc_LOCATION_Events_u polycalc_LOCATION_Events_u_namespace;
  polycalc_PORTAL_Events_u polycalc_PORTAL_Events_u_namespace;
  polycalc_TAPE_Events_u polycalc_TAPE_Events_u_namespace;
  polycalc_DVD_Events_u polycalc_DVD_Events_u_namespace;
  polycalc_CARROT_Events_u polycalc_CARROT_Events_u_namespace;
  polycalc_FRUIT_Events_u polycalc_FRUIT_Events_u_namespace;
  polycalc_ORANGE_Events_u polycalc_ORANGE_Events_u_namespace;
  polycalc_TOMATO_Events_u polycalc_TOMATO_Events_u_namespace;
  polycalc_VEGETABLE_Events_u polycalc_VEGETABLE_Events_u_namespace;
  polycalc_PUZZLE_CB_Events_u polycalc_PUZZLE_CB_Events_u_namespace;
  polycalc_LOCATION_CB_Events_u polycalc_LOCATION_CB_Events_u_namespace;
} polycalc_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_CLASSES_H */

