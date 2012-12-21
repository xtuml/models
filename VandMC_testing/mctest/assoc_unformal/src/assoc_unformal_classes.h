/*----------------------------------------------------------------------------
 * File:  assoc_unformal_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_CLASSES_H
#define ASSOC_UNFORMAL_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  assoc_unformal
 */
extern Escher_Extent_t * const assoc_unformal_class_info[];
extern const EventTaker_t assoc_unformal_EventDispatcher[];
extern void assoc_unformal_execute_initialization( void );

#define assoc_unformal_STATE_MODELS 1


/* Define constants to map to class numbers.  */
#define assoc_unformal_B_CLASS_NUMBER 0
#define assoc_unformal_S_CLASS_NUMBER 1
#define assoc_unformal_T_CLASS_NUMBER 2
#define assoc_unformal_P_CLASS_NUMBER 3
#define assoc_unformal_I_CLASS_NUMBER 4
#define assoc_unformal_G_CLASS_NUMBER 5
#define assoc_unformal_L_CLASS_NUMBER 6
#define assoc_unformal_BB_CLASS_NUMBER 7
#define assoc_unformal_ZZ_CLASS_NUMBER 8
#define assoc_unformal_Z_CLASS_NUMBER 9
#define assoc_unformal_F_CLASS_NUMBER 10
#define assoc_unformal_D_CLASS_NUMBER 11
#define assoc_unformal_C_CLASS_NUMBER 12
#define assoc_unformal_N_CLASS_NUMBER 13
#define assoc_unformal_X_CLASS_NUMBER 14
#define assoc_unformal_Y_CLASS_NUMBER 15
#define assoc_unformal_O_CLASS_NUMBER 16
#define assoc_unformal_E_CLASS_NUMBER 17
#define assoc_unformal_R_CLASS_NUMBER 18
#define assoc_unformal_V_CLASS_NUMBER 19
#define assoc_unformal_W_CLASS_NUMBER 20
#define assoc_unformal_A_CLASS_NUMBER 21
#define assoc_unformal_OO_CLASS_NUMBER 22
#define assoc_unformal_M_CLASS_NUMBER 23
#define assoc_unformal_U_CLASS_NUMBER 24
#define assoc_unformal_J_CLASS_NUMBER 25
#define assoc_unformal_K_CLASS_NUMBER 26
#define assoc_unformal_Q_CLASS_NUMBER 27
#define assoc_unformal_AA_CLASS_NUMBER 28
#define assoc_unformal_H_CLASS_NUMBER 29
#define assoc_unformal_MAX_CLASS_NUMBERS 30

/* Provide a map of classes to task numbers.  */
#define assoc_unformal_TASK_NUMBERS  0

#define assoc_unformal_CLASS_INFO_INIT\
  &pG_assoc_unformal_B_extent,\
  &pG_assoc_unformal_S_extent,\
  &pG_assoc_unformal_T_extent,\
  &pG_assoc_unformal_P_extent,\
  &pG_assoc_unformal_I_extent,\
  &pG_assoc_unformal_G_extent,\
  &pG_assoc_unformal_L_extent,\
  &pG_assoc_unformal_BB_extent,\
  &pG_assoc_unformal_ZZ_extent,\
  &pG_assoc_unformal_Z_extent,\
  &pG_assoc_unformal_F_extent,\
  &pG_assoc_unformal_D_extent,\
  &pG_assoc_unformal_C_extent,\
  &pG_assoc_unformal_N_extent,\
  &pG_assoc_unformal_X_extent,\
  &pG_assoc_unformal_Y_extent,\
  &pG_assoc_unformal_O_extent,\
  &pG_assoc_unformal_E_extent,\
  &pG_assoc_unformal_R_extent,\
  &pG_assoc_unformal_V_extent,\
  &pG_assoc_unformal_W_extent,\
  &pG_assoc_unformal_A_extent,\
  &pG_assoc_unformal_OO_extent,\
  &pG_assoc_unformal_M_extent,\
  &pG_assoc_unformal_U_extent,\
  &pG_assoc_unformal_J_extent,\
  &pG_assoc_unformal_K_extent,\
  &pG_assoc_unformal_Q_extent,\
  &pG_assoc_unformal_AA_extent,\
  &pG_assoc_unformal_H_extent

#define assoc_unformal_class_dispatchers\
  assoc_unformal_B_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct assoc_unformal_B assoc_unformal_B;
typedef struct assoc_unformal_S assoc_unformal_S;
typedef struct assoc_unformal_T assoc_unformal_T;
typedef struct assoc_unformal_P assoc_unformal_P;
typedef struct assoc_unformal_I assoc_unformal_I;
typedef struct assoc_unformal_G assoc_unformal_G;
typedef struct assoc_unformal_L assoc_unformal_L;
typedef struct assoc_unformal_BB assoc_unformal_BB;
typedef struct assoc_unformal_ZZ assoc_unformal_ZZ;
typedef struct assoc_unformal_Z assoc_unformal_Z;
typedef struct assoc_unformal_F assoc_unformal_F;
typedef struct assoc_unformal_D assoc_unformal_D;
typedef struct assoc_unformal_C assoc_unformal_C;
typedef struct assoc_unformal_N assoc_unformal_N;
typedef struct assoc_unformal_X assoc_unformal_X;
typedef struct assoc_unformal_Y assoc_unformal_Y;
typedef struct assoc_unformal_O assoc_unformal_O;
typedef struct assoc_unformal_E assoc_unformal_E;
typedef struct assoc_unformal_R assoc_unformal_R;
typedef struct assoc_unformal_V assoc_unformal_V;
typedef struct assoc_unformal_W assoc_unformal_W;
typedef struct assoc_unformal_A assoc_unformal_A;
typedef struct assoc_unformal_OO assoc_unformal_OO;
typedef struct assoc_unformal_M assoc_unformal_M;
typedef struct assoc_unformal_U assoc_unformal_U;
typedef struct assoc_unformal_J assoc_unformal_J;
typedef struct assoc_unformal_K assoc_unformal_K;
typedef struct assoc_unformal_Q assoc_unformal_Q;
typedef struct assoc_unformal_AA assoc_unformal_AA;
typedef struct assoc_unformal_H assoc_unformal_H;

/* union of class declarations so we may derive largest class size */
#define assoc_unformal_CLASS_U \
  char assoc_unformal_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
extern void assoc_unformal_test( void );
extern void assoc_unformal_setup( void );
extern void assoc_unformal_test2( void );
extern void assoc_unformal_xit( void );
extern void assoc_unformal_do_creates( void );
extern void assoc_unformal_test1( void );



#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "assoc_unformal.h"
#include "assoc_unformal_S_class.h"
#include "assoc_unformal_T_class.h"
#include "assoc_unformal_P_class.h"
#include "assoc_unformal_I_class.h"
#include "assoc_unformal_G_class.h"
#include "assoc_unformal_L_class.h"
#include "assoc_unformal_BB_class.h"
#include "assoc_unformal_ZZ_class.h"
#include "assoc_unformal_Z_class.h"
#include "assoc_unformal_F_class.h"
#include "assoc_unformal_D_class.h"
#include "assoc_unformal_C_class.h"
#include "assoc_unformal_N_class.h"
#include "assoc_unformal_X_class.h"
#include "assoc_unformal_Y_class.h"
#include "assoc_unformal_O_class.h"
#include "assoc_unformal_E_class.h"
#include "assoc_unformal_R_class.h"
#include "assoc_unformal_V_class.h"
#include "assoc_unformal_W_class.h"
#include "assoc_unformal_A_class.h"
#include "assoc_unformal_OO_class.h"
#include "assoc_unformal_M_class.h"
#include "assoc_unformal_U_class.h"
#include "assoc_unformal_J_class.h"
#include "assoc_unformal_B_class.h"
#include "assoc_unformal_K_class.h"
#include "assoc_unformal_Q_class.h"
#include "assoc_unformal_AA_class.h"
#include "assoc_unformal_H_class.h"


/*
 * roll-up of all events (with their parameters) for domain assoc_unformal
 */
typedef union {
  assoc_unformal_B_Events_u assoc_unformal_B_Events_u_namespace;
} assoc_unformal_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_CLASSES_H */

