.//============================================================================
.// $RCSfile: q.component.arc,v $
.//
.// Description:
.// Component port level query for generating port declaration and definitions.
.//
.//============================================================================
.//     Create Include List
.//============================================================================
.function TE_C_CreateIncludeList
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select one te_sys related by te_c->TE_SYS[R2065]
  .select many te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->C_C[R8001]->TE_C[R2054]
  .select many nested_ref_te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->CL_IC[R8001]->TE_CI[R2009]->TE_C[R2008]
  .assign te_cs = te_cs | nested_ref_te_cs
  .assign attr_include_files = "#include ""${te_c.module_file}.${te_file.hdr_file_ext}""\n"
  .for each local_te_c in te_cs
    .if ( te_sys.SystemCPortsType == "TLM" )
      .assign attr_include_files = attr_include_files + "#include ""${local_te_c.Name}_bp_pv.${te_file.hdr_file_ext}""\n"
    .else
      .assign attr_include_files = attr_include_files + "#include ""${local_te_c.Name}.${te_file.hdr_file_ext}""\n"
    .end if
  .end for
  .// Get the TE_EEs that are not connected to a component.
  .select many global_te_ees from instances of TE_EE where ( selected.Included )
  .for each te_ee in global_te_ees
    .select one my_te_c related by te_ee->TE_C[R2085]
    .if ( not_empty my_te_c )
      .assign global_te_ees = global_te_ees - te_ee
    .end if
  .end for
  .select many te_ees related by te_c->TE_EE[R2085] where ( selected.Included )
  .assign te_ees = te_ees | global_te_ees
  .for each te_ee in te_ees
    .assign attr_include_files = attr_include_files + "#include ""${te_ee.Include_File}""\n"
  .end for
  .// Since C calls directly to the port messages published by the component,
  .// create the list of includes for the components across satisfactions.
  .select many local_te_iirs related by te_c->TE_PO[R2005]->TE_IIR[R2080]
  .select many required_te_cs related by local_te_iirs->TE_IIR[R2081.'requires or delegates']->TE_PO[R2080]->TE_C[R2005] where ( selected.included_in_build )
  .select many provided_te_cs related by local_te_iirs->TE_IIR[R2081.'provides or is delegated']->TE_PO[R2080]->TE_C[R2005] where ( selected.included_in_build )
  .assign te_cs = required_te_cs | provided_te_cs
  .for each connected_te_c in te_cs
    .assign attr_include_files = attr_include_files + "#include ""${connected_te_c.module_file}.${te_file.hdr_file_ext}""\n"
  .end for
  .// CDS agilegc (Add foreign includes derived from marking.)
  .select many s_syss from instances of S_SYS
  .assign syscount = cardinality s_syss
  .if ( 2 == syscount )
    .select any te_sys from instances of TE_SYS where ( selected.Name == "SYS" )
    .if ( not_empty te_sys )
      .select many required_te_iirs related by local_te_iirs->TE_IIR[R2081.'requires or delegates']
      .select many provided_te_iirs related by local_te_iirs->TE_IIR[R2081.'provides or is delegated']
      .assign te_iirs = required_te_iirs | provided_te_iirs
      .for each te_iir in te_iirs
        .assign attr_include_files = attr_include_files + "#include ""${te_iir.component_name}.${te_file.hdr_file_ext}""\n"
      .end for
    .end if
  .end if
  .// CDS agilegc end
.end function
.//
.//============================================================================
.// Build the include file body for the component port action.
.//============================================================================
.function TE_MACT_CreateDeclarations
  .param inst_ref_set first_te_macts
  .select any te_file from instances of TE_FILE
  .for each te_mact in first_te_macts
    .while ( not_empty te_mact )
      .select one te_aba related by te_mact->TE_ABA[R2010]
      .include "${te_file.arc_path}/t.component.message.h"
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
  .end for
.end function
.//
.//============================================================================
.// Generate the port interface functions.
.//============================================================================
.function TE_MACT_CreateDefinition
  .param inst_ref te_c
  .param inst_ref te_po
  .param inst_ref_set first_te_macts
  .select any te_file from instances of TE_FILE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_sys from instances of TE_SYS
  .select any te_target from instances of TE_TARGET
  .select any te_thread from instances of TE_THREAD
  .select any te_trace from instances of TE_TRACE
  .select any tm_msg from instances of TM_MSG
  .select any empty_sm_evt from instances of SM_EVT where ( false )
  .select many empty_te_macts from instances of TE_MACT where ( false )
  .invoke event_prioritization_needed = GetSystemEventPrioritizationNeeded()
  .for each te_mact in first_te_macts
    .while ( not_empty te_mact )
    .assign sm_evt = empty_sm_evt
    .assign foreign_te_macts = empty_te_macts
    .select one tm_msg related by te_mact->TM_MSG[R2809]
    .select one te_aba related by te_mact->TE_ABA[R2010]
    .if ( te_mact.subtypeKL == "SPR_PO" )
    .elif ( te_mact.subtypeKL == "SPR_RO" )
    .elif ( te_mact.subtypeKL == "SPR_PS" )
      .select one spr_ps related by te_mact->SPR_PS[R2051]
      .// Navigate through the satisfaction to find the connected/corresponding message.
      .// CDS - This selection seems unused.  Maybe it should be used?
      .select many spr_rss related by spr_ps->SPR_PEP[R4503]->C_P[R4501]->C_SF[R4002]->C_R[R4002]->SPR_REP[R4500]->SPR_RS[R4502] where ( selected.Name == spr_ps.Name )
      .// Find a local event mapped onto the signal.
      .select one sm_evt related by spr_ps->SM_SGEVT[R528]->SM_SEVT[R526]->SM_EVT[R525]
    .elif ( te_mact.subtypeKL == "SPR_RS" )
      .select one spr_rs related by te_mact->SPR_RS[R2053]
      .// Navigate through the satisfaction to find the connected/corresponding message.
      .// CDS - This selection seems unused.  Maybe it should be used?
      .select many spr_pss related by spr_rs->SPR_REP[R4502]->C_R[R4500]->C_SF[R4002]->C_P[R4002]->SPR_PEP[R4501]->SPR_PS[R4503] where ( selected.Name == spr_rs.Name )
      .// Find a local event mapped onto the signal.
      .select one sm_evt related by spr_rs->SM_SGEVT[R529]->SM_SEVT[R526]->SM_EVT[R525]
    .end if
    .assign action_body = te_aba.code
    .if ( ( ( te_mact.Provision ) and ( 1 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 0 == te_mact.Direction ) ) )
      .// outbound message
      .select many foreign_te_macts related by te_mact->TE_PO[R2006]->TE_IIR[R2080]->TE_IIR[R2081.'provides or is delegated']->TE_PO[R2080]->TE_MACT[R2006] where ( selected.MessageName == te_mact.MessageName )
      .if ( empty foreign_te_macts )
        .select many foreign_te_macts related by te_mact->TE_PO[R2006]->TE_IIR[R2080]->TE_IIR[R2081.'requires or delegates']->TE_PO[R2080]->TE_MACT[R2006] where ( selected.MessageName == te_mact.MessageName )
      .end if
      .if ( not_empty foreign_te_macts )
        .assign action_body = ""
        .for each foreign_te_mact in foreign_te_macts
          .select one foreign_te_c related by foreign_te_mact->TE_C[R2002]
          .if ( foreign_te_c.included_in_build )
            .invoke s = t_oal_smt_iop( foreign_te_mact.GeneratedName, te_aba.ParameterInvocation, "  ", true )
            .if ( "void" != te_aba.ReturnDataType )
              .assign action_body = "return "
            .end if
            .assign action_body = action_body + s.body
          .end if
        .end for
      .else
        .// CDS agilegc
        .// Check to see if any "virtual" connections (TE_IIRs) have been made to foreign components via marking.
        .if ( "SYS" == te_sys.Name )
          .select many foreign_te_iirs related by te_mact->TE_PO[R2006]->TE_IIR[R2080]->TE_IIR[R2081.'requires or delegates']
          .if ( empty foreign_te_iirs )
            .select many foreign_te_iirs related by te_mact->TE_PO[R2006]->TE_IIR[R2080]->TE_IIR[R2081.'provides or is delegated']
          .end if
          .for each foreign_te_iir in foreign_te_iirs
            .assign presumed_target = ( ( foreign_te_iir.component_name + "_" ) + ( foreign_te_iir.port_name + "_" ) ) + te_mact.MessageName
            .invoke s = t_oal_smt_iop( presumed_target, te_aba.ParameterInvocation, "  ", true )
            .if ( "void" != te_aba.ReturnDataType )
              .assign action_body = "  return"
            .end if
            .assign action_body = action_body + s.body
          .end for
        .end if
      .end if
    .elif ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
      .// inbound message
      .// If the signal is mapped, connect it to the state machine.
      .if ( not_empty sm_evt )
        .invoke s = t_oal_smt_sgn( sm_evt, false, "0", sm_evt.Drv_Lbl, sm_evt.Mning, te_aba.ParameterAssignment, "  " )
        .assign action_body = action_body + s.body
      .end if
    .else
      .print "ERROR:  Detected invalid component port message configuration."
    .end if
    .assign parameter = "dp_signal"
    .assign parameteri = "dp_signal"
    .assign parameterdt = "dt_xtUMLSignal"
    .// Handle messages marked as SafeForInterrupts.
    .assign deferring = ""
    .assign unpack_arguments = ""
    .if ( not_empty tm_msg )
      .if ( tm_msg.IsSafeForInterrupts )
        .select many te_parms related by te_aba->TE_PARM[R2062]
        .invoke r = SyncServiceDefineDeferred( te_parms, te_mact.GeneratedName )
        .assign deferring = r.body
        .invoke r = UnpackArgumentMembers( te_parms, te_mact.GeneratedName, "ilbargs" )
        .assign unpack_arguments = r.body
      .end if
    .end if
    .include "${te_file.arc_path}/t.component.message.c"
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
  .end for
.end function
.//
.//============================================================================
.// Generate the VISTA wrapper files
.//============================================================================
.function Vista_TLM_CreateTCLFiles
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .// attributes used in tcl scripts
  .assign attr_createFolderStructure = ""
  .assign attr_add_template = ""
  .assign attr_register_declaration = ""
  .assign attr_create_model = ""
  .assign attr_tlm_ports = ""
  .assign pilpeline_length = ""
  .//
  .assign attr_create_model = attr_create_model + "  create_tlm_model ${te_c.Name}_bp $$bp_logical_model {\n"
  .//
  .// Declare a register for each port
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .assign attr_tlm_ports = attr_tlm_ports + "    {${te_po.name}_i /TLM/protocols/generic slave}\n"
    .assign attr_tlm_ports = attr_tlm_ports + "    {${te_po.name}_o /TLM/protocols/generic master}\n"
    .assign attr_create_model = attr_create_model + "    {${te_po.name}_i /TLM/protocols/generic slave 32 -bind_mode optional}\n"
    .assign attr_create_model = attr_create_model + "    {${te_po.name}_o /TLM/protocols/generic master 32 -bind_mode optional}\n"
    .assign pilpeline_length = pilpeline_length + "    {${te_po.name}_i_pipeline_length 2}\n"
    .//
  .end for
  .// Create a register for each parameter inside the port (starting from 4 and increment by 4)
  .for each te_po in te_pos
    .select one c_i related by te_po->C_I[R2007]
    .assign direction = ""
    .if (te_po.provision)
      .assign direction  = "provided"
    .else
      .assign direction  = "required"
    .end if
    .assign register_name = "${te_c.Name}_${te_po.name}_PULSE"
    .assign register_offset_name = "$r{c_i.Name}_${direction}_PULSE_REG_OFFSET"
    .assign register_description = "${register_name} signals the completion of a message transfer"
    .assign register_width = 32
    .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.name}_i ${register_name} ${register_offset_name} {} -rw_access w -is_trigger -width ${register_width}\n"
    .//
    .select any te_mact related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .while ( not_empty te_mact )
      .select one te_aba related by te_mact->TE_ABA[R2010]
      .select any te_parm related by te_mact->TE_ABA[R2010]->TE_PARM[R2062] where ( selected.Order == 0 )
      .if ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
        .// inbound message
        .while ( not_empty te_parm )
          .select one te_dt related by te_parm->TE_DT[R2049]
          .select one s_sdt related by te_dt->S_DT[R2021]->S_SDT[R17]
          .select one te_dim related by te_parm->TE_DIM[R2056]
          .if(not_empty s_sdt)
            .assign memory_size = 0
            .select many s_mbrs related by s_sdt->S_MBR[R44]
            .for each s_mbr in s_mbrs
              .assign memory_size = memory_size + 4
            .end for
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_MEM_OFFSET"
            .assign memory_description = "${memory_name} description ${te_mact.Descrip} - ${te_parm.Descrip} field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .elif (not_empty te_dim)
            .assign memory_size = te_dim.elementCount
            .// multiply {te_dim.elementCount} by the word width (4bytes  = 32bit)
            .assign memory_size = memory_size * 4
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_MEM_OFFSET"
            .assign memory_description = "${memory_name} description ${te_mact.Descrip} - ${te_parm.Descrip} field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_MEM_OFFSET"
            .assign memory_description = "${memory_name} description ${te_mact.Descrip} - ${te_parm.Descrip} field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .else
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign register_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_REG_OFFSET"
            .assign register_width = 32
            .assign register_description = "${register_name} description field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.name}_i ${register_name} ${register_offset_name} {} -rw_access r/w -width 32\n"
          .end if
          .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
        .end while
        .if( "void" != te_aba.ReturnDataType )
          .select any te_dt_return from instances of TE_DT where ( selected.ExtName == "${te_aba.ReturnDataType}" )
          .select one s_sdt_return related by te_dt_return->S_DT[R2021]->S_SDT[R17]
          .if (not_empty s_sdt_return )
            .assign memory_size = 0
            .select many s_mbrs related by s_sdt_return->S_MBR[R44]
            .for each s_mbr in s_mbrs
              .assign memory_size = memory_size + 4
            .end for
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return_MEM_OFFSET"
            .assign memory_description = "${memory_name} description field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .//.elif (not_empty te_dim)
            .// returning array here not supported
          .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return_MEM_OFFSET"
            .assign memory_description = "${memory_name} description field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .else
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign register_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return_REG_OFFSET"
            .assign register_width = 32
            .assign register_description = "${te_mact.Descrip}"
            .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.name}_i ${register_name} ${register_offset_name} {} -rw_access r/w -width 32\n"
          .end if
        .end if
      .else
        .//.for each te_parm in te_parms
        .//  .assign register_address = register_address + 4
        .//.end for
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
  .end for
  .//
  .assign attr_create_model = attr_create_model + "  } {} -type /TLM/$$bp_logical_template/${te_c.Name} "
  .assign attr_create_model = attr_create_model + "  -a {\n  {generic_clock clock}\n  {clock {1 ns}}\n  {verbose_parameters true}\n"
  .assign attr_create_model = attr_create_model + "  ${pilpeline_length}"
  .assign attr_create_model = attr_create_model + "  } -m {\n${attr_register_declaration}} -generate_kind pvt -pv_kind template -timing_kind policies -max_parameters_of_pv_constructor 5 -include RegDefs.h\n"
  .assign attr_create_model = attr_create_model + "\n  # see if we are to save in a project\n  if { [info exists vista_project] } {\n      save_model /TLM/$$bp_logical_model/${te_c.Name}_bp -generate -vista-project $$vista_project\n  } else {\n      save_model /TLM/$$bp_logical_model/${te_c.Name}_bp -generate\n  }\n\n"
  .//
  .assign attr_createFolderStructure = attr_createFolderStructure + "\n  file mkdir $$bp_physical_template/${te_c.module_file}\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_pv_template.cpp  $$bp_physical_template/${te_c.module_file}/pv_template.cpp\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_pv_template.h  $$bp_physical_template/${te_c.module_file}/pv_template.h\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_procs.tcl  $$bp_physical_template/${te_c.module_file}/procs.tcl\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_machine_arch.tcl  $$bp_physical_template/${te_c.module_file}/machine_arch.tcl\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_init_data.tcl  $$bp_physical_template/${te_c.module_file}/init_data\n\n"
  .//
  .assign attr_add_template = "  add_template -f [file join ""/TLM/"" $$bp_logical_template ${te_c.Name}]  [file join $$absPath $$bp_physical_template ""${te_c.Name}""]\n"
.end function
.//
.//============================================================================
.// Build an ISR/polling interface to the hardware.
.//============================================================================
.function TE_MACT_CreateISR
  .param inst_ref_set te_macts
  .select any te_file from instances of TE_FILE
  .select many first_te_macts related by te_macts->TE_C[R2002]->TE_MACT[R2002] where ( selected.Order == 0 )
  .for each te_mact in first_te_macts
    .while ( not_empty te_mact )
      .if ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
        .select one te_aba related by te_mact->TE_ABA[R2010]
        .include "${te_file.arc_path}/t.component.port.isr.c"
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
  .end for
.end function
.//
.//============================================================================
.//
.//============================================================================
.// Generate message orders (commands).
.//============================================================================
.function TE_MACT_GenerateTLMMessageOrder
  .param inst_ref te_mact
  .assign attr_message_order = ""
  .assign message_order = 0
  .while ( not_empty te_mact )
    .assign attr_message_order = attr_message_order + "#define   ${te_mact.GeneratedName}_order ${message_order}\n"
    .assign message_order = message_order + 1
    .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
  .end while
.end function
.//
.//============================================================================
.// This function is used to Reverse the order of parameters 
.//============================================================================
.function te_parm_ReverseParameters
  .param inst_ref_set te_parms
  .param inst_ref c_io
  .assign defn = " void"
  .assign invo = ""
  .assign param_delimiter = " "
  .assign item_count = cardinality te_parms
  .//
  .// 1. get the last property parameter
  .select any last_c_pp from instances of C_PP where ( false )
  .select many c_pps related by c_io->C_EP[R4004]->C_PP[R4006]
  .for each c_pp in c_pps
    .select one next_c_pp related by c_pp->C_PP[R4021.'precedes']
    .if ( empty next_c_pp )
      .assign last_c_pp = c_pp
      .break for
    .end if
  .end for
  .//
  .// 2. reverse the order of parameters
  .assign current_c_pp = last_c_pp
  .if ( 0 < item_count )
    .assign defn = ""
    .while ( not_empty current_c_pp )
        .select one previous_c_pp related by current_c_pp->C_PP[R4021.'succeeds']
        .select one te_parm related by current_c_pp->TE_PARM[R2048]
        .select one te_dt related by te_parm->TE_DT[R2049]
        .assign te_dt.Included = true
        .assign param_qual = ""
        .if ( 0 != te_parm.By_Ref )
          .assign param_qual = " *"
        .end if
        .assign defn = ( ( defn + param_delimiter ) + ( te_dt.ExtName + param_qual ) ) + ( " " + te_parm.GeneratedName  )
        .assign invo = ( invo + param_delimiter ) + ( " " + te_parm.GeneratedName )
        .assign param_delimiter = ", "
        .assign current_c_pp = previous_c_pp
    .end while
  .end if
  .assign attr_definition = defn + " "
  .assign attr_invocation = invo
.end function
.//
.//============================================================================
.// This function is used to modify the parameters invocation of the signal's 
.// structure to be ordered alphabetically.
.//============================================================================
.function struct_RenderParameters
  .param inst_ref_set te_parms
  .param string struct_name
  .assign invo = ""
  .assign param_delimiter = " "
  .assign item_number = 0
  .assign item_count = cardinality te_parms
  .if ( 0 < item_count )
    .invoke SortSetAlphabeticallyByNameAttr( te_parms )
    .assign defn = ""
    .while ( item_number < item_count )
      .for each te_parm in te_parms
        .if ( te_parm.Order == item_number )
          .select one te_dt related by te_parm->TE_DT[R2049]
          .assign te_dt.Included = true
          .assign invo =( invo + param_delimiter ) + ( (struct_name +".") + (te_parm.GeneratedName) )
          .assign param_delimiter = ", "
          .break for
        .end if
      .end for
      .assign item_number = item_number + 1
    .end while
  .end if
  .assign attr_invocation = invo
.end function
.//
