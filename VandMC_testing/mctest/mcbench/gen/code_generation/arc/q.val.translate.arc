.//====================================================================
.//
.// $RCSfile: q.val.translate.arc,v $
.//
.//
.//====================================================================
.//
.// These functions set up the implementation of the values (V_VAL on
.// model of OAL).
.//
.//====================================================================
.//
.//
.function val_translate
  .// Translate "leaf" values first.
  .invoke val_literal_boolean_values()
  .invoke val_literal_integer_values()
  .invoke val_literal_real_values()
  .invoke val_literal_string_values()
  .invoke val_literal_enumerations()
  .invoke val_constant_values()
  .invoke val_transient_values()
  .invoke val_instance_reference_values()
  .invoke val_inst_ref_set_values()
  .invoke val_selection_test_values()
  .invoke val_event_values()
  .invoke val_parameter_values()
  .// The following may be recursed.
  .invoke val_attribute_values()
  .invoke val_member_values()
  .invoke val_array_element_references()
  .invoke val_array_length_values()
  .invoke val_unary_op_values()
  .invoke val_binary_op_values()
  .// V_PARs depend upon values being populated.
  .invoke val_actual_parameters()
  .// These use V_PARs.
  .invoke val_message_values()
  .invoke val_bridge_values()
  .invoke val_transform_values()
  .invoke val_synch_service_values()
.end function
.//
.//--------------------------------------------------------------------
.// Percolate the values from the "leaves" up into the combined
.// expressions by recursively drilling down.
.//--------------------------------------------------------------------
.function gen_value
  .param inst_ref v_val
  .select one v_mvl related by v_val->V_MVL[R801]
  .if ( not_empty v_mvl )
    .invoke val_member_value( v_mvl )
  .else
  .select one v_avl related by v_val->V_AVL[R801]
  .if ( not_empty v_avl )
    .invoke val_attribute_value( v_avl )
  .else
  .select one v_aer related by v_val->V_AER[R801]
  .if ( not_empty v_aer )
    .invoke val_array_element_reference( v_aer )
  .else
  .select one v_alv related by v_val->V_ALV[R801]
  .if ( not_empty v_alv )
    .invoke val_array_length_value( v_alv )
  .else
  .select one v_uny related by v_val->V_UNY[R801]
  .if ( not_empty v_uny )
    .invoke val_unary_op_value( v_uny )
  .else
  .select one v_bin related by v_val->V_BIN[R801]
  .if ( not_empty v_bin )
    .invoke val_binary_op_value( v_bin )
  .else
  .select one v_trv related by v_val->V_TRV[R801]
  .if ( not_empty v_trv )
    .invoke val_transform_value( v_trv )
  .else
  .select one v_msv related by v_val->V_MSV[R801]
  .if ( not_empty v_msv )
    .invoke val_message_value( v_msv )
  .else
  .select one v_brv related by v_val->V_BRV[R801]
  .if ( not_empty v_brv )
    .invoke val_bridge_value( v_brv )
  .else
  .select one v_fnv related by v_val->V_FNV[R801]
  .if ( not_empty v_fnv )
    .invoke val_synch_service_value( v_fnv )
  .else
    .print "ERROR:  Recursive V_VAL resolution issue."
  .end if
  .end if
  .end if
  .end if
  .end if
  .end if
  .end if
  .end if
  .end if
  .end if
.end function
.//
.function val_literal_boolean_values
  .select many v_lbos from instances of V_LBO
  .for each v_lbo in v_lbos
    .select one te_val related by v_lbo->V_VAL[R801]->TE_VAL[R2040]
    .assign te_val.OAL = v_lbo.Value
    .assign te_val.buffer = v_lbo.Value
  .end for
.end function
.//
.function val_literal_string_values
  .select any te_string from instances of TE_STRING
  .select many v_lsts from instances of V_LST
  .invoke r = T_quote()
  .assign quote = r.result
  .for each v_lst in v_lsts
    .select one te_val related by v_lst->V_VAL[R801]->TE_VAL[R2040]
    .assign te_val.buffer = v_lst.Value
    .invoke oal( "te_val->buffer = Escher_strcpy( te_val->buffer, T_t( v_lst->Value ) ); // Ccode Comment out previous assignment." )
    .// Here we detect the results of run-time template processing.  Literal
    .// strings which are processed by the template engine will be transformed
    .// and expanded.  Do not add quotes to these.
    .if ( te_val.buffer == v_lst.Value )
      .assign te_val.buffer = quote + v_lst.Value + quote
    .end if
    .assign te_val.OAL = v_lst.Value
    .assign te_val.dimensions = 1
    .assign te_val.array_spec = ( "[" + te_string.max_string_length ) + "]"
    .//TODO assign dimension
  .end for
.end function
.//
.function val_literal_integer_values
  .select many v_lins from instances of V_LIN
  .for each v_lin in v_lins
    .select one te_val related by v_lin->V_VAL[R801]->TE_VAL[R2040]
    .assign te_val.OAL = v_lin.Value
    .assign te_val.buffer = v_lin.Value
  .end for
.end function
.//
.function val_literal_real_values
  .select many v_lrls from instances of V_LRL
  .for each v_lrl in v_lrls
    .select one te_val related by v_lrl->V_VAL[R801]->TE_VAL[R2040]
    .assign te_val.OAL = v_lrl.Value
    .assign te_val.buffer = v_lrl.Value
  .end for
.end function
.//
.function val_literal_enumerations
  .select many v_lens from instances of V_LEN
  .for each v_len in v_lens
    .select one te_val related by v_len->V_VAL[R801]->TE_VAL[R2040]
    .select one te_enum related by v_len->S_ENUM[R824]->TE_ENUM[R2027]
    .assign te_val.OAL = te_enum.Name
    .assign te_val.buffer = te_enum.GeneratedName
  .end for
.end function
.//
.function val_constant_values
  .select many v_scvs from instances of V_SCV
  .invoke r = T_quote()
  .assign q = r.result
  .for each v_scv in v_scvs
    .select one te_val related by v_scv->V_VAL[R801]->TE_VAL[R2040]
    .select one cnst_syc related by v_scv->CNST_SYC[R850]
    .select one cnst_lsc related by cnst_syc->CNST_LFSC[R1502]->CNST_LSC[R1503]
    .select one s_dt related by cnst_syc->S_DT[R1500]
    .select one te_dt related by s_dt->TE_DT[R2021]
    .assign te_val.OAL = cnst_syc.Name
    .assign te_val.buffer = cnst_lsc.Value
    .select one edt related by s_dt->S_EDT[R17]
    .if ( not_empty edt )
      .select many s_enums related by edt->S_ENUM[R27]
      .for each s_enum in s_enums
        .assign enumString = s_dt.Name + "::" + s_enum.Name
        .if ( enumString == cnst_lsc.Value )
          .select one te_enum related by s_enum->TE_ENUM[R2027]
          .assign te_val.buffer = te_enum.GeneratedName
          .break for
        .end if
      .end for
    .elif ( 4 == te_dt.Core_Typ )
      .select any te_string from instances of TE_STRING
      .assign te_val.buffer = q + cnst_lsc.Value + q
      .assign te_val.dimensions = 1
      .assign te_val.array_spec = ( "[" + te_string.max_string_length ) + "]"
      .//TODO assign dimension
    .end if
  .end for
.end function
.//
.function val_transient_values
  .select many v_tvls from instances of V_TVL
  .for each v_tvl in v_tvls
    .select one v_var related by v_tvl->V_VAR[R805]
    .select one te_var related by v_var->TE_VAR[R2039]
    .select one te_val related by v_tvl->V_VAL[R801]->TE_VAL[R2040]
    .assign te_val.OAL = te_var.OAL
    .assign te_val.buffer = te_var.buffer
    .assign te_val.dimensions = te_var.dimensions
    .assign te_val.array_spec = te_var.array_spec
    .select one te_dim related by te_var->TE_DIM[R2057]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
  .end for
.end function
.//
.function val_actual_parameters
  .select many v_pars from instances of V_PAR
  .for each v_par in v_pars
    .select one te_par related by v_par->TE_PAR[R2063]
    .select one v_val related by v_par->V_VAL[R800]
    .select one te_val related by v_val->TE_VAL[R2040]
    .select one te_dt related by v_val->S_DT[R820]->TE_DT[R2021]
    .assign te_val.OAL = ( te_par.Name + ":" ) + te_val.OAL
    .if ( 10 == te_dt.Core_Typ )
      .// Cast event types to the base event type for passing (to timers).
      .assign te_val.buffer = ( "(" + te_dt.ExtName ) + ( ")" + te_val.buffer )
    .end if
  .end for
.end function
.//
.function val_attribute_values
  .select many v_avls from instances of V_AVL
  .for each v_avl in v_avls
    .invoke val_attribute_value( v_avl )
  .end for
.end function
.//
.function val_attribute_value
  .param inst_ref v_avl
  .select one v_val related by v_avl->V_VAL[R801]
  .select one te_val related by v_val->TE_VAL[R2040]
  .if ( "" == te_val.buffer )
    .select one root_v_val related by v_avl->V_VAL[R807]
    .select one root_te_val related by root_v_val->TE_VAL[R2040]
    .if ( "" == root_te_val.buffer )
      .invoke gen_value( root_v_val )
    .end if
    .select one te_var related by v_avl->V_VAL[R807]->V_IRF[R801]->V_VAR[R808]->TE_VAR[R2039]
    .select one o_attr related by v_avl->O_ATTR[R806]
    .select one te_attr related by o_attr->TE_ATTR[R2033]
    .if ( not_empty te_attr )
    .assign root = ""
    .if ( empty te_var )
      .assign te_val.OAL = ( root_te_val.OAL + "." ) + te_attr.Name
      .assign root = root_te_val.buffer
    .else
      .assign te_val.OAL = ( te_var.OAL + "." ) + te_attr.Name
      .assign root = te_var.buffer
    .end if
    .select one te_class related by te_attr->TE_CLASS[R2061]
    .select one te_c related by te_class->TE_C[R2064]
    .if ( te_c.DetectEmpty )
      .invoke r = T_quote()
      .assign quote = r.result
      .assign root = "((" + te_class.GeneratedName + " *)xtUML_detect_empty_handle( " + root + ", " + quote + te_class.Key_Lett + quote + ", " + quote + te_val.OAL + quote + " ))"
    .end if
    .assign te_val.buffer = ( root + "->" ) + te_attr.GeneratedName
    .assign te_val.dimensions = te_attr.dimensions
    .assign te_val.array_spec = te_attr.array_spec
    .select one te_dim related by te_attr->TE_DIM[R2055]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
    .// Maybe attribute value is actually derived.
    .select one o_dbattr related by o_attr->O_BATTR[R106]->O_DBATTR[R107]
    .if ( not_empty o_dbattr )
      .select one act_ai related by v_val->ACT_AI[R689]
      .if ( empty act_ai )
        .// Only do this if we are not assigning inside the DAB OAL body.
        .select one te_aba related by o_dbattr->TE_DBATTR[R2026]->TE_ABA[R2010]
        .assign te_val.buffer = ( te_aba.GeneratedName + "( " ) + ( root + " )" )
        .assign te_val.dimensions = te_aba.dimensions
        .assign te_val.array_spec = te_aba.array_spec
        .select one te_dim related by te_aba->TE_DIM[R2058]
        .if ( not_empty te_dim )
          .relate te_val to te_dim across R2079
        .end if
      .end if
    .end if
    .end if
  .end if
.end function
.//
.function val_member_values
  .select many v_mvls from instances of V_MVL
  .for each v_mvl in v_mvls
    .invoke val_member_value( v_mvl )
  .end for
.end function
.//
.function val_member_value
  .param inst_ref v_mvl
  .select one te_val related by v_mvl->V_VAL[R801]->TE_VAL[R2040]
  .if ( "" == te_val.buffer )
    .select one root_v_val related by v_mvl->V_VAL[R837]
    .select one root_te_val related by root_v_val->TE_VAL[R2040]
    .if ( "" == root_te_val.buffer )
      .invoke gen_value( root_v_val )
    .end if
    .select one te_mbr related by v_mvl->S_MBR[R836]->TE_MBR[R2047]
    .assign te_val.dimensions = te_mbr.dimensions
    .assign te_val.array_spec = te_mbr.array_spec
    .select one te_dim related by te_mbr->TE_DIM[R2059]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
    .assign te_val.OAL = ( root_te_val.OAL + "." ) + te_mbr.Name
    .assign te_val.buffer = ( root_te_val.buffer + "." ) + te_mbr.GeneratedName
  .end if
.end function
.//
.function val_instance_reference_values
  .assign unique_num = 0
  .select many v_irfs from instances of V_IRF
  .for each v_irf in v_irfs
    .select one te_val related by v_irf->V_VAL[R801]->TE_VAL[R2040]
    .select one te_var related by v_irf->V_VAR[R808]->TE_VAR[R2039]
    .if ( not_empty te_var )
      .assign te_val.OAL = te_var.OAL
      .assign te_val.buffer = te_var.buffer
    .else
      .print "CDS:  Understand why we do not have V_VAR here."
      .assign te_val.buffer = "v_irf_" + "$t{unique_num}"
      .assign unique_num = unique_num + 1
    .end if
  .end for
.end function
.//
.function val_selection_test_values
  .select many v_slrs from instances of V_SLR
  .for each v_slr in v_slrs
    .select one te_val related by v_slr->V_VAL[R801]->TE_VAL[R2040]
    .assign te_val.buffer = "selected"
    .assign te_val.OAL = "SELECTED"
  .end for
.end function
.//
.function val_inst_ref_set_values
  .select many v_isrs from instances of V_ISR
  .for each v_isr in v_isrs
    .select one te_var related by v_isr->V_VAR[R809]->TE_VAR[R2039]
    .select one te_val related by v_isr->V_VAL[R801]->TE_VAL[R2040]
    .assign te_val.OAL = te_var.OAL
    .assign te_val.buffer = te_var.buffer
  .end for
.end function
.//
.function val_event_values
  .select many v_edvs from instances of V_EDV
  .for each v_edv in v_edvs
    .select one te_val related by v_edv->V_VAL[R801]->TE_VAL[R2040]
    .// If there are more than one transition into the state, there
    .// may be more than one event parameter reference.  Select
    .// any of them; they have the same names.
    .select any te_parm related by v_edv->V_EPR[R834]->SM_EVTDI[R846]->TE_PARM[R2031]
    .if ( empty te_parm )
      .select any te_parm related by v_edv->V_EPR[R834]->C_PP[R847]->TE_PARM[R2048]
    .else
      .// Mark the event as used.
      .select one te_evt related by te_parm->SM_EVTDI[R2031]->SM_EVT[R532]->TE_EVT[R2036]
      .if ( not_empty te_evt )
        .assign te_evt.UsedCount = te_evt.UsedCount + 1
        .assign te_evt.Used = true
      .end if
    .end if
    .assign te_val.OAL = "PARAM." + te_parm.Name
    .assign te_val.buffer = "rcvd_evt->" + te_parm.GeneratedName
    .assign te_val.dimensions = te_parm.dimensions
    .assign te_val.array_spec = te_parm.array_spec
    .select one te_dim related by te_parm->TE_DIM[R2056]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
  .end for
.end function
.//
.function val_parameter_values
  .select many v_pvls from instances of V_PVL
  .for each v_pvl in v_pvls
    .select one te_val related by v_pvl->V_VAL[R801]->TE_VAL[R2040]
    .select one te_parm related by v_pvl->O_TPARM[R833]->TE_PARM[R2029]
    .if ( empty te_parm )
    .select one te_parm related by v_pvl->C_PP[R843]->TE_PARM[R2048]
    .if ( empty te_parm )
    .select one te_parm related by v_pvl->S_SPARM[R832]->TE_PARM[R2030]
    .if ( empty te_parm )
    .select one te_parm related by v_pvl->S_BPARM[R831]->TE_PARM[R2028]
    .if ( empty te_parm )
      .print "CDS:  Understand why we do not have V_PVL related parameter here."
    .end if
    .end if
    .end if
    .end if
    .assign te_val.OAL = "PARAM." + te_parm.Name
    .assign te_val.buffer = te_parm.GeneratedName
    .assign te_val.dimensions = te_parm.dimensions
    .assign te_val.array_spec = te_parm.array_spec
    .select one te_dim related by te_parm->TE_DIM[R2056]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
    .if ( 1 == te_parm.By_Ref )
      .assign te_val.buffer = ( "(*" + te_parm.GeneratedName ) + ")"
    .end if
  .end for
.end function
.//
.function val_unary_op_values
  .select many v_unys from instances of V_UNY
  .for each v_uny in v_unys
    .invoke val_unary_op_value( v_uny )
  .end for
.end function
.//
.function val_unary_op_value
  .param inst_ref v_uny
  .select one te_val related by v_uny->V_VAL[R801]->TE_VAL[R2040]
  .if ( "" == te_val.buffer )
    .select one root_v_val related by v_uny->V_VAL[R804]
    .select one root_te_val related by root_v_val->TE_VAL[R2040]
    .if ( "" == root_te_val.buffer )
      .invoke gen_value( root_v_val )
    .end if
    .// Remove blanks and make lower case.
    .assign op = "$r{v_uny.Operator}"
    .assign op = "$l{op}"
    .select any te_set from instances of TE_SET
    .select one v_irf related by root_v_val->V_IRF[R801]
    .select one v_isr related by root_v_val->V_ISR[R801]
    .if ( not_empty v_irf )
      .if ( op == "not_empty" )
        .assign te_val.buffer = ( "( 0 != " + root_te_val.buffer ) + " )"
      .elif ( op == "empty" )
        .assign te_val.buffer = ( "( 0 == " + root_te_val.buffer ) + " )"
      .elif ( op == "cardinality" )
        .assign te_val.buffer = ( "( 0 != " + root_te_val.buffer ) + " )"
      .else
        .print "ERROR:  Unary set operator ${v_uny.Operator} is not supported."
      .end if
    .elif ( not_empty v_isr )
      .if ( op == "not_empty" )
        .assign te_val.buffer = ( ( "( ! " + te_set.emptiness ) + ( "( " + root_te_val.buffer ) ) + " ) )"
      .elif ( op == "empty" )
        .assign te_val.buffer = ( ( te_set.emptiness + "( " ) + ( root_te_val.buffer + " )" ) )
      .elif ( op == "cardinality" )
        .assign te_val.buffer = ( ( te_set.module + te_set.element_count ) + ( "( " + root_te_val.buffer ) ) + " )"
      .else
        .print "ERROR:  Unary set operator ${v_uny.Operator} is not supported."
      .end if
    .else
      .if ( op == "not" )
        .assign te_val.buffer = "!" + root_te_val.buffer
      .else
        .assign te_val.buffer = op + root_te_val.buffer
      .end if
    .end if
    .assign te_val.OAL = ( op + " " ) + root_te_val.OAL
    .// future support for vector arithmetic goes here
    .assign te_val.dimensions = root_te_val.dimensions
    .assign te_val.array_spec = root_te_val.array_spec
    .select one te_dim related by root_te_val->TE_DIM[R2079]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
  .end if
.end function
.//
.function val_binary_op_values
  .select many v_bins from instances of V_BIN
  .for each v_bin in v_bins
    .invoke val_binary_op_value( v_bin )
  .end for
.end function
.//
.function val_binary_op_value
  .param inst_ref v_bin
  .select one te_val related by v_bin->V_VAL[R801]->TE_VAL[R2040]
  .if ( "" == te_val.buffer )
    .select one v_val related by v_bin->V_VAL[R801]
    .select one l_v_val related by v_bin->V_VAL[R802]
    .select one l_te_val related by l_v_val->TE_VAL[R2040]
    .if ( "" == l_te_val.buffer )
      .invoke gen_value( l_v_val )
    .end if
    .select one r_v_val related by v_bin->V_VAL[R803]
    .select one r_te_val related by r_v_val->TE_VAL[R2040]
    .if ( "" == r_te_val.buffer )
      .invoke gen_value( r_v_val )
    .end if
    .select one l_te_dt related by l_v_val->S_DT[R820]->TE_DT[R2021]
    .select one r_te_dt related by r_v_val->S_DT[R820]->TE_DT[R2021]
    .if ( ( 4 == l_te_dt.Core_Typ ) or ( 4 == r_te_dt.Core_Typ ) )
      .// string
      .select any te_string from instances of TE_STRING
      .select any te_instance from instances of TE_INSTANCE
      .if ( "+" == "$r{v_bin.Operator}" )
        .assign te_val.buffer = ( ( ( te_instance.module + te_string.stradd ) + ( "( " + l_te_val.buffer ) ) + ( ", " + r_te_val.buffer ) ) + " )"
      .else
        .assign te_val.buffer = te_instance.module + te_string.strcmp + "( " + l_te_val.buffer + ", " + r_te_val.buffer + " ) " + v_bin.Operator + " 0"
      .end if
    .elif ( ( ( 21 == l_te_dt.Core_Typ ) or ( 20 == l_te_dt.Core_Typ ) ) and ( ( 21 == r_te_dt.Core_Typ ) or ( 20 == r_te_dt.Core_Typ ) ) and ( ( "+" == "$r{v_bin.Operator}" ) or ( "-" == "$r{v_bin.Operator}" ) or ( "|" == "$r{v_bin.Operator}" ) or ( "&" == "$r{v_bin.Operator}" ) or ( "^" == "$r{v_bin.Operator}" ) ) )
      .select any te_prefix from instances of TE_PREFIX
      .select any te_set from instances of TE_SET
      .select one te_blk related by v_val->ACT_BLK[R826]->TE_BLK[R2016]
      .if ( ( "+" == "$r{v_bin.Operator}" ) or ( "|" == "$r{v_bin.Operator}" ) )
        .assign te_val.buffer = te_set.scope + te_set.setunion + "( "
      .elif ( "&" == "$r{v_bin.Operator}" )
        .assign te_val.buffer = te_set.scope + te_set.setintersection + "( "
      .elif ( "-" == "$r{v_bin.Operator}" )
        .assign te_val.buffer = te_set.scope + te_set.setdifference + "( "
      .elif ( "^" == "$r{v_bin.Operator}" )
        .assign te_val.buffer = te_set.scope + te_set.setsymmetricdifference + "( "
      .end if
      .assign return_set = "binop_line$t{v_val.LineNumber}_col$t{v_val.StartPosition}to$t{v_val.EndPosition}"
      .assign te_val.buffer = te_val.buffer + return_set + ", "
      .assign te_val.buffer = te_val.buffer + l_te_val.buffer + ", "
      .assign te_val.buffer = te_val.buffer + r_te_val.buffer + ", "
      .if ( ( 20 == l_te_dt.Core_Typ ) and ( 20 == r_te_dt.Core_Typ ) )
        .assign te_val.buffer = te_val.buffer + te_prefix.define_u + "SET_LHS_IS_INSTANCE | " + te_prefix.define_u + "SET_RHS_IS_INSTANCE )"
      .elif ( ( 20 == l_te_dt.Core_Typ ) and ( 20 != r_te_dt.Core_Typ ) )
        .assign te_val.buffer = te_val.buffer + te_prefix.define_u + "SET_LHS_IS_INSTANCE )"
      .elif ( ( 20 != l_te_dt.Core_Typ ) and ( 20 == r_te_dt.Core_Typ ) )
        .assign te_val.buffer = te_val.buffer + te_prefix.define_u + "SET_RHS_IS_INSTANCE )"
      .else
        .assign te_val.buffer = te_val.buffer + "0 )"
      .end if
      .// add the return set to the declaration deallocation blocks
      .assign d = te_set.scope + te_set.base_class + " " + return_set + "_space={0}; " + te_set.scope + te_set.base_class + " * " + return_set + " = &" + return_set + "_space;"
      .invoke blk_declaration_append( te_blk, d )
      .assign d = te_set.module + te_set.clear + "( " + return_set + " );"
      .invoke blk_deallocation_append( te_blk, d )
    .else
      .select any te_target from instances of TE_TARGET
      .if ( "and" == "$r{v_bin.Operator}" )
        .assign te_val.buffer = l_te_val.buffer + " && " + r_te_val.buffer
      .elif ( "or" == "$r{v_bin.Operator}" )
        .assign te_val.buffer = l_te_val.buffer + " || " + r_te_val.buffer
      .elif ( ( ( ( "==" == "$r{v_bin.Operator}" ) or ( "!=" == "$r{v_bin.Operator}" ) ) and ( "C" == te_target.language ) ) and ( l_te_val.dimensions != 0 ) )
        .assign element_count = 0
        .select one r_te_dim related by r_te_val->TE_DIM[R2079]
        .if ( not_empty r_te_dim )
          .assign element_count = r_te_dim.elementCount
        .end if
        .assign te_val.buffer = "memcmp( " + l_te_val.buffer + ", " + r_te_val.buffer + ", sizeof(" + l_te_val.buffer + "[0]) * " + "$t{element_count}" + ") " + v_bin.Operator + " 0"
      .elif ( ( ( "==" == "$r{v_bin.Operator}" ) or ( "!=" == "$r{v_bin.Operator}") ) and ( ( 9 == l_te_dt.Core_Typ ) or ( 21 == l_te_dt.Core_Typ ) ) and ( ( 9 == r_te_dt.Core_Typ ) or ( 21 == r_te_dt.Core_Typ ) ) )
        .select any te_set from instances of TE_SET
        .assign te_val.buffer = te_set.scope + te_set.equality + "( " + l_te_val.buffer + ", " + r_te_val.buffer + " )"
        .if ( "!=" == "$r{v_bin.Operator}" )
          .assign te_val.buffer = "!" + te_val.buffer
        .end if
      .else
        .assign te_val.buffer = l_te_val.buffer + " " + v_bin.Operator + " " + r_te_val.buffer
      .end if
    .end if
    .// future support for vector arithmetic goes here
    .assign te_val.dimensions = r_te_val.dimensions
    .assign te_val.array_spec = r_te_val.array_spec
    .select one te_dim related by r_te_val->TE_DIM[R2079]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
    .assign te_val.OAL = l_te_val.OAL + " " + v_bin.Operator + " " + r_te_val.OAL
    .// If expression is not the top level of a condition, parenthesize it.
    .select one act_if related by v_val->ACT_IF[R625]
    .if ( empty act_if )
      .select one act_el related by v_val->ACT_EL[R659]
      .if ( empty act_el )
        .select one act_whl related by v_val->ACT_WHL[R626]
        .if ( empty act_whl )
          .select one act_fiw related by v_val->ACT_FIW[R610]
          .if ( empty act_fiw )
            .select one act_srw related by v_val->ACT_SRW[R611]
            .if ( empty act_srw )
              .assign te_val.OAL = "( " + te_val.OAL + " )"
              .assign te_val.buffer = "( " + te_val.buffer + " )"
            .end if
          .end if
        .end if
      .end if
    .end if
  .end if
.end function
.//
.function val_message_values
  .select many v_msvs from instances of V_MSV
  .for each v_msv in v_msvs
    .invoke val_message_value( v_msv )
  .end for
.end function
.//
.function val_message_value
  .param inst_ref v_msv
  .select one v_val related by v_msv->V_VAL[R801]
  .select one te_val related by v_val->TE_VAL[R2040]
  .if ( "" == te_val.buffer )
  .select one te_mact related by v_msv->SPR_PEP[R841]->SPR_PO[R4503]->TE_MACT[R2050]
  .if ( empty te_mact )
    .select one te_mact related by v_msv->SPR_REP[R845]->SPR_RO[R4502]->TE_MACT[R2052]
  .end if
  .select many v_pars related by v_msv->V_PAR[R842]
  .select one te_aba related by te_mact->TE_ABA[R2010]
  .select one te_blk related by v_val->ACT_BLK[R826]->TE_BLK[R2016]
  .assign sretvar = ( ( "vmsv" + "$t{v_val.LineNumber}" ) + ( te_aba.GeneratedName + "$t{v_val.StartPosition}" ) )
  .invoke r = q_render_msg( te_mact, v_pars, te_blk, sretvar, false )
  .assign te_val.buffer = r.body
  .assign te_val.OAL = ( ( te_mact.PortName + "::" ) + ( te_mact.MessageName + "(" ) ) + ( te_mact.OALParamBuffer + ")" )
  .assign te_val.dimensions = te_aba.dimensions
  .assign te_val.array_spec = te_aba.array_spec
  .select one te_dim related by te_aba->TE_DIM[R2058]
  .if ( not_empty te_dim )
    .relate te_val to te_dim across R2079
  .end if
  .end if
.end function
.//
.function val_bridge_values
  .select many v_brvs from instances of V_BRV
  .for each v_brv in v_brvs
    .invoke val_bridge_value( v_brv )
  .end for
.end function
.//
.function val_bridge_value
  .param inst_ref v_brv
  .select one te_brg related by v_brv->S_BRG[R828]->TE_BRG[R2025]
  .if ( not_empty te_brg )
    .select any te_sys from instances of TE_SYS
    .select any te_target from instances of TE_TARGET
    .select one v_val related by v_brv->V_VAL[R801]
    .select one te_val related by v_val->TE_VAL[R2040]
    .if ( "" == te_val.buffer )
    .select many v_pars related by v_brv->V_PAR[R810]
    .select one te_aba related by te_brg->TE_ABA[R2010]
    .select one te_ee related by v_brv->S_BRG[R828]->S_EE[R19]->TE_EE[R2020]
    .assign te_ee.Included = true
    .invoke r = gen_parameter_list( v_pars, false )
    .assign te_parm = r.result
    .assign parameters = te_parm.ParamBuffer
    .assign params_OAL = te_parm.OALParamBuffer
    .assign te_val.OAL = ( ( te_brg.EEkeyletters + "::" ) + ( te_brg.Name + "(" ) ) + ( params_OAL + ")" )
    .if ( "c_t *" == te_aba.ReturnDataType )
      .if ( not te_sys.InstanceLoading )
        .select one te_blk related by v_val->ACT_BLK[R826]->TE_BLK[R2016]
        .assign sretvar = ( ( "vbrv" + "$t{v_val.LineNumber}" ) + ( te_aba.GeneratedName + "$t{v_val.StartPosition}" ) )
        .assign te_blk.declaration = ( ( te_blk.declaration + "c_t " ) + ( sretvar + te_aba.array_spec ) ) + ";"
        .if ( "" == parameters )
          .assign parameters = sretvar
        .else
          .assign parameters = ( ( sretvar + ", " ) + parameters )
        .end if
      .end if
    .end if
    .if ( "C++" == te_target.language )
      .if ( "TIM" == te_brg.EEkeyletters )
        .assign te_val.buffer = ( "thismodule->tim->" + te_brg.GeneratedName ) + "("
      .else
        .select one te_c related by te_ee->TE_C[R2085]
        .if ( not_empty te_c )
          .if ( "" == parameters )
            .assign parameters = "thismodule"
          .else
            .assign parameters = "thismodule, " + parameters
          .end if
        .end if
      .end if
    .else
      .assign te_val.buffer = ( te_aba.scope + te_brg.GeneratedName ) + "("
    .end if
    .if ( "" != parameters )
      .assign te_val.buffer = ( te_val.buffer + " " ) + ( parameters + " " )
    .end if
    .assign te_val.buffer = te_val.buffer + ")"
    .assign te_val.dimensions = te_aba.dimensions
    .assign te_val.array_spec = te_aba.array_spec
    .select one te_dim related by te_aba->TE_DIM[R2058]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
    .end if
  .end if
.end function
.//
.function val_transform_values
  .select many v_trvs from instances of V_TRV
  .for each v_trv in v_trvs
    .invoke val_transform_value( v_trv )
  .end for
.end function
.//
.function val_transform_value
  .param inst_ref v_trv
  .select one te_tfr related by v_trv->O_TFR[R829]->TE_TFR[R2024]
  .if ( not_empty te_tfr )
    .select any te_sys from instances of TE_SYS
    .select any te_target from instances of TE_TARGET
    .select one v_val related by v_trv->V_VAL[R801]
    .select one te_val related by v_val->TE_VAL[R2040]
    .if ( "" == te_val.buffer )
      .select many v_pars related by v_trv->V_PAR[R811]
      .select one te_aba related by te_tfr->TE_ABA[R2010]
      .assign te_val.buffer = te_tfr.GeneratedName + "("
      .if ( te_tfr.Instance_Based == 1 )
        .select one te_var related by v_trv->V_VAR[R830]->TE_VAR[R2039]
        .if ( not_empty te_var )
          .if ( "C++" == te_target.language )
            .assign te_val.buffer = ( te_var.buffer + "->" ) + te_val.buffer
          .end if
          .assign te_val.buffer = te_val.buffer + te_var.buffer
          .assign te_val.OAL = te_var.OAL + "."
        .else
          .// no variable, must be selection (selected reference)
          .if ( "C++" == te_target.language )
            .assign te_val.buffer = "selected->" + te_val.buffer
          .end if
          .assign te_val.buffer = te_val.buffer + "selected"
          .assign te_val.OAL = "SELECTED."
        .end if
      .else
        .if ( "C++" == te_target.language )
          .select one te_class related by v_trv->O_TFR[R829]->O_OBJ[R115]->TE_CLASS[R2019]
          .assign te_val.buffer = ( te_class.GeneratedName + "::" ) + te_val.buffer
        .end if
        .assign te_val.OAL = te_tfr.Key_Lett + "::"
      .end if
      .invoke r = gen_parameter_list( v_pars, false )
      .assign te_parm = r.result
      .assign parameters = te_parm.ParamBuffer
      .assign params_OAL = te_parm.OALParamBuffer
      .assign te_val.OAL = ( ( te_val.OAL + te_tfr.Name ) + ( "(" + params_OAL ) ) + ")"
      .if ( "c_t *" == te_aba.ReturnDataType )
        .if ( not te_sys.InstanceLoading )
          .select one te_blk related by v_val->ACT_BLK[R826]->TE_BLK[R2016]
          .assign sretvar = ( ( "vtrv" + "$t{v_val.LineNumber}" ) + ( te_aba.GeneratedName + "$t{v_val.StartPosition}" ) )
          .assign te_blk.declaration = ( ( te_blk.declaration + "c_t " ) + ( sretvar + te_aba.array_spec ) ) + ";"
          .if ( "" == parameters )
            .assign parameters = sretvar
          .else
            .assign parameters = ( ( sretvar + ", " ) + parameters )
          .end if
        .end if
      .end if
      .if ( te_tfr.Instance_Based == 1 )
        .if ( ( "C++" == te_target.language ) or ( "" != parameters ) )
          .assign te_val.buffer = te_val.buffer + ", "
        .end if
      .end if
      .if ( "C++" == te_target.language )
        .assign te_val.buffer = te_val.buffer + "thismodule"
        .if ( "" != parameters )
          .assign te_val.buffer = te_val.buffer + ", "
        .end if
      .end if
      .assign te_val.buffer = ( te_val.buffer + parameters ) + ")"
      .assign te_val.dimensions = te_aba.dimensions
      .assign te_val.array_spec = te_aba.array_spec
      .select one te_dim related by te_aba->TE_DIM[R2058]
      .if ( not_empty te_dim )
        .relate te_val to te_dim across R2079
      .end if
    .end if
  .end if
.end function
.//
.function val_synch_service_values
  .select many v_fnvs from instances of V_FNV
  .for each v_fnv in v_fnvs
    .invoke val_synch_service_value( v_fnv )
  .end for
.end function
.//
.function val_synch_service_value
  .param inst_ref v_fnv
  .select one te_sync related by v_fnv->S_SYNC[R827]->TE_SYNC[R2023]
  .if ( not_empty te_sync )
    .select any te_sys from instances of TE_SYS
    .select any te_target from instances of TE_TARGET
    .select one v_val related by v_fnv->V_VAL[R801]
    .select one te_val related by v_val->TE_VAL[R2040]
    .if ( "" == te_val.buffer )
    .select many v_pars related by v_fnv->V_PAR[R817]
    .select one te_aba related by te_sync->TE_ABA[R2010]
    .invoke r = gen_parameter_list( v_pars, false )
    .assign te_parm = r.result
    .assign parameters = te_parm.ParamBuffer
    .assign params_OAL = te_parm.OALParamBuffer
    .assign te_val.OAL = ( ( "::" + te_sync.Name ) + ( "(" + params_OAL ) ) + ")"
    .if ( "c_t *" == te_aba.ReturnDataType )
      .if ( not te_sys.InstanceLoading )
        .select one te_blk related by v_val->ACT_BLK[R826]->TE_BLK[R2016]
        .assign sretvar = ( ( "vfnv" + "$t{v_val.LineNumber}" ) + ( te_aba.GeneratedName + "$t{v_val.StartPosition}" ) )
        .assign te_blk.declaration = ( ( te_blk.declaration + "c_t " ) + ( sretvar + te_aba.array_spec ) ) + ";"
        .if ( "" == parameters )
          .assign parameters = sretvar
        .else
          .assign parameters = ( ( sretvar + ", " ) + parameters )
        .end if
      .end if
    .end if
    .assign name = te_sync.intraface_method
    .if ( "C++" == te_target.language )
      .assign name = "thismodule->" + name
    .end if
    .assign te_val.buffer = name + "("
    .if ( "" != parameters )
      .assign te_val.buffer = ( te_val.buffer + " " ) + ( parameters + " " )
    .end if
    .assign te_val.buffer = te_val.buffer + ")"
    .assign te_val.dimensions = te_aba.dimensions
    .assign te_val.array_spec = te_aba.array_spec
    .select one te_dim related by te_aba->TE_DIM[R2058]
    .if ( not_empty te_dim )
      .relate te_val to te_dim across R2079
    .end if
    .end if
  .end if
.end function
.//
.function val_array_element_references
  .select many v_aers from instances of V_AER
  .for each v_aer in v_aers
    .invoke val_array_element_reference( v_aer )
  .end for
.end function
.//
.function val_array_element_reference
  .param inst_ref v_aer
  .select one te_val related by v_aer->V_VAL[R801]->TE_VAL[R2040]
  .if ( "" == te_val.buffer )
    .select one root_v_val related by v_aer->V_VAL[R838]
    .select one root_te_val related by root_v_val->TE_VAL[R2040]
    .if ( "" == root_te_val.buffer )
      .invoke gen_value( root_v_val )
    .end if
    .select one index_v_val related by v_aer->V_VAL[R839]
    .select one index_te_val related by index_v_val->TE_VAL[R2040]
    .if ( "" == index_te_val.buffer )
      .invoke gen_value( index_v_val )
    .end if
    .assign te_val.OAL = ( root_te_val.OAL + "[" ) + ( index_te_val.buffer + "]" )
    .assign te_val.buffer = ( root_te_val.buffer + "[" ) + ( index_te_val.buffer + "]" )
    .// Peel off outer layer of dimensions.
    .// CDS:  do not know how to do this with array_spec
    .assign te_val.array_spec = root_te_val.array_spec
    .assign te_val.dimensions = root_te_val.dimensions - 1
    .select one next_te_dim related by root_te_val->TE_DIM[R2079]->TE_DIM[R2060.'precedes']
    .if ( not_empty next_te_dim )
      .relate te_val to next_te_dim across R2079
    .end if
  .end if
.end function
.//
.function val_array_length_values
  .select many v_alvs from instances of V_ALV
  .for each v_alv in v_alvs
    .invoke val_array_length_value( v_alv )
  .end for
.end function
.//
.function val_array_length_value
  .param inst_ref v_alv
  .select one te_val related by v_alv->V_VAL[R801]->TE_VAL[R2040]
  .if ( "" == te_val.buffer )
    .select one root_v_val related by v_alv->V_VAL[R840]
    .select one root_te_val related by root_v_val->TE_VAL[R2040]
    .if ( "" == root_te_val.buffer )
      .invoke gen_value( root_v_val )
    .end if
    .assign te_val.OAL = root_te_val.OAL + ".length"
    .select any te_target from instances of TE_TARGET
    .if ( "C" == te_target.language )
      .select one te_dim related by root_te_val->TE_DIM[R2079]
      .if ( not_empty te_dim )
        .assign te_val.buffer = ( ( ( "$t{te_dim.elementCount}" + " /" ) + ( "* " + te_val.OAL ) ) + ( " *" + "/" ) )
      .else
        .assign te_val.buffer = root_te_val.buffer + ".ARRAY_LENGTH_NOT_FOUND()"
        .print "ERROR:  C model compiler does not support length operator for OAL value:  ${te_val.OAL}"
        .exit 101
      .end if
    .else
      .assign te_val.buffer = root_te_val.buffer + ".length"
    .end if
  .end if
.end function
.//
