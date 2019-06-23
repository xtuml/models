.//====================================================================
.//
.// $RCSfile: q.utils.arc,v $
.//
.//
.//====================================================================
.//
.function gen_parameter_list .// te_parm
  .param inst_ref_set v_pars
  .param boolean prefix_param_delimiter
  .//
  .assign code = ""
  .assign OAL = ""
  .select any te_parm from instances of TE_PARM
  .if ( not_empty v_pars )
    .select any te_string from instances of TE_STRING
    .assign item_count = 0
    .assign lowest_order = 999
    .select many te_pars related by v_pars->TE_PAR[R2063]
    .for each te_par in te_pars
      .select one te_parm related by te_par->TE_PARM[R2091]
      .assign te_par.Order = te_parm.Order
      .if ( te_par.Order < lowest_order )
        .assign lowest_order = te_par.Order
      .end if
      .assign item_count = item_count + 1
    .end for
    .assign item_number = lowest_order
    .assign param_delimiter = ""
    .if ( prefix_param_delimiter )
      .assign param_delimiter = ","
    .end if
    .while ( item_number < ( item_count + lowest_order ) )
      .select any te_par related by v_pars->TE_PAR[R2063] where ( selected.Order == item_number )
      .select one v_par related by te_par->V_PAR[R2063]
      .select one v_val related by v_par->V_VAL[R800]
      .select one te_val related by v_val->TE_VAL[R2040]
      .assign OAL = ( OAL + param_delimiter ) + te_val.OAL
      .if ( "" == te_val.buffer )
        .invoke gen_value( v_val )
      .end if
      .assign code = code + param_delimiter
      .//
      .if ( 0 == te_par.By_Ref )
        .assign code = code + te_val.buffer
      .else
        .assign code = ( ( code + "&(" ) + ( te_val.buffer + ")" ) )
      .end if
      .assign param_delimiter = ", "
      .assign item_number = item_number + 1
    .end while
  .end if
  .assign te_parm.ParamBuffer = code
  .assign te_parm.OALParamBuffer = OAL
  .assign attr_result = te_parm
.end function
.//
.//====================================================================
.//
.function is_reflexive .// boolean
  .param inst_ref r_rel
  .//
  .assign result = false
  .select one r_simp related by r_rel->R_SIMP[R206]
  .if ( not_empty r_simp )
    .select many r_parts related by r_simp->R_PART[R207]
    .if ( (cardinality r_parts) > 1 )
      .select any first_r_part related by r_simp->R_PART[R207]
      .select any second_r_part related by r_simp->R_PART[R207] where (selected.OIR_ID != first_r_part.OIR_ID)
      .if ( first_r_part.Obj_ID == second_r_part.Obj_ID )
        .assign result = true
      .end if
    .else
      .select any r_part related by r_simp->R_PART[R207]
      .select one r_form related by r_simp->R_FORM[R208]
      .if ( not_empty r_form )
        .if ( r_part.Obj_ID == r_form.Obj_ID )
          .assign result = true
        .end if
      .end if
    .end if
  .else
    .select one r_assoc related by r_rel->R_ASSOC[R206]
    .if ( not_empty r_assoc )
      .select one r_aone related by r_assoc->R_AONE[R209]
      .select one r_aoth related by r_assoc->R_AOTH[R210]
      .if ( r_aone.Obj_ID == r_aoth.Obj_ID )
        .assign result = true
      .end if
    .end if
  .end if
  .assign attr_result = result
.end function
.//------------------------------------------------
.// Note the use of p_ here.  It is hard-coded and depends upon
.// matching the prefix used in initialization population query.
.function t_oal_smt_event_parameters .// string
  .param string evt_msg_var
  .param string parameter
  .param string value
  .param integer value_type
  .param string ws
  .assign result = ""
  .select any te_eq from instances of TE_EQ
  .if ( "" == evt_msg_var )
    .assign evt_msg_var = te_eq.event_message_variable
  .end if
  .if ( 4 == value_type )
    .// string
    .select any te_string from instances of TE_STRING
    .select any te_instance from instances of TE_INSTANCE
    .assign result = "${ws}  ${te_instance.module}${te_string.strcpy}( ${evt_msg_var}->p_${parameter}, ${value} );"
  .else
    .assign result = "${ws}  ${evt_msg_var}->p_${parameter} = ${value};"
  .end if
  .assign attr_result = result
.end function
