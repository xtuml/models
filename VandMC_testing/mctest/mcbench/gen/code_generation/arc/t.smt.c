.//------------------------------------------------
.function t_oal_smt_for
  .param inst_ref te_smt
  .param inst_ref te_for
  .param string ws
  .select any te_set from instances of TE_SET
  .assign attr_declaration = ""
  .assign attr_ending = ws + "}}}"
  .if ( te_for.isImplicit )
    .assign attr_declaration = ( te_for.class_name + " * " ) + ( te_for.loop_variable + "=0;" )
  .end if
  .assign iterator = "iter" + te_for.loop_variable
  .assign current_instance = "ii" + te_for.loop_variable
${ws}{ ${te_set.scope}${te_set.iterator_class_name} ${iterator};
${ws}${te_for.class_name} * ${current_instance};
${ws}${te_set.iterator_reset}( &${iterator}, ${te_for.set_variable} );
${ws}while ( (${current_instance} = (${te_for.class_name} *)${te_set.module}${te_set.iterator_next}( &${iterator} )) != 0 ) {
${ws}  ${te_for.loop_variable} = ${current_instance}; {
.end function
.//------------------------------------------------
.function t_oal_smt_if
  .param string condition
  .param string ws
${ws}if ( ${condition} ) {
  .assign attr_ending = ws + "}"
.end function
.//------------------------------------------------
.function t_oal_smt_while
  .param string condition
  .param string ws
${ws}while ( ${condition} ) {
  .assign attr_ending = ws + "}"
.end function
.//------------------------------------------------
.function t_oal_smt_else
  .param string ws
${ws}else {
  .assign attr_ending = ws + "}"
.end function
.//------------------------------------------------
.function t_oal_smt_elif
  .param string condition
  .param string ws
${ws}else if ( ${condition} ) {
  .assign attr_ending = ws + "}"
.end function
.//------------------------------------------------
.function t_oal_smt_assign
  .param inst_ref te_smt
  .param inst_ref te_assign
  .param string ws
  .param integer element_count
  .param boolean is_parameter
  .select any te_set from instances of TE_SET
  .if ( te_assign.isImplicit )
    .if ( ( 9 == te_assign.Core_Typ ) or ( 21 == te_assign.Core_Typ ) )
      .// First OAL use of inst_ref_set<Object> handle set. Initialize with class extent.
      .assign te_smt.declaration = "${te_set.scope}${te_set.base_class} ${te_assign.lval}_space={0}; ${te_set.scope}${te_set.base_class} * ${te_assign.lval} = &${te_assign.lval}_space;"
      .assign te_smt.deallocation = "${te_set.module}${te_set.clear}( ${te_assign.lval} );"
    .else
      .assign te_smt.declaration = ( te_assign.left_declaration + te_assign.array_spec ) + ";"
    .end if
  .end if
  .if ( "" != te_assign.array_spec )
    .select any te_string from instances of TE_STRING
    .select any te_instance from instances of TE_INSTANCE
    .if ( 4 == te_assign.Core_Typ )
      .// string
${ws}${te_instance.module}${te_string.strcpy}( ${te_assign.lval}, ${te_assign.rval} );
    .else
      .if ( 0 == te_assign.rval_dimensions )
${ws}${te_assign.lval} = ${te_assign.rval};
      .else
        .// We use memmove, because C does not copy arrays very nicely.
${ws}${te_instance.module}${te_string.memmove}( ${te_assign.lval}, ${te_assign.rval}, \
        .if ( is_parameter )
sizeof( ${te_assign.rval}[0] ) * ${element_count} );
        .else
sizeof( ${te_assign.rval} ) );
        .end if
      .end if
    .end if
  .elif ( ( 9 == te_assign.Core_Typ ) or ( 21 == te_assign.Core_Typ ) )
${ws}${te_set.scope}${te_set.copy}( ${te_assign.lval}, ${te_assign.rval} );
  .else
${ws}${te_assign.lval} = ${te_assign.rval};
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_create_instance
  .param inst_ref o_obj
  .param boolean is_implicit
  .param string class_name
  .param string var_name
  .param string ws
  .select one te_c related by o_obj->TE_CLASS[R2019]->TE_C[R2064]
  .select any te_instance from instances of TE_INSTANCE
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .invoke r = GetDomainTypeIDFromString( te_c.Name )
  .assign dom_id = r.result
  .invoke init_uniques = AutoInitializeUniqueIDs( te_class, var_name )
  .assign attr_declaration = ""
  .if ( is_implicit )
    .assign attr_declaration = "${class_name} * ${var_name};"
  .end if
${ws}${var_name} = (${class_name} *) ${te_instance.module}\
  .if ( te_class.Persistent )
${te_instance.create_persistent}\
  .else
${te_instance.create}\
  .end if
( ${dom_id}, ${te_class.system_class_number} );
  .if ( "" != init_uniques.body )
${ws}${init_uniques.body}\
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_delete_instance
  .param inst_ref o_obj
  .param string var_name
  .param integer del_count
  .param string ws
  .select any te_instance from instances of TE_INSTANCE
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_c related by o_obj->TE_CLASS[R2019]->TE_C[R2064]
  .if ( not_empty te_c )
    .invoke r = GetDomainTypeIDFromString( te_c.Name )
    .assign dom_id = r.result
    .if ( te_c.DetectEmpty )
${ws}if ( 0 == ${var_name} ) {
${ws}  XTUML_EMPTY_HANDLE_TRACE( "${o_obj.Key_Lett}", "${te_instance.delete}" );
${ws}}
    .end if
${ws}${te_instance.module}\
    .if ( te_class.Persistent )
${te_instance.delete_persistent}\
    .else
${te_instance.delete}\
    .end if
( (${te_instance.handle}) ${var_name}, ${dom_id}, ${te_class.system_class_number} );
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_create_event
  .param inst_ref sm_evt
  .param boolean is_implicit
  .param string class_name
  .param string event_meaning
  .param string oal_var_name
  .param string var_name
  .param string recipient_var_name
  .param string parameters
  .param string ws
  .select any te_eq from instances of TE_EQ
  .select any te_thread from instances of TE_THREAD
  .select any te_instance from instances of TE_INSTANCE
  .select one te_evt related by sm_evt->TE_EVT[R2036]
  .assign attr_declaration = ""
  .if ( not_empty te_evt )
    .//
    .// Create the event using the generic event class if there is no
    .// supplemental data.  We can then skip the casting.  Good for MISRA.
    .if ( "" != parameters )
      .if ( is_implicit )
        .assign attr_declaration = "${te_evt.GeneratedName} * ${var_name};  /* ${oal_var_name} */"
      .end if
${ws}${var_name} = (${te_evt.GeneratedName} *) ${te_instance.module}${te_eq.new}( (void *) ${recipient_var_name}, &${te_evt.GeneratedName}c );
    .// Initialize supplemental data parameters.
${ws}${parameters}\
    .else
      .if ( is_implicit )
        .assign attr_declaration = "${te_eq.base_event_type} * ${var_name};  /* ${oal_var_name} */"
      .end if
${ws}${var_name} = ${te_instance.module}${te_eq.new}( (void *) ${recipient_var_name}, &${te_evt.GeneratedName}c );
    .end if
    .if ( "SystemC" == te_thread.flavor )
${ws}${var_name}->sc_e = &(${te_instance.module}sc_${te_evt.GeneratedName});
    .end if
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_relate
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref r_rel
  .param boolean is_reflexive
  .param integer relationship_number
  .param string relationship_phrase
  .param string left_var_name
  .param string right_var_name
  .param string ws
  .invoke r = TE_REL_IsLeftFormalizer( left_o_obj, r_rel, relationship_phrase )
  .assign left_is_formalizer = r.result
  .assign o_obj = right_o_obj
  .if ( left_is_formalizer )
    .assign o_obj = left_o_obj
  .end if
  .invoke s = GetRelateToName( o_obj, r_rel, relationship_phrase )
  .assign method = s.result
  .//
  .select any te_target from instances of TE_TARGET
  .assign thismodule = ""
  .if ( "C" != te_target.language )
    .assign thismodule = ", thismodule"
  .end if
  .if ( is_reflexive )
${ws}${method}( ${left_var_name}, ${right_var_name}${thismodule} );
  .else
    .if ( left_is_formalizer )
${ws}${method}( ${right_var_name}, ${left_var_name}${thismodule} );
.// Alf R${r_rel.Numb} -> add ( ${right_o_obj.Key_Lett}=>${right_var_name}, ${left_o_obj.Key_Lett}=>${left_var_name} )
    .else
${ws}${method}( ${left_var_name}, ${right_var_name}${thismodule} );
.// Alf R${r_rel.Numb} -> add ( ${left_o_obj.Key_Lett}=>${left_var_name}, ${right_o_obj.Key_Lett}=>${right_var_name} )
    .end if
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_relate_using
  .param inst_ref one_o_obj
  .param inst_ref oth_o_obj
  .param inst_ref ass_o_obj
  .param inst_ref r_rel
  .param boolean is_reflexive
  .param integer relationship_number
  .param string relationship_phrase
  .param string one_var_name
  .param string oth_var_name
  .param string ass_var_name
  .param string one_rel_phrase
  .param string oth_rel_phrase
  .param string ws
  .select any te_target from instances of TE_TARGET
  .assign thismodule = ""
  .if ( "C" != te_target.language )
    .assign thismodule = ", thismodule"
  .end if
  .invoke method = GetAssociativeLinkMethodName( one_o_obj, oth_o_obj, ass_o_obj, r_rel, relationship_phrase )
${ws}${method.result}( \
  .if ( is_reflexive )
${one_var_name}, ${oth_var_name}, \
  .else
    .if ( method.left_obj_is_aone )
${one_var_name}, ${oth_var_name}, \
    .else
${oth_var_name}, ${one_var_name}, \
    .end if
  .end if
${ass_var_name}${thismodule} );
.end function
.//------------------------------------------------
.function t_oal_smt_unrelate
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref r_rel
  .param boolean is_reflexive
  .param integer relationship_number
  .param string relationship_phrase
  .param string left_var_name
  .param string right_var_name
  .param string ws
  .select any te_target from instances of TE_TARGET
  .assign thismodule = ""
  .if ( "C" != te_target.language )
    .assign thismodule = ", thismodule"
  .end if
  .invoke r = TE_REL_IsLeftFormalizer( left_o_obj, r_rel, relationship_phrase )
  .assign left_is_formalizer = r.result
  .assign o_obj = right_o_obj
  .if ( left_is_formalizer )
    .assign o_obj = left_o_obj
  .end if
  .invoke r = GetUnrelateFromName( o_obj, r_rel, relationship_phrase )
  .assign method = r.result
  .if ( is_reflexive )
${ws}${method}( ${left_var_name}, ${right_var_name}${thismodule} );
  .else
    .if ( left_is_formalizer )
${ws}${method}( ${right_var_name}, ${left_var_name}${thismodule} );
    .else
${ws}${method}( ${left_var_name}, ${right_var_name}${thismodule} );
    .end if
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_unrelate_using
  .param inst_ref one_o_obj
  .param inst_ref oth_o_obj
  .param inst_ref ass_o_obj
  .param inst_ref r_rel
  .param boolean is_reflexive
  .param integer relationship_number
  .param string relationship_phrase
  .param string one_var_name
  .param string oth_var_name
  .param string ass_var_name
  .param string one_rel_phrase
  .param string oth_rel_phrase
  .param string ws
  .select any te_target from instances of TE_TARGET
  .assign thismodule = ""
  .if ( "C" != te_target.language )
    .assign thismodule = ", thismodule"
  .end if
  .invoke method = GetAssociativeUnlinkMethodName( one_o_obj, oth_o_obj, ass_o_obj, r_rel, relationship_phrase )
${ws}${method.result}( \
  .if ( is_reflexive )
${one_var_name}, ${oth_var_name}, \
  .else
    .if ( method.left_obj_is_aone )
${one_var_name}, ${oth_var_name}, \
    .else
${oth_var_name}, ${one_var_name}, \
    .end if
  .end if
${ass_var_name}${thismodule} );
.end function
.//------------------------------------------------
.function t_oal_smt_select
  .param inst_ref o_obj
  .param inst_ref te_smt
  .param inst_ref te_select
  .param string ws
  .assign attr_declaration = ""
  .assign attr_deallocation = ""
  .select any te_set from instances of TE_SET
  .invoke extent_info = GetFixedSizeClassExtentInfo( o_obj )
  .assign type_cast = ""
  .if ( te_select.multiplicity == "any" )
    .assign type_cast = "(${te_select.class_name} *)"
    .if ( te_select.is_implicit )
      .// Declare (first OAL usage of) inst_ref<Object> handle variable.
      .assign attr_declaration = "${te_select.class_name} * ${te_select.var_name}=0;"
    .end if
    .// Grab any from object extent
${ws}${te_select.var_name} = ${type_cast} ${te_set.get_any}( &${extent_info.extent_var_name} );
  .elif ( te_select.multiplicity == "many" )
    .if ( te_select.is_implicit )
      .// First OAL use of inst_ref_set<Object> handle set. Initialize with class extent.
      .assign attr_declaration = "${te_set.scope}${te_set.base_class} ${te_select.var_name}_space={0}; ${te_set.scope}${te_set.base_class} * ${te_select.var_name} = &${te_select.var_name}_space; /* ${te_select.var_name} (${o_obj.Key_Lett}) */"
      .assign attr_deallocation = "${te_set.module}${te_set.clear}( ${te_select.var_name} );"
    .end if
    .// The copy method will clear out and free up system resources
    .// used within the set.
${ws}${te_set.module}${te_set.copy}( ${te_select.var_name}, &${extent_info.extent_var_name} );
  .else
    .print "\nERROR:  select ${multiplicity} is not any or many."
    .exit 101
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_select_where
  .param inst_ref o_obj
  .param inst_ref te_smt
  .param inst_ref te_select_where
  .param string ws
  .assign attr_declaration = ""
  .assign attr_deallocation = ""
  .select any te_set from instances of TE_SET
  .if ( "any" == te_select_where.multiplicity )
    .if ( te_select_where.is_implicit )
      .// Declare (first OAL usage of) inst_ref<Object> handle variable.
      .assign attr_declaration = "${te_select_where.class_name} * ${te_select_where.var_name}=0;"
    .end if
    .if ( not te_select_where.special )
      .// Clear inst_ref<Object> handle variable prior to select statement.
${ws}${te_select_where.var_name} = 0;
    .end if
    .//
  .elif ( "many" == te_select_where.multiplicity )
    .if ( te_select_where.is_implicit )
      .// First OAL usage of inst_ref_set<Object> handle set
      .assign attr_declaration = "${te_set.scope}${te_set.base_class} ${te_select_where.var_name}_space={0}; ${te_set.scope}${te_set.base_class} * ${te_select_where.var_name} = &${te_select_where.var_name}_space; /* ${te_select_where.oal_var_name} (${o_obj.Key_Lett}) */"
      .assign attr_deallocation = "${te_set.module}${te_set.clear}( ${te_select_where.var_name} );  /* Clear set: ${te_select_where.oal_var_name} */"
      .// CDS Check here if we are in a while loop or not.
      .// if ( in_loop )
${ws}${te_set.module}${te_set.clear}( ${te_select_where.var_name} );
      .// end if
    .else
      .// Existing inst_ref_set<Object> handle set. Clear current contents of collection.
${ws}${te_set.module}${te_set.clear}( ${te_select_where.var_name} );
    .end if
  .else
    .print "\nERROR:  stmt_select_from_instances_of_where: Select ${multiplicity} is not any or many."
    .exit 101
  .end if
  .//
  .if ( ( not te_select_where.special ) or ( "many" == te_select_where.multiplicity ) )
    .if ( "FALSE" == te_select_where.where_clause )
      .// We optimize select any i from instances of KL where ( false )
      .// simply to leave the result initialized to empty.
    .else
    .invoke extent_info = GetFixedSizeClassExtentInfo( o_obj )
    .invoke where_comp = ExpandNonOptimizedSpecialWhereComparison( o_obj, te_select_where.special, te_select_where.selected_var_name )
    .assign iterator = ( "iter" + te_select_where.var_name ) + te_select_where.class_name
    .//
    .// Iterate over the instances in the (extent) collection.
${ws}{ ${te_select_where.class_name} * ${te_select_where.selected_var_name};
${ws}  ${te_set.scope}${te_set.iterator_class_name} ${iterator};
${ws}  ${te_set.iterator_reset}( &${iterator}, &${extent_info.extent_var_name} );
${ws}  while ( (${te_select_where.selected_var_name} = (${te_select_where.class_name} *) ${te_set.module}${te_set.iterator_next}( &${iterator} )) != 0 ) {
    .if ( not te_select_where.special )
${ws}    if ( ${te_select_where.where_clause} ) \
    .else
${ws}    if ( ${where_comp.body} ) \
    .end if
{
    .if ( te_select_where.multiplicity == "any" )
      .// Expression satisfied. Assign to OAL select inst_ref<Object> handle and terminate search.
${ws}      ${te_select_where.var_name} = ${te_select_where.selected_var_name};
${ws}      break;
    .elif ( te_select_where.multiplicity == "many" )
      .// Expression satisfied. Append instance to OAL select inst_ref<Object> handle set.
${ws}      ${te_set.module}${te_set.insert_element}( ${te_select_where.var_name}, ${te_select_where.selected_var_name} );
    .end if
${ws}    }
${ws}  }
${ws}}
    .end if
  .else
    .// *** Built in select any special where clause.
    .select any o_id related by o_obj->O_ID[R104] where ( selected.Oid_ID == oid_id )
    .select one te_where related by o_id->TE_WHERE[R2032]
    .invoke r = CreateSpecialWhereComparisonArguments( o_obj, o_id )
    .assign arguments = r.result
${ws}${te_select_where.var_name} = ${te_where.select_any_where}( ${arguments} );
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_generate_precreated_event
  .param boolean self_directed
  .param string var_name
  .param string ws
  .select any te_eq from instances of TE_EQ
  .select any te_instance from instances of TE_INSTANCE
  .// Consider event prioritization.
${ws}\
  .if ( self_directed )
${te_instance.module}${te_eq.self}( \
  .else
${te_instance.module}${te_eq.non_self}( \
  .end if
(${te_eq.base_event_type} *) ${var_name} );
.end function
.//------------------------------------------------
.function t_oal_smt_generate
  .param inst_ref sm_evt
  .param boolean self_directed
  .param string var_name
  .param string event_label
  .param string event_meaning
  .param string parameters
  .param string ws
  .assign attr_declaration = ""
  .select any te_thread from instances of TE_THREAD
  .select any te_instance from instances of TE_INSTANCE
  .select any te_eq from instances of TE_EQ
  .select one te_evt related by sm_evt->TE_EVT[R2036]
  .if ( not_empty te_evt )
${ws}{\
  .assign void_cast = ""
  .if ( "0" == var_name )
    .assign void_cast = "(void *) "
  .end if
  .if ( "" != parameters )
    .// Create the event
 ${te_evt.GeneratedName} * ${te_eq.event_message_variable} = (${te_evt.GeneratedName} *) ${te_instance.module}${te_eq.new}( ${void_cast}${var_name}, &${te_evt.GeneratedName}c );
    .// Initialize supplemental data parameters
${parameters}
  .else
    .// Create the event using the base type, since no supplemental data.
    .// No special casting will then be required.  Good for MISRA.
 ${te_eq.base_event_type} * ${te_eq.event_message_variable} = ${te_instance.module}${te_eq.new}( ${void_cast}${var_name}, &${te_evt.GeneratedName}c );
  .end if
  .if ( "SystemC" == te_thread.flavor )
  ${te_eq.event_message_variable}->sc_e = &(${te_instance.module}sc_${te_evt.GeneratedName});
  .end if
  .//
  .// Send the event.
  .if ( self_directed )
    .// Self directed event
${ws}  ${te_instance.module}${te_eq.self}( \
    .if ( "" != parameters )
      .// Cast the event, because we used the class type.  (MISRA)
(${te_eq.base_event_type} *) \
    .end if
${te_eq.event_message_variable} );
  .else
    .// normal event
    .//
    .// We must handle event prioritization.
    .// Write our own handle into the event for prioritization (and
    .// instrumentation) purposes.  We will do this differently depending
    .// upon the type of action we are.  MDAs, bridges (outbound) and
    .// operations use GetSelf.  All others use the variable self.
    .invoke event_prioritization_needed = GetEventPrioritizationNeeded()
    .// CDS:  Deal with event prioritization and semantics type.
    .if ( false )
      .select any te_instance from instances of TE_INSTANCE
      .if ( semantics_type.result == 3 )
${ws}  ${te_instance.self} = (${te_instance.handle}) ${te_instance.global_self}();
  if ( ${te_instance.self} == 0 ) { ${te_instance.self} = (${te_instance.handle}) &${te_instance.self}; }
      .end if
      .if ( ( ( semantics_type.result == 5 ) or ( semantics_type.result == 4 ) ) or ( semantics_type.result == 2 ) )
${ws}  SetEventSendingInstance( ${te_eq.event_message_variable}, ${te_instance.global_self}() );
      .elif ( ( ( semantics_type.result == 3 ) or ( semantics_type.result == 1 ) ) or ( semantics_type.result == 0 ) )
${ws}  SetEventSendingInstance( ${te_eq.event_message_variable}, ${te_instance.self} );
      .else
        .assign msg = "WARNING:  Unrecognized action semantic type ${semantics_type.result}."
        .print "\n${msg}"
      .end if .// which type of semantic
    .end if .// prioritization needed
${ws}  ${te_instance.module}${te_eq.non_self}( \
    .if ( "" != parameters )
      .// Cast the event, because we used the class type.  (MISRA)
(${te_eq.base_event_type} *) \
    .end if
${te_eq.event_message_variable} );
  .end if
${ws}}
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_generate_creator_event
  .param inst_ref sm_evt
  .param boolean self_directed
  .param string var_name
  .param string event_label
  .param string event_meaning
  .param string parameters
  .param string ws
  .invoke s = t_oal_smt_generate( sm_evt, self_directed, var_name, event_label, event_meaning, parameters, ws )
${s.body}
.end function
.//------------------------------------------------
.function t_oal_smt_generate_to_class
  .param inst_ref sm_evt
  .param boolean self_directed
  .param string var_name
  .param string event_label
  .param string event_meaning
  .param string parameters
  .param string ws
  .invoke s = t_oal_smt_generate( sm_evt, self_directed, var_name, event_label, event_meaning, parameters, ws )
${s.body}
.end function
.//------------------------------------------------
.function t_oal_smt_sgn
  .param inst_ref sm_evt
  .param boolean self_directed
  .param string var_name
  .param string event_label
  .param string event_meaning
  .param string parameters
  .param string ws
  .invoke s = t_oal_smt_generate( sm_evt, self_directed, var_name, event_label, event_meaning, parameters, ws )
${s.body}
.end function
.//------------------------------------------------
.function t_oal_smt_iop
  .param string name
  .param string parameters
  .param string ws
  .param boolean is_statement
${ws}${name}(\
  .if ( "" != parameters )
 ${parameters} \
  .end if
)\
  .if ( is_statement )
;
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_operation
  .param boolean instance_based
  .param string operation_name
  .param string parameters
  .param string var_name
  .param boolean uses_thismodule
  .param string ws
${ws}\
  .if ( uses_thismodule and instance_based )
${var_name}->\
  .end if
${operation_name}(\
  .if ( instance_based )
 ${var_name}\
    .if ( ( "" != parameters ) or ( uses_thismodule ) )
,\
    .end if
 \
  .end if
  .if ( uses_thismodule )
 thismodule\
    .if ( "" != parameters )
, \
    .end if
  .end if
  .if ( "" != parameters )
 ${parameters} \
  .end if
);
.end function
.//------------------------------------------------
.function t_oal_smt_bridge
  .param inst_ref te_brg
  .param string bridge_name
  .param string parameters
  .param string ws
  .if ( ("T" == te_brg.EEkeyletters) and ( "include" == te_brg.Name) )
#include ${parameters}
  .else
${ws}${bridge_name}(\
    .if ( "" != parameters )
 ${parameters} \
    .end if
);
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_function
  .param string method
  .param string parameters
  .param string ws
${ws}${method}(\
  .if ( "" != parameters )
 ${parameters} \
  .end if
);
.end function
.//------------------------------------------------
.function t_oal_smt_return
  .param string value
  .param string returnvaltype
  .param string cast1
  .param string cast2
  .param string deallocation
  .param string ws
  .assign rv = value
  .if ( ( ( "" != deallocation ) or ( "c_t" == returnvaltype ) ) and ( "" != returnvaltype ) )
    .// If there is a return value and if there is deallocation,
    .// then declare a variable to hold the return value.
    .// Assign the return value before the deallocation takes
    .// place.  This is especially important when returning
    .// expressions involving sets (like cardinality).
    .// For strings, add a scope to supress compiler warnings
    .// about returning the address of a local variable.  Once
    .// returned, the string buffer will be copied into the
    .// calling scope immediately.
    .// This is dubious practice (due to unallocated stack space),
    .// but is safer than explicit allocation alternatives.
    .assign rv = "xtumlOALrv"
    .assign suffix = ""
    .if ( "c_t" == returnvaltype )
      .assign suffix = "* "
    .end if
${ws}{${returnvaltype}${suffix} ${rv} = ${value};
  .end if
  .if ( "" != deallocation )
    .// Perform the deallocation (of set containers).
${ws}${deallocation}
  .end if
${ws}return ${cast1}${rv}${cast2};\
  .if ( ( ( "" != deallocation ) or ( "c_t" == returnvaltype ) ) and ( "" != returnvaltype ) )
}
  .else

  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_control
  .param string ws
  .// the only command defined is "STOP";
  .select any te_thread from instances of TE_THREAD
  .if ( "SystemC" != te_thread.flavor )
${ws}ARCH_shutdown();
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_break
  .param string deallocation
  .param string ws
  .if ( "" != deallocation )
${ws}${deallocation}
  .end if
${ws}break;
.end function
.//------------------------------------------------
.function t_oal_smt_continue
  .param string deallocation
  .param string ws
  .if ( "" != deallocation )
${ws}${deallocation}
  .end if
${ws}continue;
.end function
.//
