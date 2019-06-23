/*----------------------------------------------------------------------------
 * File:  ${te_file.types}.${te_file.hdr_file_ext}
 *
 * ${te_copyright.body}
 *
 *
 * System Name:  ${te_sys.ExecutableName}
 * System ID:    ${te_sys.SystemID}
 * Model Compiler Product Information:
 * Product:  ${te_sys.ModelCompilerName}
 * System default/colored values:
 * MaxStringLen:  ${te_sys.MaxStringLen}
 * MaxObjExtent:  ${te_sys.MaxObjExtent}
 * MaxRelExtent:  ${te_sys.MaxRelExtent}
 * MaxSelectExtent:  ${te_sys.MaxSelectExtent}
 * MaxSelfEvents:  ${te_sys.MaxSelfEvents}
 * MaxNonSelfEvents:  ${te_sys.MaxNonSelfEvents}
 * MaxTimers:  ${te_sys.MaxTimers}
 * MaxInterleavedBridges:  ${te_sys.MaxInterleavedBridges}
 * MaxInterleavedBridgeDataSize:  ${te_sys.MaxInterleavedBridgeDataSize}
 * CollectionsFlavor:  ${te_sys.CollectionsFlavor}
 * ForcePriorityEvents:  ${te_sys.ForcePriorityEvents}
 * PEIClassCount:  ${te_sys.PEIClassCount}
 * PersistentClassCount:  ${te_sys.PersistentClassCount}
 * PersistInstanceCacheDepth:  ${te_sys.PersistInstanceCacheDepth}
 * PersistLinkCacheDepth:  ${te_sys.PersistLinkCacheDepth}
.for each te_c in active_te_cs
 *
 * Component Name:  ${te_c.Name}
 * MaxObjExtent:  ${te_c.MaxObjExtent}
 * MaxRelExtent:  ${te_c.MaxRelExtent}
 * MaxSelectExtent:  ${te_c.MaxSelectExtent}
 * MaxSelfEvents:  ${te_c.MaxSelfEvents}
 * MaxNonSelfEvents:  ${te_c.MaxNonSelfEvents}
 * MaxPriorityEvents:  ${te_c.MaxPriorityEvents}
 * MaxTimers:  ${te_c.MaxTimers}
 * InterleavedBridges:  ${te_c.InterleavedBridges}
 * PEIClassCount:  ${te_c.PEIClassCount}
 * PersistentClassCount:  ${te_c.PersistentClassCount}
 * InterleavedDataSize:  ${te_sys.MaxInterleavedBridgeDataSize}
 * CollectionsFlavor:  ${te_sys.CollectionsFlavor}
.end for
 *--------------------------------------------------------------------------*/

#ifndef ${te_prefix.define_usw}$u{te_file.types}_$u{te_file.hdr_file_ext}
#define ${te_prefix.define_usw}$u{te_file.types}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

/*
 * Shore up C by declaring our own version of bool.
 */
#ifndef	__cplusplus
typedef unsigned char bool;

#ifdef false
#undef false
#endif

#ifdef true
#undef true
#endif

#define false ( (bool) 0 )
#define true  ( (bool) (!false) )
#endif

#ifdef FALSE
#undef FALSE
#endif

#ifdef TRUE
#undef TRUE
#endif

#define FALSE ( (bool) 0 )
#define TRUE  ( (bool) (!FALSE) )

${system_parameters}

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
typedef /*size_t*/ u4_t ${te_prefix.type}size_t;

/*
 * These are some of the fundamental types used universally.
 */
typedef ${te_typemap.domain_number_type} ${te_typemap.domain_number_name};
typedef ${te_typemap.object_number_type} ${te_typemap.object_number_name};
typedef ${te_typemap.object_size_type} ${te_typemap.object_size_name};
typedef ${te_typemap.instance_index_type} ${te_typemap.instance_index_name};
typedef ${te_typemap.state_number_type} ${te_typemap.state_number_name};
typedef ${te_typemap.event_number_type} ${te_typemap.event_number_name};
typedef ${te_typemap.event_flags_type} ${te_typemap.event_flags_name};
typedef ${te_typemap.event_priority_type} ${te_typemap.event_priority_name};
typedef ${te_typemap.SEM_cell_type} ${te_typemap.SEM_cell_name};
typedef struct {
  ${te_persist.domainnum_type} ${te_persist.domainnum_name};
  ${te_persist.classnum_type} ${te_persist.classnum_name};
  ${te_persist.index_type} ${te_persist.index_name};
} ${te_persist.instid_type};
.if ( te_sys.PersistentClassCount > 0 )
typedef struct { ${te_persist.instid_type} owner, left, right, assoc; } ${te_persist.link_type_name};
.end if

typedef struct {
  ${te_typemap.state_number_name} ${te_instance.current_state};
${inst_id_in_handle}\
} ${te_instance.base};
typedef ${te_instance.base} * ${te_instance.handle};
  .if ( te_sys.InstanceLoading )
#ifdef __SIZEOF_INT128__
typedef unsigned __int128 u128_t;
typedef u128_t ${te_prefix.type}UniqueID_t;
#else
typedef i_t ${te_prefix.type}UniqueID_t;
#endif
  .else
typedef i_t ${te_prefix.type}UniqueID_t;
  .end if
typedef void (*Escher_idf)( Escher_iHandle_t ); 

/* Return code type for dispatch of a polymorphic event (see ${te_file.events}.${te_file.hdr_file_ext}).  */
typedef ${te_typemap.poly_return_type} ${te_typemap.poly_return_name};

/* Interleaved bridge node base type.  */
typedef struct ${te_prefix.type}ilb_s ${te_prefix.type}ilb_t;
typedef void ( * ${te_prefix.type}ilb_fp_t )( ${te_prefix.type}ilb_t * );
struct ${te_prefix.type}ilb_s { ${te_prefix.type}ilb_fp_t f; };

/*
 * Time and date core types.
 */
typedef l_t  ${te_prefix.type}Date_t;
typedef u4_t ${te_prefix.type}TimeStamp_t;
typedef u4_t ${te_prefix.type}uSec_t;

#define DomainMultiplier 1

/*
 * Allow for compilerisms (such as 8051 Tasking) to use memory model
 * hints to the compiler.
 */
#ifndef _reentrant
#define _reentrant
#endif

.if ( te_sys.SystemCPortsType != "BitLevelSignals" )
/*
 * Note we include stdio.h for printf.  Otherwise, it is not needed.
 */
#include <stdio.h>
  .if ( te_sys.InstanceLoading )
#include <stdint.h>
#include <string.h>
  .end if
${te_typemap.user_supplied_data_types}\
.end if
.if ( te_sys.SystemCPortsType != "BitLevelSignals" )
#include "${te_file.factory}.${te_file.hdr_file_ext}"
#include "${te_file.callout}.${te_file.hdr_file_ext}"
  .if ( te_sys.PersistentClassCount > 0 )
    .include "${te_file.arc_path}/t.sys_persist.h"
  .end if
  .include "${te_file.arc_path}/t.sys_events.h"
.end if

${te_typemap.enumeration_info}

${te_typemap.structured_data_types}
.if ( "SystemC" == te_thread.flavor )
#include "${te_file.interfaces}.${te_file.hdr_file_ext}"
.end if
${domain_ids.body}
.// Include the macros for tracing.
.include "${te_file.arc_path}/t.sys_trace.h"
.if ( te_sys.MaxInterleavedBridges > 0 )

  .include "${te_file.arc_path}/t.sys_ilb.h"
.end if

${te_target.c2cplusplus_linkage_end}
#endif  /* ${te_prefix.define_usw}$u{te_file.types}_$u{te_file.hdr_file_ext} */
.//
