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
/* #define ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE */

#ifndef ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE
#define ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE ${printf}( "%s #%6u: ", __FILE__, __LINE__ ); XTUML_TRACE_FLUSH( 0 )
#endif

/* To suppress state transition start tracing, uncomment the following macro */
/* #define ${te_trace.state_txn_start}( obj_kl, state_num, state_name ) */

#ifndef ${te_trace.state_txn_start}
#define ${te_trace.state_txn_start}( obj_kl, state_num, state_name ) \
do { \
  ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE; \
  ${printf}( "Transition started:  %s State [%u] %s\n", obj_kl, state_num, state_name ); \
} while (0)
#endif

/*
 * State transition complete tracing:
 */
/* To suppress state transition complete tracing, uncomment the following macro */
/* #define ${te_trace.state_txn_end}( obj_kl, state_num, state_name ) */

#ifndef ${te_trace.state_txn_end}
#define ${te_trace.state_txn_end}( obj_kl, state_num, state_name ) \
do { \
  ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE; \
  ${printf}( "Transition complete:  %s State [%u] %s\n", obj_kl, state_num, state_name ); \
  XTUML_TRACE_FLUSH( 0 ); \
} while (0)
#endif

/*
 * Event ignored tracing:
 */
/* To unsuppress event ignored tracing, comment out the following macro.  */
#define ${te_trace.state_txn_event_ignored}( obj_kl, state_num )

#ifndef ${te_trace.state_txn_event_ignored}
#define ${te_trace.state_txn_event_ignored}( obj_kl, state_num ) \
do { \
  ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE; \
  ${printf}( "Event ignored:  %s current_state = %u\n", obj_kl, state_num ); \
  XTUML_TRACE_FLUSH( 0 ); \
} while (0)
#endif

/*
 * Event can't happen tracing:
 */
/* To suppress can't happen tracing, uncomment the following macro */
/* #define ${te_trace.state_txn_cant_happen}( obj_kl, state_num ) */

#ifndef ${te_trace.state_txn_cant_happen}
#define ${te_trace.state_txn_cant_happen}( obj_kl, state_num ) \
do { \
  ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE; \
  ${printf}( "Event cannot happen:  %s current_state = %u\n", obj_kl, state_num ); \
  XTUML_TRACE_FLUSH( 0 ); \
} while (0)
#endif

/*
 * Component message start tracing:
 */
/* To suppress component message start tracing, uncomment the following macro */
/* #define ${te_trace.component_msg_start}( arg_format, component_number, port_number, message_number, args... ) */

#ifndef ${te_trace.component_msg_start}
#define ${te_trace.component_msg_start}( arg_format, component_number, port_number, message_number, args... ) \
do { \
  ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE; \
  ${printf}( "component %d port %d message %d " arg_format "\n", component_number, port_number, message_number, ## args ); \
  XTUML_TRACE_FLUSH( 0 ); \
} while (0)
#endif

/*
 * Component message end tracing:
 */


/*
 * Object Action Language (OAL) statement level tracing:
 */

/* To suppress statement source identification, uncomment the following macro */
/* #define ${te_prefix.define_usw}XTUML_OAL_STMT_TRACE( blck_level, stmt_action ) */

#ifndef ${te_prefix.define_usw}XTUML_OAL_STMT_TRACE
#define ${te_prefix.define_usw}XTUML_OAL_STMT_TRACE( blck_level, stmt_action ) \
do { \
  ${te_prefix.define_usw}XTUML_SOURCE_PROLOGUE; \
  { /* indenting */ s1_t i; for ( i = 0; i < blck_level; i++ ) ${printf}( "  " ); } \
  ${printf}( "%s\n", stmt_action ); \
  XTUML_TRACE_FLUSH( 0 ); \
} while (0)
#endif

/* To suppress empty handle detection, modify the following macro.  */

#ifndef ${te_prefix.define_usw}XTUML_EMPTY_HANDLE_TRACE
#define ${te_prefix.define_usw}XTUML_EMPTY_HANDLE_TRACE( object_keyletters, s ) \
do { ${te_callout.empty_handle_detected}( object_keyletters, s ); } while (0)
#endif

void * xtUML_detect_empty_handle( void *, const char *, const char * );

/*
 * Declare state information structure.
 */
typedef struct ${te_prefix.type}StateInfo_s ${te_prefix.type}StateInfo_s;
struct ${te_prefix.type}StateInfo_s {
  ${te_typemap.state_number_name} state_number;  /* 'real' state number */
  c_t * state_name;
};
