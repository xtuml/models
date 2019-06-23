.//============================================================================
.// This query/transformation archetype file queries the customer model
.// and populates the model compiler extensions to the meta-model.
.// Instances of the extended classes are created, related and initialized.
.//
.// Create architectural system-level artifacts first.
.// Create leaf-node artifacts (like TE_DT, TE_VAL and TE_PAR) which may need
.// to be updated as information is gathered.
.// Create component-level artifacts.
.// Briefly create and link components, data types.  Select them afterwards.
.// Create and link middled-level classes.
.// Drill down into component and create object, attributes and the rest.
.//============================================================================
.//
.//
.// Create the system interfaces (sys, dom, ee).
.//
.function sys_populate
  .// Select singletons into scope.
  .select any te_file from instances of TE_FILE
  .select any te_eq from instances of TE_EQ
  .select any te_extent from instances of TE_EXTENT
  .select any te_instance from instances of TE_INSTANCE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_set from instances of TE_SET
  .select any te_string from instances of TE_STRING
  .select any te_target from instances of TE_TARGET
  .select any te_thread from instances of TE_THREAD
  .select any te_tim from instances of TE_TIM
  .select any te_typemap from instances of TE_TYPEMAP
  .select any empty_ep_pkg from instances of EP_PKG where ( false )
  .select many empty_ep_pkgs from instances of EP_PKG where ( false )
  .select any empty_te_c from instances of TE_C where ( false )
  .select any empty_te_dim from instances of TE_DIM where ( false )
  .select many empty_s_dims from instances of S_DIM where ( false )
  .select any empty_o_obj from instances of O_OBJ where ( false )
  .select any empty_te_attr from instances of TE_ATTR where ( false )
  .select any empty_te_mact from instances of TE_MACT where ( false )
  .select many empty_te_dts from instances of TE_DT where ( false )
  .select many empty_te_parms from instances of TE_PARM where ( false )
  .invoke r4 = T_quote()
  .assign quote = r4.result
  .invoke r4 = T_tick()
  .assign tick = r4.result
  .// CDS - Note that in a multiple-system build, we will get lucky, and the
  .// s_sys from the local project will be selected first.
  .select any s_sys from instances of S_SYS
  .if ( empty s_sys )
    .create object instance s_sys of S_SYS
    .assign s_sys.Name = "sys"
  .end if
  .// Create the system translation extension and relate it.
  .select any te_sys from instances of TE_SYS
  .if ( empty te_sys )
    .create object instance te_sys of TE_SYS
    .assign te_sys.SystemID = 1
  .end if
  .relate s_sys to te_sys across R2018
  .assign te_sys.Name = "$r{s_sys.Name}"
  .if ( "" == te_sys.Name )
    .assign te_sys.Name = "sys"
  .end if
  .assign te_sys.MaxStringLen = 32
  .assign te_sys.PersistInstanceCacheDepth = 128
  .assign te_sys.PersistLinkCacheDepth = 128
  .assign te_sys.AllPortsPoly = false
  .assign te_sys.StructuredMessaging = false
  .assign te_sys.NetworkSockets = false
  .assign te_sys.SimulatedTime = false
  .assign te_sys.StateSaveBufferSize = 0
  .//
  .// Update te_sys with system marks
  .select any tm_systag from instances of TM_SYSTAG
  .if ( not_empty tm_systag )
    .assign te_sys.MaxStringLen = tm_systag.MaxStringLen
    .assign te_sys.MaxRelExtent = tm_systag.MaxRelExtent
    .assign te_sys.MaxSelectExtent = tm_systag.MaxSelectExtent
    .assign te_sys.MaxSelfEvents = tm_systag.MaxSelfEvents
    .assign te_sys.MaxNonSelfEvents = tm_systag.MaxNonSelfEvents
    .assign te_sys.MaxTimers = tm_systag.MaxTimers
    .assign te_sys.MaxInterleavedBridges = tm_systag.MaxInterleavedBridges
    .assign te_sys.MaxInterleavedBridgeDataSize = tm_systag.MaxInterleavedBridgeDataSize
    .assign te_sys.CollectionsFlavor = tm_systag.CollectionsFlavor
    .assign te_sys.PersistInstanceCacheDepth = tm_systag.PersistInstanceCacheDepth
    .assign te_sys.PersistLinkCacheDepth = tm_systag.PersistLinkCacheDepth
    .assign te_sys.UnitsToDynamicallyAllocate = tm_systag.UnitsToDynamicallyAllocate
    .assign te_sys.InstanceLoading = tm_systag.InstanceLoading
    .assign te_sys.SystemCPortsType = tm_systag.SystemCPortsType
    .assign te_sys.AllPortsPoly = tm_systag.AllPortsPoly
    .assign te_sys.StructuredMessaging = tm_systag.StructuredMessaging
    .assign te_sys.NetworkSockets = tm_systag.NetworkSockets
    .assign te_sys.SimulatedTime = tm_systag.SimulatedTime
    .assign te_sys.StateSaveBufferSize = tm_systag.StateSaveBufferSize
  .else
    .assign te_sys.SystemCPortsType = "sc_interface"
  .end if
  .//
  .// Update the tasking threads based on marking.
  .select any tm_thread from instances of TM_THREAD
  .if ( not_empty tm_thread )
    .assign te_thread.extra_initialization = tm_thread.extra_initialization
    .assign te_thread.number_of_threads = tm_thread.number_of_threads
    .assign te_thread.enabled = tm_thread.enabled
    .assign te_thread.serialize = tm_thread.serialize
    .assign te_thread.flavor = tm_thread.flavor
  .end if
  .//
  .select any te_disp from instances of TE_DISP
  .if ( empty te_disp )
    .create object instance te_disp of TE_DISP
    .assign te_disp.Dispatcher_ID = 1
    .relate te_disp to te_sys across R2003
  .end if
  .assign te_disp.Descrip = "dispatcher"
  .assign te_disp.Name = "main"
  .select any te_queue from instances of TE_QUEUE
  .select any nonself_te_queue from instances of TE_QUEUE
  .if ( empty te_queue )
    .create object instance te_queue of TE_QUEUE
    .assign te_queue.Queue_ID = 1
    .relate te_queue to te_disp across R2004
    .create object instance nonself_te_queue of TE_QUEUE
    .assign nonself_te_queue.Queue_ID = 2
    .relate nonself_te_queue to te_disp across R2004
  .end if
  .// Self Queue
  .assign te_queue.Descrip = "Self Queue"
  .assign te_queue.RenderCode = false
  .assign te_queue.MaxDepth = 0
  .assign te_queue.Type = 1
  .// NonSelf Queue
  .assign nonself_te_queue.Descrip = "NonSelf Queue"
  .assign nonself_te_queue.RenderCode = false
  .assign nonself_te_queue.MaxDepth = 0
  .assign nonself_te_queue.Type = 2
  .//
  .// Create the (domain) class info array instance.
  .// CDS - This may end up being part of a component rather than a system.
  .create object instance te_cia of TE_CIA
  .assign te_cia.class_info_name = "domain_class_info"
  .assign te_cia.class_info_type = te_extent.type
  .assign te_cia.active_count = "active_count"
  .assign te_cia.class_count = "domain_class_count"
  .assign te_cia.count_type = te_typemap.object_number_name
  .//
  .//
  .// Create the Extended Component instance(s) and link them up.
  .select many c_cs from instances of C_C
  .for each c_c in c_cs
    .create object instance te_c of TE_C
    .relate te_c to c_c across R2054
    .relate te_c to te_sys across R2065
    .assign te_c.Name = "$r{c_c.Name}"
    .assign te_c.Descrip = c_c.Descrip
    .assign te_c.included_in_build = true
    .select any tm_c from instances of TM_C where ( selected.Name == c_c.Name )
    .if ( not_empty tm_c )
      .if ( ( tm_c.isRealized ) or ( c_c.isRealized ) )
        .// Component is realized, so skip translation of internals.
        .assign te_c.isRealized = true
      .end if
    .end if
    .assign te_c.internal_behavior = false
    .assign te_c.module_file = te_c.Name
    .assign te_c.classes_file = te_c.Name + "_classes"
    .assign te_c.CodeComments = true
  .end for
  .//
  .// By default, select all components to be translated.  However, if
  .// a package has been marked, translate only the components contained
  .// in the package (or referenced from it).
  .assign ep_pkgs = empty_ep_pkgs
  .assign system_ep_pkg = empty_ep_pkg
  .assign package_to_build = ""
  .select any tm_build from instances of TM_BUILD
  .assign markedsystems = 0
  .if ( empty tm_build )
    .// Choose any top-level package to support a legal build.
    .select any system_ep_pkg related by s_sys->EP_PKG[R1401]
    .select many sys_ep_pkgs related by s_sys->EP_PKG[R1401]
    .assign sys_ep_pkg_count = cardinality sys_ep_pkgs
    .if ( sys_ep_pkg_count > 1 )
      .// We warn only when there is more than one package at the system level.
      .print "WARNING:  Identify a package to build using MarkSystemConfigurationPackage in system.mark."
      .print "WARNING:  ${system_ep_pkg.Name} has been selected arbitrarily as the build configuration."
    .end if
  .else
    .select any system_ep_pkg from instances of EP_PKG where ( selected.Name == tm_build.package_to_build )
    .select many ep_pkgs from instances of EP_PKG where ( selected.Name == tm_build.package_to_build )
    .assign markedsystems = cardinality ep_pkgs
    .if ( empty ep_pkgs )
      .print "ERROR:  Marked configuration package ${tm_build.package_to_build} was not found in model.  Exiting."
      .exit 11
    .end if
    .assign package_to_build = tm_build.package_to_build
  .end if
  .if ( markedsystems > 1 )
    .print "WARNING:  More than one package is marked as a system build... choose only one."
  .end if
  .if ( "" != package_to_build )
    .print "Marked configuration package ${package_to_build} found."
    .select many te_cs from instances of TE_C
    .// Clear the build flag for all components and then mark only those
    .// requested by the marking.
    .for each te_c in te_cs
      .assign te_c.included_in_build = false
    .end for
    .select many te_cs related by ep_pkgs->PE_PE[R8000]->C_C[R8001]->TE_C[R2054]
    .invoke TE_C_mark_nested_system( te_cs )
    .select many te_cs related by ep_pkgs->PE_PE[R8000]->EP_PKG[R8001]->PE_PE[R8000]->C_C[R8001]->TE_C[R2054]
    .invoke TE_C_mark_nested_system( te_cs )
    .select many te_cs related by ep_pkgs->PE_PE[R8000]->CL_IC[R8001]->C_C[R4201]->TE_C[R2054]
    .invoke TE_C_mark_nested_system( te_cs )
    .select many te_cs related by ep_pkgs->PE_PE[R8000]->EP_PKG[R8001]->PE_PE[R8000]->CL_IC[R8001]->C_C[R4201]->TE_C[R2054]
    .invoke TE_C_mark_nested_system( te_cs )
    .// Uncomment the line below to use package name instead of project for the top-level files.
    .//.assign te_sys.Name = "$r{package_to_build}"
  .else
    .// Here we use the default name for the system derived from the project name.
  .end if
  .assign te_file.types = ( te_sys.Name + "_" ) + te_file.types
  .assign te_file.sys_main = ( te_sys.Name + "_" ) + te_file.sys_main
  .//
  .// Select them all, because we may navigate upward to these from lower level elements.
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .select one c_c related by te_c->C_C[R2054]
    .// Create and relate the domain class info to carry details about
    .// class extents for this component.
    .create object instance te_dci of TE_DCI
    .relate te_dci to te_c across R2090
    .assign te_dci.class_numbers = te_c.Name + "_CLASS_NUMBERS"
    .assign te_dci.persist_union = te_c.Name + "_CLASS_U"
    .assign te_dci.task_list = te_c.Name + "_task_numbers"
    .assign te_dci.task_numbers = te_c.Name + "_TASK_NUMBERS"
    .assign te_dci.max = te_c.Name + "_MAX_CLASS_NUMBERS"
    .assign te_dci.max_models = te_c.Name + "_STATE_MODELS"
    .assign te_dci.init = te_c.Name + "_CLASS_INFO_INIT"
    .assign te_dci.array_name = te_c.Name + "_class_info"
    .// Create the Component Instance instances.
    .select many cl_ics related by c_c->CL_IC[R4201]
    .for each cl_ic in cl_ics
      .create object instance te_ci of TE_CI
      .assign te_ci.Name = te_c.Name
      .if ( "" == cl_ic.ClassifierName )
        .assign te_ci.ClassifierName = "i" + te_c.Name
      .else
        .assign te_ci.ClassifierName = "$r{cl_ic.ClassifierName}"
      .end if
      .relate te_ci to te_c across R2008
      .relate te_ci to cl_ic across R2009
    .end for
    .// Create the Extended Ports.
    .select many c_pos related by c_c->C_PO[R4010]
    .for each c_po in c_pos
      .select any c_i related by c_po->C_IR[R4016]->C_I[R4012]
      .if ( not_empty c_i )
        .create object instance te_po of TE_PO
        .relate te_po to c_po across R2044
        .relate te_po to te_c across R2005
        .relate te_po to c_i across R2007
        .assign te_po.InterfaceName = "$r{c_i.Name}"
        .select any c_r related by c_po->C_IR[R4016]->C_R[R4009]
        .if ( not_empty c_r )
          .assign te_po.Provision = false
        .else
          .assign te_po.Provision = true
        .end if
        .assign te_po.polymorphic = false
        .assign te_po.sibling = 0
        .assign te_po.Name = c_po.Name
        .assign te_po.GeneratedName = "$r{te_po.Name}"
        .// Create the Interface Instance instances.
        .select many c_irs related by c_po->C_IR[R4016]
        .for each c_ir in c_irs
          .create object instance te_iir of TE_IIR
          .relate te_iir to c_ir across R2046
          .relate te_iir to te_po across R2080
          .assign te_iir.component_name = c_c.Name
          .assign te_iir.port_name = te_po.Name
          .assign te_iir.interface_name = te_po.InterfaceName
          .assign te_iir.polymorphic = false
          .select many cl_iirs related by c_ir->CL_IIR[R4701]
          .for each cl_iir in cl_iirs
            .create object instance te_iir of TE_IIR
            .relate te_iir to cl_iir across R2013
            .relate te_iir to te_po across R2080
            .assign te_iir.port_name = te_po.Name
            .assign te_iir.interface_name = te_po.InterfaceName
            .assign te_iir.polymorphic = false
          .end for
        .end for
      .end if
    .end for
    .// Identify polymorphic ports.
    .// Polymorphic ports exist more than once in the same orientation on a component.
    .assign port_counter = 0
    .select many te_pos related by te_c->TE_PO[R2005]
    .for each te_po in te_pos
      .assign te_po.Order = port_counter
      .assign port_counter = port_counter + 1
      .select many poly_te_pos related by te_po->TE_C[R2005]->TE_PO[R2005] where ( ( ( selected.c_iId == te_po.c_iId ) and ( selected.Provision == te_po.Provision ) ) and ( selected.ID != te_po.ID ) )
      .if ( not_empty poly_te_pos )
        .// If we have seen this port already, it will be marked as polymorphic.
        .// So, no need to iterate marking as not the first sibling.
        .if ( not te_po.polymorphic )
          .assign sibling_counter = 1
          .for each poly_te_po in poly_te_pos
            .assign poly_te_po.polymorphic = true
            .assign poly_te_po.sibling = sibling_counter
            .assign sibling_counter = sibling_counter + 1
          .end for
        .end if
        .assign te_po.polymorphic = true
        .// Now mark the related interface reference instances as polymorphic.
        .select many te_iirs related by te_po->TE_IIR[R2080]
        .for each te_iir in te_iirs
          .assign te_iir.polymorphic = true
        .end for
      .end if
    .end for
  .end for
  .// This loop configures the satisfaction shortcut we create between local and
  .// foreign interface references.
  .select many te_pos related by te_cs->TE_PO[R2005] where ( not selected.Provision )
  .for each te_po in te_pos
    .select many te_iirs related by te_po->TE_IIR[R2080]
    .for each te_iir in te_iirs
      .// Select across the satisfaction to get the related TE_IIR.
        .// requirement side first
        .select one pe_pe related by te_iir->CL_IIR[R2013]->CL_IR[R4703]->C_SF[R4706]->PE_PE[R8001] where ( selected.Package_ID == system_ep_pkg.Package_ID )
        .select one foreign_te_iir related by pe_pe->C_SF[R8001]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]->TE_IIR[R2013]
        .if ( empty foreign_te_iir )
          .select any pe_pe related by te_iir->C_IR[R2046]->C_R[R4009]->C_SF[R4002]->PE_PE[R8001] where ( selected.Package_ID == system_ep_pkg.Package_ID )
          .select one foreign_te_iir related by pe_pe->C_SF[R8001]->C_P[R4002]->C_IR[R4009]->TE_IIR[R2046]
          .if ( empty foreign_te_iir )
            .select one pe_pe related by te_iir->CL_IIR[R2013]->CL_IR[R4703]->C_SF[R4706]->PE_PE[R8001] where ( selected.Package_ID == system_ep_pkg.Package_ID )
            .select one foreign_te_iir related by pe_pe->C_SF[R8001]->C_P[R4002]->C_IR[R4009]->TE_IIR[R2046]
            .if ( empty foreign_te_iir )
              .select any pe_pe related by te_iir->C_IR[R2046]->C_R[R4009]->C_SF[R4002]->PE_PE[R8001] where ( selected.Package_ID == system_ep_pkg.Package_ID )
              .select one foreign_te_iir related by pe_pe->C_SF[R8001]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]->TE_IIR[R2013]
            .end if
          .end if
        .end if
        .if ( not_empty foreign_te_iir )
          .relate te_iir to foreign_te_iir across R2081.'requires or delegates'
        .end if
    .end for
  .end for  
  .//
  .// Create and link the Extended model compiler instances.
  .// Do not fully initialize, yet.  Create and link and mark.
  .// These artifacts contain important naming that must propagate.
  .//
  .// Create the Generated Data Type instances and link them in.
  .select many s_dts from instances of S_DT
  .for each s_dt in s_dts
    .create object instance te_dt of TE_DT
    .relate te_dt to s_dt across R2021
    .assign te_dt.Name = s_dt.Name
    .assign te_dt.Core_Typ = -1
    .assign te_dt.string_format = ""
    .// Link the ownership if contained in a component.
    .assign te_c = empty_te_c
    .select one ep_pkg related by s_dt->PE_PE[R8001]->EP_PKG[R8000]
    .if ( not_empty ep_pkg )
      .invoke r = TE_C_getContainingComponent( ep_pkg )
      .assign te_c = r.result
    .end if
    .if ( empty te_c )
      .// Default the owner to be the system.
      .assign te_dt.Owning_Dom_Name = te_sys.Name
    .else
      .assign te_dt.Owning_Dom_Name = te_c.Name
      .relate te_dt to te_c across R2086
    .end if
  .end for
  .select any converted_bool_te_dt from instances of TE_DT where ( selected.Name == "integer" )
  .//
  .select many o_objs from instances of O_OBJ
  .for each o_obj in o_objs
    .select one ep_pkg related by o_obj->PE_PE[R8001]->EP_PKG[R8000]
    .// CDS - We eventually need to support many returning from this function.
    .invoke r = TE_C_getContainingComponents( ep_pkg )
    .assign te_c = r.result
    .if ( not_empty te_c )
      .if ( ( te_c.included_in_build ) and ( not te_c.isRealized ) )
        .assign te_c.internal_behavior = true
        .// Create the Generated Class instance and link it to the real one.
        .invoke r1 = FactoryTE_CLASS( o_obj, te_c )
        .assign te_class = r1.result
        .if ( "C++" == te_target.language )
          .assign te_class.scope = te_class.GeneratedName + "::"
        .end if
      .end if
    .end if
  .end for
  .//
  .select many s_syncs from instances of S_SYNC
  .for each s_sync in s_syncs
    .select one ep_pkg related by s_sync->PE_PE[R8001]->EP_PKG[R8000]
    .// CDS - We eventually need to support many returning from this function.
    .invoke r = TE_C_getContainingComponents( ep_pkg )
    .assign te_c = r.result
    .if ( not_empty te_c )
      .if ( ( te_c.included_in_build ) and ( not te_c.isRealized ) )
        .assign te_c.internal_behavior = true
        .// Create the Extended Function instance and link it to the real one.
        .create object instance te_sync of TE_SYNC
        .relate s_sync to te_sync across R2023
        .relate te_sync to te_c across R2084
        .assign te_sync.Name = s_sync.Name
        .assign te_sync.GeneratedName = ( te_c.Name + "_" ) + te_sync.Name
      .end if
    .end if
  .end for
  .//
  .select many s_ees from instances of S_EE
  .for each s_ee in s_ees
    .select one ep_pkg related by s_ee->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = TE_C_getContainingComponent( ep_pkg )
    .assign te_c = r.result
    .if ( empty te_c )
      .// Here we have an EE in a package outside of a component.
      .create object instance te_ee of TE_EE
      .relate te_ee to s_ee across R2020
    .else
      .if ( ( te_c.included_in_build ) and ( not te_c.isRealized ) )
        .assign te_c.internal_behavior = true
        .// Create the Extended EE instance and link it to the real one.
        .create object instance te_ee of TE_EE
        .relate te_ee to s_ee across R2020
        .relate te_ee to te_c across R2085
      .end if
    .end if
  .end for
  .//
  .//
  .// Create the low-level leaf items.
  .//
  .// Initialize information for a core data type:  the ANSI C typedef
  .// that the data type is known by in the generated code in both a
  .// normal object declaration and an event declaration and the initial
  .// value of the data element.
  .select many s_cdts from instances of S_CDT
  .for each s_cdt in s_cdts
    .select one te_dt related by s_cdt->S_DT[R17]->TE_DT[R2021]
    .assign te_dt.Core_Typ = s_cdt.Core_Typ
    .assign te_dt.Include_File = te_file.types + ( "." + te_file.hdr_file_ext )
    .if ( 0 == te_dt.Core_Typ )
      .// void
      .assign te_dt.ExtName = "void"
      .assign te_dt.Initial_Value = "0"
      .assign te_dt.string_format = ""
    .elif ( 1 == te_dt.Core_Typ )
      .// boolean
      .assign te_dt.ExtName = "bool"
      .assign te_dt.Initial_Value = "false"
      .assign te_dt.string_format = "%d"
    .elif ( 2 == te_dt.Core_Typ )
      .// integer
      .assign te_dt.ExtName = "i_t"
      .assign te_dt.Initial_Value = "0"
      .assign te_dt.string_format = "%d"
    .elif ( 3 == te_dt.Core_Typ )
      .// real
      .// float or double:  Default to smaller type for embedded.
      .// This can be expanded with the TagDatatypePrecision marking.
      .assign te_dt.ExtName = "r_t"
      .assign te_dt.Initial_Value = "0.0"
      .assign te_dt.string_format = "%f"
    .elif ( 4 == te_dt.Core_Typ )
      .// string
      .assign te_dt.ExtName = "c_t"
      .if ( te_sys.InstanceLoading )
        .assign te_dt.ExtName = "c_t *"
      .end if
      .assign te_dt.Initial_Value = "CTOR"
      .assign te_dt.string_format = "%s"
    .elif ( 5 == te_dt.Core_Typ )
      .// unique_id
      .assign te_dt.ExtName = te_prefix.type + "UniqueID_t"
      .assign te_dt.Initial_Value = "0"
      .assign te_dt.string_format = "%s"
      .//
    .elif ( 6 == te_dt.Core_Typ )
      .// current_state
      .assign te_dt.ExtName = ""
      .assign te_dt.Initial_Value = ""
      .assign te_dt.string_format = "%d"
    .elif ( 7 == te_dt.Core_Typ )
      .// same as base<Attribute>
      .assign te_dt.ExtName = ""
      .assign te_dt.Initial_Value = ""
      .assign te_dt.string_format = "%p"
    .elif ( ( 8 == te_dt.Core_Typ ) or ( 20 == te_dt.Core_Typ ) )
      .// inst_ref<Object>
      .assign te_dt.ExtName = "void *"
      .assign te_dt.Initial_Value = ""
      .assign te_dt.string_format = "%p"
    .elif ( ( 9 == te_dt.Core_Typ ) or ( 21 == te_dt.Core_Typ ) )
      .// inst_ref_set<Object>
      .assign te_dt.ExtName = te_set.base_class + " *"
      .assign te_dt.Initial_Value = ""
      .assign te_dt.string_format = "%p"
    .elif ( 10 == te_dt.Core_Typ )
      .// inst<Event>
      .assign te_dt.ExtName = te_eq.base_event_type + " *"
      .assign te_dt.Initial_Value = "0"
      .assign te_dt.string_format = "%p"
      .//
    .elif ( 11 == te_dt.Core_Typ )
      .// inst<Mapping>
      .assign te_dt.ExtName = ""
      .assign te_dt.Initial_Value = ""
      .assign te_dt.string_format = "%d"
    .elif ( 12 == te_dt.Core_Typ )
      .// inst_ref<Mapping>
      .assign te_dt.ExtName = "i_t"
      .assign te_dt.Initial_Value = "0"
      .assign te_dt.string_format = "%d"
    .else
      .// undefined
      .assign te_dt.ExtName = ""
      .assign te_dt.Initial_Value = ""
      .assign te_dt.string_format = "%x"
    .end if
  .end for
  .//
  .// Initialize information for user data types.
  .select many s_udts from instances of S_UDT
  .for each s_udt in s_udts
    .invoke r = GetBaseTypeForUDT( s_udt )
    .assign base_s_dt = r.result
    .select one core_te_dt related by base_s_dt->TE_DT[R2021]
    .// Given a user data type (S_UDT) and a core data type (S_CDT), set
    .// the C typedef that the user data type is known by in the generated
    .// code.  Also set the initial value of the attribute.
    .// Note:  An initial value of "CTOR" means to run the constructor.
    .select one s_dt related by s_udt->S_DT[R17]
    .select one te_dt related by s_dt->TE_DT[R2021]
    .assign te_dt.Is_Enum = false
    .assign te_dt.Core_Typ = core_te_dt.Core_Typ
    .assign te_dt.Include_File = core_te_dt.Include_File
    .assign te_dt.ExtName = core_te_dt.ExtName
    .assign te_dt.string_format = core_te_dt.string_format
    .if ( "" != s_dt.DefaultValue )
      .assign te_dt.Initial_Value = s_dt.DefaultValue
    .else
      .assign te_dt.Initial_Value = core_te_dt.Initial_Value
    .end if
    .//
    .// CTOR is a special string used to invoke the constructor of a data
    .// attribute on the initialization list of the object constructor.
    .if ( s_dt.Name == "date" )
      .assign te_dt.ExtName = te_prefix.type + "Date_t"
      .assign te_dt.Initial_Value = "CTOR"
    .elif ( s_dt.Name == "timestamp" )
      .assign te_dt.ExtName = te_prefix.type + "TimeStamp_t"
      .assign te_dt.Initial_Value = "CTOR"
    .elif ( s_dt.Name == "inst_ref<Timer>" )
      .if ( te_tim.keyed_timer_support )
        .assign te_dt.ExtName = te_prefix.type + "Timer_t"
      .else
        .assign te_dt.ExtName = te_prefix.type + "Timer_t *"
      .end if
      .assign te_dt.Initial_Value = "0"
    .elif ( s_dt.Name == "inst_ref<StateMachine>" )
      .assign te_dt.ExtName = "<${te_prefix.type}Object Type *>"
      .assign te_dt.Initial_Value = "0"
    .elif ( s_dt.Name == "arbitrary_id" )
      .assign te_dt.ExtName = te_prefix.type + "UniqueID_t"
      .assign te_dt.Initial_Value = "0"
    .end if
  .end for
  .//
  .// Initialize information for enumeration data types.
  .select many s_edts from instances of S_EDT
  .for each s_edt in s_edts
    .select one s_dt related by s_edt->S_DT[R17]
    .select one te_dt related by s_dt->TE_DT[R2021]
    .// NOTE: We should allow the size of an enum to be colored.
    .// For now use small type.
    .if ( "C" == te_target.language )
      .assign te_dt.ExtName = ( te_sys.Name + "_" ) + ( te_dt.Name + "_t" )
    .else
      .assign te_dt.ExtName = te_dt.Name + "_t"
    .end if
    .// CDS We should some day pass along the EDT.
    .assign te_dt.Core_Typ = 2
    .assign te_dt.Is_Enum = true 
    .assign te_dt.Initial_Value = ( te_dt.Owning_Dom_Name + "_" ) + ( te_dt.Name + "__UNINITIALIZED__e" )
    .assign te_dt.Value = "-1"
    .assign te_dt.string_format = "%d"
    .if ( te_dt.Owning_Dom_Name == "sys" )
      .assign te_dt.Include_File = ( te_file.types + "." ) + te_file.hdr_file_ext
    .end if
    .//
    .// Create the Generated Enumerators and link them to the real ones.
    .select many s_enums related by s_edt->S_ENUM[R27]
    .for each s_enum in s_enums
      .create object instance te_enum of TE_ENUM
      .relate s_enum to te_enum across R2027
      .assign te_enum.Name = s_enum.Name
      .assign te_enum.GeneratedName = ( ( te_dt.Owning_Dom_Name + "_" ) + ( te_dt.Name + "_" ) ) + ( "$r{te_enum.Name}" + "_e" )
      .assign value = "${s_enum.Descrip:value}"
      .if ( "" == value )
        .assign value = "${s_enum.Descrip:Value}"
        .if ( "" == value )
          .assign value = "${s_enum.Descrip:VALUE}"
        .end if
      .end if
      .assign te_enum.Value = value
    .end for
  .end for
  .//
  .// Initialize structured data types.
  .select many s_sdts from instances of S_SDT
  .for each s_sdt in s_sdts
    .select one te_dt related by s_sdt->S_DT[R17]->TE_DT[R2021]
    .assign te_dt.ExtName = ( te_dt.Owning_Dom_Name + "_sdt_" ) + te_dt.Name
    .assign te_dt.string_format = ""
    .select many s_mbrs related by s_sdt->S_MBR[R44]
    .for each s_mbr in s_mbrs
      .create object instance te_mbr of TE_MBR
      .relate s_mbr to te_mbr across R2047
      .select one mbr_te_dt related by s_mbr->S_DT[R45]->TE_DT[R2021]
      .relate te_mbr to mbr_te_dt across R2068
    .end for
    .for each s_mbr in s_mbrs
      .select one te_mbr related by s_mbr->TE_MBR[R2047]
      .select one previous_te_mbr related by s_mbr->S_MBR[R46.'succeeds']->TE_MBR[R2047]
      .if ( not_empty previous_te_mbr )
        .relate te_mbr to previous_te_mbr across R2067.'succeeds'
      .end if
      .assign te_mbr.Name = s_mbr.Name
      .assign te_mbr.GeneratedName = "$r{s_mbr.Name}"
      .select many s_dims related by s_mbr->S_DIM[R53]
      .assign array_spec = ""
      .assign te_mbr.dimensions = cardinality s_dims
      .assign te_dim = empty_te_dim
      .assign dim_index = 0
      .while ( dim_index < te_mbr.dimensions )
        .select any s_dim related by s_mbr->S_DIM[R53] where ( selected.dimensionCount == dim_index )
        .invoke r1 = FactoryTE_DIM( s_dim, te_dim )
        .assign te_dim = r1.result
        .if ( dim_index == 0 )
          .relate te_dim to te_mbr across R2059
        .end if
        .assign array_spec = ( array_spec + "[" ) + ( "$t{te_dim.elementCount}" + "]" )
        .assign dim_index = dim_index + 1
      .end while
      .assign te_mbr.array_spec = array_spec
      .// In the C model compiler, treat strings as arrays.
      .select one mbr_te_dt related by s_mbr->S_DT[R45]->TE_DT[R2021]
      .if ( ( 4 == mbr_te_dt.Core_Typ ) and ( not te_sys.InstanceLoading ) )
        .// string
        .assign te_mbr.dimensions = te_mbr.dimensions + 1
        .assign te_mbr.array_spec = ( te_mbr.array_spec + "[" ) + ( te_string.max_string_length + "]" )
      .end if
    .end for
  .end for
  .//
  .// Initialize instance reference data types.
  .select many s_irdts from instances of S_IRDT
  .for each s_irdt in s_irdts
    .select one te_dt related by s_irdt->S_DT[R17]->TE_DT[R2021]
    .select one te_class related by s_irdt->O_OBJ[R123]->TE_CLASS[R2019]
    .if ( s_irdt.isSet )
      .assign te_dt.ExtName = te_set.base_class + " *"
      .assign te_dt.Core_Typ = 21
    .else
      .assign te_dt.Core_Typ = 20
      .if ( not_empty te_class )
        .assign te_dt.ExtName = te_class.GeneratedName + " *"
      .end if
    .end if
  .end for
  .//
  .// Update the precision of the integer and real types based on marking.
  .select many tm_precisions from instances of TM_PRECISION
  .for each tm_precision in tm_precisions
    .assign te_dts = empty_te_dts
    .if ( ( "*" == tm_precision.Domain ) or ( "" == tm_precision.Domain ) )
      .select many te_dts from instances of TE_DT where ( selected.Name == tm_precision.DT_name )
    .else
      .select any te_c from instances of TE_C where ( selected.Name == tm_precision.Domain )
      .select many te_dts related by te_c->TE_DT[R2086] where ( selected.Name == tm_precision.DT_name )
    .end if
    .for each te_dt in te_dts
      .// Only allow precision specification of core types integer
      .// and real and user defined types (UDTs) that are enums
      .// (including S_EDT).
      .// S_CDT.Core_Typ == 2 is integer, S_CDT.Core_Typ == 3 is real
      .select one s_dt related by te_dt->S_DT[R2021]
      .select one s_edt related by s_dt->S_EDT[R17]
      .select one s_cdt related by s_dt->S_CDT[R17]
      .if ( empty s_cdt )
        .select one s_udt related by s_dt->S_UDT[R17]
        .if ( not_empty s_udt )
          .invoke r = GetBaseTypeForUDT( s_udt )
          .assign base_s_dt = r.result
          .select one s_cdt related by base_s_dt->S_CDT[R17]
        .end if
        .if ( empty s_cdt )
          .select one s_irdt related by s_dt->S_IRDT[R17]
          .if ( empty s_irdt )
            .if ( empty s_edt )
              .print "Warning:  Could not find a core data type (S_CDT) for input type."
              .exit 101
            .end if
            .// Enumeration Data Type (S_EDT) - give it a core type of integer.
            .select any s_cdt from instances of S_CDT where (selected.Core_Typ == 2)
          .else
            .if ( s_irdt.isSet )
              .select any s_cdt from instances of S_CDT where (selected.Core_Typ == 9)
            .else
              .select any s_cdt from instances of S_CDT where (selected.Core_Typ == 8)
            .end if
          .end if
        .end if
      .end if
      .if ( ( s_cdt.Core_Typ == 2 ) or ( s_cdt.Core_Typ == 3 ) )
        .invoke r = MapUserSpecifiedDataTypePrecision( te_dt, tm_precision.xName )
        .assign status_error = r.result
        .if ( status_error )
          .assign te_dt.ExtName = tm_precision.xName
        .end if
        .if ( ( "" != tm_precision.initial_value ) and ( empty s_edt ) )
          .assign te_dt.Initial_Value = tm_precision.initial_value
        .end if
      .end if
    .end for
  .end for
  .//
  .// Map data types to pointers based on marking.
  .select many tm_pointers from instances of TM_POINTER
  .for each tm_pointer in tm_pointers
    .assign te_dts = empty_te_dts
    .if ( ( "*" == tm_pointer.Domain ) or ( "" == tm_pointer.Domain ) )
      .select many te_dts from instances of TE_DT where ( selected.Name == tm_pointer.DT_name )
    .else
      .select any te_c from instances of TE_C where ( selected.Name == tm_pointer.Domain )
      .select many te_dts related by te_c->TE_DT[R2086] where ( selected.Name == tm_pointer.DT_name )
    .end if
    .for each te_dt in te_dts
      .assign te_dt.ExtName = tm_pointer.pointer_type + " *"
      .assign te_dt.Initial_Value = "0"
      .assign te_dt.Include_File = tm_pointer.include_file
      .assign te_dt.Is_Enum = false
      .if ( 4 == te_dt.Core_Typ )
        .// Change core type so that dimensions are not added to the pointer.
        .assign te_dt.Core_Typ = -4
      .end if
    .end for
  .end for
  .//
  .// Mark enumerator discrete values (from marking).
  .select many tm_enumvals from instances of TM_ENUMVAL
  .for each tm_enumval in tm_enumvals
    .assign te_dts = empty_te_dts
    .if ( ( "*" == tm_enumval.Domain ) or ( "" == tm_enumval.Domain ) )
      .select many te_dts from instances of TE_DT where ( selected.Name == tm_enumval.enumeration )
    .else
      .select any te_c from instances of TE_C where ( selected.Name == tm_enumval.Domain )
      .select many te_dts related by te_c->TE_DT[R2086] where ( selected.Name == tm_enumval.enumeration )
    .end if
    .for each te_dt in te_dts
      .select any te_enum related by te_dt->S_DT[R2021]->S_EDT[R17]->S_ENUM[R27]->TE_ENUM[R2027] where ( selected.Name == tm_enumval.enumerator )
      .if ( not_empty te_enum )
        .assign te_enum.Value = tm_enumval.value
      .end if
    .end for
  .end for
  .//
  .// Mark enumerator default uninitialized values (from marking).
  .select many tm_enuminits from instances of TM_ENUMINIT
  .for each tm_enuminit in tm_enuminits
    .assign te_dts = empty_te_dts
    .if ( ( "*" == tm_enuminit.Domain ) or ( "" == tm_enuminit.Domain ) )
      .select many te_dts from instances of TE_DT where ( selected.Name == tm_enuminit.enumeration )
    .else
      .select any te_c from instances of TE_C where ( selected.Name == tm_enuminit.Domain )
      .select many te_dts related by te_c->TE_DT[R2086] where ( selected.Name == tm_enuminit.enumeration )
    .end if
    .for each te_dt in te_dts
      .assign te_dt.Value = tm_enuminit.value
    .end for
  .end for
  .//
  .// Create a string parameter that can be duplicated and used for returning string data.
  .select any string_te_dt from instances of TE_DT where ( selected.Name == "string" )
  .invoke r3 = FactoryTE_PARM( empty_s_dims, string_te_dt, "", "A0xtumlsret", 0 )
  .assign te_parm = r3.result
  .//
  .// Create the values and connect them to the V_VAL.
  .select many v_vals from instances of V_VAL
  .for each v_val in v_vals
    .create object instance te_val of TE_VAL
    .relate v_val to te_val across R2040
    .assign te_val.array_spec = ""
    .assign te_val.dimensions = 0
  .end for
  .//
  .// Create the extended actual parameters and connect them to V_PAR.
  .select many v_pars from instances of V_PAR
  .for each v_par in v_pars
    .create object instance te_par of TE_PAR
    .assign te_par.Name = v_par.Name
    .assign te_par.By_Ref = 0
    .relate te_par to v_par across R2063
  .end for
  .//
  .// Create the Generated Parameters needed for all types of parameters.
  .// During this process, te_pars created above will be updated with
  .// By_Ref information.
  .// The TE_PARM instances must exist before creating the action bodies
  .// (for functions, operation, messages, etc).
  .select many s_bparms from instances of S_BPARM
  .for each s_bparm in s_bparms
    .select many s_dims related by s_bparm->S_DIM[R49]
    .select one te_dt related by s_bparm->S_DT[R22]->TE_DT[R2021]
    .invoke r = FactoryTE_PARM( s_dims, te_dt, "p_", s_bparm.Name, s_bparm.By_Ref )
    .assign te_parm = r.result
    .assign te_parm.Descrip = s_bparm.Descrip
    .relate s_bparm to te_parm across R2028
    .select many te_pars related by s_bparm->S_BRG[R21]->ACT_BRG[R674]->V_PAR[R628]->TE_PAR[R2063] where ( selected.Name == te_parm.Name )
    .for each te_par in te_pars
      .assign te_par.By_Ref = te_parm.By_Ref
      .relate te_par to te_parm across R2091
    .end for
    .select many te_pars related by s_bparm->S_BRG[R21]->V_BRV[R828]->V_PAR[R810]->TE_PAR[R2063] where ( selected.Name == te_parm.Name )
    .for each te_par in te_pars
      .assign te_par.By_Ref = te_parm.By_Ref
      .relate te_par to te_parm across R2091
    .end for
  .end for
  .// Link the bridge parameters into order.
  .for each s_bparm in s_bparms
    .select one te_parm related by s_bparm->TE_PARM[R2028]
    .select one next_te_parm related by s_bparm->S_BPARM[R55.'precedes']->TE_PARM[R2028]
    .if ( not_empty next_te_parm )
      .relate te_parm to next_te_parm across R2041.'precedes'
    .end if
  .end for
  .select many o_tparms from instances of O_TPARM
  .for each o_tparm in o_tparms
    .select many s_dims related by o_tparm->S_DIM[R121]
    .select one te_dt related by o_tparm->S_DT[R118]->TE_DT[R2021]
    .invoke r = FactoryTE_PARM( s_dims, te_dt, "p_", o_tparm.Name, o_tparm.By_Ref )
    .assign te_parm = r.result
    .assign te_parm.Descrip = o_tparm.Descrip
    .relate o_tparm to te_parm across R2029
    .select many te_pars related by o_tparm->O_TFR[R117]->ACT_TFM[R673]->V_PAR[R627]->TE_PAR[R2063] where ( selected.Name == te_parm.Name )
    .for each te_par in te_pars
      .assign te_par.By_Ref = te_parm.By_Ref
      .relate te_par to te_parm across R2091
    .end for
    .select many te_pars related by o_tparm->O_TFR[R117]->V_TRV[R829]->V_PAR[R811]->TE_PAR[R2063] where ( selected.Name == te_parm.Name )
    .for each te_par in te_pars
      .assign te_par.By_Ref = te_parm.By_Ref
      .relate te_par to te_parm across R2091
    .end for
  .end for
  .// Link the event parameters into order.
  .for each o_tparm in o_tparms
    .select one te_parm related by o_tparm->TE_PARM[R2029]
    .select one next_te_parm related by o_tparm->O_TPARM[R124.'precedes']->TE_PARM[R2029]
    .if ( not_empty next_te_parm )
      .relate te_parm to next_te_parm across R2041.'precedes'
    .end if
  .end for
  .select many s_sparms from instances of S_SPARM
  .for each s_sparm in s_sparms
    .select many s_dims related by s_sparm->S_DIM[R52]
    .select one te_dt related by s_sparm->S_DT[R26]->TE_DT[R2021]
    .invoke r = FactoryTE_PARM( s_dims, te_dt, "p_", s_sparm.Name, s_sparm.By_Ref )
    .assign te_parm = r.result
    .assign te_parm.Descrip = s_sparm.Descrip
    .relate s_sparm to te_parm across R2030
    .select many te_pars related by s_sparm->S_SYNC[R24]->ACT_FNC[R675]->V_PAR[R669]->TE_PAR[R2063] where ( selected.Name == te_parm.Name )
    .for each te_par in te_pars
      .assign te_par.By_Ref = te_parm.By_Ref
      .relate te_par to te_parm across R2091
    .end for
    .select many te_pars related by s_sparm->S_SYNC[R24]->V_FNV[R827]->V_PAR[R817]->TE_PAR[R2063] where ( selected.Name == te_parm.Name )
    .for each te_par in te_pars
      .assign te_par.By_Ref = te_parm.By_Ref
      .relate te_par to te_parm across R2091
    .end for
  .end for
  .// Link the function parameters into order.
  .for each s_sparm in s_sparms
    .select one te_parm related by s_sparm->TE_PARM[R2030]
    .select one next_te_parm related by s_sparm->S_SPARM[R54.'precedes']->TE_PARM[R2030]
    .if ( not_empty next_te_parm )
      .relate te_parm to next_te_parm across R2041.'precedes'
    .end if
  .end for
  .select many sm_evtdis from instances of SM_EVTDI
  .for each sm_evtdi in sm_evtdis
    .select many s_dims related by sm_evtdi->S_DIM[R531]
    .select one te_dt related by sm_evtdi->S_DT[R524]->TE_DT[R2021]
    .// Event data items are not passable By_Ref at this time.
    .invoke r = FactoryTE_PARM( s_dims, te_dt, "p_", sm_evtdi.Name, 0 )
    .assign te_parm = r.result
    .assign te_parm.Descrip = sm_evtdi.Descrip
    .relate te_parm to sm_evtdi across R2031
  .end for
  .// Link the event parameters into order.
  .for each sm_evtdi in sm_evtdis
    .select one te_parm related by sm_evtdi->TE_PARM[R2031]
    .select one next_te_parm related by sm_evtdi->SM_EVTDI[R533.'precedes']->TE_PARM[R2031]
    .if ( not_empty next_te_parm )
      .relate te_parm to next_te_parm across R2041.'precedes'
    .end if
  .end for
  .select many c_pps from instances of C_PP
  .for each c_pp in c_pps
    .select many s_dims related by c_pp->S_DIM[R4017]
    .select one te_dt related by c_pp->S_DT[R4007]->TE_DT[R2021]
    .assign c_pp_name = c_pp.Name
    .if ( "C++" == te_target.language )
      .select one c_as related by c_pp->C_EP[R4006]->C_AS[R4004]
      .if ( not_empty c_as )
        .assign c_pp_name = ( c_as.Name + "_" ) + c_pp_name
      .else
        .select one c_io related by c_pp->C_EP[R4006]->C_IO[R4004]
        .assign c_pp_name = ( c_io.Name + "_" ) + c_pp_name
      .end if
    .end if
    .invoke r = FactoryTE_PARM( s_dims, te_dt, "p_", c_pp_name, c_pp.By_Ref )
    .assign te_parm = r.result
    .assign te_parm.Descrip = c_pp.Descrip
    .relate c_pp to te_parm across R2048
    .select many spr_reps related by c_pp->C_EP[R4006]->SPR_REP[R4500]
    .if ( not_empty spr_reps )
      .select many te_pars related by spr_reps->SPR_RS[R4502]->ACT_SGN[R660]->V_PAR[R662]->TE_PAR[R2063] where ( selected.Name == c_pp.Name )
      .for each te_par in te_pars
        .assign te_par.By_Ref = te_parm.By_Ref
        .relate te_par to te_parm across R2091
      .end for
      .select many te_pars related by spr_reps->SPR_RO[R4502]->ACT_IOP[R657]->V_PAR[R679]->TE_PAR[R2063] where ( selected.Name == c_pp.Name )
      .for each te_par in te_pars
        .assign te_par.By_Ref = te_parm.By_Ref
        .relate te_par to te_parm across R2091
      .end for
      .select many te_pars related by spr_reps->V_MSV[R845]->V_PAR[R842]->TE_PAR[R2063] where ( selected.Name == c_pp.Name )
      .for each te_par in te_pars
        .assign te_par.By_Ref = te_parm.By_Ref
        .relate te_par to te_parm across R2091
      .end for
    .end if
    .select many spr_peps related by c_pp->C_EP[R4006]->SPR_PEP[R4501]
    .if ( not_empty spr_peps )
      .select many te_pars related by spr_peps->SPR_PS[R4503]->ACT_SGN[R663]->V_PAR[R662]->TE_PAR[R2063] where ( selected.Name == c_pp.Name )
      .for each te_par in te_pars
        .assign te_par.By_Ref = te_parm.By_Ref
        .relate te_par to te_parm across R2091
      .end for
      .select many te_pars related by spr_peps->SPR_PO[R4503]->ACT_IOP[R680]->V_PAR[R679]->TE_PAR[R2063] where ( selected.Name == c_pp.Name )
      .for each te_par in te_pars
        .assign te_par.By_Ref = te_parm.By_Ref
        .relate te_par to te_parm across R2091
      .end for
      .select many te_pars related by spr_peps->V_MSV[R841]->V_PAR[R842]->TE_PAR[R2063] where ( selected.Name == c_pp.Name )
      .for each te_par in te_pars
        .assign te_par.By_Ref = te_parm.By_Ref
        .relate te_par to te_parm across R2091
      .end for
    .end if
  .end for
  .// Link the event parameters into order.
  .for each c_pp in c_pps
    .select one te_parm related by c_pp->TE_PARM[R2048]
    .select one next_te_parm related by c_pp->C_PP[R4021.'precedes']->TE_PARM[R2048]
    .if ( not_empty next_te_parm )
      .relate te_parm to next_te_parm across R2041.'precedes'
    .end if
  .end for
  .//
  .//
  .select any void_te_dt from instances of TE_DT where ( selected.Core_Typ == 0 )
  .//
  .// Create the port message actions.  There are four types.  Use
  .// a common extension class for all of them.
  .// Populate the extension with all of the names it will need from
  .// the component, interface, port and message.
  .select many spr_ros from instances of SPR_RO
  .for each spr_ro in spr_ros
    .select one spr_rep related by spr_ro->SPR_REP[R4502]
    .select one te_po related by spr_rep->C_R[R4500]->C_IR[R4009]->C_PO[R4016]->TE_PO[R2044]
    .select one te_c related by te_po->TE_C[R2005]
    .select one c_io related by spr_rep->C_EP[R4500]->C_IO[R4004]
    .select one te_dt related by c_io->S_DT[R4008]->TE_DT[R2021]
    .// If we are using TLM ports, convert booleans to integers
    .if ( "SystemC" == te_thread.flavor )
      .if ( ( 1 == te_dt.Core_Typ ) and ( te_sys.SystemCPortsType == "TLM" ) )
        .assign te_dt = converted_bool_te_dt
      .end if
    .end if
    .select many te_parms related by spr_rep->C_EP[R4500]->C_PP[R4006]->TE_PARM[R2048]
    .invoke r = FactoryTE_MACT( te_parms, te_dt, te_c, te_po, spr_ro.Name, "SPR_RO" )
    .assign te_mact = r.result
    .assign te_mact.Descrip = c_io.Descrip
    .assign te_mact.Direction = c_io.Direction
    .relate te_mact to spr_ro across R2052
  .end for
  .select many spr_rss from instances of SPR_RS
  .for each spr_rs in spr_rss
    .select one spr_rep related by spr_rs->SPR_REP[R4502]
    .select one te_po related by spr_rep->C_R[R4500]->C_IR[R4009]->C_PO[R4016]->TE_PO[R2044]
    .select one te_c related by te_po->TE_C[R2005]
    .select one c_as related by spr_rep->C_EP[R4500]->C_AS[R4004]
    .select many te_parms related by spr_rep->C_EP[R4500]->C_PP[R4006]->TE_PARM[R2048]
    .invoke r = FactoryTE_MACT( te_parms, void_te_dt, te_c, te_po, spr_rs.Name, "SPR_RS" )
    .assign te_mact = r.result
    .assign te_mact.Descrip = c_as.Descrip
    .assign te_mact.Direction = c_as.Direction
    .relate te_mact to spr_rs across R2053
  .end for
  .select many spr_pos from instances of SPR_PO
  .for each spr_po in spr_pos
    .select one spr_pep related by spr_po->SPR_PEP[R4503]
    .select one te_po related by spr_pep->C_P[R4501]->C_IR[R4009]->C_PO[R4016]->TE_PO[R2044]
    .select one te_c related by te_po->TE_C[R2005]
    .select one c_io related by spr_pep->C_EP[R4501]->C_IO[R4004]
    .select one te_dt related by c_io->S_DT[R4008]->TE_DT[R2021]
    .// If we are using TLM ports, convert booleans to integers
    .if ( "SystemC" == te_thread.flavor )
      .if ( ( 1 == te_dt.Core_Typ ) and ( te_sys.SystemCPortsType == "TLM" ) )
        .assign te_dt = converted_bool_te_dt
      .end if
    .end if
    .select many te_parms related by spr_pep->C_EP[R4501]->C_PP[R4006]->TE_PARM[R2048]
    .invoke r = FactoryTE_MACT( te_parms, te_dt, te_c, te_po, spr_po.Name, "SPR_PO" )
    .assign te_mact = r.result
    .assign te_mact.Descrip = c_io.Descrip
    .assign te_mact.Direction = c_io.Direction
    .relate te_mact to spr_po across R2050
  .end for
  .select many spr_pss from instances of SPR_PS
  .for each spr_ps in spr_pss
    .select one spr_pep related by spr_ps->SPR_PEP[R4503]
    .select one te_po related by spr_pep->C_P[R4501]->C_IR[R4009]->C_PO[R4016]->TE_PO[R2044]
    .select one te_c related by te_po->TE_C[R2005]
    .select one c_as related by spr_pep->C_EP[R4501]->C_AS[R4004]
    .select many te_parms related by spr_pep->C_EP[R4501]->C_PP[R4006]->TE_PARM[R2048]
    .invoke r = FactoryTE_MACT( te_parms, void_te_dt, te_c, te_po, spr_ps.Name, "SPR_PS" )
    .assign te_mact = r.result
    .assign te_mact.Descrip = c_as.Descrip
    .assign te_mact.Direction = c_as.Direction
    .relate te_mact to spr_ps across R2051
  .end for
  .// All the te_pos and te_macts are created now.  Order the te_macts alphabetically inside the ports.
  .select many te_pos from instances of TE_PO
  .for each te_po in te_pos
    .select many te_macts related by te_po->TE_MACT[R2006]
    .invoke r = mact_sort( te_macts )
    .assign te_mact = r.result
    .if ( not_empty te_mact )
      .relate te_po to te_mact across R2099
    .end if
  .end for
  .//
  .//
  .// Create the generated links (associations) and connect them.
  .// CDS - consider moving this in under the TE_C loop.
  .// also consider selecting these from include r_oirs.
  .select many r_rels from instances of R_REL
  .for each r_rel in r_rels
    .create object instance te_rel of TE_REL
    .assign te_rel.Numb = r_rel.Numb
    .if ( te_sys.InstanceLoading )
      .assign te_rel.LinkNeeded = true
    .else
      .assign te_rel.LinkNeeded = false
    .end if
    .assign te_rel.UnlinkNeeded = false
    .assign te_rel.Navigated = false
    .assign te_rel.Order = 0
    .assign te_rel.storage_needed = false
    .relate r_rel to te_rel across R2034
  .end for
  .//
  .// Create the navigations and connect them to the R_OIRs.
  .select many r_oirs from instances of R_OIR
  .for each r_oir in r_oirs
    .create object instance te_oir of TE_OIR
    .select one o_obj related by r_oir->O_OBJ[R201]
    .select one r_rel related by r_oir->R_REL[R201]
    .assign te_oir.data_member = ( o_obj.Key_Lett + "_R" ) + "$t{r_rel.Numb}"
    .assign te_oir.assoc_type = ""
    .assign te_oir.Mult = 0
    .assign te_oir.rel_phrase = ""
    .assign te_oir.object_id = ""
    .assign te_oir.NavigatedTo = false
    .relate r_oir to te_oir across R2035
  .end for
  .select many r_parts related by r_rels->R_SIMP[R206]->R_PART[R207]
  .for each r_part in r_parts
    .select one te_oir related by r_part->R_RTO[R204]->R_OIR[R203]->TE_OIR[R2035]
    .assign te_oir.assoc_type = "part"
    .assign te_oir.rel_phrase = "$_{r_part.Txt_Phrs}"
    .assign te_oir.Mult = r_part.Mult
    .if ( "" != te_oir.rel_phrase )
      .assign te_oir.data_member = ( te_oir.data_member + "_" ) + te_oir.rel_phrase
    .end if
  .end for
  .select many r_forms from instances of R_FORM
  .for each r_form in r_forms
    .select one te_oir related by r_form->R_RGO[R205]->R_OIR[R203]->TE_OIR[R2035]
    .assign te_oir.assoc_type = "form"
    .assign te_oir.rel_phrase = "$_{r_form.Txt_Phrs}"
    .assign te_oir.Mult = r_form.Mult
    .if ( "" != te_oir.rel_phrase )
      .assign te_oir.data_member = ( te_oir.data_member + "_" ) + te_oir.rel_phrase
    .end if
  .end for
  .select many r_aones from instances of R_AONE
  .for each r_aone in r_aones
    .select one te_oir related by r_aone->R_RTO[R204]->R_OIR[R203]->TE_OIR[R2035]
    .assign te_oir.assoc_type = "aone"
    .assign te_oir.rel_phrase = "$_{r_aone.Txt_Phrs}"
    .assign te_oir.Mult = r_aone.Mult
    .if ( "" != te_oir.rel_phrase )
      .assign te_oir.data_member = ( te_oir.data_member + "_" ) + te_oir.rel_phrase
    .end if
  .end for
  .select many r_aoths from instances of R_AOTH
  .for each r_aoth in r_aoths
    .select one te_oir related by r_aoth->R_RTO[R204]->R_OIR[R203]->TE_OIR[R2035]
    .assign te_oir.assoc_type = "aoth"
    .assign te_oir.rel_phrase = "$_{r_aoth.Txt_Phrs}"
    .assign te_oir.Mult = r_aoth.Mult
    .if ( "" != te_oir.rel_phrase )
      .assign te_oir.data_member = ( te_oir.data_member + "_" ) + te_oir.rel_phrase
    .end if
  .end for
  .select many r_assrs from instances of R_ASSR
  .for each r_assr in r_assrs
    .select one te_oir related by r_assr->R_RGO[R205]->R_OIR[R203]->TE_OIR[R2035]
    .assign te_oir.assoc_type = "assr"
    .assign te_oir.Mult = r_assr.Mult
  .end for
  .select many r_subs from instances of R_SUB
  .for each r_sub in r_subs
    .select one te_oir related by r_sub->R_RGO[R205]->R_OIR[R203]->TE_OIR[R2035]
    .select one r_rel related by r_sub->R_SUBSUP[R213]->R_REL[R206]
    .assign te_oir.assoc_type = "subsuper"
    .assign te_oir.object_id = ( "R" + "$t{r_rel.Numb}" ) + "_object_id"
    .assign te_oir.data_member = ( "R" + "$t{r_rel.Numb}" ) + "_subtype"
  .end for
  .select many r_supers from instances of R_SUPER
  .for each r_super in r_supers
    .select one te_oir related by r_super->R_RTO[R204]->R_OIR[R203]->TE_OIR[R2035]
    .assign te_oir.assoc_type = "subsuper"
  .end for
  .//
  .// Create the blocks and connect them to the ACT_BLKs.
  .select many act_blks from instances of ACT_BLK
  .for each act_blk in act_blks
    .create object instance te_blk of TE_BLK
    .relate act_blk to te_blk across R2016
    .assign te_blk.declaration = ""
    .assign te_blk.deallocation = ""
    .assign te_blk.depth = 1
    .assign first_smt = true
    .// Create the statements and connect them to the ACT_SMTs.
    .select many act_smts related by act_blk->ACT_SMT[R602]
    .for each act_smt in act_smts
      .create object instance te_smt of TE_SMT
      .relate act_smt to te_smt across R2038
      .// Connect the statement to its parent block.
      .relate te_smt to te_blk across R2078
      .if ( first_smt )
        .// CDS WARNING!! This assumes the gen_erate will give us the first statement first!
        .relate te_blk to te_smt across R2014
        .assign first_smt = false
      .end if
      .assign te_smt.OAL = ""
      .assign te_smt.buffer = ""
      .assign te_smt.buffer2 = ""
      .assign te_smt.trace = ""
    .end for
    .// Link the te_smts into order like the act_smts.
    .for each act_smt in act_smts
      .select one te_smt related by act_smt->TE_SMT[R2038]
      .select one next_act_smt related by act_smt->ACT_SMT[R661.'precedes']
      .if ( not_empty next_act_smt )
        .select one next_te_smt related by next_act_smt->TE_SMT[R2038]
        .relate te_smt to next_te_smt across R2012.'precedes'
      .end if
    .end for
  .end for
  .//
  .// Connect up statements and blocks in the extended subsystem.
  .// We want statements to know:
  .// 1) containing block
  .// 2) sub-block
  .// [for, while, if, elif and else statements have sub-blocks.]
  .select many act_fors from instances of ACT_FOR
  .for each act_for in act_fors
    .select one te_smt related by act_for->ACT_SMT[R603]->TE_SMT[R2038]
    .select one te_blk related by act_for->ACT_BLK[R605]->TE_BLK[R2016]
    .relate te_smt to te_blk across R2015
    .assign te_smt.subtypeKL = "TE_FOR"
  .end for
  .select many act_whls from instances of ACT_WHL
  .for each act_whl in act_whls
    .select one te_smt related by act_whl->ACT_SMT[R603]->TE_SMT[R2038]
    .select one te_blk related by act_whl->ACT_BLK[R608]->TE_BLK[R2016]
    .relate te_smt to te_blk across R2015
    .assign te_smt.subtypeKL = "TE_WHL"
  .end for
  .select many act_ifs from instances of ACT_IF
  .for each act_if in act_ifs
    .select one te_smt related by act_if->ACT_SMT[R603]->TE_SMT[R2038]
    .select one te_blk related by act_if->ACT_BLK[R607]->TE_BLK[R2016]
    .relate te_smt to te_blk across R2015
    .assign te_smt.subtypeKL = "TE_IF"
  .end for
  .select many act_els from instances of ACT_EL
  .for each act_el in act_els
    .select one te_smt related by act_el->ACT_SMT[R603]->TE_SMT[R2038]
    .select one te_blk related by act_el->ACT_BLK[R658]->TE_BLK[R2016]
    .relate te_smt to te_blk across R2015
    .assign te_smt.subtypeKL = "TE_EL"
  .end for
  .select many act_es from instances of ACT_E
  .for each act_e in act_es
    .select one te_smt related by act_e->ACT_SMT[R603]->TE_SMT[R2038]
    .select one te_blk related by act_e->ACT_BLK[R606]->TE_BLK[R2016]
    .relate te_smt to te_blk across R2015
    .assign te_smt.subtypeKL = "TE_E"
  .end for
  .// Calculate the block depth to be used for indentation.
  .select many te_blks from instances of TE_BLK
  .for each te_blk in te_blks
    .select one parent_te_blk related by te_blk->TE_SMT[R2015]->TE_BLK[R2078]
    .while ( not_empty parent_te_blk )
      .assign te_blk.depth = te_blk.depth + 1
      .select one parent_te_blk related by parent_te_blk->TE_SMT[R2015]->TE_BLK[R2078]
    .end while
    .invoke r = blk_indentwhitespace( te_blk.depth )
    .assign te_blk.indentation = r.result
  .end for
  .//
  .// Create the generated chain links and connect them to the ACT_LNKs.
  .select many act_lnks from instances of ACT_LNK
  .for each act_lnk in act_lnks
    .invoke FactoryTE_LNK( act_lnk )
  .end for
  .// Link the chain links together in extensions as in meta-model proper.
  .select many te_lnks from instances of TE_LNK
  .for each te_lnk in te_lnks
    .select one act_lnk related by te_lnk->ACT_LNK[R2042]
    .select one next_act_lnk related by act_lnk->ACT_LNK[R604.'precedes']
    .if ( not_empty next_act_lnk )
      .select one next_te_lnk related by next_act_lnk->TE_LNK[R2042]
      .relate te_lnk to next_te_lnk across R2075.'precedes'
      .// We populate this here.  Populate firsts during statement linkage.
      .assign next_te_lnk.left = te_lnk.linkage
      .// We may have traversed directly from aoth to aone (or vice versa)
      .// across an associative association.  If so, insert the associative
      .// link between the two ends to enable the traversal.
      .invoke r = detect_and_insert_associator_TE_LNK( te_lnk, next_te_lnk, act_lnk, next_act_lnk, empty_o_obj )
      .assign discard = r.result
    .else
      .// We can detect the end of the chain here.
      .// We will detect the beginning during statement linkage.
      .if ( not_empty te_lnk )
        .assign te_lnk.last = true
      .end if
    .end if
  .end for
  .//
  .// Create the variables and connect them to the V_VAR.
  .select many v_vars from instances of V_VAR
  .for each v_var in v_vars
    .create object instance te_var of TE_VAR
    .relate v_var to te_var across R2039
    .if ( "self" == "$l{v_var.Name}" )
      .assign te_var.OAL = "self"
      .assign te_var.buffer = te_instance.self
    .else
      .assign te_var.OAL = v_var.Name
      .assign te_var.buffer = "$_{v_var.Name}"
      .if ( "C++" == te_target.language )
        .// This prepends characters to transients in case the modeler used a C keyword.
        .assign te_var.buffer = "v_" + te_var.buffer
      .end if
    .end if
    .assign array_spec = ""
    .select many s_dims related by v_var->S_DIM[R849]
    .assign te_var.dimensions = cardinality s_dims
    .assign te_dim = empty_te_dim
    .assign dim_index = 0
    .while ( dim_index < te_var.dimensions )
      .select any s_dim related by v_var->S_DIM[R849] where ( selected.dimensionCount == dim_index )
      .invoke r = FactoryTE_DIM( s_dim, te_dim )
      .assign te_dim = r.result
      .if ( dim_index == 0 )
        .relate te_dim to te_var across R2057
      .end if
      .assign array_spec = ( array_spec + "[" ) + ( "$t{te_dim.elementCount}" + "]" )
      .assign dim_index = dim_index + 1
    .end while
    .assign te_var.array_spec = array_spec
    .select one te_dt related by v_var->S_DT[R848]->TE_DT[R2021]
    .if ( not_empty te_dt )
      .// In the C model compiler, treat strings as arrays.
      .if ( ( 4 == te_dt.Core_Typ ) and ( not te_sys.InstanceLoading ) )
        .// string
        .assign te_var.dimensions = te_var.dimensions + 1
        .assign te_var.array_spec = ( te_var.array_spec + "[" ) + ( te_string.max_string_length + "]" )
      .end if
    .else
      .assign msg = ( "\nERROR:  Did not find a datatype associated with variable " + v_var.Name ) + ".\n"
      .assign msg = msg + "Check usages of variable for parse errors in the action language.\n"
      .assign msg = msg + "[Parse All Activities and look for errors in the Problems view.]\n"
      .print "${msg}"
    .end if
  .end for
  .//
  .//
  .//
  .// Continue initializing the components created and linked above.
  .// Recurse down into the component-level artifacts.
  .select many te_cs from instances of TE_C where ( selected.included_in_build )
  .for each te_c in te_cs
    .// Initialize the te_sync instances.
    .select many te_syncs related by te_c->TE_SYNC[R2084]
    .invoke r = sync_sort( te_syncs )
    .assign te_sync = r.result
    .if ( not_empty te_sync )
      .relate te_c to te_sync across R2097
    .end if
    .for each te_sync in te_syncs
      .select one s_sync related by te_sync->S_SYNC[R2023]
      .assign te_sync.IsInitFunction = false
      .assign te_sync.IsSafeForInterrupts = false
      .assign te_sync.XlateSemantics = true
      .assign te_sync.deferred_method = te_sync.GeneratedName + "_deferred"
      .select any tm_sync from instances of TM_SYNC where ( ( selected.RegisteredDomain == te_c.Name ) and ( selected.Name == te_sync.Name ) )
      .if ( not_empty tm_sync )
        .assign te_sync.IsSafeForInterrupts = tm_sync.IsSafeForInterrupts
        .select one rval_dt related by s_sync->S_DT[R25]
        .if ( rval_dt.Name != "void" )
          .print "ERROR:  Function ${te_sync.Name} in ${te_c.Name}"
          .print "is trying to return data.  Functions marked as safe for"
          .print "interrupt invocation cannot return data.  They must be"
          .print "of return type void."
          .print "Change the return type of the function or do not mark"
          .print "it as SafeForInterrupts."
          .exit 100
        .end if
      .end if
      .if ( te_sync.IsSafeForInterrupts )
        .assign te_sync.intraface_method = te_sync.GeneratedName + "_sync"
      .else
        .assign te_sync.intraface_method = te_sync.GeneratedName
      .end if
      .select one te_dt related by s_sync->S_DT[R25]->TE_DT[R2021]
      .select many te_parms related by s_sync->S_SPARM[R24]->TE_PARM[R2030]
      .invoke r1 = FactoryTE_ABA( te_c, te_parms, te_c.Name, te_sync.GeneratedName, "S_SYNC", te_dt )
      .assign te_aba = r1.result
      .relate te_sync to te_aba across R2010
      .select one te_blk related by s_sync->ACT_FNB[R695]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
      .if ( not_empty te_blk )
        .relate te_blk to te_aba across R2011
      .end if
    .end for
    .//
    .// Create the Generated External Entity instances and link them in.
    .select many te_ees related by te_c->TE_EE[R2085]
    .for each te_ee in te_ees
      .invoke TE_EE_init( te_ee, te_c )
    .end for
    .invoke r1 = ee_sort( te_ees )
    .assign te_ee = r1.result
    .if ( not_empty te_ee )
      .relate te_c to te_ee across R2098
    .end if
    .//
    .select many te_macts related by te_c->TE_MACT[R2002]
    .for each te_mact in te_macts
      .select one te_aba related by te_mact->TE_ABA[R2010]
      .select any te_blk from instances of TE_BLK where (false)
      .if ( "SPR_PO" == te_mact.subtypeKL )
        .select one te_blk related by te_mact->SPR_PO[R2050]->ACT_POB[R687]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
      .elif ( "SPR_RO" == te_mact.subtypeKL )
        .select one te_blk related by te_mact->SPR_RO[R2052]->ACT_ROB[R685]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
      .elif ( "SPR_PS" == te_mact.subtypeKL )
        .select one te_blk related by te_mact->SPR_PS[R2051]->ACT_PSB[R686]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
      .elif ( "SPR_RS" == te_mact.subtypeKL )
        .select one te_blk related by te_mact->SPR_RS[R2053]->ACT_RSB[R684]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
      .end if
      .if ( not_empty te_blk )
        .relate te_blk to te_aba across R2011
      .end if
    .end for
    .//
    .// Initialize the Generated Class instances.
    .select many te_classs related by te_c->TE_CLASS[R2064]
    .for each te_class in te_classs
      .select one o_obj related by te_class->O_OBJ[R2019]
      .// Initialize model compiler extension attributes.
      .select one sm_ism related by o_obj->SM_ISM[R518]
      .if ( not_empty sm_ism )
        .assign te_class.dispatcher = te_class.GeneratedName + "_Dispatch"
      .end if
      .select one sm_asm related by o_obj->SM_ASM[R519]
      .if ( not_empty sm_asm )
        .assign te_class.CBdispatcher = te_class.GeneratedName + "_CBDispatch"
      .end if
      .//
      .// Create the Generated Attribute instances and link them to the real ones.
      .assign delimiter = ""
      .assign prev_te_attr = empty_te_attr
      .// Find first o_attr.
      .select any o_attr related by o_obj->O_ATTR[R102]
      .while ( not_empty o_attr )
        .select one prev_o_attr related by o_attr->O_ATTR[R103.'succeeds']
        .if ( empty prev_o_attr )
          .break while
        .end if
        .assign o_attr = prev_o_attr
      .end while
      .while ( not_empty o_attr )
        .create object instance te_attr of TE_ATTR
        .assign te_attr.Name = o_attr.Name
        .assign te_attr.GeneratedName = "$r{o_attr.Name}"
        .assign te_attr.DefaultValue = o_attr.DefaultValue
        .assign te_attr.Used = false
        .assign te_attr.read = false
        .assign te_attr.written = false
        .assign te_attr.Included = false
        .assign te_attr.Order = 0
        .assign te_attr.ParamBuffer = ""
        .assign te_attr.translate = true
        .relate te_attr to o_attr across R2033
        .relate te_attr to te_class across R2061
        .if ( not_empty prev_te_attr )
          .relate prev_te_attr to te_attr across R2087.'precedes'
        .end if
        .select many s_dims related by o_attr->S_DIM[R120]
        .assign array_spec = ""
        .assign te_attr.dimensions = cardinality s_dims
        .assign te_dim = empty_te_dim
        .assign dim_index = 0
        .while ( dim_index < te_attr.dimensions )
          .select any s_dim related by o_attr->S_DIM[R120] where ( selected.dimensionCount == dim_index )
          .invoke r2 = FactoryTE_DIM( s_dim, te_dim )
          .assign te_dim = r2.result
          .if ( dim_index == 0 )
            .relate te_dim to te_attr across R2055
          .end if
          .assign array_spec = ( array_spec + "[" ) + ( "$t{te_dim.elementCount}" + "]" )
          .assign dim_index = dim_index + 1
        .end while
        .assign te_attr.array_spec = array_spec
        .select one te_dt related by o_attr->S_DT[R114]->TE_DT[R2021]
        .// Potentially substitute data type for base attribute data type.
        .if ( 7 == te_dt.Core_Typ )
          .// referential attribute
          .invoke r2 = GetAttributeCodeGenType( o_attr )
          .assign te_dt = r2.result
        .end if
        .assign te_attr.GeneratedType = te_dt.ExtName
        .assign o_attr_Descrip_Persistent = "${o_attr.Descrip:Persistent}"
        .if ( o_attr_Descrip_Persistent != "false" )
          .if ( 5 == te_dt.Core_Typ )
            .select any te_dma from instances of TE_DMA
            .assign te_class.attribute_format = ( te_class.attribute_format + delimiter ) + te_dt.string_format
            .assign te_class.attribute_dump = ( ( ( te_class.attribute_dump + ",\n    " ) + te_string.u128touuid ) + ( "( " + te_set.scope ) ) + ( ( te_dma.allocate + "( 39 ),  self->" ) + ( te_attr.GeneratedName + " )" ) )
          .elif ( "%p" == te_dt.string_format )
            .assign te_class.attribute_format = ( te_class.attribute_format + delimiter ) + "%ld"
            .assign te_class.attribute_dump = ( te_class.attribute_dump + ",\n    ((long)self->" ) + ( te_attr.GeneratedName + " & ESCHER_IDDUMP_MASK)" )
            .assign te_class.attribute_dump = ( te_class.attribute_dump + ",\n    self->" ) + te_attr.GeneratedName
          .elif ( "%s" == te_dt.string_format )
            .// Place an escaped tick mark around the %s in the attribute format string.
            .assign te_class.attribute_format = te_class.attribute_format + delimiter + tick + tick + te_dt.string_format + tick + tick
            .assign te_class.attribute_dump = te_class.attribute_dump + ",\n    ( 0 != self->" + te_attr.GeneratedName + " ) ? self->" + te_attr.GeneratedName + " : " + quote + quote
          .else
            .assign te_class.attribute_format = ( te_class.attribute_format + delimiter ) + te_dt.string_format
            .assign te_class.attribute_dump = ( te_class.attribute_dump + ",\n    self->" ) + te_attr.GeneratedName
          .end if
        .end if
        .// In the C model compiler, treat strings as arrays.
        .if ( ( 4 == te_dt.Core_Typ ) and ( not te_sys.InstanceLoading ) ) 
          .// string
          .assign te_attr.dimensions = te_attr.dimensions + 1
          .assign te_attr.array_spec = ( te_attr.array_spec + "[" ) + ( te_string.max_string_length + "]" )
        .end if
        .//
        .// Create the Action Block Anchors associated with each action
        .// in the user model.  Initialize and link them.
        .// Create and link the Generated versions of each of the action homes.
        .select one o_dbattr related by o_attr->O_BATTR[R106]->O_DBATTR[R107]
        .if ( not_empty o_dbattr )
          .create object instance te_dbattr of TE_DBATTR
          .assign te_dbattr.Included = false
          .assign te_dbattr.GeneratedName = ( te_class.GeneratedName + "_MDA_" ) + o_attr.Name
          .relate o_dbattr to te_dbattr across R2026
          .select one te_dt related by o_attr->S_DT[R114]->TE_DT[R2021]
          .assign te_parms = empty_te_parms
          .invoke r2 = FactoryTE_ABA( te_c, te_parms, "", te_dbattr.GeneratedName, "O_DBATTR", te_dt )
          .assign te_aba = r2.result
          .relate te_dbattr to te_aba across R2010
          .select one te_blk related by o_dbattr->ACT_DAB[R693]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
          .if ( not_empty te_blk )
            .relate te_blk to te_aba across R2011
          .end if
        .end if
        .assign delimiter = ","
        .assign prev_te_attr = te_attr
        .select one o_attr related by o_attr->O_ATTR[R103.'precedes']
      .end while
      .//
      .// Create the Generated State Machines and connect them to SM_SM.
      .select one sm_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
      .if ( not_empty sm_sm )
        .invoke r2 = FactoryTE_SM( true, sm_sm, te_class )
        .assign te_sm = r2.result
      .end if
      .select one sm_sm related by o_obj->SM_ASM[R519]->SM_SM[R517]
      .if ( not_empty sm_sm )
        .invoke r2 = FactoryTE_SM( false, sm_sm, te_class )
        .assign te_sm = r2.result
      .end if
      .//
      .// Create and relate the generated class operations.
      .select many o_tfrs related by o_obj->O_TFR[R115]
      .for each o_tfr in o_tfrs
        .create object instance te_tfr of TE_TFR
        .assign te_tfr.Included = false
        .assign te_tfr.XlateSemantics = true
        .assign ib = ( 1 ) .COMMENT Scope::Instance
        .if ( ib == o_tfr.Instance_Based )
          .assign te_tfr.Instance_Based = 1
        .else
          .assign te_tfr.Instance_Based = 0
        .end if
        .assign te_tfr.Key_Lett = te_class.Key_Lett
        .assign te_tfr.Name = o_tfr.Name
        .assign te_tfr.GeneratedName = ( ( te_c.Name + "_" ) + ( te_tfr.Key_Lett + "_op_" ) ) + te_tfr.Name
        .relate o_tfr to te_tfr across R2024
        .select one te_dt related by o_tfr->S_DT[R116]->TE_DT[R2021]
        .select many te_parms related by o_tfr->O_TPARM[R117]->TE_PARM[R2029]
        .invoke r2 = FactoryTE_ABA( te_c, te_parms, te_class.GeneratedName, te_tfr.GeneratedName, "O_TFR", te_dt )
        .assign te_aba = r2.result
        .relate te_tfr to te_aba across R2010
        .select one te_blk related by o_tfr->ACT_OPB[R696]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
        .if ( not_empty te_blk )
          .relate te_blk to te_aba across R2011
        .end if
      .end for
      .//
      .// Create the WhereKey instance connected to O_ID.
      .select many o_ids related by o_obj->O_ID[R104]
      .for each o_id in o_ids
        .create object instance te_where of TE_WHERE
        .assign te_where.WhereKey = false
        .relate te_where to o_id across R2032
        .assign number = te_where.Oid_ID + 1
        .assign te_where.select_any_where = ( te_class.GeneratedName + "_AnyWhere" ) + "$t{number}"
      .end for
    .end for
  .end for
  .//
  .select many te_ees from instances of TE_EE
  .for each te_ee in te_ees
    .select one te_c related by te_ee->TE_C[R2085]
    .if ( empty te_c )
      .invoke TE_EE_init( te_ee, empty_te_c )
    .end if
  .end for
  .//
.end function
.//
.//
.//============================================================================
.// New and return instance of TE_CLASS.
.//============================================================================
.function FactoryTE_CLASS .// te_class
  .param inst_ref o_obj
  .param inst_ref te_c
  .// Create the Generated Class instance and link it to the model one.
  .create object instance te_class of TE_CLASS
  .relate te_class to o_obj across R2019
  .relate te_class to te_c across R2064
  .// Copy the Numb attribute for sorting purposes.
  .assign te_class.Numb = o_obj.Numb
  .// Copy other attributes for convenience so we can avoid accessing o_obj.
  .assign te_class.Name = o_obj.Name
  .assign te_class.Key_Lett = o_obj.Key_Lett
  .// Initialize model compiler extension attributes.
  .assign te_class.GeneratedName = ( te_c.Name + "_" ) + te_class.Key_Lett
  .assign te_class.CBGeneratedName = te_class.GeneratedName + "_CB"
  .assign te_class.SelfCreated = false
  .assign te_class.NonSelfCreated = false
  .assign te_class.Included = false
  .assign te_class.IsFixedPopulation = false
  .assign te_class.PEIsDefinedInData = false
  .assign te_class.IsReadOnly = false
  .// Default is 10 instances per class.
  .assign te_class.MaxExtentSize = 10
  .assign te_class.Persistent = false
  .assign te_class.ExcludeFromGen = false
  .assign te_class.IsTrace = true
  .assign te_class.ContainerIndex = 0
  .assign te_class.Task = 0
  .assign te_class.class_file = te_class.GeneratedName + "_class"
  .assign te_class.system_class_number = te_class.GeneratedName + "_CLASS_NUMBER"
  .assign te_class.CBsystem_class_number = te_class.GeneratedName + "_CLASS_NUMBER_CB"
  .assign te_class.persist_link = te_class.GeneratedName + "_LinkCentral"
  .assign te_class.dispatcher = ""
  .assign te_class.CBdispatcher = ""
  .assign te_class.scope = ""
  .assign te_class.attribute_format = ""
  .assign attr_result = te_class
.end function
.//
.//
.//============================================================================
.// New and return instance of TE_DIM.
.//============================================================================
.function FactoryTE_DIM .// te_dim
  .param inst_ref s_dim
  .param inst_ref predecessor_te_dim
  .create object instance te_dim of TE_DIM
  .assign te_dim.elementCount = s_dim.elementCount
  .if ( 0 == te_dim.elementCount )
    .// Here we have a VLA (variable length array).
    .// Add support here.
  .end if
  .assign te_dim.dimensionCount = s_dim.dimensionCount
  .if ( not_empty predecessor_te_dim )
    .relate te_dim to predecessor_te_dim across R2060.'succeeds'
  .end if
  .assign attr_result = te_dim
.end function
.//
.//
.//============================================================================
.// New and link state machine instances.
.// Allocate and link state instances (in numerically sorted order).
.//============================================================================
.function FactoryTE_SM .// te_sm
  .param boolean is_ism
  .param inst_ref sm_sm
  .param inst_ref te_class
  .select any void_te_dt from instances of TE_DT where ( selected.Core_Typ == 0 )
  .select many empty_te_parms from instances of TE_PARM where ( false )
  .select one te_c related by te_class->TE_C[R2064]
  .create object instance te_sm of TE_SM
  .relate te_sm to te_class across R2072
  .relate te_sm to sm_sm across R2043
  .assign te_sm.complete = false
  .assign te_sm.class_based = true
  .assign class_based = "_CB"
  .if ( is_ism )
    .assign te_sm.class_based = false
    .assign class_based = ""
  .end if
  .assign te_sm.SEMname = ( te_class.GeneratedName + class_based ) + "_StateEventMatrix"
  .assign te_sm.state_names_array = ( "state_name_strings" + class_based )
  .assign te_sm.action_array = ( te_class.GeneratedName + class_based ) + "_acts"
  .assign te_sm.txn_action_array = ( te_class.GeneratedName + class_based ) + "_xacts"
  .assign te_sm.action_type = "StateAction_t"
  .assign te_sm.events_union = ( te_class.GeneratedName + class_based ) + "_Events_u"
  .//
  .// Create the Generated States and connect them to SM_STATE.
  .select many sm_states related by sm_sm->SM_STATE[R501]
  .assign te_sm.num_states = cardinality sm_states
  .for each sm_state in sm_states
    .create object instance te_state of TE_STATE
    .assign te_state.Name = sm_state.Name
    .assign te_state.Numb = sm_state.Numb
    .relate te_state to sm_state across R2037
    .assign te_state.enumerator =  ( te_class.GeneratedName + class_based ) + ( "_STATE_" + "$t{te_state.Numb}" )
    .//
    .// Create the Extended Actions (TE_ACT) and connect them to SM_ACT.
    .select one sm_act related by sm_state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514]
    .create object instance te_act of TE_ACT
    .relate sm_act to te_act across R2022
    .assign te_act.GeneratedName = ( te_class.GeneratedName + class_based ) + ( "_act" + "$t{te_state.Numb}" )
    .//.select many te_parms related by sm_state->SM_SEME[R503]->SM_SEVT[R503]->SM_EVT[R525]->SM_EVTDI[R532]->TE_PARM[R2031]
    .invoke r = FactoryTE_ABA( te_c, empty_te_parms, "", te_act.GeneratedName, "SM_ACT", void_te_dt )
    .assign te_aba = r.result
    .relate te_act to te_aba across R2010
    .select one te_blk related by sm_act->ACT_SAB[R691]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
    .if ( not_empty te_blk )
      .relate te_blk to te_aba across R2011
    .end if
  .end for
  .//
  .// Sort the states for later state event matrix generation.
  .select many te_states related by sm_states->TE_STATE[R2037]
  .if ( not_empty te_states )
    .invoke r = state_sort( te_states )
    .assign first_te_state = r.result
    .relate first_te_state to te_sm across R2100
  .end if
  .for each te_state in te_states
    .assign te_state.number = te_state.Order + 1
    .if ( 0 == te_state.Order )
      .assign te_sm.initial_state = te_state.enumerator
    .end if
  .end for
  .//
  .// Create the actions for the transitions.
  .assign counter = 1
  .// This is the hairiest traversal we do.  We are finding actions
  .// that actually have action language.
  .select many sm_acts related by sm_sm->SM_TXN[R505]->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514]->ACT_TAB[R688]->ACT_ACT[R698]->ACT_BLK[R666]->ACT_SMT[R602]->ACT_BLK[R602]->ACT_ACT[R666]->ACT_TAB[R698]->SM_ACT[R688]
  .for each sm_act in sm_acts
    .// Create the Extended Actions (TE_ACT) and connect them to SM_ACT.
    .create object instance te_act of TE_ACT
    .relate sm_act to te_act across R2022
    .select one sm_state related by sm_act->SM_AH[R514]->SM_TAH[R513]->SM_TXN[R530]->SM_STATE[R506]
    .assign te_act.GeneratedName = ( ( te_class.GeneratedName + class_based ) + ( "_xact_to_" + "$t{sm_state.Numb}" ) ) + ( "_" + "$t{counter}" )
    .assign te_act.number = counter
    .//.select many te_parms related by sm_act->SM_AH[R514]->SM_TAH[R513]->SM_TXN[R530]->SM_NSTXN[R507]->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525]->SM_EVTDI[R532]->TE_PARM[R2031]
    .invoke r = FactoryTE_ABA( te_c, empty_te_parms, "", te_act.GeneratedName, "SM_ACT", void_te_dt )
    .assign te_aba = r.result
    .relate te_act to te_aba across R2010
    .select one te_blk related by sm_act->ACT_TAB[R688]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
    .if ( not_empty te_blk )
      .relate te_blk to te_aba across R2011
    .end if
    .assign counter = counter + 1
  .end for
  .assign te_sm.txn_action_count = counter - 1
  .//
  .// Create the Generated Events and connect them to SM_EVT.
  .select many sm_evts related by sm_sm->SM_EVT[R502]
  .assign te_sm.num_events = cardinality sm_evts
  .for each sm_evt in sm_evts
    .create object instance te_evt of TE_EVT
    .relate te_evt to te_sm across R2071
    .assign te_evt.Name = sm_evt.Mning
    .assign te_evt.Numb = sm_evt.Numb
    .assign te_evt.Order = 0
    .assign te_evt.Used = false
    .assign te_evt.UsedCount = 0
    .assign te_evt.Priority = 0
    .relate te_evt to sm_evt across R2036
    .assign suffix = "$t{te_evt.Numb}"
    .select one sm_nlevt related by sm_evt->SM_SEVT[R525]->SM_NLEVT[R526]
    .if ( not_empty sm_nlevt )
      .// Non local event defined by a polymorphic event
      .select one super_sm_evt related by sm_nlevt->SM_PEVT[R527]->SM_EVT[R525]
      .select one super_obj related by super_sm_evt->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]
      .assign suffix = ( "_" + "$r{super_obj.Key_Lett}" ) + ( "_PE" + "$t{super_sm_evt.Numb}" )
    .end if
    .assign te_evt.GeneratedName = ( te_class.GeneratedName + class_based ) + ( "event" + suffix )
    .assign te_evt.Enumerator = "$u{te_evt.GeneratedName}" + "NUM"
  .end for
  .// Select the local events (only in this state machine), the "true" events
  .// (land here but also seen as polys) and polymorphic events.  Order the
  .// events starting with local then true then polys.
  .select many sm_levts related by sm_sm->SM_EVT[R502]->SM_SEVT[R525]->SM_LEVT[R526]
  .select many local_te_evts related by sm_levts->SM_SEVT[R526]->SM_EVT[R525]->TE_EVT[R2036]
  .assign last_event_number = cardinality local_te_evts
  .assign last_event_number = last_event_number - 1
  .select many sm_sgevts related by sm_sm->SM_EVT[R502]->SM_SEVT[R525]->SM_SGEVT[R526]
  .select many signal_te_evts related by sm_sgevts->SM_SEVT[R526]->SM_EVT[R525]->TE_EVT[R2036]
  .for each te_evt in signal_te_evts
    .// Mark signals as used to be sure we get code.
    .assign te_evt.Used = true
    .assign te_evt.UsedCount = 1
    .assign last_event_number = last_event_number + 1
    .assign te_evt.Order = last_event_number
    .// Link each signal te_mact to its associated signal te_evts.
    .select one te_mact related by te_evt->SM_EVT[R2036]->SM_SEVT[R525]->SM_SGEVT[R526]->SPR_PS[R528]->TE_MACT[R2051]
    .if ( empty te_mact )
      .select one te_mact related by te_evt->SM_EVT[R2036]->SM_SEVT[R525]->SM_SGEVT[R526]->SPR_RS[R529]->TE_MACT[R2053]
    .end if
    .if ( not_empty te_mact )
      .relate te_mact to te_evt across R2082
    .end if
  .end for
  .select many sm_nlevts related by sm_sm->SM_EVT[R502]->SM_SEVT[R525]->SM_NLEVT[R526]
  .select many true_te_evts related by sm_nlevts->SM_SEVT[R526]->SM_EVT[R525]->TE_EVT[R2036]
  .for each te_evt in true_te_evts
    .// Mark polys and non-locals as used to be sure we get code.
    .assign te_evt.Used = true
    .assign te_evt.UsedCount = 1
    .assign last_event_number = last_event_number + 1
    .assign te_evt.Order = last_event_number
  .end for
  .// Finally, order the polymorphic events.
  .// We need their Order to be greater than local and true events, since
  .// polys are not state event matrix events.
  .select many poly_te_evts related by sm_sm->SM_EVT[R502]->SM_PEVT[R525]->SM_EVT[R525]->TE_EVT[R2036]
  .for each te_evt in poly_te_evts
    .// Mark polys and non-locals as used to be sure we get code.
    .assign te_evt.Used = true
    .assign te_evt.UsedCount = 1
    .assign last_event_number = last_event_number + 1
    .assign te_evt.Order = last_event_number
  .end for
  .select many te_evts related by te_sm->TE_EVT[R2071]
  .if ( not_empty te_evts )
    .invoke r = event_sort( te_evts )
    .assign first_te_evt = r.result
    .relate first_te_evt to te_sm across R2104
  .end if
  .invoke r1 = TE_SM_state_strings( te_sm )
  .assign te_sm.state_strings = r1.result
  .invoke r1 = TE_SM_event_strings( te_sm )
  .assign te_sm.event_strings = r1.result
  .assign attr_result = te_sm
.end function
.//
.//
.//============================================================================
.// New and link message actions.
.//============================================================================
.function FactoryTE_MACT .// te_mact
  .param inst_ref_set te_parms
  .param inst_ref te_dt
  .param inst_ref te_c
  .param inst_ref te_po
  .param string message_name
  .param string subtypeKL
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select any te_target from instances of TE_TARGET
  .select any te_thread from instances of TE_THREAD
  .create object instance te_mact of TE_MACT
  .relate te_mact to te_c across R2002
  .relate te_mact to te_po across R2006
  .// We cannot just look to see if this port is polymorphic, we have to go to the
  .// associated interface and see if any port tied to that interface is polymorphic.
  .// TODO - We would like to move this -up- and handle it when the ports are created,
  .//   perhaps use 2081 for the satisfaction.
  .select one c_i related by te_po->C_I[R2007]
  .select any te_po_poly related by c_i->TE_PO[R2007] where ( ( selected.Provision == te_po.Provision) and selected.polymorphic )
  .if ( empty te_po_poly )
    .assign te_mact.polymorphic = false
  .else
    .assign te_mact.polymorphic = true
  .end if
  .assign te_mact.subtypeKL = subtypeKL
  .assign te_mact.Provision = te_po.Provision
  .assign te_mact.MessageName = message_name
  .assign te_mact.InterfaceName = te_po.InterfaceName
  .assign te_mact.PortName = te_po.GeneratedName
  .assign te_mact.ComponentName = te_c.Name
  .assign te_mact.GeneratedName = ( ( te_mact.ComponentName + "_" ) + ( te_mact.PortName + "_" ) ) + message_name
  .if ( "C++" == te_target.language )
    .assign te_mact.GeneratedName = ( te_mact.InterfaceName + "_" ) + message_name
  .end if
  .assign te_mact.GeneratedName = "$r{te_mact.GeneratedName}"
  .assign te_mact.Name = te_mact.GeneratedName
  .// Link marks.
  .select any tm_msg from instances of TM_MSG where ( ( selected.ComponentName == te_mact.ComponentName ) and ( selected.PortName == te_mact.PortName ) and ( selected.MessageName == te_mact.MessageName ) )
  .if ( not_empty tm_msg )
    .relate te_mact to tm_msg across R2809
    .if ( not_empty te_dt )
      .if ( "void" != te_dt.Name )
        .print "ERROR:  Non-void message marked as safe for interrupts (${te_mact.ComponentName}::${te_mact.PortName}::${te_mact.MessageName})."
        .exit 100
      .end if
    .end if
  .end if
  .select any converted_bool_te_dt from instances of TE_DT where ( selected.Name == "integer" )
  .if ( ( "SystemC" == te_thread.flavor ) and ( te_sys.SystemCPortsType == "TLM" ) )
    .for each te_parm in te_parms
      .// If we are using TLM ports, convert booleans to integers
      .select one param_te_dt related by te_parm->TE_DT[R2049]
      .if ( 1 == param_te_dt.Core_Typ )
        .relate te_parm to converted_bool_te_dt across R2049
      .end if
    .end for
  .end if
  .if ( ( te_mact.polymorphic ) and ( "SystemC" == te_thread.flavor ) )
    .// If polymorphic, then add a parameter that we can use to distinguish 
    .// which port the message came in through.
    .select many s_dims from instances of S_DIM where ( false )
    .select any portindex_te_dt from instances of TE_DT where ( selected.Name == "integer" )
    .invoke r1 = FactoryTE_PARM( s_dims, portindex_te_dt, "", "A00portindex", 0 )
    .assign polymorphic_te_parm = r1.result
    .assign polymorphic_te_parm.Descrip = "architectural port selector"
    .for each te_parm in te_parms
      .if ( 0 == te_parm.Order )
        .relate polymorphic_te_parm to te_parm across R2041.'precedes'
      .end if
    .end for
    .assign te_parms = te_parms | polymorphic_te_parm
  .end if
  .invoke r = FactoryTE_ABA( te_c, te_parms, te_mact.ComponentName, te_mact.GeneratedName, "TE_MACT", te_dt )
  .assign te_aba = r.result
  .relate te_mact to te_aba across R2010
  .assign attr_result = te_mact
.end function
.//
.//============================================================================
.// Initialize instance of TE_EE.
.//============================================================================
.function TE_EE_init
  .param inst_ref te_ee
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select any te_target from instances of TE_TARGET
  .assign component_scope = ""
  .if ( not_empty te_c )
    .assign component_scope = te_c.Name + "_"
  .end if
  .select one s_ee related by te_ee->S_EE[R2020]
  .// Default the registered name to be the key letters.
  .// Bridge wiring will override this default, but the default may
  .// allow the code to compile.
  .assign te_ee.Name = s_ee.Name
  .assign te_ee.Descrip = s_ee.Descrip
  .assign te_ee.Key_Lett = s_ee.Key_Lett
  .assign te_ee.RegisteredName = component_scope + "$r{te_ee.Key_Lett}"
  .assign te_ee.Included = false
  .assign te_ee.Used = false
  .assign te_ee.file = te_ee.RegisteredName + "_bridge"
  .// Leave alone if marked.
  .if ( "" == te_ee.Include_File )
    .assign te_ee.Include_File = te_ee.file + ( "." + te_file.hdr_file_ext )
  .end if
  .if ( "TIM" == s_ee.Key_Lett )
    .// Time (TIM) EE
    .assign te_ee.RegisteredName = "TIM"
    .assign te_ee.Include_File = te_file.tim + ( "." + te_file.hdr_file_ext )
  .end if
  .assign bridge_scope = ""
  .if ( "C" == te_target.language )
    .assign bridge_scope = te_ee.RegisteredName + "_"
  .end if
  .select many s_brgs related by s_ee->S_BRG[R19]
  .for each s_brg in s_brgs
    .create object instance te_brg of TE_BRG
    .relate te_brg to s_brg across R2025
    .relate te_brg to te_ee across R2089
    .assign te_brg.EEkeyletters = s_ee.Key_Lett
    .assign te_brg.EEname = s_ee.Name
    .assign te_brg.Name = s_brg.Name
    .assign te_brg.GeneratedName = bridge_scope + s_brg.Name
    .select one te_dt related by s_brg->S_DT[R20]->TE_DT[R2021]
    .select many te_parms related by s_brg->S_BPARM[R21]->TE_PARM[R2028]
    .invoke r = FactoryTE_ABA( te_c, te_parms, te_ee.RegisteredName, te_brg.GeneratedName, "S_BRG", te_dt )
    .assign te_aba = r.result
    .relate te_brg to te_aba across R2010
    .select one te_blk related by s_brg->ACT_BRB[R697]->ACT_ACT[R698]->ACT_BLK[R666]->TE_BLK[R2016]
    .if ( not_empty te_blk )
      .relate te_blk to te_aba across R2011
    .end if
  .end for
.end function
.//
.//============================================================================
.// New and return instance of TE_ABA.
.//============================================================================
.function FactoryTE_ABA .// te_aba
  .param inst_ref te_c
  .param inst_ref_set te_parms
  .param string scope
  .param string name
  .param string subtypeKL
  .param inst_ref te_dt
  .select any te_sys from instances of TE_SYS
  .select any te_target from instances of TE_TARGET
  .create object instance te_aba of TE_ABA
  .assign te_aba.IsTrace = true
  .assign te_aba.SelfEventCount = 0
  .assign te_aba.NonSelfEventCount = 0
  .assign te_aba.subtypeKL = subtypeKL
  .if ( not_empty te_c )
    .relate te_aba to te_c across R2088
  .end if
  .assign duplicates_needed = false
  .select any te_parm from instances of TE_PARM where (false)
  .for each te_parm in te_parms
    .select one existing_te_aba related by te_parm->TE_ABA[R2062]
    .if ( empty existing_te_aba )
      .relate te_parm to te_aba across R2062
    .else
      .assign duplicates_needed = true
    .end if
  .end for
  .assign first_te_parm = te_parm
  .if ( duplicates_needed or ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) ) )
    .// Find first te_parm.
    .while ( not_empty te_parm )
      .select one prev_te_parm related by te_parm->TE_PARM[R2041.'succeeds']
      .if ( empty prev_te_parm )
        .assign first_te_parm = te_parm
        .break while
      .else
        .assign te_parm = prev_te_parm
      .end if
    .end while
  .end if
  .// This duplication is needed because multiple ports can use the same
  .// interface.  It would be nice to explore a method to avoid duplicating
  .// the parameter instances.
  .if ( duplicates_needed )
    .select one prev_te_parm related by te_parm->TE_PARM[R2041.'succeeds'] where ( false )
    .while ( not_empty te_parm )
      .invoke r = TE_PARM_duplicate( te_parm )
      .assign duplicate_te_parm = r.result
      .relate duplicate_te_parm to te_aba across R2062
      .if ( not_empty prev_te_parm )
        .relate prev_te_parm to duplicate_te_parm across R2041.'precedes'
      .end if
      .assign prev_te_parm = duplicate_te_parm
      .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
    .end while
    .select many te_parms related by te_aba->TE_PARM[R2062]
  .end if
  .// Create and insert an architectural parameter for returning a string.
  .if ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
    .if ( ( not te_sys.InstanceLoading ) and ( not duplicates_needed ) )
      .// mcmc does not return through the by-ref parameter.
      .// When duplicating, there is a duplicate by-ref string return parameter.
      .select any string_te_parm from instances of TE_PARM where ( selected.Name == "A0xtumlsret" )
      .invoke r = TE_PARM_duplicate( string_te_parm )
      .assign duplicate_te_parm = r.result
      .assign duplicate_te_parm.Descrip = "xtuml string return parm"
      .relate duplicate_te_parm to te_aba across R2062
      .if ( not_empty first_te_parm )
        .relate duplicate_te_parm to first_te_parm across R2041.'precedes'
      .end if
      .select many te_parms related by te_aba->TE_PARM[R2062]
    .end if
  .end if
  .invoke te_parm_RenderParameters( te_parms, te_aba )
  .assign te_aba.scope = ""
  .if ( "C++" == te_target.language )
    .assign te_aba.scope = scope + "::"
    .if ( not_empty te_c )
      .if ( ( "S_BRG" == te_aba.subtypeKL ) or ( "O_TFR" == te_aba.subtypeKL ) )
        .if ( empty te_parms )
          .assign te_aba.ParameterDefinition = ( " " + te_c.Name ) + " * thismodule"
          .assign te_aba.ParameterDeclaration = ( " " + te_c.Name ) + " *"
        .else
          .assign te_aba.ParameterDefinition = ( ( " " + te_c.Name ) + ( " * thismodule," + te_aba.ParameterDefinition ) )
          .assign te_aba.ParameterDeclaration = ( ( " " + te_c.Name ) + ( " *," + te_aba.ParameterDeclaration ) )
        .end if
      .end if
    .end if
  .end if
  .assign te_aba.GeneratedName = name
  .assign te_aba.ReturnDataType = te_dt.ExtName
  .assign te_aba.dimensions = 0
  .// In the C model compiler, treat strings as arrays.
  .if ( ( 4 == te_dt.Core_Typ ) and ( not te_sys.InstanceLoading ) )
    .// string
    .select any te_string from instances of TE_STRING
    .assign te_aba.dimensions = te_aba.dimensions + 1
    .assign te_aba.array_spec = ( te_aba.array_spec + "[" ) + ( te_string.max_string_length + "]" )
  .end if
  .// Allow arrays (including strings) to be returned as pointers.
  .if ( te_aba.dimensions > 0 )
    .assign te_aba.ReturnDataType = te_aba.ReturnDataType + " *"
  .end if
  .assign attr_result = te_aba
.end function
.//
.//
.//============================================================================
.// New and link up extended parameter.
.//============================================================================
.function FactoryTE_PARM .// te_parm
  .param inst_ref_set s_dims
  .param inst_ref te_dt
  .param string prefix
  .param string name
  .param integer by_ref
  .create object instance te_parm of TE_PARM
  .assign te_parm.Order = 0
  .assign te_parm.ParamBuffer = ""
  .assign te_parm.OALParamBuffer = ""
  .assign te_parm.Name = "$r{name}"
  .assign te_parm.By_Ref = by_ref
  .assign te_parm.GeneratedName = prefix + name
  .relate te_parm to te_dt across R2049
  .// Set up the array dimensions for the parameter.
  .assign te_parm.dimensions = cardinality s_dims
  .assign array_spec = ""
  .select one te_dim related by te_parm->TE_DIM[R2056] where ( false )
  .assign dim_index = 0
  .while ( dim_index < te_parm.dimensions )
    .for each s_dim in s_dims
      .if ( s_dim.dimensionCount == dim_index )
        .invoke r = FactoryTE_DIM( s_dim, te_dim )
        .assign te_dim = r.result
        .if ( dim_index == 0 )
          .relate te_parm to te_dim across R2056
        .end if
        .assign array_spec = ( array_spec + "[" ) + ( "$t{te_dim.elementCount}" + "]" )
      .end if
    .end for
    .assign dim_index = dim_index + 1
    .assign te_parm.By_Ref = 0
  .end while
  .assign te_parm.array_spec = array_spec
  .// In the C model compiler, treat strings as arrays.
  .if ( 4 == te_dt.Core_Typ )
    .select any te_sys from instances of TE_SYS
    .if ( not te_sys.InstanceLoading )
      .// string
      .select any te_string from instances of TE_STRING
      .assign te_parm.dimensions = te_parm.dimensions + 1
      .assign te_parm.array_spec = ( te_parm.array_spec + "[" ) + ( te_string.max_string_length + "]" )
    .end if
    .// strings are already by-ref
    .assign te_parm.By_Ref = 0
  .end if
  .assign attr_result = te_parm
.end function
.//
.//============================================================================
.// Duplicate (copy) an instance of TE_PARM.
.//============================================================================
.function TE_PARM_duplicate .// te_parm
  .param inst_ref te_parm
  .create object instance duplicate_te_parm of TE_PARM
  .assign duplicate_te_parm.Order = te_parm.Order
  .assign duplicate_te_parm.ParamBuffer = te_parm.ParamBuffer
  .assign duplicate_te_parm.OALParamBuffer = te_parm.OALParamBuffer
  .assign duplicate_te_parm.Name = te_parm.Name
  .assign duplicate_te_parm.Descrip = te_parm.Descrip
  .assign duplicate_te_parm.By_Ref = te_parm.By_Ref
  .assign duplicate_te_parm.GeneratedName = te_parm.GeneratedName
  .select one te_dt related by te_parm->TE_DT[R2049]
  .relate duplicate_te_parm to te_dt across R2049
  .assign duplicate_te_parm.dimensions = te_parm.dimensions
  .select one te_dim related by te_parm->TE_DIM[R2056]
  .if ( not_empty te_dim )
    .relate duplicate_te_parm to te_dim across R2056
  .end if
  .assign duplicate_te_parm.array_spec = te_parm.array_spec
  .assign attr_result = duplicate_te_parm
.end function
.//
.//============================================================================
.// New and return instance of TE_LNK.
.//============================================================================
.function FactoryTE_LNK
  .param inst_ref act_lnk
  .select one o_obj related by act_lnk->O_OBJ[R678]
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .create object instance te_lnk of TE_LNK
    .relate te_lnk to act_lnk across R2042
    .assign te_lnk.rel_phrase = act_lnk.Rel_Phrase
    .select one r_rel related by act_lnk->R_REL[R681]
    .assign te_lnk.rel_number = r_rel.Numb
    .relate te_lnk to te_class across R2076
    .assign te_lnk.OAL = ( ( "->" + te_class.Key_Lett ) + ( "[R" + "$t{te_lnk.rel_number}" ) )
    .if ( "" != te_lnk.rel_phrase )
      .assign te_lnk.OAL = ( te_lnk.OAL + "." ) + te_lnk.rel_phrase
    .end if
    .assign te_lnk.OAL = te_lnk.OAL + "]"
    .assign te_lnk.first = false
    .assign te_lnk.last = false
    .assign rel_phrase = "$_{te_lnk.rel_phrase}"
    .select any te_oir related by r_rel->R_OIR[R201]->TE_OIR[R2035] where ( ( selected.Obj_ID == o_obj.Obj_ID ) and ( selected.rel_phrase == rel_phrase ) )
    .if ( empty te_oir )
      .select any te_oir related by r_rel->R_OIR[R201]->TE_OIR[R2035] where ( selected.Obj_ID == o_obj.Obj_ID )
    .end if
    .assign te_lnk.linkage = te_oir.data_member
    .assign te_lnk.Mult = te_oir.Mult
    .assign te_lnk.assoc_type = te_oir.assoc_type
    .// Deal with associative reflexives.
    .if ( "assr" == te_oir.assoc_type )
      .invoke r = is_reflexive( r_rel )
      .assign reflexive = r.result
      .if ( reflexive )
        .select one r_aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
        .select one r_aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
        .if ( te_lnk.rel_phrase == r_aone.Txt_Phrs )
          .assign te_lnk.Mult = r_aone.Mult
        .elif ( te_lnk.rel_phrase == r_aoth.Txt_Phrs )
          .assign te_lnk.Mult = r_aoth.Mult
        .else
          .print "ERROR:  Unrecognized reflexive association:  R$t{r_rel.Numb}."
          .exit 13
        .end if
        .assign te_lnk.linkage = ( te_oir.data_member + "_" ) + rel_phrase
      .end if
    .end if
    .assign te_lnk.iterator = "i" + te_lnk.linkage
  .end if
.end function
.//
.//============================================================================
.// Create and insert a new TE_LNK between these two (for associator).
.//============================================================================
.function associator_TE_LNK .// te_lnk
  .param inst_ref left_te_lnk
  .param inst_ref right_te_lnk
  .create object instance te_lnk of TE_LNK
  .assign te_lnk.rel_phrase = ""
  .// Insert the new link in between the left and right TE_LNKs.
  .relate te_lnk to right_te_lnk across R2075.'precedes'
  .select one r_rel related by right_te_lnk->ACT_LNK[R2042]->R_REL[R681]
  .assign te_lnk.rel_number = right_te_lnk.rel_number
  .select one te_class related by r_rel->R_ASSOC[R206]->R_ASSR[R211]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]->TE_CLASS[R2019]
  .relate te_lnk to te_class across R2076
  .// Leave OAL blank, because real OAL is not showing this link.
  .assign te_lnk.OAL = ""
  .select any te_oir related by r_rel->R_OIR[R201]->R_RGO[R203]->R_OIR[R203]->TE_OIR[R2035]
  .assign te_lnk.linkage = te_oir.data_member
  .assign te_lnk.Mult = te_oir.Mult
  .assign te_lnk.assoc_type = te_oir.assoc_type
  .// Reflexive associatives put the relationship phrase onto the AONE/AOTH data members.
  .if ( "" != right_te_lnk.rel_phrase )
    .invoke r = is_reflexive( r_rel )
    .assign reflexive = r.result
    .if ( reflexive )
      .assign te_lnk.linkage = ( te_lnk.linkage + "_" ) + "$_{right_te_lnk.rel_phrase}"
    .end if
  .end if
  .if ( not_empty left_te_lnk )
    .unrelate left_te_lnk from right_te_lnk across R2075.'precedes'
    .relate left_te_lnk to te_lnk across R2075.'precedes'
    .assign te_lnk.left = left_te_lnk.linkage
    .assign te_lnk.first = false
  .else
    .assign te_lnk.left = te_lnk.linkage
    .assign te_lnk.first = true
  .end if
  .assign te_lnk.last = false
  .assign te_lnk.iterator = "i" + te_lnk.linkage
  .assign te_lnk.Mult = right_te_lnk.Mult
  .assign right_te_lnk.Mult = 0
  .assign right_te_lnk.left = te_lnk.linkage
  .assign attr_result = te_lnk
.end function
.//
.//============================================================================
.// Detect and insert an associator TE_LNK if needed and adjust the te_lnk
.// attributes according to the flavor of associative traversal.
.// Accept a pair of te_lnk instances or a start_o_obj and one next_te_lnk.
.//============================================================================
.function detect_and_insert_associator_TE_LNK .// te_lnk
  .param inst_ref te_lnk
  .param inst_ref next_te_lnk
  .param inst_ref act_lnk
  .param inst_ref next_act_lnk
  .param inst_ref start_o_obj
  .if ( not_empty te_lnk )
    .select one start_o_obj related by act_lnk->O_OBJ[R678]
  .end if
  .if ( "aone" == next_te_lnk.assoc_type )
    .select one r_aoth related by next_act_lnk->R_REL[R681]->R_ASSOC[R206]->R_AOTH[R210]
    .if ( start_o_obj.Obj_ID == r_aoth.Obj_ID )
      .// aoth -> aone
      .invoke r = associator_TE_LNK( te_lnk, next_te_lnk )
      .assign te_lnk = r.result
    .else
      .select one r_assr related by next_act_lnk->R_REL[R681]->R_ASSOC[R206]->R_ASSR[R211]
      .if ( start_o_obj.Obj_ID == r_assr.Obj_ID )
        .// assr -> aone
        .assign next_te_lnk.Mult = 0
      .end if
    .end if
  .elif ( "aoth" == next_te_lnk.assoc_type )
    .select one r_aone related by next_act_lnk->R_REL[R681]->R_ASSOC[R206]->R_AONE[R209]
    .if ( start_o_obj.Obj_ID == r_aone.Obj_ID )
      .// aone -> aoth
      .invoke r = associator_TE_LNK( te_lnk, next_te_lnk )
      .assign te_lnk = r.result
    .else
      .select one r_assr related by next_act_lnk->R_REL[R681]->R_ASSOC[R206]->R_ASSR[R211]
      .if ( start_o_obj.Obj_ID == r_assr.Obj_ID )
        .// assr -> aoth
        .assign next_te_lnk.Mult = 0
      .end if
    .end if
  .elif ( "assr" == next_te_lnk.assoc_type )
    .// For an associator, the multiplicity is that of the far side.
    .select one r_aone related by next_act_lnk->R_REL[R681]->R_ASSOC[R206]->R_AONE[R209]
    .select one r_aoth related by next_act_lnk->R_REL[R681]->R_ASSOC[R206]->R_AOTH[R210]
    .if ( r_aone.Obj_ID == r_aoth.Obj_ID )
      .// reflexive associative going from aone/aoth to assr
      .if ( r_aone.Txt_Phrs == next_te_lnk.rel_phrase )
        .assign next_te_lnk.Mult = r_aone.Mult
      .elif ( r_aoth.Txt_Phrs == next_te_lnk.rel_phrase )
        .assign next_te_lnk.Mult = r_aoth.Mult
      .else
        .print "Invalid associative reflexive traversal from ${start_o_obj.Name}/${start_o_obj.Key_Lett} to ${next_te_lnk.te_classGeneratedName}."
        .exit 100
      .end if
    .elif ( start_o_obj.Obj_ID == r_aone.Obj_ID )
      .// aone -> assr
      .assign next_te_lnk.Mult = r_aoth.Mult
    .elif ( start_o_obj.Obj_ID == r_aoth.Obj_ID )
      .// aoth -> assr
      .assign next_te_lnk.Mult = r_aone.Mult
    .else
      .print "Invalid associative reflexive traversal from ${start_o_obj.Name}/${start_o_obj.Key_Lett} to ${next_te_lnk.te_classGeneratedName}."
      .exit 100
    .end if
  .end if
  .assign attr_result = te_lnk
.end function
.//
.// Recursive call to drill down and get all of the nested components and
.// component references.
.function TE_C_mark_nested_system
  .param inst_ref_set te_cs
  .for each te_c in te_cs
    .assign te_c.included_in_build = true
    .select many nested_te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->C_C[R8001]->TE_C[R2054]
    .invoke TE_C_mark_nested_system( nested_te_cs )
    .select many nested_te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->CL_IC[R8001]->C_C[R4201]->TE_C[R2054]
    .invoke TE_C_mark_nested_system( nested_te_cs )
  .end for
.end function
.//
.// Recursively search upwards through the package hierarchy to find the
.// containing (parent/owning) components traversing package references.
.// CDS - For now, we return only one, because we do not know how to support many.
.function TE_C_getContainingComponents .// te_c
  .param inst_ref ep_pkg
  .select one te_c related by ep_pkg->PE_PE[R8001]->C_C[R8003]->TE_C[R2054]
  .if ( ( empty te_c ) and ( not_empty ep_pkg ) )
    .select many referring_ep_pkgs related by ep_pkg->EP_PKGREF[R1402.'is referenced by']->EP_PKG[R1402.'is referenced by']
    .select any te_c related by referring_ep_pkgs->PE_PE[R8001]->C_C[R8003]->TE_C[R2054]
    .if ( empty te_c )
      .select one parent_ep_pkg related by ep_pkg->PE_PE[R8001]->EP_PKG[R8000]
      .invoke r = TE_C_getContainingComponents( parent_ep_pkg )
      .assign te_c = r.result
    .end if
  .end if
  .assign attr_result = te_c
.end function
.//
.// Recursively search upwards through the package hierarchy to find the
.// containing (parent/owning) component.
.function TE_C_getContainingComponent .// te_c
  .param inst_ref ep_pkg
  .select any te_c from instances of TE_C where ( false )
  .// Return empty te_c for a top-level package with no containing package or component.
  .select one s_sys related by ep_pkg->S_SYS[R1401]
  .if ( empty s_sys )
    .select one te_c related by ep_pkg->PE_PE[R8001]->C_C[R8003]->TE_C[R2054]
    .if ( empty te_c )
      .select one parent_ep_pkg related by ep_pkg->PE_PE[R8001]->EP_PKG[R8000]
      .if ( not_empty parent_ep_pkg )
        .invoke r = TE_C_getContainingComponent( parent_ep_pkg )
        .assign te_c = r.result
      .end if
    .end if
  .end if
  .assign attr_result = te_c
.end function
.//
.// Recursively search upwards through the component hierarcy to find the
.// containing (parent/owning) package.
.function EP_PKG_getContainingPackage .// ep_pkg
  .param inst_ref c_c
  .select one ep_pkg related by c_c->PE_PE[R8001]->EP_PKG[R8000]
  .if ( empty ep_pkg )
    .select one c_c related by c_c->PE_PE[R8001]->C_C[R8003]
    .invoke r = EP_PKG_getContainingPackage( c_c )
    .assign ep_pkg = r.result
  .end if
  .assign attr_result = ep_pkg
.end function
.//
.// Sort a list of TE_Cs.
.function TE_C_sort .// te_c
  .param inst_ref_set te_cs
  .// Declare an empty instance reference.
  .select any head_te_c related by te_cs->TE_C[R2017.'precedes'] where ( false )
  .for each te_c in te_cs
    .invoke r = TE_C_insert( head_te_c, te_c )
    .assign head_te_c = r.result
  .end for
  .assign attr_result = head_te_c
.end function
.function TE_C_insert .// te_c
  .param inst_ref head_te_c
  .param inst_ref te_c
  .assign result = te_c
  .if ( empty head_te_c )
    .// Just starting.  Return te_c as head.
  .elif ( te_c.Name <= head_te_c.Name )
    .// insert before
    .relate te_c to head_te_c across R2017.'precedes'
  .else
    .// find bigger
    .assign result = head_te_c
    .assign prev_te_c = head_te_c
    .select one cursor_te_c related by head_te_c->TE_C[R2017.'precedes']
    .while ( not_empty cursor_te_c )
      .if ( te_c.Name <= cursor_te_c.Name )
        .break while
      .else
        .assign prev_te_c = cursor_te_c
        .select one cursor_te_c related by cursor_te_c->TE_C[R2017.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_te_c )
      .unrelate prev_te_c from cursor_te_c across R2017.'precedes'
      .relate te_c to cursor_te_c across R2017.'precedes'
    .end if
    .relate prev_te_c to te_c across R2017.'precedes'
  .end if
  .assign attr_result = result
.end function
.//
.// Sort a list of TE_CLASSes.
.function class_sort .// te_class
  .param inst_ref_set te_classs
  .// Declare an empty instance reference.
  .select any head_te_class related by te_classs->TE_CLASS[R2092.'precedes'] where ( false )
  .for each te_class in te_classs
    .invoke r = class_insert( head_te_class, te_class )
    .assign head_te_class = r.result
  .end for
  .assign attr_result = head_te_class
.end function
.function class_insert .// te_class
  .param inst_ref head_te_class
  .param inst_ref te_class
  .assign result = te_class
  .if ( empty head_te_class )
    .// Just starting.  Return te_class as head.
  .else
  .assign lkey = "$t{te_class.Numb}" + te_class.GeneratedName
  .assign rkey = "$t{head_te_class.Numb}" + head_te_class.GeneratedName
  .if ( lkey <= rkey )
    .// insert before
    .relate te_class to head_te_class across R2092.'precedes'
  .else
    .// find bigger
    .assign result = head_te_class
    .assign prev_te_class = head_te_class
    .select one cursor_te_class related by head_te_class->TE_CLASS[R2092.'precedes']
    .while ( not_empty cursor_te_class )
      .assign rkey = "$t{cursor_te_class.Numb}" + cursor_te_class.GeneratedName
      .if ( lkey <= rkey )
        .break while
      .else
        .assign prev_te_class = cursor_te_class
        .select one cursor_te_class related by cursor_te_class->TE_CLASS[R2092.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_te_class )
      .unrelate prev_te_class from cursor_te_class across R2092.'precedes'
      .relate te_class to cursor_te_class across R2092.'precedes'
    .end if
    .relate prev_te_class to te_class across R2092.'precedes'
  .end if
  .end if
  .assign attr_result = result
.end function
.//
.// Sort a list of TE_MACTs.
.function mact_sort .// te_mact
  .param inst_ref_set te_macts
  .// Declare an empty instance reference.
  .select any head_te_mact related by te_macts->TE_MACT[R2083.'precedes'] where ( false )
  .for each te_mact in te_macts
    .invoke r = mact_insert( head_te_mact, te_mact )
    .assign head_te_mact = r.result
  .end for
  .assign counter = 0
  .assign te_mact = head_te_mact
  .while ( not_empty te_mact )
    .assign te_mact.Order = counter
    .assign counter = counter + 1
    .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
  .end while
  .assign attr_result = head_te_mact
.end function
.function mact_insert .// te_mact
  .param inst_ref head_te_mact
  .param inst_ref te_mact
  .assign result = te_mact
  .if ( empty head_te_mact )
    .// Just starting.  Return te_mact as head.
  .else
  .assign lkey = te_mact.Name
  .assign rkey = head_te_mact.Name
  .if ( lkey <= rkey )
    .// insert before
    .relate te_mact to head_te_mact across R2083.'precedes'
  .else
    .// find bigger
    .assign result = head_te_mact
    .assign prev_te_mact = head_te_mact
    .select one cursor_te_mact related by head_te_mact->TE_MACT[R2083.'precedes']
    .while ( not_empty cursor_te_mact )
      .assign rkey = cursor_te_mact.Name
      .if ( lkey <= rkey )
        .break while
      .else
        .assign prev_te_mact = cursor_te_mact
        .select one cursor_te_mact related by cursor_te_mact->TE_MACT[R2083.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_te_mact )
      .unrelate prev_te_mact from cursor_te_mact across R2083.'precedes'
      .relate te_mact to cursor_te_mact across R2083.'precedes'
    .end if
    .relate prev_te_mact to te_mact across R2083.'precedes'
  .end if
  .end if
  .assign attr_result = result
.end function
.//
.// Sort a list of TE_SYNCs.
.function sync_sort .// te_sync
  .param inst_ref_set te_syncs
  .// Declare an empty instance reference.
  .select any head_te_sync related by te_syncs->TE_SYNC[R2095.'precedes'] where ( false )
  .for each te_sync in te_syncs
    .invoke r = sync_insert( head_te_sync, te_sync )
    .assign head_te_sync = r.result
  .end for
  .assign attr_result = head_te_sync
.end function
.function sync_insert .// te_sync
  .param inst_ref head_te_sync
  .param inst_ref te_sync
  .assign result = te_sync
  .if ( empty head_te_sync )
    .// Just starting.  Return te_sync as head.
  .else
  .assign lkey = te_sync.Name
  .assign rkey = head_te_sync.Name
  .if ( lkey <= rkey )
    .// insert before
    .relate te_sync to head_te_sync across R2095.'precedes'
  .else
    .// find bigger
    .assign result = head_te_sync
    .assign prev_te_sync = head_te_sync
    .select one cursor_te_sync related by head_te_sync->TE_SYNC[R2095.'precedes']
    .while ( not_empty cursor_te_sync )
      .assign rkey = cursor_te_sync.Name
      .if ( lkey <= rkey )
        .break while
      .else
        .assign prev_te_sync = cursor_te_sync
        .select one cursor_te_sync related by cursor_te_sync->TE_SYNC[R2095.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_te_sync )
      .unrelate prev_te_sync from cursor_te_sync across R2095.'precedes'
      .relate te_sync to cursor_te_sync across R2095.'precedes'
    .end if
    .relate prev_te_sync to te_sync across R2095.'precedes'
  .end if
  .end if
  .assign attr_result = result
.end function
.//
.// Sort a list of TE_EEs.
.function ee_sort .// te_ee
  .param inst_ref_set te_ees
  .// Declare an empty instance reference.
  .select any head_te_ee related by te_ees->TE_EE[R2096.'precedes'] where ( false )
  .for each te_ee in te_ees
    .select one next_te_ee related by te_ee->TE_EE[R2096.'precedes']
    .if ( not_empty next_te_ee )
      .unrelate te_ee from next_te_ee across R2096.'precedes'
    .end if
  .end for
  .for each te_ee in te_ees
    .invoke r = ee_insert( head_te_ee, te_ee )
    .assign head_te_ee = r.result
  .end for
  .assign attr_result = head_te_ee
.end function
.function ee_insert .// te_ee
  .param inst_ref head_te_ee
  .param inst_ref te_ee
  .assign result = te_ee
  .if ( empty head_te_ee )
    .// Just starting.  Return te_ee as head.
  .else
  .assign lkey = te_ee.Name
  .assign rkey = head_te_ee.Name
  .if ( lkey <= rkey )
    .// insert before
    .relate te_ee to head_te_ee across R2096.'precedes'
  .else
    .// find bigger
    .assign result = head_te_ee
    .assign prev_te_ee = head_te_ee
    .select one cursor_te_ee related by head_te_ee->TE_EE[R2096.'precedes']
    .while ( not_empty cursor_te_ee )
      .assign rkey = cursor_te_ee.Name
      .if ( lkey <= rkey )
        .break while
      .else
        .assign prev_te_ee = cursor_te_ee
        .select one cursor_te_ee related by cursor_te_ee->TE_EE[R2096.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_te_ee )
      .unrelate prev_te_ee from cursor_te_ee across R2096.'precedes'
      .relate te_ee to cursor_te_ee across R2096.'precedes'
    .end if
    .relate prev_te_ee to te_ee across R2096.'precedes'
  .end if
  .end if
  .assign attr_result = result
.end function
.//
.// Sort a list of TE_STATEs.
.function state_sort .// te_state
  .param inst_ref_set te_states
  .// Declare an empty instance reference.
  .select any head_te_state related by te_states->TE_STATE[R2101.'precedes'] where ( false )
  .for each te_state in te_states
    .invoke r = state_insert( head_te_state, te_state )
    .assign head_te_state = r.result
  .end for
  .assign counter = 0
  .assign te_state = head_te_state
  .while ( not_empty te_state )
    .assign te_state.Order = counter
    .assign counter = counter + 1
    .select one te_state related by te_state->TE_STATE[R2101.'precedes']
  .end while
  .assign attr_result = head_te_state
.end function
.function state_insert .// te_state
  .param inst_ref head_te_state
  .param inst_ref te_state
  .assign result = te_state
  .if ( empty head_te_state )
    .// Just starting.  Return te_state as head.
  .else
  .assign lkey = te_state.Numb
  .assign rkey = head_te_state.Numb
  .if ( lkey <= rkey )
    .// insert before
    .relate te_state to head_te_state across R2101.'precedes'
  .else
    .// find bigger
    .assign result = head_te_state
    .assign prev_te_state = head_te_state
    .select one cursor_te_state related by head_te_state->TE_STATE[R2101.'precedes']
    .while ( not_empty cursor_te_state )
      .assign rkey = cursor_te_state.Numb
      .if ( lkey <= rkey )
        .break while
      .else
        .assign prev_te_state = cursor_te_state
        .select one cursor_te_state related by cursor_te_state->TE_STATE[R2101.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_te_state )
      .unrelate prev_te_state from cursor_te_state across R2101.'precedes'
      .relate te_state to cursor_te_state across R2101.'precedes'
    .end if
    .relate prev_te_state to te_state across R2101.'precedes'
  .end if
  .end if
  .assign attr_result = result
.end function
.//
.// Sort a list of TE_EVTs.  Key is Order then Numb.
.function event_sort .// te_evt
  .param inst_ref_set te_evts
  .// Declare an empty instance reference.
  .select any head_te_evt related by te_evts->TE_EVT[R2102.'precedes'] where ( false )
  .for each te_evt in te_evts
    .invoke r = evt_insert( head_te_evt, te_evt )
    .assign head_te_evt = r.result
  .end for
  .assign counter = 0
  .assign te_evt = head_te_evt
  .while ( not_empty te_evt )
    .assign te_evt.Order = counter
    .assign counter = counter + 1
    .select one te_evt related by te_evt->TE_EVT[R2102.'precedes']
  .end while
  .assign attr_result = head_te_evt
.end function
.function evt_insert .// te_evt
  .param inst_ref head_te_evt
  .param inst_ref te_evt
  .assign result = te_evt
  .if ( empty head_te_evt )
    .// Just starting.  Return te_evt as head.
  .else
  .assign lkey = ( te_evt.Order * 1000 ) + te_evt.Numb
  .assign rkey = ( head_te_evt.Order * 1000 ) + head_te_evt.Numb
  .if ( lkey <= rkey )
    .// insert before
    .relate te_evt to head_te_evt across R2102.'precedes'
  .else
    .// find bigger
    .assign result = head_te_evt
    .assign prev_te_evt = head_te_evt
    .select one cursor_te_evt related by head_te_evt->TE_EVT[R2102.'precedes']
    .while ( not_empty cursor_te_evt )
      .assign rkey = ( cursor_te_evt.Order * 1000 ) + cursor_te_evt.Numb
      .if ( lkey <= rkey )
        .break while
      .else
        .assign prev_te_evt = cursor_te_evt
        .select one cursor_te_evt related by cursor_te_evt->TE_EVT[R2102.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_te_evt )
      .unrelate prev_te_evt from cursor_te_evt across R2102.'precedes'
      .relate te_evt to cursor_te_evt across R2102.'precedes'
    .end if
    .relate prev_te_evt to te_evt across R2102.'precedes'
  .end if
  .end if
  .assign attr_result = result
.end function
.//
.// indentation maker
.//
.function blk_indentwhitespace .// string
  .param integer indentation
  .assign result = ""
  .while ( 0 < indentation )
    .assign indentation = indentation - 1
    .assign result = result + "  "
  .end while
  .assign attr_result = result
.end function
.//
.function T_quote .// string
  .assign result = """"
  .assign attr_result = result
.end function
.//
.function T_tick .// string
  .assign result = "'"
  .assign attr_result = result
.end function
