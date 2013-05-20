/*----------------------------------------------------------------------------
 * File:  modem_sys_types.h
 *
 * your copyright statement can go here (from te_copyright.body)
 *
 *
 * System Name:  
 * System ID:    1
 * Model Compiler Product Information:
 * Product:  
 * Version:  
 * S/N:      
 * System default/colored values:
 * MaxStringLen:  32
 * MaxObjExtent:  0
 * MaxRelExtent:  0
 * MaxSelectExtent:  0
 * MaxSelfEvents:  0
 * MaxNonSelfEvents:  0
 * MaxTimers:  0
 * MaxInterleavedBridges:  0
 * MaxInterleavedBridgeDataSize:  8
 * CollectionsFlavor:  0
 * ForcePriorityEvents:  FALSE
 * PEIClassCount:  0
 * PersistentClassCount:  0
 * PersistInstanceCacheDepth:  128
 * PersistLinkCacheDepth:  128
 *--------------------------------------------------------------------------*/

#ifndef MODEM_SYS_TYPES_H
#define MODEM_SYS_TYPES_H


// The following prescribes fixed point arithmetic.
// However, support for this has been spotty in SystemC.
//#define SC_INCLUDE_FX
#include "systemc.h"

#define FALSE ( (bool) 0 )
#define TRUE  ( (bool) (!FALSE) )

#ifndef _MSC_VER
#define boolean bool
#endif

#define ESCHER_SYS_MAX_STRING_LEN 32
#define ESCHER_PERSIST_INST_CACHE_DEPTH 128
#define ESCHER_PERSIST_LINK_CACHE_DEPTH 128
#define ESCHER_SYS_MAX_ASSOCIATION_EXTENT 0
#define ESCHER_SYS_MAX_TRANSIENT_EXTENT 0
#define SYS_MAX_CONTAINERS ( ESCHER_SYS_MAX_ASSOCIATION_EXTENT + ESCHER_SYS_MAX_TRANSIENT_EXTENT )
#define ESCHER_SYS_MAX_SELF_EVENTS 0
#define ESCHER_SYS_MAX_NONSELF_EVENTS 0
#define ESCHER_SYS_MAX_XTUML_EVENTS ( ESCHER_SYS_MAX_SELF_EVENTS + ESCHER_SYS_MAX_NONSELF_EVENTS )
#define ESCHER_SYS_MAX_XTUML_TIMERS 0
#define ESCHER_SYS_MAX_INTERLEAVED_BRIDGES 0
#define ESCHER_SYS_MAX_INTERLEAVED_BRIDGE_DATA 8


/*
 * Core types with byte widths defined for MISRA-C compliance.
 */
typedef          char    c_t;
typedef unsigned char   uc_t;
typedef          int     i_t;
typedef unsigned int    ui_t;
typedef          long    l_t;
typedef unsigned long   ul_t;
typedef   signed char   s1_t;
typedef unsigned char   u1_t;
typedef   signed short  s2_t;
typedef unsigned short  u2_t;
typedef   signed long   s4_t;
typedef unsigned long   u4_t;
typedef          double r_t;
typedef          float  r4_t;
typedef          double r8_t;

/*
 * These are some of the fundamental types used universally.
 */
typedef u1_t Escher_DomainNumber_t;
typedef u2_t Escher_ClassNumber_t;
typedef u2_t Escher_ClassSize_t;
typedef u2_t Escher_InstanceIndex_t;
typedef u1_t Escher_StateNumber_t;
typedef u1_t Escher_EventNumber_t;
typedef u1_t Escher_EventFlags_t;
typedef u1_t Escher_EventPriority_t;
typedef u1_t Escher_SEMcell_t;
typedef struct {
  Escher_DomainNumber_t domainnum;
  Escher_ClassNumber_t classnum;
  Escher_InstanceIndex_t index;
} InstanceIdentifier_t;

typedef struct {
  Escher_StateNumber_t current_state;
} Escher_InstanceBase_t;
typedef Escher_InstanceBase_t * Escher_iHandle_t;
typedef Escher_iHandle_t Escher_UniqueID_t;
typedef void (*Escher_idf)( Escher_iHandle_t ); 

/* Return code type for dispatch of a polymorphic event (see sys_events.h).  */
typedef u1_t Escher_PolyEventRC_t;

/* Interleaved bridge node base type.  */
typedef struct Escher_ilb_s Escher_ilb_t;
typedef void ( * Escher_ilb_fp_t )( Escher_ilb_t * );
struct Escher_ilb_s { Escher_ilb_fp_t f; };

/*
 * Time and date core types.
 */
typedef l_t  Escher_Date_t;
typedef u4_t Escher_TimeStamp_t;
typedef u4_t Escher_uSec_t;

#define DomainMultiplier 1

/*
 * Allow for compilerisms (such as 8051 Tasking) to use memory model
 * hints to the compiler.
 */
#ifndef _reentrant
#define _reentrant
#endif

/*
 * Note we include stdio.h for printf.  Otherwise, it is not needed.
 */
#include <stdio.h>
#include "sys_xtuml.h"
#include "sys_user_co.h"




#include "sysc_interfaces.h"
#define SYSTEM_DOMAIN_COUNT 0

/*----------------------------------------------------------------------------
 *
 * Run time instrumentation and tracing declarations are defined here.
 *
 * Note:
 *   Multi-line macros use the do {...} while (0) construct recommended
 *   by cert.org (PRE10-C, PRE10-CPP).
 *
 *   Users may copy this file to the /gen folder and modify these macros
 *   as desired to change the way tracing works.
 *
 *--------------------------------------------------------------------------*/

#define XTUML_TRACE_FLUSH( i ) fflush( i )

/*
 * State transition start tracing:
 */
/* To suppress source identification in tracing, uncomment the following macro */
/* #define XTUML_SOURCE_PROLOGUE */

#ifndef XTUML_SOURCE_PROLOGUE
#define XTUML_SOURCE_PROLOGUE printf( "%s #%6u: ", __FILE__, __LINE__ ); XTUML_TRACE_FLUSH( 0 )
#endif

/* To suppress state transition start tracing, uncomment the following macro */
/* #define STATE_TXN_START_TRACE( obj_kl, state_num, state_name ) */

#ifndef STATE_TXN_START_TRACE
#define STATE_TXN_START_TRACE( obj_kl, state_num, state_name ) do {   XTUML_SOURCE_PROLOGUE;   printf( "Transition started:  %s State [%u] %s\n", obj_kl, state_num, state_name ); } while (0)
#endif

/*
 * State transition complete tracing:
 */
/* To suppress state transition complete tracing, uncomment the following macro */
/* #define STATE_TXN_END_TRACE( obj_kl, state_num, state_name ) */

#ifndef STATE_TXN_END_TRACE
#define STATE_TXN_END_TRACE( obj_kl, state_num, state_name ) do {   XTUML_SOURCE_PROLOGUE;   printf( "Transition complete:  %s State [%u] %s\n", obj_kl, state_num, state_name );   XTUML_TRACE_FLUSH( 0 ); } while (0)
#endif

/*
 * Event ignored tracing:
 */
/* To unsuppress event ignored tracing, comment out the following macro.  */
#define STATE_TXN_IG_TRACE( obj_kl, state_num )

#ifndef STATE_TXN_IG_TRACE
#define STATE_TXN_IG_TRACE( obj_kl, state_num ) do {   XTUML_SOURCE_PROLOGUE;   printf( "Event ignored:  %s current_state = %u\n", obj_kl, state_num );   XTUML_TRACE_FLUSH( 0 ); } while (0)
#endif

/*
 * Event can't happen tracing:
 */
/* To suppress can't happen tracing, uncomment the following macro */
/* #define STATE_TXN_CH_TRACE( obj_kl, state_num ) */

#ifndef STATE_TXN_CH_TRACE
#define STATE_TXN_CH_TRACE( obj_kl, state_num ) do {   XTUML_SOURCE_PROLOGUE;   printf( "Event cannot happen:  %s current_state = %u\n", obj_kl, state_num );   XTUML_TRACE_FLUSH( 0 ); } while (0)
#endif

/*
 * Component message start tracing:
 */
/* To suppress component message start tracing, uncomment the following macro */
/* #define COMP_MSG_START_TRACE( arg_format, component_number, port_number, message_number, args... ) */

#ifndef COMP_MSG_START_TRACE
#define COMP_MSG_START_TRACE( arg_format, component_number, port_number, message_number, args... ) do {   XTUML_SOURCE_PROLOGUE;   printf( "component %d port %d message %d " arg_format "\n", component_number, port_number, message_number, ## args );   XTUML_TRACE_FLUSH( 0 ); } while (0)
#endif

/*
 * Component message end tracing:
 */


/*
 * Object Action Language (OAL) statement level tracing:
 */

/* To suppress statement source identification, uncomment the following macro */
/* #define XTUML_OAL_STMT_TRACE( blck_level, stmt_action ) */

#ifndef XTUML_OAL_STMT_TRACE
#define XTUML_OAL_STMT_TRACE( blck_level, stmt_action ) do {   XTUML_SOURCE_PROLOGUE;   { /* indenting */ s1_t i; for ( i = 0; i < blck_level; i++ ) printf( "  " ); }   printf( "%s\n", stmt_action );   XTUML_TRACE_FLUSH( 0 ); } while (0)
#endif

/* To suppress empty handle detection, modify the following macro.  */

#ifndef XTUML_EMPTY_HANDLE_TRACE
#define XTUML_EMPTY_HANDLE_TRACE( object_keyletters, s ) do { UserEmptyHandleDetectedCallout( object_keyletters, s ); } while (0)
#endif

/*
 * Declare state information structure.
 */
typedef struct Escher_StateInfo_s Escher_StateInfo_s;
struct Escher_StateInfo_s {
  Escher_StateNumber_t state_number;  /* 'real' state number */
  c_t * state_name;
};


#endif  /* MODEM_SYS_TYPES_H */
