.//====================================================================
.// $RCSfile: q.smt.generate.arc,v $
.//
.//====================================================================
.// ----------------------------------------------------------
.// gen for statements
.// ----------------------------------------------------------
.function smt_fors
  .select many act_fors from instances of ACT_FOR
  .for each act_for in act_fors
    .select one te_smt related by act_for->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_for( te_smt, act_for )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.// --------------------------------------------------------
.// gen for statement
.// --------------------------------------------------------
.function smt_for
  .param inst_ref te_smt
  .param inst_ref act_for
  .select one te_class related by act_for->O_OBJ[R670]->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select any te_file from instances of TE_FILE
    .select any te_for from instances of TE_FOR
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .select any te_set from instances of TE_SET
    .select one v_var related by act_for->V_VAR[R614]
    .select one te_var related by v_var->TE_VAR[R2039]
    .select one set_v_var related by act_for->V_VAR[R652]
    .select one set_te_var related by set_v_var->TE_VAR[R2039]
    .assign te_for.isImplicit = act_for.is_implicit
    .assign te_for.class_name = te_class.GeneratedName
    .assign te_for.loop_variable = te_var.buffer
    .assign te_for.set_variable = set_te_var.buffer
    .assign ws = te_blk.indentation
    .assign te_smt.buffer2 = ws + "}}}"
    .if ( te_for.isImplicit )
      .assign d = ( te_for.class_name + " * " ) + ( te_for.loop_variable + "=0;" )
      .invoke blk_declaration_append( te_blk, d )
    .end if
    .assign iterator = "iter" + te_for.loop_variable
    .assign current_instance = "ii" + te_for.loop_variable
    .include "${te_file.arc_path}/t.smt.for.c"
    .assign te_smt.OAL = "FOR EACH ${v_var.Name} IN ${set_v_var.Name}"
  .end if
.end function
.//
.// ----------------------------------------------------------
.// gen if statements
.// ----------------------------------------------------------
.function smt_ifs
  .select many act_ifs from instances of ACT_IF
  .for each act_if in act_ifs
    .select one te_smt related by act_if->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_if( te_smt, act_if )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.// --------------------------------------------------------
.// gen if statement
.// --------------------------------------------------------
.function smt_if
  .param inst_ref te_smt
  .param inst_ref act_if
  .select any te_file from instances of TE_FILE
  .select one condition_te_val related by act_if->V_VAL[R625]->TE_VAL[R2040]
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .assign te_smt.buffer2 = ws + "}"
  .include "${te_file.arc_path}/t.smt.if.c"
  .assign te_smt.OAL = "IF ( ${condition_te_val.OAL} )"
.end function
.// ----------------------------------------------------------
.// gen while statements
.// ----------------------------------------------------------
.function smt_whiles
  .select many act_whls from instances of ACT_WHL
  .for each act_whl in act_whls
    .select one te_smt related by act_whl->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_while( te_smt, act_whl )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.// --------------------------------------------------------
.// gen while statement
.// --------------------------------------------------------
.function smt_while
  .param inst_ref te_smt
  .param inst_ref act_whl
  .select any te_file from instances of TE_FILE
  .select one condition_te_val related by act_whl->V_VAL[R626]->TE_VAL[R2040]
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .assign te_smt.buffer2 = ws + "}"
  .include "${te_file.arc_path}/t.smt.while.c"
  .assign te_smt.OAL = "WHILE ( ${condition_te_val.OAL} )"
.end function
.// ----------------------------------------------------------
.// gen else statements
.// ----------------------------------------------------------
.function smt_elses
  .select many act_es from instances of ACT_E
  .for each act_e in act_es
    .select one te_smt related by act_e->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_else( te_smt, act_e )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.// --------------------------------------------------------
.// gen else statement
.// --------------------------------------------------------
.function smt_else
  .param inst_ref te_smt
  .param inst_ref act_e
  .select any te_file from instances of TE_FILE
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .assign te_smt.buffer2 = ws + "}"
  .include "${te_file.arc_path}/t.smt.else.c"
  .// Skip tracing ELSE because it falls between } and else.
  .//.assign te_smt.OAL = "ELSE"
  .assign te_smt.OAL = ""
.end function
.//
.// ----------------------------------------------------------
.// gen elif statements
.// ----------------------------------------------------------
.function smt_elifs
  .select many act_els from instances of ACT_EL
  .for each act_el in act_els
    .select one te_smt related by act_el->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_elif( te_smt, act_el )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.// --------------------------------------------------------
.// gen elif statement
.// --------------------------------------------------------
.function smt_elif
  .param inst_ref te_smt
  .param inst_ref act_el
  .select any te_file from instances of TE_FILE
  .select one condition_te_val related by act_el->V_VAL[R659]->TE_VAL[R2040]
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .assign te_smt.buffer2 = ws + "}"
  .include "${te_file.arc_path}/t.smt.elif.c"
  .// Skip tracing ELIF because it falls between } and else.
  .//.assign te_smt.OAL = "ELIF ( ${condition.OAL} )"
  .assign te_smt.OAL = ""
.end function
.//
.// --------------------------------------------------------
.// assignment to attribute statements
.// --------------------------------------------------------
.function smt_assigns
  .select many act_ais from instances of ACT_AI
  .for each act_ai in act_ais
    .select one te_smt related by act_ai->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_assign( te_smt, act_ai )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// gen_asgn_attr_statement
.// --------------------------------------------------------
.function smt_assign
  .param inst_ref te_smt
  .param inst_ref act_ai
  .select any te_assign from instances of TE_ASSIGN
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_set from instances of TE_SET
  .select any te_string from instances of TE_STRING
  .select any te_sys from instances of TE_SYS
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .select one r_v_val related by act_ai->V_VAL[R609]
  .select one l_v_val related by act_ai->V_VAL[R689]
  .select one r_te_dt related by r_v_val->S_DT[R820]->TE_DT[R2021]
  .select one l_te_dt related by l_v_val->S_DT[R820]->TE_DT[R2021]
  .select one r_te_val related by r_v_val->TE_VAL[R2040]
  .select one l_te_val related by l_v_val->TE_VAL[R2040]
  .if ( empty l_te_dt )
    .assign l_te_dt = r_te_dt
  .end if
  .assign te_assign.Core_Typ = r_te_dt.Core_Typ
  .assign te_assign.rval_dimensions = r_te_val.dimensions
  .assign te_assign.dimensions = l_te_val.dimensions
  .assign te_assign.array_spec = l_te_val.array_spec
  .assign te_assign.left_declaration = ""
  .assign te_assign.lval = l_te_val.buffer
  .assign te_assign.rval = r_te_val.buffer
  .invoke r = V_VAL_drill_for_V_VAL_root( l_v_val )
  .assign root_v_val = r.result
  .assign element_count = 0
  .select one r_te_dim related by r_te_val->TE_DIM[R2079]
  .if ( not_empty r_te_dim )
    .assign element_count = r_te_dim.elementCount
  .end if
  .assign te_assign.isImplicit = root_v_val.isImplicit
  .if ( te_assign.isImplicit )
    .select one root_te_val related by root_v_val->TE_VAL[R2040]
    .assign te_assign.left_declaration = ( r_te_dt.ExtName + " " ) + root_te_val.buffer
    .if ( 8 == r_te_dt.Core_Typ )
      .select one te_class related by root_v_val->V_IRF[R801]->V_VAR[R808]->V_INT[R814]->O_OBJ[R818]->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
      .if ( not_empty te_class )
        .assign te_assign.left_declaration = ( te_class.GeneratedName + " * " ) + ( root_te_val.buffer + ";" )
        .invoke blk_declaration_append( te_blk, te_assign.left_declaration )
      .end if
    .elif ( ( 9 == te_assign.Core_Typ ) or ( 21 == te_assign.Core_Typ ) )
      .// First OAL use of inst_ref_set<Object> handle set. Initialize with class extent.
      .assign selection_result_variable = te_assign.lval
      .assign d = "${te_set.scope}${te_set.base_class} ${selection_result_variable}_space={0}; ${te_set.scope}${te_set.base_class} * ${selection_result_variable} = &${selection_result_variable}_space;"
      .invoke blk_declaration_append( te_blk, d )
      .// Push deallocation into the block so that it is available at gen time for break/continue/return.
      .assign d = ( ( te_set.module + te_set.clear ) + ( "( " + te_assign.lval ) ) + " );"
      .invoke blk_deallocation_append( te_blk, d )
    .elif ( ( 4 == r_te_dt.Core_Typ ) and ( te_sys.InstanceLoading ) )
      .// CDS 128 is a bit arbitrary.  It is intended to be a reasonable
      .// maximum for a transient array of strings needing initialization.
      .// string
      .assign d = te_assign.left_declaration + te_assign.array_spec
      .if ( "" == te_assign.array_spec )
        .assign d = d + "=0"
      .else
        .select one root_te_dim related by root_te_val->TE_DIM[R2079]
        .if ( not_empty root_te_dim )
          .if ( element_count < root_te_dim.elementCount )
            .assign element_count = root_te_dim.elementCount
          .end if
        .end if
        .assign d = d + "={0"
        .if ( element_count < 128 )
          .assign i = element_count - 1
          .// Only provide initializer for arrays of reasonable size.
          .while ( i > 0 )
            .assign i = i - 1
            .assign d = d + ",0"
          .end while
        .end if
        .assign d = d + "}"
      .end if
      .assign d = d + ";"
      .invoke blk_declaration_append( te_blk, d )
    .else
      .assign d = ( te_assign.left_declaration + te_assign.array_spec ) + ";"
      .invoke blk_declaration_append( te_blk, d )
    .end if
  .end if
  .assign is_parameter = false
  .select one v_pvl related by r_v_val->V_PVL[R801]
  .if ( not_empty v_pvl )
    .assign is_parameter = true
  .end if
  .include "${te_file.arc_path}/t.smt.assign.c"
  .assign te_smt.OAL = "ASSIGN ${l_te_val.OAL} = ${r_te_val.OAL}"
.end function
.//
.// Find the root of the given value instance.  We may need to
.// recurse down in the case of structures and arrays.
.function V_VAL_drill_for_V_VAL_root .// v_val
  .param inst_ref v_val
  .assign result = v_val
  .select one root_v_val related by v_val->V_AER[R801]->V_VAL[R838]
  .if ( not_empty root_v_val )
    .invoke r = V_VAL_drill_for_V_VAL_root( root_v_val )
    .assign result = r.result
  .else
    .select one root_v_val related by v_val->V_MVL[R801]->V_VAL[R837]
    .if ( not_empty root_v_val )
      .invoke r = V_VAL_drill_for_V_VAL_root( root_v_val )
      .assign result = r.result
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.// --------------------------------------------------------
.// create instance no variable statements
.// --------------------------------------------------------
.function smt_create_instance_novars
  .select many act_cnvs from instances of ACT_CNV
  .for each act_cnv in act_cnvs
    .select one te_smt related by act_cnv->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_create_instance_novar( te_smt, act_cnv )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// create instance no variable statement
.// --------------------------------------------------------
.function smt_create_instance_novar
  .param inst_ref te_smt
  .param inst_ref act_cnv
  .select one te_class related by act_cnv->O_OBJ[R672]->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select any te_file from instances of TE_FILE
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one te_c related by te_class->TE_C[R2064]
    .select any te_instance from instances of TE_INSTANCE
    .invoke r = GetDomainTypeIDFromString( te_c.Name )
    .assign dom_id = r.result
    .create object instance te_var of TE_VAR
    .assign te_var.buffer = te_class.GeneratedName + "_novar"
    .invoke r = AutoInitializeUniqueIDs( te_class, te_var.buffer )
    .assign init_uniques = r.body
    .assign d = ( te_class.GeneratedName + " * " ) + ( te_var.buffer + ";" )
    .invoke blk_declaration_append( te_blk, d )
    .include "${te_file.arc_path}/t.smt.create_instance.c"
    .assign te_smt.OAL = "CREATE OBJECT INSTANCE OF ${te_class.Key_Lett}"
    .delete object instance te_var
  .end if
.end function
.//
.// --------------------------------------------------------
.// create instance statements
.// --------------------------------------------------------
.function smt_create_instances
  .select many act_crs from instances of ACT_CR
  .for each act_cr in act_crs
    .select one te_smt related by act_cr->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_create_instance( te_smt, act_cr )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// create instance statement
.// --------------------------------------------------------
.function smt_create_instance
  .param inst_ref te_smt
  .param inst_ref act_cr
  .select one o_obj related by act_cr->O_OBJ[R671]
  .select one te_class related by o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select any te_file from instances of TE_FILE
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one v_var related by act_cr->V_VAR[R633]
    .select one te_var related by v_var->TE_VAR[R2039]
    .select one te_c related by te_class->TE_C[R2064]
    .select any te_instance from instances of TE_INSTANCE
    .invoke r = GetDomainTypeIDFromString( te_c.Name )
    .assign dom_id = r.result
    .invoke r = AutoInitializeUniqueIDs( te_class, te_var.buffer )
    .assign init_uniques = r.body
    .if ( act_cr.is_implicit )
      .assign d = ( te_class.GeneratedName + " * " ) + ( te_var.buffer + ";" )
      .invoke blk_declaration_append( te_blk, d )
    .end if
    .include "${te_file.arc_path}/t.smt.create_instance.c"
    .assign te_smt.OAL = "CREATE OBJECT INSTANCE ${v_var.Name} OF ${te_class.Key_Lett}"
  .end if
.end function
.//
.// --------------------------------------------------------
.// delete instance statements
.// --------------------------------------------------------
.function smt_delete_instances
  .select many act_dels from instances of ACT_DEL
  .assign del_count = 0
  .for each act_del in act_dels
    .select one te_smt related by act_del->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_delete_instance( te_smt, act_del )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// delete instance statement
.// --------------------------------------------------------
.function smt_delete_instance
  .param inst_ref te_smt
  .param inst_ref act_del
  .select one v_var related by act_del->V_VAR[R634]
  .select one te_class related by v_var->V_INT[R814]->O_OBJ[R818]->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select any te_file from instances of TE_FILE
    .select any te_instance from instances of TE_INSTANCE
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one te_var related by v_var->TE_VAR[R2039]
    .select one te_c related by te_class->TE_C[R2064]
    .invoke r = GetDomainTypeIDFromString( te_c.Name )
    .assign dom_id = r.result
    .include "${te_file.arc_path}/t.smt.delete_instance.c"
    .assign te_smt.OAL = "DELETE OBJECT INSTANCE ${v_var.Name}"
  .end if
.end function
.// --------------------------------------------------------
.// create event instance to instance statements
.// --------------------------------------------------------
.function smt_create_events_to_instance
  .select many e_ceis from instances of E_CEI
  .for each e_cei in e_ceis
    .select one e_csme related by e_cei->E_CSME[R704]
    .select one te_smt related by e_csme->E_CES[R702]->E_ESS[R701]->ACT_SMT[R603]->TE_SMT[R2038]
    .select one recipient_v_var related by e_cei->V_VAR[R711]
    .select one recipient_te_var related by recipient_v_var->TE_VAR[R2039]
    .select one sm_evt related by e_csme->SM_EVT[R706]
    .select one te_evt related by sm_evt->TE_EVT[R2036]
    .select one te_class related by sm_evt->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
    .select one var_te_class related by recipient_v_var->V_INT[R814]->O_OBJ[R818]->TE_CLASS[R2019]
    .if ( ( not_empty te_class ) and ( not_empty te_evt ) )
      .if ( var_te_class != te_class )
        .print "ERROR:  Event ${te_class.Name}(${te_class.Key_Lett}):${te_evt.Name} sent to mismatched instance of ${var_te_class.Name}."
        .print "ERROR:  This may be due to lack of support for polys-to-subtypes."
        .exit 133
      .end if
      .invoke r = smt_create_event( te_smt, e_csme, recipient_te_var.buffer, recipient_v_var.Name )
      .invoke smt_buffer_append( te_smt, r.body )
    .end if
  .end for
.end function
.//
.// --------------------------------------------------------
.// create event instance to class statements
.// --------------------------------------------------------
.function smt_create_events_to_class
  .select many e_ceas from instances of E_CEA
  .for each e_cea in e_ceas
    .select one e_csme related by e_cea->E_CSME[R704]
    .select one te_smt related by e_csme->E_CES[R702]->E_ESS[R701]->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_create_event( te_smt, e_csme, "0", "CLASS" )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// create event instance to creator statements
.// --------------------------------------------------------
.function smt_create_events_to_creator
  .select many e_cecs from instances of E_CEC
  .for each e_cec in e_cecs
    .select one e_csme related by e_cec->E_CSME[R704]
    .select one te_smt related by e_csme->E_CES[R702]->E_ESS[R701]->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_create_event( te_smt, e_csme, "0", "CREATOR" )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// create event instance statement
.// --------------------------------------------------------
.function smt_create_event
  .param inst_ref te_smt
  .param inst_ref e_csme
  .param string recipient
  .param string recipient_OAL
  .select one e_ces related by e_csme->E_CES[R702]
  .select one e_ess related by e_ces->E_ESS[R701]
  .select one sm_evt related by e_csme->SM_EVT[R706]
  .select one o_obj related by sm_evt->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]
  .if ( empty o_obj )
    .select one o_obj related by sm_evt->SM_SM[R502]->SM_ASM[R517]->O_OBJ[R519]
  .end if
  .select one te_class related by o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select one sm_pevt related by sm_evt->SM_PEVT[R525]
    .if ( not_empty sm_pevt )
      .select any poly_sm_evt related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502] where ( selected.Drv_Lbl == ( sm_evt.Drv_Lbl + "*" ) )
      .if ( not_empty poly_sm_evt )
        .assign sm_evt = poly_sm_evt
      .end if
    .end if
    .select one te_evt related by sm_evt->TE_EVT[R2036]
    .if ( te_evt.Used )
      .select any te_file from instances of TE_FILE
      .select any te_eq from instances of TE_EQ
      .select any te_thread from instances of TE_THREAD
      .select any te_instance from instances of TE_INSTANCE
      .select one te_blk related by te_smt->TE_BLK[R2078]
      .assign ws = te_blk.indentation
      .select one v_var related by e_ces->V_VAR[R710]
      .select one te_var related by v_var->TE_VAR[R2039]
      .select many v_pars related by e_ess->V_PAR[R700]
      .assign parameters = ""
      .assign parameter_OAL = ""
      .if ( not_empty v_pars )
        .assign delimeter = ""
        .for each v_par in v_pars
          .select one par_te_dt related by v_par->V_VAL[R800]->S_DT[R820]->TE_DT[R2021]
          .select one par_te_val related by v_par->V_VAL[R800]->TE_VAL[R2040]
          .invoke r = t_oal_smt_event_parameters( te_var.buffer, v_par.Name, par_te_val.buffer, par_te_dt.Core_Typ, te_blk.indentation )
          .assign parameters = parameters + r.result
          .assign parameter_OAL = ( parameter_OAL + delimeter ) + par_te_val.OAL
          .assign delimeter = ", "
        .end for
      .end if
      .if ( e_ces.is_implicit )
        .assign d = ""
        .if ( "" == parameters )
          .assign d = ( te_eq.base_event_type + " * " ) + ( te_var.buffer + ";" )
        .else
          .assign d = ( te_evt.GeneratedName + " * " ) + ( te_var.buffer + ";" )
        .end if
        .invoke blk_declaration_append( te_blk, d )
      .end if
      .include "${te_file.arc_path}/t.smt.create_event.c"
      .assign te_smt.OAL = "CREATE EVENT INSTANCE ${v_var.Name}( ${parameter_OAL} ) TO ${recipient_OAL}"
    .end if
  .end if
.end function
.//
.// --------------------------------------------------------
.//  relate statements
.// --------------------------------------------------------
.function smt_relates
  .select many act_rels from instances of ACT_REL
  .for each act_rel in act_rels
    .select one te_smt related by act_rel->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_relate( te_smt, act_rel )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.//  relate statement
.// --------------------------------------------------------
.function smt_relate
  .param inst_ref te_smt
  .param inst_ref act_rel
  .select one one_v_var related by act_rel->V_VAR[R615]
  .select one one_o_obj related by one_v_var->V_INT[R814]->O_OBJ[R818]
  .select one te_class related by one_o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select any te_file from instances of TE_FILE
    .select any te_target from instances of TE_TARGET
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one one_te_var related by one_v_var->TE_VAR[R2039]
    .select one oth_v_var related by act_rel->V_VAR[R616]
    .select one oth_te_var related by oth_v_var->TE_VAR[R2039]
    .select one oth_o_obj related by oth_v_var->V_INT[R814]->O_OBJ[R818]
    .select one r_rel related by act_rel->R_REL[R653]
    .invoke r1 = is_reflexive( r_rel )
    .assign is_reflexive = r1.result
    .invoke r2 = TE_REL_IsLeftFormalizer( one_o_obj, r_rel, act_rel.relationship_phrase )
    .assign left_is_formalizer = r2.result
    .assign o_obj = oth_o_obj
    .if ( left_is_formalizer )
      .assign o_obj = one_o_obj
    .end if
    .invoke r = GetRelateToName( o_obj, r_rel, act_rel.relationship_phrase )
    .assign relate_method = r.result
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .assign thismodule = ""
    .if ( "C" != te_target.language )
      .assign thismodule = ", thismodule"
    .end if
    .include "${te_file.arc_path}/t.smt.relate.c"
    .assign te_smt.OAL = "RELATE ${one_v_var.Name} TO ${oth_v_var.Name} ACROSS R$t{r_rel.Numb}"
  .end if
.end function
.//
.// --------------------------------------------------------
.function smt_relate_usings
  .select many act_rus from instances of ACT_RU
  .for each act_ru in act_rus
    .select one te_smt related by act_ru->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_relate_using( te_smt, act_ru )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.function smt_relate_using
  .param inst_ref te_smt
  .param inst_ref act_ru
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .select one r_rel related by act_ru->R_REL[R654]
  .invoke r = is_reflexive( r_rel )
  .assign is_reflexive = r.result
  .assign one_rel_phrase = ""
  .assign oth_rel_phrase = ""
  .if ( is_reflexive )
    .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
    .select one one_obj related by act_ru->V_VAR[R617]->V_INT[R814]->O_OBJ[R818]
    .if ( one_obj.Obj_ID == aone.Obj_ID )
      .if ( aone.Txt_Phrs == act_ru.relationship_phrase )
        .assign one_rel_phrase = aone.Txt_Phrs
        .assign oth_rel_phrase = aoth.Txt_Phrs
      .else
        .assign one_rel_phrase = aoth.Txt_Phrs
        .assign oth_rel_phrase = aone.Txt_Phrs
      .end if
    .else
      .if ( aoth.Txt_Phrs == act_ru.relationship_phrase )
        .assign one_rel_phrase = aoth.Txt_Phrs
        .assign oth_rel_phrase = aone.Txt_Phrs
      .else
        .assign one_rel_phrase = aone.Txt_Phrs
        .assign oth_rel_phrase = aoth.Txt_Phrs
      .end if
    .end if
  .end if
  .select one one_v_var related by act_ru->V_VAR[R617]
  .select one one_te_var related by one_v_var->TE_VAR[R2039]
  .select one one_o_obj related by one_v_var->V_INT[R814]->O_OBJ[R818]
  .select one oth_v_var related by act_ru->V_VAR[R618]
  .select one oth_te_var related by oth_v_var->TE_VAR[R2039]
  .select one oth_o_obj related by oth_v_var->V_INT[R814]->O_OBJ[R818]
  .select one ass_v_var related by act_ru->V_VAR[R619]
  .select one ass_te_var related by ass_v_var->TE_VAR[R2039]
  .select one ass_o_obj related by ass_v_var->V_INT[R814]->O_OBJ[R818]
  .select one ass_te_class related by ass_o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty ass_te_class )
    .select any te_file from instances of TE_FILE
    .select any te_target from instances of TE_TARGET
    .assign thismodule = ""
    .if ( "C" != te_target.language )
      .assign thismodule = ", thismodule"
    .end if
    .invoke r1 = GetRelateToName( ass_o_obj, r_rel, act_ru.relationship_phrase )
    .assign relate_method = r1.result
    .assign left_obj_is_aone = false
    .select one r_aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .if ( one_o_obj.Obj_ID == r_aone.Obj_ID )
      .assign left_obj_is_aone = true
    .end if
    .include "${te_file.arc_path}/t.smt.relate_using.c"
    .assign te_smt.OAL = "RELATE ${one_te_var.OAL} TO ${oth_te_var.OAL} ACROSS R$t{r_rel.Numb} USING ${ass_te_var.OAL}"
  .end if
.end function
.//
.// --------------------------------------------------------
.function smt_unrelates
  .select many act_unrs from instances of ACT_UNR
  .for each act_unr in act_unrs
    .select one te_smt related by act_unr->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_unrelate( te_smt, act_unr )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.function smt_unrelate
  .param inst_ref te_smt
  .param inst_ref act_unr
  .select one one_v_var related by act_unr->V_VAR[R620]
  .select one one_o_obj related by one_v_var->V_INT[R814]->O_OBJ[R818]
  .select one te_class related by one_o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select any te_file from instances of TE_FILE
    .select any te_target from instances of TE_TARGET
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one one_te_var related by one_v_var->TE_VAR[R2039]
    .select one oth_v_var related by act_unr->V_VAR[R621]
    .select one oth_te_var related by oth_v_var->TE_VAR[R2039]
    .select one oth_o_obj related by oth_v_var->V_INT[R814]->O_OBJ[R818]
    .select one r_rel related by act_unr->R_REL[R655]
    .invoke r1 = is_reflexive( r_rel )
    .assign is_reflexive = r1.result
    .invoke r2 = TE_REL_IsLeftFormalizer( one_o_obj, r_rel, act_unr.relationship_phrase )
    .assign left_is_formalizer = r2.result
    .assign o_obj = oth_o_obj
    .if ( left_is_formalizer )
      .assign o_obj = one_o_obj
    .end if
    .invoke r = GetUnrelateFromName( o_obj, r_rel, act_unr.relationship_phrase )
    .assign unrelate_method = r.result
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .assign thismodule = ""
    .if ( "C" != te_target.language )
      .assign thismodule = ", thismodule"
    .end if
    .include "${te_file.arc_path}/t.smt.unrelate.c"
    .assign te_smt.OAL = "UNRELATE ${one_te_var.OAL} FROM ${oth_te_var.OAL} ACROSS R$t{r_rel.Numb}"
  .end if
.end function
.//
.// --------------------------------------------------------
.function smt_unrelate_usings
  .select many act_urus from instances of ACT_URU
  .for each act_uru in act_urus
    .select one te_smt related by act_uru->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_unrelate_using( te_smt, act_uru )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.function smt_unrelate_using
  .param inst_ref te_smt
  .param inst_ref act_uru
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .select one r_rel related by act_uru->R_REL[R656]
  .invoke r = is_reflexive( r_rel )
  .assign is_reflexive = r.result
  .assign one_rel_phrase = ""
  .assign oth_rel_phrase = ""
  .if ( is_reflexive )
    .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
    .select one one_obj related by act_uru->V_VAR[R622]->V_INT[R814]->O_OBJ[R818]
    .if ( one_obj.Obj_ID == aone.Obj_ID )
      .if ( aone.Txt_Phrs == act_uru.relationship_phrase )
        .assign one_rel_phrase = aone.Txt_Phrs
        .assign oth_rel_phrase = aoth.Txt_Phrs
      .else
        .assign one_rel_phrase = aoth.Txt_Phrs
        .assign oth_rel_phrase = aone.Txt_Phrs
      .end if
    .else
      .if ( aoth.Txt_Phrs == act_uru.relationship_phrase )
        .assign one_rel_phrase = aoth.Txt_Phrs
        .assign oth_rel_phrase = aone.Txt_Phrs
      .else
        .assign one_rel_phrase = aone.Txt_Phrs
        .assign oth_rel_phrase = aoth.Txt_Phrs
      .end if
    .end if
  .end if
  .select one one_v_var related by act_uru->V_VAR[R622]
  .select one one_te_var related by one_v_var->TE_VAR[R2039]
  .select one one_o_obj related by one_v_var->V_INT[R814]->O_OBJ[R818]
  .select one oth_v_var related by act_uru->V_VAR[R623]
  .select one oth_te_var related by oth_v_var->TE_VAR[R2039]
  .select one oth_o_obj related by oth_v_var->V_INT[R814]->O_OBJ[R818]
  .select one ass_v_var related by act_uru->V_VAR[R624]
  .select one ass_te_var related by ass_v_var->TE_VAR[R2039]
  .select one ass_o_obj related by ass_v_var->V_INT[R814]->O_OBJ[R818]
  .select one ass_te_class related by ass_o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty ass_te_class )
    .select any te_file from instances of TE_FILE
    .select any te_target from instances of TE_TARGET
    .assign thismodule = ""
    .if ( "C" != te_target.language )
      .assign thismodule = ", thismodule"
    .end if
    .invoke r1 = GetUnrelateFromName( ass_o_obj, r_rel, act_uru.relationship_phrase )
    .assign unrelate_method = r1.result
    .assign left_obj_is_aone = false
    .select one r_aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .if ( one_o_obj.Obj_ID == r_aone.Obj_ID )
      .assign left_obj_is_aone = true
    .end if
    .include "${te_file.arc_path}/t.smt.unrelate_using.c"
    .assign te_smt.OAL = "UNRELATE ${one_te_var.OAL} FROM ${oth_te_var.OAL} ACROSS R$t{r_rel.Numb} USING ${ass_te_var.OAL}"
  .end if
.end function
.//
.// --------------------------------------------------------
.// select statements
.// --------------------------------------------------------
.function smt_selects
  .select many act_fios from instances of ACT_FIO
  .for each act_fio in act_fios
    .select one te_smt related by act_fio->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_select( te_smt, act_fio )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// select instance statement
.// --------------------------------------------------------
.function smt_select
  .param inst_ref te_smt
  .param inst_ref act_fio
  .select one o_obj related by act_fio->O_OBJ[R677]
  .select one te_class related by o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select any te_file from instances of TE_FILE
    .select any te_extent from instances of TE_EXTENT
    .select any te_select from instances of TE_SELECT
    .select any te_set from instances of TE_SET
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one v_var related by act_fio->V_VAR[R639]
    .select one te_var related by v_var->TE_VAR[R2039]
    .assign te_select.is_implicit = act_fio.is_implicit
    .assign te_select.class_name = te_class.GeneratedName
    .assign te_select.target_class_name = te_class.Name
    .assign te_select.multiplicity = act_fio.cardinality
    .assign te_select.var_name = te_var.buffer
    .invoke r = GetFixedSizeClassExtentInfo( te_class )
    .assign extent = r.result
    .if ( "any" == te_select.multiplicity )
      .if ( te_select.is_implicit )
        .// Declare (first OAL usage of) inst_ref<Object> handle variable.
        .assign d = ( te_select.class_name + " * " ) + ( te_select.var_name + "=0;" )
        .invoke blk_declaration_append( te_blk, d )
      .end if
    .elif ( "many" == te_select.multiplicity )
      .if ( te_select.is_implicit )
        .// First OAL use of inst_ref_set<Object> handle set. Initialize with class extent.
        .assign selection_result_variable = te_select.var_name
        .assign d = "${te_set.scope}${te_set.base_class} ${selection_result_variable}_space={0}; ${te_set.scope}${te_set.base_class} * ${selection_result_variable} = &${selection_result_variable}_space;"
        .invoke blk_declaration_append( te_blk, d )
        .// Push deallocation into the block so that it is available at gen time for break/continue/return.
        .assign d = ( ( te_set.module + te_set.clear ) + ( "( " + te_select.var_name ) ) + " );"
        .invoke blk_deallocation_append( te_blk, d )
      .end if
    .else
      .print "\nERROR:  select ${te_select.multiplicity} is not any or many."
      .exit 101
    .end if
    .include "${te_file.arc_path}/t.smt.select.c"
    .assign te_smt.OAL = "SELECT ${act_fio.cardinality} ${v_var.Name} FROM INSTANCES OF ${te_class.Key_Lett}"
  .end if
.end function
.//
.// --------------------------------------------------------
.// select instance where statements
.// --------------------------------------------------------
.function smt_select_wheres
  .select many act_fiws from instances of ACT_FIW
  .for each act_fiw in act_fiws
    .select one te_smt related by act_fiw->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_select_where( te_smt, act_fiw )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.//
.//
.// Recursively drill down into the where clause expression marking
.// selected attributes along the way.
.//
.function v_val_find_v_slr_return_buffer .// string
  .param inst_ref v_val
  .assign result = "selected"
  .select one v_slr related by v_val->V_SLR[R801]
  .if ( not_empty v_slr )
    .select one te_val related by v_val->TE_VAL[R2040]
    .assign result = te_val.buffer
  .else
    .select one v_avl related by v_val->V_AVL[R801]
    .if ( not_empty v_avl )
      .select one root_v_val related by v_avl->V_VAL[R807]
      .invoke r = v_val_find_v_slr_return_buffer( root_v_val )
      .assign result = r.result
    .else
    .select one v_bin related by v_val->V_BIN[R801]
    .if ( not_empty v_bin )
      .select one left_v_val related by v_bin->V_VAL[R802]
      .invoke r = v_val_find_v_slr_return_buffer( left_v_val )
      .assign result = r.result
      .if ( "selected" != result )
        .select one right_v_val related by v_bin->V_VAL[R803]
        .invoke r = v_val_find_v_slr_return_buffer( right_v_val )
        .assign result = r.result
      .end if
    .else
    .select one v_uny related by v_val->V_UNY[R801]
    .if ( not_empty v_uny )
      .select one uny_v_val related by v_uny->V_VAL[R804]
      .invoke r = v_val_find_v_slr_return_buffer( uny_v_val )
      .assign result = r.result
    .end if
    .end if
    .end if
  .end if
  .assign attr_result = result
.end function
.// --------------------------------------------------------
.// select instance where statement
.// --------------------------------------------------------
.function smt_select_where
  .param inst_ref te_smt
  .param inst_ref act_fiw
  .select one o_obj related by act_fiw->O_OBJ[R676]
  .select one te_class related by o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty te_class )
    .select any te_extent from instances of TE_EXTENT
    .select any te_file from instances of TE_FILE
    .select any te_select_where from instances of TE_SELECT_WHERE
    .select any te_set from instances of TE_SET
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one v_var related by act_fiw->V_VAR[R665]
    .select one te_var related by v_var->TE_VAR[R2039]
    .select one where_v_val related by act_fiw->V_VAL[R610]
    .select one where_te_val related by where_v_val->TE_VAL[R2040]
    .invoke r = v_val_find_v_slr_return_buffer( where_v_val )
    .assign slrname = r.result
    .assign te_select_where.is_implicit = act_fiw.is_implicit
    .assign te_select_where.class_name = te_class.GeneratedName
    .assign te_select_where.oal_var_name = o_obj.Name
    .assign te_select_where.class_description = o_obj.Descrip
    .assign te_select_where.multiplicity = act_fiw.cardinality
    .assign te_select_where.var_name = te_var.buffer
    .assign te_select_where.selected_var_name = slrname
    .assign te_select_where.where_clause = where_te_val.buffer
    .assign te_select_where.special = false
    .if ( "any" == te_select_where.multiplicity )
      .if ( te_select_where.is_implicit )
        .// Declare (first OAL usage of) inst_ref<Object> handle variable.
        .assign d = ( te_select_where.class_name + " * " ) + ( te_select_where.var_name + "=0;" )
        .invoke blk_declaration_append( te_blk, d )
      .end if
    .elif ( "many" == te_select_where.multiplicity )
      .if ( te_select_where.is_implicit )
        .// First OAL usage of inst_ref_set<Object> handle set
        .assign selection_result_variable = te_select_where.var_name
        .assign d = "${te_set.scope}${te_set.base_class} ${selection_result_variable}_space={0}; ${te_set.scope}${te_set.base_class} * ${selection_result_variable} = &${selection_result_variable}_space;"
        .invoke blk_declaration_append( te_blk, d )
        .// Push deallocation into the block so that it is available at gen time for break/continue/return.
        .assign d = ( ( te_set.module + te_set.clear ) + ( "( " + te_select_where.var_name ) ) + " );"
        .invoke blk_deallocation_append( te_blk, d )
      .end if
    .else
      .print "\nERROR:  stmt_select_from_instances_of_where: Select ${te_select_where.multiplicity} is not any or many."
      .exit 101
    .end if
    .invoke r = GetFixedSizeClassExtentInfo( te_class )
    .assign extent = r.result
    .invoke r = ExpandNonOptimizedSpecialWhereComparison( o_obj, te_select_where.special, te_select_where.selected_var_name )
    .assign where_comp = r.result
    .assign iterator = ( "iter" + te_select_where.var_name ) + te_select_where.class_name
    .// *** Built in select any special where clause.
    .select any o_id related by o_obj->O_ID[R104] where ( selected.Oid_ID == -1 )
    .select one te_where related by o_id->TE_WHERE[R2032]
    .invoke r = CreateSpecialWhereComparisonArguments( te_class, o_id )
    .assign arguments = r.result
    .include "${te_file.arc_path}/t.smt.select_where.c"
    .assign te_smt.OAL = "SELECT ${act_fiw.cardinality} ${v_var.Name} FROM INSTANCES OF ${te_class.Key_Lett} WHERE ${where_te_val.OAL}"
  .end if
.end function
.// --------------------------------------------------------
.// select instance related by statement
.// --------------------------------------------------------
.function smt_select_relateds
  .select many act_srs from instances of ACT_SR
  .for each act_sr in act_srs
    .select one act_sel related by act_sr->ACT_SEL[R664]
    .select one te_smt related by act_sel->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_select_related( te_smt, act_sel, false )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// select related by where statements
.// --------------------------------------------------------
.function smt_select_related_wheres
  .select many act_srws from instances of ACT_SRW
  .for each act_srw in act_srws
    .select one act_sel related by act_srw->ACT_SEL[R664]
    .select one te_smt related by act_sel->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_select_related( te_smt, act_sel, true )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// generate pre-created event statements
.// --------------------------------------------------------
.function smt_generate_precreated_events
  .select many e_gprs from instances of E_GPR
  .for each e_gpr in e_gprs
    .select one te_smt related by e_gpr->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_generate_precreated_event( te_smt, e_gpr )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.function smt_generate_precreated_event
  .param inst_ref te_smt
  .param inst_ref e_gpr
  .select any te_file from instances of TE_FILE
  .select any te_eq from instances of TE_EQ
  .select any te_instance from instances of TE_INSTANCE
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .select one te_val related by e_gpr->V_VAL[R714]->TE_VAL[R2040]
  .// CDS - May need to do some investigating to see how to tell if
  .// this event is self-directed or not.
  .assign self_directed = false
  .// CDS - Also may need to dig inside, get the sm_evt and then see if this
  .// event is polymorphic.
  .include "${te_file.arc_path}/t.smt.generate_precreated_event.c"
  .assign te_smt.OAL = "GENERATE ${te_val.OAL}"
.end function
.//
.//
.// --------------------------------------------------------
.// generate event statements
.// --------------------------------------------------------
.function smt_generate_events
  .select many e_gens from instances of E_GEN
  .for each e_gen in e_gens
    .select one te_smt related by e_gen->E_GSME[R705]->E_GES[R703]->E_ESS[R701]->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_generate_event( te_smt, e_gen )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.function print_v_pars
  .param inst_ref v_par
  .assign done = false
  .while ( not done )
    .if ( empty v_par )
      .assign done = true
    .else
      .print "-=-=-=-=-=-=-=-=-=-=-=-=-=- v_par is ${v_par.Name}"
      .select any sm_evtdi related by v_par->V_VAL[R800]->V_EDV[R801]->V_EPR[R834]->SM_EVTDI[R846]
      .if (not_empty sm_evtdi)
      .print "-=m=m=m=-=-=-=-=-=-=-=-=-=- sm_evtdi is ${sm_evtdi.Name}"
      .end if
      .select one v_par related by v_par->V_PAR[R816.'precedes']
    .end if
  .end while
.end function
.//
.function smt_generate_event
  .param inst_ref te_smt
  .param inst_ref e_gen
  .select one e_gsme related by e_gen->E_GSME[R705]
  .select one e_ess related by e_gsme->E_GES[R703]->E_ESS[R701]
  .select one sm_evt related by e_gsme->SM_EVT[R707]
  .select one te_class related by sm_evt->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .select one te_evt related by sm_evt->TE_EVT[R2036]
  .if ( ( not_empty te_class ) and ( not_empty te_evt ) )
    .select any te_file from instances of TE_FILE
    .select any te_eq from instances of TE_EQ
    .select any te_instance from instances of TE_INSTANCE
    .select any te_thread from instances of TE_THREAD
    .select one v_var related by e_gen->V_VAR[R712]
    .select one te_var related by v_var->TE_VAR[R2039]
    .select one var_te_class related by v_var->V_INT[R814]->O_OBJ[R818]->TE_CLASS[R2019]
    .if ( var_te_class != te_class )
      .print "ERROR:  Event ${te_class.Name}(${te_class.Key_Lett}):${te_evt.Name} sent to mismatched instance of ${var_te_class.Name}."
      .print "ERROR:  This may be due to lack of support for polys-to-subtypes."
      .exit 134
    .end if
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .assign te_class.Included = true
    .select many v_pars related by e_ess->V_PAR[R700]
    .assign parameters = ""
    .assign parameter_OAL = ""
    .if ( not_empty v_pars )
      .assign delimeter = ""
      .for each v_par in v_pars
        .select one par_te_dt related by v_par->V_VAL[R800]->S_DT[R820]->TE_DT[R2021]
        .select one par_te_val related by v_par->V_VAL[R800]->TE_VAL[R2040]
        .invoke r = t_oal_smt_event_parameters( "", v_par.Name, par_te_val.buffer, par_te_dt.Core_Typ, te_blk.indentation )
        .assign parameters = parameters + r.result
        .assign parameter_OAL = ( parameter_OAL + delimeter ) + par_te_val.OAL
        .assign delimeter = ", "
      .end for
    .end if
    .assign self_directed = false
    .if ( "self" == "$l{v_var.Name}" )
      .// CDS - This is a simplistic way to detect event-to-self.
      .assign self_directed = true
    .end if
    .assign var_name = te_var.buffer
    .include "${te_file.arc_path}/t.smt.generate.c"
    .assign te_smt.OAL = "GENERATE ${sm_evt.Drv_Lbl}:${sm_evt.Mning}(${parameter_OAL}) TO ${v_var.Name}"
  .end if
.end function
.//
.// --------------------------------------------------------
.// generate creator event statement
.// --------------------------------------------------------
.function smt_generate_creator_events
  .select many e_gecs from instances of E_GEC
  .for each e_gec in e_gecs
    .invoke smt_generate_creator_event( e_gec )
  .end for
.end function
.//
.function smt_generate_creator_event
  .param inst_ref e_gec
  .select one e_gsme related by e_gec->E_GSME[R705]
  .select one te_smt related by e_gsme->E_GES[R703]->E_ESS[R701]->ACT_SMT[R603]->TE_SMT[R2038]
  .invoke r = smt_generate_class_event( te_smt, e_gsme )
  .invoke smt_buffer_append( te_smt, r.body )
  .assign te_smt.OAL = te_smt.OAL + " CREATOR"
.end function
.//
.// --------------------------------------------------------
.// generate class event statement
.// --------------------------------------------------------
.function smt_generate_class_events
  .select many e_gars from instances of E_GAR
  .for each e_gar in e_gars
    .invoke smt_generate_event_to_class( e_gar )
  .end for
.end function
.//
.function smt_generate_event_to_class
  .param inst_ref e_gar
  .select one e_gsme related by e_gar->E_GSME[R705]
  .select one te_smt related by e_gsme->E_GES[R703]->E_ESS[R701]->ACT_SMT[R603]->TE_SMT[R2038]
  .invoke r = smt_generate_class_event( te_smt, e_gsme )
  .invoke smt_buffer_append( te_smt, r.body )
  .assign te_smt.OAL = te_smt.OAL + " CLASS"
.end function
.//
.function smt_generate_class_event
  .param inst_ref te_smt
  .param inst_ref e_gsme
  .select one e_ess related by e_gsme->E_GES[R703]->E_ESS[R701]
  .select one te_smt related by e_ess->ACT_SMT[R603]->TE_SMT[R2038]
  .select one act_act related by e_ess->ACT_SMT[R603]->ACT_BLK[R602]->ACT_ACT[R601]
  .select one act_sab related by act_act->ACT_SAB[R698]
  .select one sm_evt related by e_gsme->SM_EVT[R707]
  .select one o_obj related by act_sab->SM_ACT[R691]->SM_SM[R515]->SM_ISM[R517]->O_OBJ[R518]
  .if ( empty o_obj )
    .select one o_obj related by act_sab->SM_ACT[R691]->SM_SM[R515]->SM_ASM[R517]->O_OBJ[R519]
  .end if
  .select one tgt_o_obj related by sm_evt->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]
  .if ( empty tgt_o_obj )
    .select one tgt_o_obj related by sm_evt->SM_SM[R502]->SM_ASM[R517]->O_OBJ[R519]
  .end if
  .select one te_class related by tgt_o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .select one te_evt related by sm_evt->TE_EVT[R2036]
  .if ( ( not_empty te_class ) and ( not_empty te_evt ) )
    .select any te_eq from instances of TE_EQ
    .select any te_file from instances of TE_FILE
    .select any te_instance from instances of TE_INSTANCE
    .select any te_thread from instances of TE_THREAD
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .assign parameters = ""
    .assign parameter_OAL = ""
    .assign self_directed = false
    .assign te_class.Included = true
    .if ( "state" == act_act.Type )
      .if ( o_obj == tgt_o_obj )
        .assign self_directed = true
      .end if
    .elif ( "transition" == act_act.Type )
      .if ( o_obj == tgt_o_obj )
        .assign self_directed = true
      .end if
    .end if
    .select many v_pars related by e_ess->V_PAR[R700]
    .if ( not_empty v_pars )
      .assign delimeter = ""
      .for each v_par in v_pars
        .select one par_te_dt related by v_par->V_VAL[R800]->S_DT[R820]->TE_DT[R2021]
        .select one par_te_val related by v_par->V_VAL[R800]->TE_VAL[R2040]
        .invoke r = t_oal_smt_event_parameters( "", v_par.Name, par_te_val.buffer, par_te_dt.Core_Typ, ws )
        .assign parameters = parameters + r.result
        .assign parameter_OAL = ( parameter_OAL + delimeter ) + par_te_val.OAL
        .assign delimeter = ", "
      .end for
    .end if
    .assign var_name = "0"
    .include "${te_file.arc_path}/t.smt.generate.c"
    .assign te_smt.OAL = "GENERATE ${sm_evt.Drv_Lbl}:${sm_evt.Mning}(${parameter_OAL}) TO ${tgt_o_obj.Key_Lett}"
  .end if
.end function
.//
.// --------------------------------------------------------
.// inter-component interface signal
.// --------------------------------------------------------
.function smt_sgns
  .select many act_sgns from instances of ACT_SGN
  .for each act_sgn in act_sgns
    .invoke smt_sgn( act_sgn )
  .end for
.end function
.//
.function smt_sgn
  .param inst_ref act_sgn
  .select one te_smt related by act_sgn->ACT_SMT[R603]->TE_SMT[R2038]
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .select one te_mact related by act_sgn->SPR_PS[R663]->TE_MACT[R2051]
  .if ( empty te_mact )
    .select one te_mact related by act_sgn->SPR_RS[R660]->TE_MACT[R2053]
  .end if
  .select many v_pars related by act_sgn->V_PAR[R662]
  .invoke r = q_render_msg( te_mact, v_pars, te_blk, "", true )
  .invoke smt_buffer_append( te_smt, r.body )
  .assign te_smt.OAL = "SEND ${te_mact.PortName}::${te_mact.MessageName}(${te_mact.OALParamBuffer})"
.end function
.//
.// --------------------------------------------------------
.// inter-component interface operation
.// --------------------------------------------------------
.function smt_iops
  .select many act_iops from instances of ACT_IOP
  .for each act_iop in act_iops
    .invoke smt_iop( act_iop )
  .end for
.end function
.//
.function smt_iop
  .param inst_ref act_iop
  .select one te_smt related by act_iop->ACT_SMT[R603]->TE_SMT[R2038]
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .select one te_mact related by act_iop->SPR_RO[R657]->TE_MACT[R2052]
  .if ( empty te_mact )
    .select one te_mact related by act_iop->SPR_PO[R680]->TE_MACT[R2050]
  .end if
  .select many v_pars related by act_iop->V_PAR[R679]
  .invoke r = q_render_msg( te_mact, v_pars, te_blk, "", true )
  .invoke smt_buffer_append( te_smt, r.body )
  .assign te_smt.OAL = "${te_mact.PortName}::${te_mact.MessageName}(${te_mact.OALParamBuffer})"
.end function
.//
.// -------------------------------------------------------------------
.// Render the call and parameter list for an inter-component message
.// -------------------------------------------------------------------
.function q_render_msg .// string
  .param inst_ref te_mact
  .param inst_ref_set v_pars
  .param inst_ref te_blk
  .param string sretvar
  .param boolean is_statement
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select any te_target from instances of TE_TARGET
  .assign parameters = ""
  .assign te_mact.OALParamBuffer = ""
  .assign ws = ""
  .if ( is_statement )
    .assign ws = te_blk.indentation
  .end if
  .if ( not_empty v_pars )
    .invoke r = gen_parameter_list( v_pars, false )
    .assign te_parm = r.result
    .assign parameters = te_parm.ParamBuffer
    .assign te_mact.OALParamBuffer = te_parm.OALParamBuffer
  .end if
  .select one te_aba related by te_mact->TE_ABA[R2010]
  .// Support by reference string return values.
  .if ( "c_t *" == te_aba.ReturnDataType )
    .if ( not te_sys.InstanceLoading )
      .assign te_blk.declaration = ( ( te_blk.declaration + "c_t " ) + ( sretvar + te_aba.array_spec ) ) + ";"
      .if ( "" == parameters )
        .assign parameters = sretvar
      .else
        .assign parameters = ( ( sretvar + ", " ) + parameters )
      .end if
    .end if
  .end if
  .assign name = te_mact.GeneratedName
  .if ( "C++" == te_target.language )
    .// Now navigate out across the satisfaction to get the port index of the
    .// foreign component (instance).
    .select one te_po related by te_mact->TE_PO[R2006]
    .assign foreign_te_po = te_po
    .if ( te_po.Provision )
      .assign direction = ( 1 ) .COMMENT IFDirectionType::ServerClient
      .if ( direction == te_mact.Direction )
        .assign name = ( te_mact.PortName + "->" ) + name
      .end if
      .select any foreign_te_po related by te_po->TE_IIR[R2080]->TE_IIR[R2081.'requires or delegates']->TE_PO[R2080] where ( ( selected.PackageName == te_po.PackageName ) and ( selected.ID != te_po.ID ) )
    .else
      .assign direction = ( 0 ) .COMMENT IFDirectionType::ClientServer
      .if ( direction == te_mact.Direction )
        .assign name = ( te_mact.PortName + "->" ) + name
      .end if
      .select any foreign_te_po related by te_po->TE_IIR[R2080]->TE_IIR[R2081.'provides or is delegated']->TE_PO[R2080] where ( ( selected.PackageName == te_po.PackageName ) and ( selected.ID != te_po.ID ) )
    .end if
    .assign name = "thismodule->" + name
    .if ( not_empty foreign_te_po )
      .if ( foreign_te_po.polymorphic )
        .if ( "" != parameters )
          .assign parameters = ", " + parameters
        .end if
        .assign parameters = "$t{foreign_te_po.sibling}" + parameters
      .end if
    .end if
  .end if
  .include "${te_file.arc_path}/t.smt.iop.c"
.end function
.//
.// --------------------------------------------------------
.// class operation statement
.// --------------------------------------------------------
.function smt_operates
  .select many act_tfms from instances of ACT_TFM
  .for each act_tfm in act_tfms
    .select one te_smt related by act_tfm->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_operate( te_smt, act_tfm )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.function smt_operate
  .param inst_ref te_smt
  .param inst_ref act_tfm
  .select one o_tfr related by act_tfm->O_TFR[R673]
  .select one te_tfr related by o_tfr->TE_TFR[R2024]
  .select one te_class related by o_tfr->O_OBJ[R115]->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( ( not_empty te_tfr ) and ( not_empty te_class ) )
    .select any te_file from instances of TE_FILE
    .select any te_target from instances of TE_TARGET
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one te_var related by act_tfm->V_VAR[R667]->TE_VAR[R2039]
    .assign var_name = ""
    .assign instance_based = false
    .if ( te_tfr.Instance_Based == 1 )
      .assign instance_based = true
      .assign var_name = te_var.buffer
    .end if
    .assign parameters = ""
    .assign parameter_OAL = ""
    .select many v_pars related by act_tfm->V_PAR[R627]
    .if ( not_empty v_pars )
      .invoke r = gen_parameter_list( v_pars, false )
      .assign te_parm = r.result
      .assign parameters = te_parm.ParamBuffer
      .assign parameter_OAL = te_parm.OALParamBuffer
    .end if
    .assign operation_name = te_tfr.GeneratedName
    .assign uses_thismodule = false
    .if ( "C++" == te_target.language )
      .assign uses_thismodule = true
      .if ( not instance_based )
        .assign operation_name = ( te_class.GeneratedName + "::" ) + te_tfr.GeneratedName
      .end if
    .end if
    .include "${te_file.arc_path}/t.smt.operation.c"
    .if ( instance_based )
      .assign te_smt.OAL = ( te_var.OAL + "." ) + ( te_tfr.Name + "(" )
    .else
      .assign te_smt.OAL = ( te_class.Key_Lett + "::" ) + ( te_tfr.Name + "(" )
    .end if
    .if ( "" != parameter_OAL )
      .assign te_smt.OAL = ( te_smt.OAL + " " ) + ( parameter_OAL + " " )
    .end if
    .assign te_smt.OAL = te_smt.OAL + ")"
  .end if
.end function
.//
.// --------------------------------------------------------
.// bridge statement
.// --------------------------------------------------------
.function smt_bridges
  .select many act_brgs from instances of ACT_BRG
  .for each act_brg in act_brgs
    .select one te_smt related by act_brg->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_bridge( te_smt, act_brg )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.function smt_bridge
  .param inst_ref te_smt
  .param inst_ref act_brg
  .select one s_brg related by act_brg->S_BRG[R674]
  .select one te_brg related by s_brg->TE_BRG[R2025]
  .if ( not_empty te_brg )
    .select any te_file from instances of TE_FILE
    .select any te_target from instances of TE_TARGET
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .select one te_ee related by s_brg->S_EE[R19]->TE_EE[R2020]
    .assign te_ee.Included = true
    .assign parameters = ""
    .assign parameter_OAL = ""
    .select many v_pars related by act_brg->V_PAR[R628]
    .if ( not_empty v_pars )
      .invoke r = gen_parameter_list( v_pars, false )
      .assign te_parm = r.result
      .assign parameters = te_parm.ParamBuffer
      .assign parameter_OAL = te_parm.OALParamBuffer
    .end if
    .assign bridge_name = te_brg.GeneratedName
    .if ( "C++" == te_target.language )
      .assign bridge_name = ( te_ee.RegisteredName + "::" ) + bridge_name
      .select one te_c related by te_ee->TE_C[R2085]
      .if ( ( "TIM" != te_brg.EEkeyletters ) and ( not_empty te_c ) )
        .if ( "" == parameters )
          .assign parameters = "thismodule"
        .else
          .assign parameters = "thismodule, " + parameters
        .end if
      .end if
    .end if
    .include "${te_file.arc_path}/t.smt.bridge.c"
    .assign te_smt.OAL = "${te_brg.EEkeyletters}::${te_brg.Name}( ${parameter_OAL} )"
  .end if
.end function
.//
.// --------------------------------------------------------
.// function statement
.// --------------------------------------------------------
.function smt_functions
  .select many act_fncs from instances of ACT_FNC
  .for each act_fnc in act_fncs
    .select one te_smt related by act_fnc->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_function( te_smt, act_fnc )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.function smt_function
  .param inst_ref te_smt
  .param inst_ref act_fnc
  .//
  .select one te_sync related by act_fnc->S_SYNC[R675]->TE_SYNC[R2023]
  .if ( not_empty te_sync )
    .select any te_file from instances of TE_FILE
    .select any te_target from instances of TE_TARGET
    .select one te_blk related by te_smt->TE_BLK[R2078]
    .assign ws = te_blk.indentation
    .assign parameters = ""
    .assign parameter_OAL = ""
    .select many v_pars related by act_fnc->V_PAR[R669]
    .if ( not_empty v_pars )
      .invoke r = gen_parameter_list( v_pars, false )
      .assign te_parm = r.result
      .assign parameters = te_parm.ParamBuffer
      .assign parameter_OAL = te_parm.OALParamBuffer
    .end if
    .assign function_name = te_sync.intraface_method
    .if ( "C++" == te_target.language )
      .assign function_name = "thismodule->" + function_name
    .end if
    .include "${te_file.arc_path}/t.smt.function.c"
    .assign te_smt.OAL = "::${te_sync.Name}( ${parameter_OAL} )"
  .end if
.end function
.//
.// --------------------------------------------------------
.// return statements
.// --------------------------------------------------------
.function smt_returns
  .select many act_rets from instances of ACT_RET
  .for each act_ret in act_rets
    .select one te_smt related by act_ret->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_return( te_smt, act_ret )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// return statement
.// --------------------------------------------------------
.function smt_return
  .param inst_ref te_smt
  .param inst_ref act_ret
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_string from instances of TE_STRING
  .select any te_sys from instances of TE_SYS
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .select one v_val related by act_ret->V_VAL[R668]
  .assign intCast1 = ""
  .assign intCast2 = ""
  .assign value = "0"
  .assign value_OAL = ""
  .// Deallocate any variables allocated from this block and all higher blocks in this action.
  .assign deallocation = te_blk.deallocation
  .select one parent_te_blk related by te_blk->TE_SMT[R2015]->TE_BLK[R2078]
  .while ( not_empty parent_te_blk )
    .assign te_blk = parent_te_blk
    .assign deallocation = deallocation + parent_te_blk.deallocation
    .select one parent_te_blk related by parent_te_blk->TE_SMT[R2015]->TE_BLK[R2078]
  .end while
  .select one te_aba related by te_blk->TE_ABA[R2011]
  .if ( not_empty te_aba )
    .if ( not_empty v_val )
      .if ( ( "i_t" == te_aba.ReturnDataType ) or ( "dt_xtUMLInteger" == te_aba.ReturnDataType ) )
        .// resolve the core data type of v_val
        .select one s_dt related by v_val->S_DT[R820]
        .select any core_s_dt from instances of S_DT where ( false )
        .select one s_udt related by s_dt->S_UDT[R17]
        .if ( not_empty s_udt )
          .invoke r = GetBaseTypeForUDT( s_udt )
          .assign core_s_dt = r.result
        .end if
        .if ( not_empty core_s_dt )
          .assign s_dt = core_s_dt
        .end if
        .//
        .// if the value is of the _real_ type
        .if ( "real" == s_dt.Name )
          .// cast the value to an int, to avoid a "possible loss of precision"
          .// syntax error in the generated code
          .assign intCast1 = ( "(" + te_aba.ReturnDataType ) + ")("
          .assign intCast2 = ")"
        .end if
      .end if
      .select one te_val related by v_val->TE_VAL[R2040]
      .assign value = te_val.buffer
      .assign value_OAL = te_val.OAL
    .end if
    .//
    .include "${te_file.arc_path}/t.smt.return.c"
    .assign te_smt.OAL = "RETURN " + value_OAL
  .end if
.end function
.//
.// --------------------------------------------------------
.// control statements
.// --------------------------------------------------------
.function smt_controls
  .select many act_ctls from instances of ACT_CTL
  .for each act_ctl in act_ctls
    .select one te_smt related by act_ctl->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_control( te_smt, act_ctl )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// control statement
.// --------------------------------------------------------
.function smt_control
  .param inst_ref te_smt
  .param inst_ref act_ctl
  .select any te_file from instances of TE_FILE
  .select any te_target from instances of TE_TARGET
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .include "${te_file.arc_path}/t.smt.control.c"
  .assign te_smt.OAL = "CONTROL"
.end function
.//
.// --------------------------------------------------------
.// break statements
.// --------------------------------------------------------
.function smt_breaks
  .select many act_brks from instances of ACT_BRK
  .for each act_brk in act_brks
    .select one te_smt related by act_brk->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_break( te_smt, act_brk )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// break statement
.// --------------------------------------------------------
.function smt_break
  .param inst_ref te_smt
  .param inst_ref act_brk
  .select any te_file from instances of TE_FILE
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .// Deallocate any variables allocated from this block and higher blocks up to containing WHILE or FOR.
  .assign deallocation = te_blk.deallocation
  .select one parent_te_blk related by te_blk->TE_SMT[R2015]->TE_BLK[R2078]
  .while ( not_empty parent_te_blk )
    .select one parent_te_smt related by parent_te_blk->TE_SMT[R2015]
    .if ( not_empty parent_te_smt )
      .assign deallocation = deallocation + parent_te_blk.deallocation
      .if ( ( "TE_WHL" == parent_te_smt.subtypeKL ) or ( "TE_FOR" == parent_te_smt.subtypeKL ) )
        .break while
      .end if
    .end if
    .select one parent_te_blk related by parent_te_smt->TE_BLK[R2078]
  .end while
  .include "${te_file.arc_path}/t.smt.break.c"
  .assign te_smt.OAL = "BREAK"
.end function
.//
.// --------------------------------------------------------
.// continue statements
.// --------------------------------------------------------
.function smt_continues
  .select many act_cons from instances of ACT_CON
  .for each act_con in act_cons
    .select one te_smt related by act_con->ACT_SMT[R603]->TE_SMT[R2038]
    .invoke r = smt_continue( te_smt, act_con )
    .invoke smt_buffer_append( te_smt, r.body )
  .end for
.end function
.//
.// --------------------------------------------------------
.// continue statement
.// --------------------------------------------------------
.function smt_continue
  .param inst_ref te_smt
  .param inst_ref act_con
  .select any te_file from instances of TE_FILE
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .assign ws = te_blk.indentation
  .// Deallocate any variables allocated from this block and higher blocks up to containing WHILE or FOR.
  .assign deallocation = te_blk.deallocation
  .select one parent_te_blk related by te_blk->TE_SMT[R2015]->TE_BLK[R2078]
  .while ( not_empty parent_te_blk )
    .select one parent_te_smt related by parent_te_blk->TE_SMT[R2015]
    .if ( not_empty parent_te_smt )
      .assign deallocation = deallocation + parent_te_blk.deallocation
      .if ( ( "TE_WHL" == parent_te_smt.subtypeKL ) or ( "TE_FOR" == parent_te_smt.subtypeKL ) )
        .break while
      .end if
    .end if
    .select one parent_te_blk related by parent_te_smt->TE_BLK[R2078]
  .end while
  .include "${te_file.arc_path}/t.smt.continue.c"
  .assign te_smt.OAL = "CONTINUE"
.end function
.//
.function smt_select_related
  .param inst_ref te_smt
  .param inst_ref act_sel
  .param boolean by_where
  .select any te_file from instances of TE_FILE
  .select any te_set from instances of TE_SET
  .select any empty_te_lnk from instances of TE_LNK where ( false )
  .select any empty_act_lnk from instances of ACT_LNK where ( false )
  .select one te_blk related by te_smt->TE_BLK[R2078]
  .select one start_v_val related by act_sel->V_VAL[R613]
  .select one start_te_val related by start_v_val->TE_VAL[R2040]
  .select one start_v_var related by start_v_val->V_IRF[R801]->V_VAR[R808]
  .select one start_o_obj related by start_v_var->V_INT[R814]->O_OBJ[R818]
  .assign start_many = false
  .if ( empty start_v_var )
    .assign start_many = true
    .select one start_v_var related by start_v_val->V_ISR[R801]->V_VAR[R809]
    .select one start_o_obj related by start_v_var->V_INS[R814]->O_OBJ[R819]
  .end if
  .select one start_te_class related by start_o_obj->TE_CLASS[R2019] where ( not selected.ExcludeFromGen )
  .if ( not_empty start_te_class )
  .// QUERY and POPULATE:  FactoryTE_SELECT_RELATED
  .// Create and link the translation instance for select_related.
  .create object instance te_select_related of TE_SELECT_RELATED
  .assign te_select_related.by_where = by_where
  .assign te_select_related.is_implicit = act_sel.is_implicit
  .assign te_select_related.multiplicity = act_sel.cardinality
  .relate te_select_related to start_te_class across R2077
  .select one start_te_var related by start_v_var->TE_VAR[R2039]
  .assign te_select_related.start_var = start_te_val.buffer
  .assign te_select_related.start_var_OAL = start_te_val.OAL
  .if ( start_many )
    .assign te_select_related.start_many = true
  .end if
  .select one act_lnk related by act_sel->ACT_LNK[R637]
  .select one te_lnk related by act_lnk->TE_LNK[R2042]
  .// Here we detect and insert a link association if we have
  .// traversed directly from aone to aoth (or vice versa) across an
  .// associative association.  Insert the associative link between
  .// the starting variable and the first link in the chain.
  .invoke r = detect_and_insert_associator_TE_LNK( empty_te_lnk, te_lnk, empty_act_lnk, act_lnk, start_o_obj )
  .assign assr_te_lnk = r.result
  .if ( not_empty assr_te_lnk )
    .assign te_lnk = assr_te_lnk
  .end if
  .// We detect first here.  We detect last in primary query/populate.
  .assign te_lnk.first = true
  .// For the first link, the left (set) reference is the link start variable.
  .assign te_lnk.left = te_select_related.start_var
  .select one result_v_var related by act_sel->V_VAR[R638]
  .select one result_te_var related by result_v_var->TE_VAR[R2039]
  .assign te_select_related.result_var = result_te_var.buffer
  .assign te_select_related.result_var_OAL = result_te_var.OAL
  .select one te_class related by result_v_var->V_INT[R814]->O_OBJ[R818]->TE_CLASS[R2019]
  .if ( "many" == te_select_related.multiplicity )
    .select one te_class related by result_v_var->V_INS[R814]->O_OBJ[R819]->TE_CLASS[R2019]
  .end if
  .if ( te_select_related.start_many )
    .assign te_lnk.left = te_select_related.te_classGeneratedName + "_linkage"
  .end if
  .if ( te_select_related.by_where )
    .select one where_te_val related by act_sel->ACT_SRW[R664]->V_VAL[R611]->TE_VAL[R2040]
    .relate where_te_val to te_select_related across R2074
    .assign te_select_related.where_clause = where_te_val.buffer
    .assign te_select_related.where_clause_OAL = where_te_val.OAL
  .end if
  .relate te_select_related to te_smt across R2069
  .relate te_select_related to start_te_val across R2070
  .relate te_select_related to start_te_var across R2094
  .relate te_select_related to te_lnk across R2073
  .//
  .// RENDER
  .// Truth Table
  .//
  .// Notes:
  .// 1) Selecting "many" or "any" through a chain that has multiplicity 1
  .//    all the way through should not be allowed by the OAL parser.
  .//    However, maybe a parser will not catch it.  Therefore, we will
  .//    support the construct in the code generator.  We will treat it
  .//    like the corresponding "one" case but populate an result set.
  .// 2) Selecting "one" through a chain that has multiplicity M should
  .//    not be allowed by the OAL parser.  However, maybe a parser will
  .//    miss it.  Therefore, we will do something that makes sense.  We
  .//    treat it like the "any" case in the code generator.
  .//
  .//   A <*----R1----1> B <*----R2----1> C
  .//     <1----R9----*>   <1----R8----*>
  .//
  .// single-link chains
  .// Declaration based upon multiplicity.
  .//  #  | first | last | startmany | multiplicity | linkmult | by_where | example
  .//  1  |   T   |  T   |     F     |   "one"      |  0:one   |    F     | select one b related by a->B[R1];
  .//  2  |   T   |  T   |     F     |   "one"      |  0:one   |    T     | select one b related by a->B[R1] where ( selected.i == 7 );
  .//  3  |   T   |  T   |     F     | "one"->"any" |  1:many  |    F     | select one b related by a->B[R9];                              // Note 2
  .//  4  |   T   |  T   |     F     | "one"->"any" |  1:many  |    T     | select one b related by a->B[R9] where ( selected.i == 7 );    // Note 2
  .//  5  |   T   |  T   |     F     |   "any"      |  0:one   |    F     | select any b related by a->B[R1];                              // Note 1
  .//  6  |   T   |  T   |     F     |   "any"      |  0:one   |    T     | select any b related by a->B[R1] where ( selected.i == 7 );    // Note 1
  .//  7  |   T   |  T   |     F     |   "any"      |  1:many  |    F     | select any b related by a->B[R9];
  .//  8  |   T   |  T   |     F     |   "any"      |  1:many  |    T     | select any b related by a->B[R9] where ( selected.i == 7 );
  .//  9  |   T   |  T   |     F     |   "many"     |  0:one   |    F     | select many bs related by a->B[R1];                            // Note 1
  .// 10  |   T   |  T   |     F     |   "many"     |  0:one   |    T     | select many bs related by a->B[R1] where ( selected.i == 7 );  // Note 1
  .// 11  |   T   |  T   |     F     |   "many"     |  1:many  |    F     | select many bs related by a->B[R9];
  .// 12  |   T   |  T   |     F     |   "many"     |  1:many  |    T     | select many bs related by a->B[R9] where ( selected.i == 7 );
  .// 13  |   T   |  T   |     T     | "one"->"any" |  0:one   |    F     | select one b related by as->B[R1];                             // Note 2
  .// 14  |   T   |  T   |     T     | "one"->"any" |  0:one   |    T     | select one b related by as->B[R1] where ( selected.i == 7 );   // Note 2
  .// 15  |   T   |  T   |     T     | "one"->"any" |  1:many  |    F     | select one b related by as->B[R9];                             // Note 2
  .// 16  |   T   |  T   |     T     | "one"->"any" |  1:many  |    T     | select one b related by as->B[R9] where ( selected.i == 7 );   // Note 2
  .// 17  |   T   |  T   |     T     |   "any"      |  0:one   |    F     | select any b related by as->B[R1];
  .// 18  |   T   |  T   |     T     |   "any"      |  0:one   |    T     | select any b related by as->B[R1] where ( selected.i == 7 );
  .// 19  |   T   |  T   |     T     |   "any"      |  1:many  |    F     | select any b related by as->B[R9];
  .// 20  |   T   |  T   |     T     |   "any"      |  1:many  |    T     | select any b related by as->B[R9] where ( selected.i == 7 );
  .// 21  |   T   |  T   |     T     |   "many"     |  0:one   |    F     | select many bs related by as->B[R1];
  .// 22  |   T   |  T   |     T     |   "many"     |  0:one   |    T     | select many bs related by as->B[R1] where ( selected.i == 7 );
  .// 23  |   T   |  T   |     T     |   "many"     |  1:many  |    F     | select many bs related by as->B[R9];
  .// 24  |   T   |  T   |     T     |   "many"     |  1:many  |    T     | select many bs related by as->B[R9] where ( selected.i == 7 );
  .// multi-link chains
  .// Declaration/initialization based upon multiplicity.
  .// First iterator based upon startmany.
  .// Chaining based upon multiplicity (and "any").
  .//  #  | first | last | multiplicity | linkmult | by_where | example
  .//  1m |   T   |  F   |   "one"      |  0:one   |    F     | select one c related by a(s)->B[R1]->C[R2];
  .//  2m |   T   |  F   |   "one"      |  0:one   |    T     | select one c related by a(s)->B[R1]->C[R2] where ( selected.i == 7 );
  .//  3m |   T   |  F   | "one"->"any" |  1:many  |    F     | select one c related by a(s)->B[R9]->C[R8];                              // Note 2
  .//  4m |   T   |  F   | "one"->"any" |  1:many  |    T     | select one c related by a(s)->B[R9]->C[R8] where ( selected.i == 7 );    // Note 2
  .//  5m |   T   |  F   |   "any"      |  0:one   |    F     | select any c related by a(s)->B[R1]->C[R2];                              // Note 1, 2
  .//  6m |   T   |  F   |   "any"      |  0:one   |    T     | select any c related by a(s)->B[R1]->C[R2] where ( selected.i == 7 );    // Note 1, 2
  .//  7m |   T   |  F   |   "any"      |  1:many  |    F     | select any c related by a(s)->B[R9]->C[R8];
  .//  8m |   T   |  F   |   "any"      |  1:many  |    T     | select any c related by a(s)->B[R9]->C[R8] where ( selected.i == 7 );
  .//  9m |   T   |  F   |   "many"     |  0:one   |    F     | select many cs related by a(s)->B[R1]->C[R2];                            // Note 1
  .// 10m |   T   |  F   |   "many"     |  0:one   |    T     | select many cs related by a(s)->B[R1]->C[R2] where ( selected.i == 7 );  // Note 1
  .// 11m |   T   |  F   |   "many"     |  1:many  |    F     | select many cs related by a(s)->B[R9]->C[R8];
  .// 12m |   T   |  F   |   "many"     |  1:many  |    T     | select many cs related by a(s)->B[R9]->C[R8] where ( selected.i == 7 );
  .//
  .assign ws = te_blk.indentation
  .assign te_smt.OAL = "SELECT ${te_select_related.multiplicity} ${te_select_related.result_var_OAL} RELATED BY ${te_select_related.start_var_OAL}"
  .// declaration
  .if ( te_select_related.is_implicit )
    .if ( "many" == te_select_related.multiplicity )
      .assign d = "${te_set.scope}${te_set.base_class} ${te_select_related.result_var}_space={0}; ${te_set.scope}${te_set.base_class} * ${te_select_related.result_var} = &${te_select_related.result_var}_space;"
      .invoke blk_declaration_append( te_blk, d )
      .assign d = "${te_set.module}${te_set.clear}( ${te_select_related.result_var} ); "
      .// Push deallocation into the block so that it is available at gen time for break/continue/return.
      .invoke blk_deallocation_append( te_blk, d )
    .else
      .assign d = "${te_class.GeneratedName} * ${te_select_related.result_var}=0;"
      .invoke blk_declaration_append( te_blk, d )
    .end if
  .end if
  .assign cast = ""
  .assign subtypecheck = ""
  .select any sub_r_rel from instances of R_REL where ( false )
  .if ( "subsuper" == te_lnk.assoc_type )
    .select any sub_r_rel related by te_class->O_OBJ[R2019]->R_OIR[R201]->R_RGO[R203]->R_SUB[R205]->R_SUBSUP[R213]->R_REL[R206] where ( selected.Numb == te_lnk.rel_number )
    .if ( not_empty sub_r_rel )
      .assign lnk_te_class = te_class
      .assign cast = ( "(" + te_lnk.te_classGeneratedName ) + " *) "
      .assign subtypecheck = "${ws}if ( ( 0 != ${te_lnk.left} ) && ( ${lnk_te_class.system_class_number} == ${te_lnk.left}->R$t{te_lnk.rel_number}_object_id ) )"
    .end if
  .end if
  .// single-link chains
  .//  #  | first | last | startmany | multiplicity | linkmult | by_where | example
  .if ( ( te_lnk.first ) and ( te_lnk.last ) )
    .assign te_smt.OAL = te_smt.OAL + te_lnk.OAL
    .if ( not te_select_related.start_many )
      .if ( "one" == te_select_related.multiplicity )
        .if ( 0 == te_lnk.Mult )
          .if ( not_empty sub_r_rel )
            .include "${te_file.arc_path}/t.smt_sr.result_ref_init.c"
${subtypecheck}\
          .end if
          .if ( not te_select_related.by_where )
  .//  1  |   T   |  T   |     F     |   "one"      |  0:one   |    F     | select one b related by a->B[R1];
  .include "${te_file.arc_path}/t.smt_sr.oneany_atob1.c"
          .else
  .//  2  |   T   |  T   |     F     |   "one"      |  0:one   |    T     | select one b related by a->B[R1] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.oneany_atob1where.c"
          .end if
        .else
          .if ( not te_select_related.by_where )
  .//  3  |   T   |  T   |     F     | "one"->"any" |  1:many  |    F     | select one b related by a->B[R9];                              // Note 2
  .include "${te_file.arc_path}/t.smt_sr.oneany_atobm.c"
          .else
  .//  4  |   T   |  T   |     F     | "one"->"any" |  1:many  |    T     | select one b related by a->B[R9] where ( selected.i == 7 );    // Note 2
  .include "${te_file.arc_path}/t.smt_sr.oneany_atobmwhere.c"
          .end if
        .end if
      .elif ( "any" == te_select_related.multiplicity )
        .if ( 0 == te_lnk.Mult )
          .if ( not_empty sub_r_rel )
            .include "${te_file.arc_path}/t.smt_sr.result_ref_init.c"
${subtypecheck}\
          .end if
          .if ( not te_select_related.by_where )
  .//  5  |   T   |  T   |     F     |   "any"      |  0:one   |    F     | select any b related by a->B[R1];                              // Note 1
  .include "${te_file.arc_path}/t.smt_sr.oneany_atob1.c"
          .else
  .//  6  |   T   |  T   |     F     |   "any"      |  0:one   |    T     | select any b related by a->B[R1] where ( selected.i == 7 );    // Note 1
  .include "${te_file.arc_path}/t.smt_sr.oneany_atob1where.c"
          .end if
        .else
          .if ( not te_select_related.by_where )
  .//  7  |   T   |  T   |     F     |   "any"      |  1:many  |    F     | select any b related by a->B[R9];
  .include "${te_file.arc_path}/t.smt_sr.oneany_atobm.c"
          .else
  .//  8  |   T   |  T   |     F     |   "any"      |  1:many  |    T     | select any b related by a->B[R9] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.oneany_atobmwhere.c"
          .end if
        .end if
      .else
        .if ( 0 == te_lnk.Mult )
          .if ( not te_select_related.by_where )
  .//  9  |   T   |  T   |     F     |   "many"     |  0:one   |    F     | select many bs related by a->B[R1];                            // Note 1
  .include "${te_file.arc_path}/t.smt_sr.many_atob1.c"
          .else
  .// 10  |   T   |  T   |     F     |   "many"     |  0:one   |    T     | select many bs related by a->B[R1] where ( selected.i == 7 );  // Note 1
  .include "${te_file.arc_path}/t.smt_sr.many_atob1where.c"
          .end if
        .else
          .if ( not te_select_related.by_where )
  .// 11  |   T   |  T   |     F     |   "many"     |  1:many  |    F     | select many bs related by a->B[R9];
  .include "${te_file.arc_path}/t.smt_sr.many_atobm.c"
          .else
  .// 12  |   T   |  T   |     F     |   "many"     |  1:many  |    T     | select many bs related by a->B[R9] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.many_atobmwhere.c"
          .end if
        .end if
      .end if
    .else
      .if ( "one" == te_select_related.multiplicity )
        .if ( 0 == te_lnk.Mult )
          .if ( not te_select_related.by_where )
  .// 13  |   T   |  T   |     T     | "one"->"any" |  0:one   |    F     | select one b related by as->B[R1];                             // Note 2
  .include "${te_file.arc_path}/t.smt_sr.oneany_astob1.c"
          .else
  .// 14  |   T   |  T   |     T     | "one"->"any" |  0:one   |    T     | select one b related by as->B[R1] where ( selected.i == 7 );   // Note 2
  .include "${te_file.arc_path}/t.smt_sr.oneany_astob1where.c"
          .end if
        .else
          .if ( not te_select_related.by_where )
  .// 15  |   T   |  T   |     T     | "one"->"any" |  1:many  |    F     | select one b related by as->B[R9];                             // Note 2
  .include "${te_file.arc_path}/t.smt_sr.oneany_astobm.c"
          .else
  .// 16  |   T   |  T   |     T     | "one"->"any" |  1:many  |    T     | select one b related by as->B[R9] where ( selected.i == 7 );   // Note 2
  .include "${te_file.arc_path}/t.smt_sr.oneany_astobmwhere.c"
          .end if
        .end if
      .elif ( "any" == te_select_related.multiplicity )
        .if ( 0 == te_lnk.Mult )
          .if ( not te_select_related.by_where )
  .// 17  |   T   |  T   |     T     |   "any"      |  0:one   |    F     | select any b related by as->B[R1];
  .include "${te_file.arc_path}/t.smt_sr.oneany_astob1.c"
          .else
  .// 18  |   T   |  T   |     T     |   "any"      |  0:one   |    T     | select any b related by as->B[R1] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.oneany_astob1where.c"
          .end if
        .else
          .if ( not te_select_related.by_where )
  .// 19  |   T   |  T   |     T     |   "any"      |  1:many  |    F     | select any b related by as->B[R9];
  .include "${te_file.arc_path}/t.smt_sr.oneany_astobm.c"
          .else
  .// 20  |   T   |  T   |     T     |   "any"      |  1:many  |    T     | select any b related by as->B[R9] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.oneany_astobmwhere.c"
          .end if
        .end if
      .else
        .if ( 0 == te_lnk.Mult )
          .if ( not te_select_related.by_where )
  .// 21  |   T   |  T   |     T     |   "many"     |  0:one   |    F     | select many bs related by as->B[R1];
  .include "${te_file.arc_path}/t.smt_sr.many_astob1.c"
          .else
  .// 22  |   T   |  T   |     T     |   "many"     |  0:one   |    T     | select many bs related by as->B[R1] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.many_astob1where.c"
          .end if
        .else
          .if ( not te_select_related.by_where )
  .// 23  |   T   |  T   |     T     |   "many"     |  1:many  |    F     | select many bs related by as->B[R9];
  .include "${te_file.arc_path}/t.smt_sr.many_astobm.c"
          .else
  .// 24  |   T   |  T   |     T     |   "many"     |  1:many  |    T     | select many bs related by as->B[R9] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.many_astobmwhere.c"
          .end if .// by_where
        .end if .// last link mult
      .end if .// one, any, many
    .end if .// start many
  .else
  .//
  .// multi-link chains
    .// multi-link chains
    .// This may need to be refactored to remove some degree of control.
    .assign depth = 0
    .if ( "many" == te_select_related.multiplicity )
      .include "${te_file.arc_path}/t.smt_sr.result_set_init.c"
    .else
      .if ( te_select_related.result_var != te_select_related.start_var )
        .// Do not initialize result when it is the same as starting variable.
        .include "${te_file.arc_path}/t.smt_sr.result_ref_init.c"
      .end if
    .end if
${ws}{\
    .assign depth = depth + 1
    .if ( te_select_related.start_many )
      .assign depth = depth + 1
      .include "${te_file.arc_path}/t.smt_sr.start_many.c"
    .else
      .assign depth = depth + 1
      .include "${te_file.arc_path}/t.smt_sr.start_one.c"
    .end if
    .// drill through the chained links
    .while ( not te_lnk.last )
      .assign depth = depth + 1
      .assign te_smt.OAL = te_smt.OAL + te_lnk.OAL
      .if ( 0 == te_lnk.Mult )
        .assign cast = ""
        .assign subtypecheck = ""
        .if ( "subsuper" == te_lnk.assoc_type )
          .select one lnk_te_class related by te_lnk->TE_CLASS[R2076]
          .select any sub_r_rel related by lnk_te_class->O_OBJ[R2019]->R_OIR[R201]->R_RGO[R203]->R_SUB[R205]->R_SUBSUP[R213]->R_REL[R206] where ( selected.Numb == te_lnk.rel_number )
          .if ( not_empty sub_r_rel )
            .assign cast = ( "(" + te_lnk.te_classGeneratedName ) + " *) "
            .assign subtypecheck = "${ws}if ( ( 0 != ${te_lnk.left} ) && ( ${lnk_te_class.system_class_number} == ${te_lnk.left}->R$t{te_lnk.rel_number}_object_id ) )"
          .end if
        .end if
        .assign result_equals_start = false
        .if ( te_select_related.result_var == te_lnk.left )
          .assign result_equals_start = true
        .end if
        .include "${te_file.arc_path}/t.smt_sr.chainto1.c"
      .else
        .include "${te_file.arc_path}/t.smt_sr.chaintom.c"
      .end if
      .select one te_lnk related by te_lnk->TE_LNK[R2075.'precedes']
    .end while
    .assign te_smt.OAL = te_smt.OAL + te_lnk.OAL
    .assign cast = ""
    .assign subtypecheck = ""
    .if ( "subsuper" == te_lnk.assoc_type )
      .select any sub_r_rel related by te_class->O_OBJ[R2019]->R_OIR[R201]->R_RGO[R203]->R_SUB[R205]->R_SUBSUP[R213]->R_REL[R206] where ( selected.Numb == te_lnk.rel_number )
      .if ( not_empty sub_r_rel )
        .assign lnk_te_class = te_class
        .assign cast = ( "(" + te_lnk.te_classGeneratedName ) + " *) "
        .assign subtypecheck = "${ws}if ( ( 0 != ${te_lnk.left} ) && ( ${lnk_te_class.system_class_number} == ${te_lnk.left}->R$t{te_lnk.rel_number}_object_id ) )"
      .end if
    .end if
    .// now finish up
    .if ( "one" == te_select_related.multiplicity )
      .if ( 0 == te_lnk.Mult )
        .if ( not_empty sub_r_rel )
${subtypecheck}\
        .end if
        .if ( not te_select_related.by_where )
  .//  1m |   T   |  F   |   "one"      |  0:one   |    F     | select one c related by a(s)->B[R1]->C[R2];
  .include "${te_file.arc_path}/t.smt_sr.multi_oneany_astob1.c"
        .else
  .//  2m |   T   |  F   |   "one"      |  0:one   |    T     | select one c related by a(s)->B[R1]->C[R2] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.multi_oneany_astob1where.c"
        .end if
      .else
        .if ( not te_select_related.by_where )
  .//  3m |   T   |  F   | "one"->"any" |  1:many  |    F     | select one c related by a(s)->B[R9]->C[R8];                              // Note 2
  .include "${te_file.arc_path}/t.smt_sr.oneany_atobm.c"
        .else
  .//  4m |   T   |  F   | "one"->"any" |  1:many  |    T     | select one c related by a(s)->B[R9]->C[R8] where ( selected.i == 7 );    // Note 2
  .include "${te_file.arc_path}/t.smt_sr.multi_oneany_astobmwhere.c"
        .end if
      .end if
    .elif ( "any" == te_select_related.multiplicity )
      .if ( 0 == te_lnk.Mult )
        .if ( not_empty sub_r_rel )
${subtypecheck}\
        .end if
        .if ( not te_select_related.by_where )
  .//  5m |   T   |  F   |   "any"      |  0:one   |    F     | select any c related by a(s)->B[R1]->C[R2];                              // Note 1, 2
  .include "${te_file.arc_path}/t.smt_sr.multi_oneany_astob1.c"
        .else
  .//  6m |   T   |  F   |   "any"      |  0:one   |    T     | select any c related by a(s)->B[R1]->C[R2] where ( selected.i == 7 );    // Note 1, 2
  .include "${te_file.arc_path}/t.smt_sr.multi_oneany_astob1where.c"
        .end if
      .else
        .if ( not te_select_related.by_where )
  .//  7m |   T   |  F   |   "any"      |  1:many  |    F     | select any c related by a(s)->B[R9]->C[R8];
  .include "${te_file.arc_path}/t.smt_sr.oneany_atobm.c"
        .else
  .//  8m |   T   |  F   |   "any"      |  1:many  |    T     | select any c related by a(s)->B[R9]->C[R8] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.multi_oneany_astobmwhere.c"
        .end if
      .end if
    .else
      .if ( 0 == te_lnk.Mult )
        .if ( not_empty sub_r_rel )
${subtypecheck}\
        .end if
        .if ( not te_select_related.by_where )
  .//  9m |   T   |  F   |   "many"     |  0:one   |    F     | select many cs related by a(s)->B[R1]->C[R2];                            // Note 1
  .include "${te_file.arc_path}/t.smt_sr.multi_many_astob1.c"
        .else
  .// 10m |   T   |  F   |   "many"     |  0:one   |    T     | select many cs related by a(s)->B[R1]->C[R2] where ( selected.i == 7 );  // Note 1
  .include "${te_file.arc_path}/t.smt_sr.multi_many_astob1where.c"
        .end if
      .else
        .if ( not te_select_related.by_where )
  .// 11m |   T   |  F   |   "many"     |  1:many  |    F     | select many cs related by a(s)->B[R9]->C[R8];
  .include "${te_file.arc_path}/t.smt_sr.multi_many_astobm.c"
        .else
  .// 12m |   T   |  F   |   "many"     |  1:many  |    T     | select many cs related by a(s)->B[R9]->C[R8] where ( selected.i == 7 );
  .include "${te_file.arc_path}/t.smt_sr.multi_many_astobmwhere.c"
        .end if .// by_where
      .end if .// last link mult
    .end if .// one, any, many
    .//
    .while ( depth > 0 )
}\
      .assign depth = depth - 1
    .end while
    .invoke oal( "T_b( \\n ); // Ccode" )

  .end if
  .if ( te_select_related.by_where )
    .assign te_smt.OAL = te_smt.OAL + " WHERE ( ${te_select_related.where_clause_OAL} )"
  .end if
  .end if
.end function
.//
