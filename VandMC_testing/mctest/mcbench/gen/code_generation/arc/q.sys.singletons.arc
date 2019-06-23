.//
.function container_factory
  .param inst_ref te_container
  .assign te_container.flavor = ""
.end function
.//
.//
.function copyright_factory
  .param inst_ref te_copyright
  .assign te_copyright.body = "your copyright statement can go here (from te_copyright.body)"
.end function
.//
.//
.function dlist_factory
  .param inst_ref te_dlist
  .select any te_prefix from instances of TE_PREFIX
  .assign te_dlist.remove_node = te_prefix.result + "SetRemoveDlistNode"
.end function
.//
.//
.function dma_factory
  .param inst_ref te_dma
  .select any te_prefix from instances of TE_PREFIX
  .assign te_dma.file = "sys_memory"
  .assign te_dma.allocate = te_prefix.result + "malloc"
  .assign te_dma.release = te_prefix.result + "free"
  .assign te_dma.debugging_heap = false
.end function
.//
.//
.function eq_factory
  .param inst_ref te_eq
  .select any te_prefix from instances of TE_PREFIX
  .assign te_eq.ignored = "EVENT_IS_IGNORED"
  .assign te_eq.cant_happen = "EVENT_CANT_HAPPEN"
  .assign te_eq.system_events_union = te_prefix.result + "systemxtUMLevents"
  .assign te_eq.system_event_pool = te_prefix.result + "xtUML_event_pool"
  .assign te_eq.constant_type = te_prefix.result + "xtUMLEventConstant_t"
  .assign te_eq.base_event_type = te_prefix.result + "xtUMLEvent_t"
  .assign te_eq.base_variable = "mc_event_base"
  .assign te_eq.max_events = te_prefix.define_u + "SYS_MAX_XTUML_EVENTS"
  .assign te_eq.max_self_events = te_prefix.define_u + "SYS_MAX_SELF_EVENTS"
  .assign te_eq.max_nonself_events = te_prefix.define_u + "SYS_MAX_NONSELF_EVENTS"
  .assign te_eq.new = te_prefix.result + "NewxtUMLEvent"
  .assign te_eq.allocate = te_prefix.result + "AllocatextUMLEvent"
  .assign te_eq.delete = te_prefix.result + "DeletextUMLEvent"
  .assign te_eq.modify = te_prefix.result + "ModifyxtUMLEvent"
  .assign te_eq.self = te_prefix.result + "SendSelfEvent"
  .assign te_eq.non_self = te_prefix.result + "SendEvent"
  .assign te_eq.search_and_destroy = te_prefix.result + "EventSearchAndDestroy"
  .assign te_eq.run_flag = te_prefix.result + "run_flag"
  .assign te_eq.event_message_variable = "e"
  .assign te_eq.scope = ""
.end function
.//
.//
.function extent_factory
  .param inst_ref te_extent
  .select any te_prefix from instances of TE_PREFIX
  .select any te_set from instances of TE_SET
  .select any te_typemap from instances of TE_TYPEMAP
  .select any te_instance from instances of TE_INSTANCE
  .assign te_extent.sets_type = te_set.base_class
  .assign te_extent.type = te_prefix.result + "Extent_t"
  .assign te_extent.active = "active"
  .assign te_extent.inactive = "inactive"
  .assign te_extent.size_type = te_typemap.object_size_name
  .assign te_extent.istate_type = te_typemap.state_number_name
  .assign te_extent.istate_name = "initial_state"
  .assign te_extent.container_type = te_set.element_type + "*"
  .assign te_extent.container_name = "container"
  .assign te_extent.pool_type = te_instance.handle
  .assign te_extent.pool_name = "pool"
  .assign te_extent.population_type = te_typemap.instance_index_name
  .assign te_extent.population_name = "population"
  .assign te_extent.rstorsize_type = te_typemap.object_size_name
  .assign te_extent.rstorsize_name = "size_no_rel"
  .assign te_extent.linkfunc_name = "link_function"
  .assign te_extent.size_name = "size"
.end function
.//
.//
.function file_factory
  .param inst_ref te_file
  .select any te_prefix from instances of TE_PREFIX
  .assign te_file.hdr_file_ext = "h"
  .assign te_file.src_file_ext = "c"
  .assign te_file.sys_main = te_prefix.file + "sys_main"
  .assign te_file.factory = te_prefix.file + "sys_xtuml"
  .assign te_file.events = te_prefix.file + "sys_events"
  .assign te_file.obj_file_ext = "o"
  .assign te_file.nvs = te_prefix.file + "sys_nvs"
  .assign te_file.sets = te_prefix.file + "sys_sets"
  .assign te_file.types = te_prefix.file + "sys_types"
  .assign te_file.thread = te_prefix.file + "sys_thread"
  .assign te_file.trace = te_prefix.file + "sys_trace"
  .assign te_file.tim = te_prefix.file + "TIM_bridge"
  .assign te_file.callout = te_prefix.file + "sys_user_co"
  .assign te_file.persist = te_prefix.file + "sys_persist"
  .assign te_file.xtumlload = te_prefix.file + "sys_xtumlload"
  .assign te_file.interfaces = te_prefix.file + "sysc_interfaces"
  .assign te_file.registers = te_prefix.file + "RegDefs"
  .assign te_file.domain_color_path = "."
  .assign te_file.domain_source_path = "_ch"
  .assign te_file.domain_include_path = "_ch"
  .assign te_file.system_source_path = "_ch"
  .assign te_file.system_include_path = "_ch"
  .assign te_file.system_color_path = "."
  .assign te_file.system_mark = "system.mark"
  .assign te_file.datatype_mark = "datatype.mark"
  .assign te_file.event_mark = "event.mark"
  .assign te_file.class_mark = "class.mark"
  .assign te_file.domain_mark = "domain.mark"
  .assign te_file.system_functions_mark = "sys_functions.arc"
  .assign te_file.bridge_mark = "bridge.mark"
  .assign te_file.nvs_bridge = te_prefix.file + "NVS_bridge"
  .assign te_file.arc_path = "mc3020/arc"
  .assign te_file.root_path = "."
.end function
.//
.//
.function instance_factory
  .param inst_ref te_instance
  .select any te_prefix from instances of TE_PREFIX
  .assign te_instance.scope = ""
  .assign te_instance.create = te_prefix.result + "CreateInstance"
  .assign te_instance.create_persistent = te_prefix.result + "CreatePersistent"
  .assign te_instance.delete = te_prefix.result + "DeleteInstance"
  .assign te_instance.delete_persistent = te_prefix.result + "DeletePersistent"
  .assign te_instance.self = "self"
  .assign te_instance.global_self = te_prefix.result + "GetSelf"
  .assign te_instance.base = te_prefix.result + "InstanceBase_t"
  .assign te_instance.handle = te_prefix.result + "iHandle_t"
  .assign te_instance.factory_init = te_prefix.result + "ClassFactoryInit"
  .assign te_instance.get_dci = te_prefix.result + "GetDCI"
  .assign te_instance.get_event_dispatcher = te_prefix.result + "GetEventDispatcher"
  .assign te_instance.get_thread_assignment = te_prefix.result + "GetThreadAssignment"
  .assign te_instance.base_class = te_prefix.result + "Object_s"
  .assign te_instance.max_extent = te_prefix.define_u + "SYS_MAX_OBJECT_EXTENT"
  .assign te_instance.max_association_extent = te_prefix.define_u + "SYS_MAX_ASSOCIATION_EXTENT"
  .assign te_instance.max_transient_extent = te_prefix.define_u + "SYS_MAX_TRANSIENT_EXTENT"
  .assign te_instance.current_state = "current_state"
  .assign te_instance.module = ""
.end function
.//
.//
.function ilb_factory
  .param inst_ref te_ilb
  .select any te_prefix from instances of TE_PREFIX
  .assign te_ilb.interleave_bridge = "InterleaveBridge"
  .assign te_ilb.define_name = te_prefix.define_u + "SYS_MAX_INTERLEAVED_BRIDGES"
  .assign te_ilb.data_define_name = te_prefix.define_u + "SYS_MAX_INTERLEAVED_BRIDGE_DATA"
  .assign te_ilb.interleave_bridge_done = "InterleaveBridgeDone"
  .assign te_ilb.get_data = "GetILBData"
  .assign te_ilb.dispatch = "DispatchInterleaveBridge"
.end function
.//
.//
.function persist_factory
  .param inst_ref te_persist
  .select any te_prefix from instances of TE_PREFIX
  .select any te_typemap from instances of TE_TYPEMAP
  .assign te_persist.class_union = ""
  .assign te_persist.instance_cache_depth = te_prefix.define_u + "PERSIST_INST_CACHE_DEPTH"
  .assign te_persist.check_mark = "check_mark_post"
  .assign te_persist.post_link = ""
  .assign te_persist.link_type_name = te_prefix.type + "link_t"
  .assign te_persist.persist_file = "sys_persist"
  .assign te_persist.factory_init = te_prefix.result + "PersistFactoryInit"
  .assign te_persist.commit = te_prefix.result + "PersistenceCommit"
  .assign te_persist.restore = te_prefix.result + "PersistenceRestore"
  .assign te_persist.remove = te_prefix.result + "PersistDelete"
  .assign te_persist.link_cache_depth = te_prefix.define_u + "PERSIST_LINK_CACHE_DEPTH"
  .// Return the name of the extended attribute variable for use by
  .// the persistent restore operation.  This attribute represents the
  .// instance index of the class extent at time of persistent stowage
  .// together with the class number (across domains) of the class.
  .// Also return the types for this attribute variable.
  .assign te_persist.domainnum_name = "domainnum"
  .assign te_persist.domainnum_type = te_typemap.domain_number_name
  .assign te_persist.classnum_name = "classnum"
  .assign te_persist.classnum_type = te_typemap.object_number_name
  .assign te_persist.index_name = "index"
  .assign te_persist.index_type = te_typemap.instance_index_name
  .assign te_persist.instid_type = "InstanceIdentifier_t"
  .assign te_persist.instid_name = "instance_identifier"
  .assign te_persist.dirty_type = "s1_t"
  .assign te_persist.dirty_name = "persist_dirty"
  .assign te_persist.dirty_dirty = 1
  .assign te_persist.dirty_clean = 0
.end function
.//
.//
.function prefix_factory
  .param inst_ref te_prefix
  .assign te_prefix.symbol = "Escher_"
  .assign te_prefix.type = "Escher_"
  .assign te_prefix.define_u = "ESCHER_"
  .assign te_prefix.define_c = "Escher_"
  .assign te_prefix.symbolsw = ""
  .assign te_prefix.typesw = ""
  .assign te_prefix.result = "Escher_"
  .assign te_prefix.define_csw = ""
  .assign te_prefix.define_usw = ""
  .assign te_prefix.file = ""
  .assign te_prefix.provided_port = "pport_"
  .assign te_prefix.required_port = "rport_"
  .assign te_prefix.channel = "channel_"
.end function
.//
.//
.function relinfo_factory
  .param inst_ref te_relinfo
  .assign te_relinfo.multiplicity = 0
  .assign te_relinfo.rel_phrase = ""
  .assign te_relinfo.is_formalizer = false
  .assign te_relinfo.is_supertype = false
  .assign te_relinfo.generate_subtype = false
  .assign te_relinfo.gen_declaration = false
.end function
.//
.//
.function relstore_factory
  .param inst_ref te_relstore
  .assign te_relstore.data_init = ""
  .assign te_relstore.link_calls = ""
  .assign te_relstore.link_index = 0
  .assign te_relstore.data_fini = ""
  .assign te_relstore.self_name = "self"
  .assign te_relstore.data_declare = ""
.end function
.//
.//
.function set_factory
  .param inst_ref te_set
  .select any te_prefix from instances of TE_PREFIX
  .assign te_set.module = ""
  .assign te_set.copy = te_prefix.result + "CopySet"
  .assign te_set.clear = te_prefix.result + "ClearSet"
  .assign te_set.setunion = te_prefix.result + "SetUnion"
  .assign te_set.setintersection = te_prefix.result + "SetIntersection"
  .assign te_set.setdifference = te_prefix.result + "SetDifference"
  .assign te_set.setsymmetricdifference = te_prefix.result + "SetSymmetricDifference"
  .assign te_set.insert_element = te_prefix.result + "SetInsertElement"
  .assign te_set.element_count = te_prefix.result + "SetCardinality"
  .assign te_set.iterator_class_name = te_prefix.result + "Iterator_s"
  .assign te_set.number_of_containoids = te_prefix.define_usw + "SYS_MAX_CONTAINERS"
  .assign te_set.factory = te_prefix.result + "SetFactoryInit"
  .assign te_set.insert_block = te_prefix.result + "SetInsertBlock"
  .assign te_set.remove_instance = te_prefix.result + "SetRemoveInstance"
  .assign te_set.contains = te_prefix.result + "SetContains"
  .assign te_set.equality = te_prefix.result + "SetEquality"
  .assign te_set.init = te_prefix.result + "InitSet"
  .assign te_set.insert_instance = te_prefix.result + "SetInsertInstance"
  .assign te_set.emptiness = te_prefix.result + "SetIsEmpty"
  .assign te_set.get_any = te_prefix.result + "SetGetAny"
  .assign te_set.remove_element = te_prefix.result + "SetRemoveElement"
  .assign te_set.iterator_reset = te_prefix.result + "IteratorReset"
  .assign te_set.iterator_next = te_prefix.result + "IteratorNext"
  .assign te_set.base_class = te_prefix.result + "ObjectSet_s"
  .assign te_set.element_type = te_prefix.result + "SetElement_s"
  .assign te_set.scope = ""
.end function
.//
.//
.function slist_factory
  .param inst_ref te_slist
  .select any te_prefix from instances of TE_PREFIX
  .assign te_slist.remove_node = te_prefix.result + "SetRemoveNode"
.end function
.//
.//
.function string_factory
  .param inst_ref te_string
  .select any te_prefix from instances of TE_PREFIX
  .assign te_string.memset = te_prefix.result + "memset"
  .assign te_string.memmove = te_prefix.result + "memmove"
  .assign te_string.strcpy = te_prefix.result + "strcpy"
  .assign te_string.stradd = te_prefix.result + "stradd"
  .assign te_string.strlen = te_prefix.result + "strlen"
  .assign te_string.strcmp = te_prefix.result + "strcmp"
  .assign te_string.strget = te_prefix.result + "strget"
  .assign te_string.itoa = te_prefix.result + "itoa"
  .assign te_string.atoi = te_prefix.result + "atoi"
  .assign te_string.max_string_length = te_prefix.define_u + "SYS_MAX_STRING_LEN"
  .assign te_string.debug_buffer_depth = te_prefix.define_u + "DEBUG_BUFFER_DEPTH"
  .assign te_string.u128touuid = te_prefix.result + "u128touuid"
  .assign te_string.uuidtou128 = te_prefix.result + "uuidtou128"
.end function
.//
.//
.function thread_factory
  .param inst_ref te_thread
  .select any te_prefix from instances of TE_PREFIX
  .assign te_thread.file = "sys_thread"
  .assign te_thread.mutex_lock = te_prefix.result + "mutex_lock"
  .assign te_thread.mutex_unlock = te_prefix.result + "mutex_unlock"
  .assign te_thread.nonbusy_wait = te_prefix.result + "nonbusy_wait"
  .assign te_thread.nonbusy_wake = te_prefix.result + "nonbusy_wake"
  .assign te_thread.shutdown = te_prefix.result + "thread_shutdown"
  .assign te_thread.create = te_prefix.result + "thread_create"
  .assign te_thread.enabled = false
  .assign te_thread.flavor = "POSIX"
  .assign te_thread.serialize = false
  .assign te_thread.number_of_threads = 1
  .assign te_thread.extra_initialization = ""
.end function
.//
.//
.function tim_factory
  .param inst_ref te_tim
  .select any te_prefix from instances of TE_PREFIX
  .assign te_tim.max_timers = te_prefix.define_u + "SYS_MAX_XTUML_TIMERS"
  .assign te_tim.keyed_timer_support = true
  .assign te_tim.recurring_timer_support = true
  .assign te_tim.internal_type = "ETimer_t"
  .assign te_tim.timer_event_search_and_destroy = false
  .assign te_tim.event_name = ""
.end function
.//
.//
.function typemap_factory
  .param inst_ref te_typemap
  .select any te_prefix from instances of TE_PREFIX
  .assign te_typemap.instance_index_name = te_prefix.result + "InstanceIndex_t"
  .assign te_typemap.instance_index_type = "u2_t"
  .assign te_typemap.object_size_name = te_prefix.type + "ClassSize_t"
  .assign te_typemap.object_size_type = te_prefix.type + "size_t"
  .assign te_typemap.object_number_name = te_prefix.type + "ClassNumber_t"
  .assign te_typemap.object_number_type = "u2_t"
  .assign te_typemap.state_number_name = te_prefix.type + "StateNumber_t"
  .assign te_typemap.state_number_type = "u1_t"
  .assign te_typemap.domain_number_name = te_prefix.type + "DomainNumber_t"
  .assign te_typemap.domain_number_type = "u1_t"
  .assign te_typemap.event_number_name = te_prefix.type + "EventNumber_t"
  .assign te_typemap.event_number_type = "u1_t"
  .assign te_typemap.event_priority_name = te_prefix.type + "EventPriority_t"
  .assign te_typemap.event_priority_type = "u1_t"
  .assign te_typemap.event_flags_name = te_prefix.type + "EventFlags_t"
  .assign te_typemap.event_flags_type = "u1_t"
  .assign te_typemap.poly_return_name = te_prefix.type + "PolyEventRC_t"
  .assign te_typemap.poly_return_type = "u1_t"
  .assign te_typemap.SEM_cell_type = "u1_t"
  .assign te_typemap.SEM_cell_name = te_prefix.type + "SEMcell_t"
.end function
.//
.//
.function callout_factory
  .param inst_ref te_callout
  .select any te_prefix from instances of TE_PREFIX
  .assign te_callout.initialization = te_prefix.symbolsw + "UserInitializationCallout"
  .assign te_callout.pre_xtUML_initialization = te_prefix.symbolsw + "UserPreOoaInitializationCallout"
  .assign te_callout.post_xtUML_initialization = te_prefix.symbolsw + "UserPostOoaInitializationCallout"
  .assign te_callout.background_processing = te_prefix.symbolsw + "UserBackgroundProcessingCallout"
  .assign te_callout.pre_shutdown = te_prefix.symbolsw + "UserPreShutdownCallout"
  .assign te_callout.event_no_instance = te_prefix.symbolsw + "UserEventNoInstanceCallout"
  .assign te_callout.event_free_list_empty = te_prefix.symbolsw + "UserEventFreeListEmptyCallout"
  .assign te_callout.object_pool_empty = te_prefix.symbolsw + "UserObjectPoolEmptyCallout"
  .assign te_callout.node_list_empty = te_prefix.symbolsw + "UserNodeListEmptyCallout"
  .assign te_callout.interleaved_bridge_overflow = te_prefix.symbolsw + "UserInterleavedBridgeOverflowCallout"
  .assign te_callout.self_event_queue_empty = te_prefix.symbolsw + "UserSelfEventQueueEmptyCallout"
  .assign te_callout.non_self_event_queue_empty = te_prefix.symbolsw + "UserNonSelfEventQueueEmptyCallout"
  .assign te_callout.persistence_error = te_prefix.symbolsw + "UserPersistenceErrorCallout"
  .assign te_callout.file = "sys_user_co"
  .assign te_callout.post_shutdown = te_prefix.symbolsw + "UserPostShutdownCallout"
  .assign te_callout.event_cant_happen = te_prefix.symbolsw + "UserEventCantHappenCallout"
  .assign te_callout.empty_handle_detected = te_prefix.symbolsw + "UserEmptyHandleDetectedCallout"
.end function
.//
.//
.function trace_factory
  .param inst_ref te_trace
  .select any te_prefix from instances of TE_PREFIX
  .assign te_trace.component_msg_start = te_prefix.define_usw + "COMP_MSG_START_TRACE"
  .assign te_trace.component_msg_end = te_prefix.define_usw + "COMP_MSG_END_TRACE"
  .assign te_trace.state_txn_start = te_prefix.define_usw + "STATE_TXN_START_TRACE"
  .assign te_trace.oal_trace = te_prefix.define_usw + "OAL_ACTION_TRACE"
  .assign te_trace.state_txn_end = te_prefix.define_usw + "STATE_TXN_END_TRACE"
  .assign te_trace.state_txn_event_ignored = te_prefix.define_usw + "STATE_TXN_IG_TRACE"
  .assign te_trace.state_txn_cant_happen = te_prefix.define_usw + "STATE_TXN_CH_TRACE"
.end function
.//
.function target_factory
  .param inst_ref te_target
  .invoke r = T_quote()
  .assign quote = r.result
  .assign te_target.language = "C"
  .assign te_target.c2cplusplus_linkage_begin = "#ifdef\t__cplusplus\nextern\t" + quote + "C" + quote + "\t{\n#endif"
  .assign te_target.c2cplusplus_linkage_end = "#ifdef\t__cplusplus\n}\n#endif"
  .assign te_target.main = "main"
.end function
.//
.function sys_singletons
  .create object instance te_prefix of TE_PREFIX
  .invoke prefix_factory( te_prefix )
  .create object instance te_typemap of TE_TYPEMAP
  .invoke typemap_factory( te_typemap )
  .create object instance te_container of TE_CONTAINER
  .invoke container_factory( te_container )
  .create object instance te_copyright of TE_COPYRIGHT
  .invoke copyright_factory( te_copyright )
  .create object instance te_dlist of TE_DLIST
  .invoke dlist_factory( te_dlist )
  .create object instance te_dma of TE_DMA
  .invoke dma_factory( te_dma )
  .create object instance te_eq of TE_EQ
  .invoke eq_factory( te_eq )
  .create object instance te_file of TE_FILE
  .invoke file_factory( te_file )
  .create object instance te_instance of TE_INSTANCE
  .invoke instance_factory( te_instance )
  .create object instance te_ilb of TE_ILB
  .invoke ilb_factory( te_ilb )
  .create object instance te_persist of TE_PERSIST
  .invoke persist_factory( te_persist )
  .create object instance te_relinfo of TE_RELINFO
  .invoke relinfo_factory( te_relinfo )
  .create object instance te_relstore of TE_RELSTORE
  .invoke relstore_factory( te_relstore )
  .create object instance te_set of TE_SET
  .invoke set_factory( te_set )
  .create object instance te_slist of TE_SLIST
  .invoke slist_factory( te_slist )
  .create object instance te_string of TE_STRING
  .invoke string_factory( te_string )
  .create object instance te_thread of TE_THREAD
  .invoke thread_factory( te_thread )
  .create object instance te_tim of TE_TIM
  .invoke tim_factory( te_tim )
  .create object instance te_callout of TE_CALLOUT
  .invoke callout_factory( te_callout )
  .create object instance te_trace of TE_TRACE
  .invoke trace_factory( te_trace )
  .create object instance te_extent of TE_EXTENT
  .invoke extent_factory( te_extent )
  .create object instance te_target of TE_TARGET
  .invoke target_factory( te_target )
  .//
  .create object instance te_assign of TE_ASSIGN
  .create object instance te_create_instance of TE_CREATE_INSTANCE
  .create object instance te_for of TE_FOR
  .create object instance te_if of TE_IF
  .create object instance te_while of TE_WHILE
  .create object instance te_elif of TE_ELIF
  .create object instance te_delete_instance of TE_DELETE_INSTANCE
  .create object instance te_create_event of TE_CREATE_EVENT
  .create object instance te_relate of TE_RELATE
  .create object instance te_relate_using of TE_RELATE_USING
  .create object instance te_unrelate of TE_UNRELATE
  .create object instance te_unrelate_using of TE_UNRELATE_USING
  .create object instance te_select of TE_SELECT
  .create object instance te_select_where of TE_SELECT_WHERE
  .create object instance te_generate_precreated_event of TE_GENERATE_PRECREATED_EVENT
  .create object instance te_event_parameters of TE_EVENT_PARAMETERS
  .create object instance te_generate of TE_GENERATE
  .create object instance te_generate_creator_event of TE_GENERATE_CREATOR_EVENT
  .create object instance te_generate_to_class of TE_GENERATE_TO_CLASS
  .create object instance te_sgn of TE_SGN
  .create object instance te_iop of TE_IOP
  .create object instance te_operation of TE_OPERATION
  .create object instance te_bridge of TE_BRIDGE
  .create object instance te_function of TE_FUNCTION
  .create object instance te_return of TE_RETURN
.end function
