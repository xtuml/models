.//============================================================================
.// Utility functions for translation at the system generation level.
.//============================================================================
.//
.//============================================================================
.// Declare all kinds of constants that govern the size and shape
.// of the overall system.
.// Render some limits for use in this file and some for later in sys_types.
.//============================================================================
.function RenderSystemLimitsDeclarations
  .param inst_ref_set te_cs
  .select any te_ilb from instances of TE_ILB
  .select any te_thread from instances of TE_THREAD
  .select any te_set from instances of TE_SET
  .select any te_string from instances of TE_STRING
  .select any te_tim from instances of TE_TIM
  .select any te_eq from instances of TE_EQ
  .select any te_instance from instances of TE_INSTANCE
  .select any te_persist from instances of TE_PERSIST
  .select any te_sys from instances of TE_SYS
  .//
  .// container allocation
  .assign max_rel_extent = 0
  .assign max_sel_extent = 0
  .// event allocation (and thus queue sizes)
  .assign max_self_events = 0
  .assign max_non_self_events = 0
  .assign max_timers = 0
  .// bridge statistics
  .assign interleaved_bridges = 0
  .// PEI and persistence statistics
  .assign pei_class_count = 0
  .assign persistent_class_count = 0
  .//
  .for each te_c in te_cs
    .assign max_rel_extent = max_rel_extent + te_c.MaxRelExtent
    .assign max_sel_extent = max_sel_extent + te_c.MaxSelectExtent
    .assign max_self_events = max_self_events + te_c.MaxSelfEvents
    .assign max_non_self_events = max_non_self_events + te_c.MaxNonSelfEvents
    .assign max_timers = max_timers + te_c.MaxTimers
    .assign interleaved_bridges = interleaved_bridges + te_c.InterleavedBridges
    .assign pei_class_count = pei_class_count + te_c.PEIClassCount
    .assign persistent_class_count = persistent_class_count + te_c.PersistentClassCount
  .end for
  .assign te_sys.PEIClassCount = pei_class_count
  .assign te_sys.PersistentClassCount = persistent_class_count
  .//
  .// *** Container pool requirements
  .assign persist_inst_cache_depth_max = 128
  .assign persist_link_cache_depth_max = 128
  .if ( te_sys.PersistentClassCount > 0 )
    .assign persist_inst_cache_depth_max = te_sys.PersistInstanceCacheDepth
    .assign persist_link_cache_depth_max = te_sys.PersistLinkCacheDepth
  .end if
#define ${te_string.max_string_length} ${te_sys.MaxStringLen}
#define ${te_persist.instance_cache_depth} ${persist_inst_cache_depth_max}
#define ${te_persist.link_cache_depth} ${persist_link_cache_depth_max}
  .if ( te_sys.MaxRelExtent == 0 )
#define ${te_instance.max_association_extent} ${max_rel_extent}
  .else
/* Note:  User adjusted from calculated worst case value:  ${max_rel_extent} */
#define ${te_instance.max_association_extent} ${te_sys.MaxRelExtent}
    .assign max_rel_extent = te_sys.MaxRelExtent
  .end if
  .//
  .if ( te_sys.MaxSelectExtent == 0 )
#define ${te_instance.max_transient_extent} ${max_sel_extent}
  .else
/* Note:  User adjusted from calculated estimate:  ${max_sel_extent} */
#define ${te_instance.max_transient_extent} ${te_sys.MaxSelectExtent}
    .assign max_sel_extent = te_sys.MaxSelectExtent
  .end if
#define ${te_set.number_of_containoids} ( ${te_instance.max_association_extent} + ${te_instance.max_transient_extent} )
  .// Keep the number of containers allocated for use in mechanism gen.
  .assign te_sys.TotalContainers = ( max_sel_extent + max_rel_extent )
  .// *** Event pool/queue requirements
  .if ( te_sys.MaxSelfEvents == 0 )
    .if ( max_self_events > 0 )
      .// Boost by number of concurrent tasks/threads.
      .if ( te_thread.enabled )
        .assign max_self_events = max_self_events + te_thread.number_of_threads
      .end if
      .// Boost by one to allow for overlap by one (current event).
      .assign max_self_events = max_self_events + 1
    .end if
#define ${te_eq.max_self_events} ${max_self_events}
  .else
/* Note:  user adjusted from calculated estimate.  */
#define ${te_eq.max_self_events} ${te_sys.MaxSelfEvents}
  .end if
  .//
  .if ( te_sys.MaxNonSelfEvents == 0 )
    .if ( max_non_self_events > 0 )
      .// Boost by number of concurrent tasks/threads.
      .if ( te_thread.enabled )
        .assign max_non_self_events = max_non_self_events + te_thread.number_of_threads
      .end if
      .// Boost by one to allow for overlap by one (current event).
      .assign max_non_self_events = max_non_self_events + 1
    .end if
#define ${te_eq.max_nonself_events} ${max_non_self_events}
  .else
/* Note:  User adjusted from calculated estimate.  */
#define ${te_eq.max_nonself_events} ${te_sys.MaxNonSelfEvents}
  .end if
  .//
#define ${te_eq.max_events} ( ${te_eq.max_self_events} + ${te_eq.max_nonself_events} )
  .if ( te_sys.MaxTimers == 0 )
    .// Boost by one to allow for overlap by one (current timer).
    .if ( max_timers > 0 )
      .assign max_timers = max_timers + 1
    .end if
#define ${te_tim.max_timers} ${max_timers}
  .else
/* Note:  User adjusted from calculated estimate:  ${max_timers}.  */
#define ${te_tim.max_timers} ${te_sys.MaxTimers}
  .end if
  .assign te_sys.MaxTimers = max_timers
  .if ( te_sys.MaxInterleavedBridges == 0 )
#define ${te_ilb.define_name} ${interleaved_bridges}
    .// Store result of component accumulation in te_sys value to
    .// serve as flag for interleave bridges code generation.
    .assign te_sys.MaxInterleavedBridges = interleaved_bridges
  .else
/* Note:  User adjusted from calculated estimate:  ${interleaved_bridges}.  */
#define ${te_ilb.define_name} ${te_sys.MaxInterleavedBridges}
  .end if
  .//
  .if ( te_sys.MaxInterleavedBridgeDataSize == 0 )
    .// Use default if nothing touched in coloring.
#define ${te_ilb.data_define_name} 8
    .assign te_sys.MaxInterleavedBridgeDataSize = 8
  .else
    .// Use colored value.
#define ${te_ilb.data_define_name} ${te_sys.MaxInterleavedBridgeDataSize}
  .end if
.end function
.//
.//============================================================================
.// Build a union to identify the size of the largest persistent class.
.//============================================================================
.function PersistentClassUnion
  .param inst_ref_set te_cs
  .assign uname = "sys_largest_class_u"
/*
 * union of persistent class types to get largest size
 */
typedef union {
  .for each te_c in te_cs
    .select one te_dci related by te_c->TE_DCI[R2090]
  ${te_dci.persist_union}
  .end for
} ${uname};
  .assign attr_result = uname
.end function
.//
.//============================================================================
.// Output initialization for an array of system class information.
.//============================================================================
.function DefineClassInfoArray
  .param inst_ref first_te_c
  .assign ci = "/* xtUML class info for all of the components (collections, sizes, etc.) */"
  .select any te_cia from instances of TE_CIA
  .assign ci = ci + "\n${te_cia.class_info_type} * const * const ${te_cia.class_info_name}[ SYSTEM_DOMAIN_COUNT ] = {"
  .assign te_c = first_te_c
  .while ( not_empty te_c )
    .// Include a pointer to the component classes only if component has classes.
    .select any te_class related by te_c->TE_CLASS[R2064]
    .select one te_dci related by te_c->TE_DCI[R2090]
    .select one te_c related by te_c->TE_C[R2017.'precedes']
    .assign delimiter = ""
    .if ( not_empty te_c )
      .assign delimiter = ","
    .end if
    .if ( not_empty te_class )
      .assign ci = ci + "\n  &${te_dci.array_name}[0]${delimiter}"
    .else
      .assign ci = ci + "\n  0${delimiter}"
    .end if
  .end while
  .assign ci = ci + "\n};"
  .assign cc = "  const ${te_cia.count_type} ${te_cia.class_count}[ SYSTEM_DOMAIN_COUNT ] = {"
  .assign te_c = first_te_c
  .while ( not_empty te_c )
    .select any te_class related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
    .select one te_dci related by te_c->TE_DCI[R2090]
    .select one te_c related by te_c->TE_C[R2017.'precedes']
    .assign delimiter = ""
    .if ( not_empty te_c )
      .assign delimiter = ","
    .end if
    .if ( empty te_class )
      .assign cc = cc + "\n    0${delimiter}"
    .else
      .assign cc = cc + "\n    ${te_dci.max}${delimiter}"
    .end if
  .end while
  .assign cc = cc + "\n  };"
  .assign attr_class_info = ci
  .assign attr_class_count = cc
.end function
.//
.//============================================================================
.// Output initialization for an array of state model counts by component.
.//============================================================================
.function DefineActiveClassCountArray
  .param inst_ref_set te_cs
  .select many te_dcis related by te_cs->TE_DCI[R2090]
    /* count of active classes (having state machines) for each component */
  .for each te_dci in te_dcis
    .assign delimiter = ""
    .if ( not_last te_dcis )
      .assign delimiter = ","
    .end if
    ${te_dci.max}${delimiter}
  .end for
.end function
.//
.//============================================================================
.// Output code constants that define numbers for the components
.// and classes for the entire system.
.//============================================================================
.function DeclareDomainIdentityEnums
  .param inst_ref first_te_c
  .param integer num_ooa_doms
  .select any te_file from instances of TE_FILE
  .select any te_target from instances of TE_TARGET
#define SYSTEM_DOMAIN_COUNT ${num_ooa_doms}
  .if ( "C" == te_target.language )
/* xtUML domain identification numbers */
    .assign enumerated_domain_id = 0
    .assign delimiter = ""
    .assign namelist = ""
    .assign te_c = first_te_c
    .while ( not_empty te_c )
      .invoke r = GetDomainTypeIDFromString( te_c.Name )
      .assign dom_id = r.result
      .assign te_c.number = enumerated_domain_id
#define ${dom_id} ${enumerated_domain_id}
#define ${dom_id}_text "${te_c.Name}"
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
      .assign namelist = namelist + "${delimiter}\\n    ""${te_c.Name}"" " 
      .assign delimiter = ","
      .assign enumerated_domain_id = enumerated_domain_id + 1
      .select one te_c related by te_c->TE_C[R2017.'precedes']
    .end while
  .end if
.end function
.//
.//============================================================================
.// Determine whether the self event queue is needed.
.//============================================================================
.function GetSystemSelfEventQueueNeeded
  .assign result = false
  .assign attr_max_depth = 0
  .select any te_sys from instances of TE_SYS
  .select any te_thread from instances of TE_THREAD
  .if ( not_empty te_sys )
    .select any self_queue related by te_sys->TE_DISP[R2003]->TE_QUEUE[R2004] where ( selected.Type == 1 )
    .if ( not_empty self_queue )
      .assign result = self_queue.RenderCode
      .assign attr_max_depth = self_queue.MaxDepth
      .if ( ( not result ) and ( "SystemC" == te_thread.flavor ) )
        .// For SystemC, we force the code to always use this event queue
        .assign result = true
        .assign attr_max_depth = 1
      .end if
    .else
      .print "\n  WARNING: No TE_QUEUE self queue instance found!\n"
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.// Set up the parameters for the self event queue.
.//============================================================================
.function SetSystemSelfEventQueueParameters
  .param inst_ref_set te_cs
  .select any te_sys related by te_cs->TE_SYS[R2065]
  .if ( not_empty te_sys )
    .assign max_self_events = 0
    .for each te_c in te_cs
      .assign max_self_events = max_self_events + te_c.MaxSelfEvents
    .end for
    .//
    .if ( te_sys.MaxSelfEvents != 0 )
      .assign max_self_events = te_sys.MaxSelfEvents
    .end if
    .//
    .select any self_queue related by te_sys->TE_DISP[R2003]->TE_QUEUE[R2004] where ( selected.Type == 1 )
    .if ( not_empty self_queue )
      .if ( max_self_events > 0 )
        .assign self_queue.RenderCode = true
        .assign self_queue.MaxDepth = max_self_events
      .end if
    .else
      .print "\n  WARNING: No TE_QUEUE self queue instance found!\n"
    .end if
  .end if
.end function
.//
.//============================================================================
.// Determine whether the non-self event queue is needed.
.//============================================================================
.function GetSystemNonSelfEventQueueNeeded
  .assign result = false
  .assign max_depth = 0
  .select any te_sys from instances of TE_SYS
  .select any te_thread from instances of TE_THREAD
  .if ( not_empty te_sys )
    .select any non_self_queue related by te_sys->TE_DISP[R2003]->TE_QUEUE[R2004] where ( selected.Type == 2 )
    .if ( not_empty non_self_queue )
      .assign result = non_self_queue.RenderCode
      .assign max_depth = non_self_queue.MaxDepth
      .if ( ( not result ) and ( "SystemC" == te_thread.flavor ) )
        .// For SystemC, we force the code to always use this event queue
        .assign result = true
        .assign max_depth = 1
      .end if
    .else
      .print "\n  WARNING: No TE_QUEUE non-self queue instance found!\n"
    .end if
  .end if
  .assign attr_result = result
  .assign attr_max_depth = max_depth
.end function
.//
.//============================================================================
.// Set up the parameters for the non-self event queue.
.//============================================================================
.function SetSystemNonSelfEventQueueParameters
  .param inst_ref_set te_cs
  .select any te_sys related by te_cs->TE_SYS[R2065]
  .if ( not_empty te_sys )
    .assign max_non_self_events = 0
    .for each te_c in te_cs
      .assign max_non_self_events = max_non_self_events + te_c.MaxNonSelfEvents
    .end for
    .//
    .if ( te_sys.MaxNonSelfEvents != 0 )
      .assign max_non_self_events = te_sys.MaxNonSelfEvents
    .end if
    .//
    .select any non_self_queue related by te_sys->TE_DISP[R2003]->TE_QUEUE[R2004] where ( selected.Type == 2 )
    .if ( not_empty non_self_queue )
      .select any te_evt from instances of TE_EVT
      .if ( ( max_non_self_events > 0 ) or ( not_empty te_evt ) )
        .assign non_self_queue.RenderCode = true
        .assign non_self_queue.MaxDepth = max_non_self_events
      .end if
    .else
      .print "\n  WARNING: No TE_QUEUE non-self queue instance found!\n"
    .end if
  .end if
  .//
.end function
.//
.//============================================================================
.// Determine if event prioritization is needed by seeing if any
.// one of the domains marked a priority event.
.//============================================================================
.function GetSystemEventPrioritizationNeeded
  .assign result = false
  .select any te_sys from instances of TE_SYS
  .if ( not_empty te_sys )
    .if ( te_sys.ForcePriorityEvents )
      .assign result = true
    .end if
  .end if
  .select any te_c from instances of TE_C where ( selected.MaxPriorityEvents > 0 )
  .if ( not_empty te_c )
    .assign result = true
  .end if
  .select any te_evt from instances of TE_EVT where ( selected.Priority > 0 )
  .if ( not_empty te_evt )
    .assign result = true
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.// Return true when event prioritization is needed.
.//============================================================================
.function GetEventPrioritizationNeeded
  .assign result = false
  .select any te_evt from instances of TE_EVT where ( selected.Priority != 0 )
  .if ( not_empty te_evt )
    .assign result = true
  .end if
  .assign attr_result = result
.end function
.//
