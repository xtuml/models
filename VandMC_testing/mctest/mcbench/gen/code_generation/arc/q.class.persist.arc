.//============================================================================
.// Instance and link persistence is supported through routines in
.// this archetype.  Most of the work to generate persistence support
.// is centralized here and "hooked" into the application at the 
.// appropriate places.
.//============================================================================
.//
.//
.//
.//============================================================================
.// Add another call to the link calls in the given fragment.
.// This needs to be called before PersistCallPostLink because
.// of link_index.
.//============================================================================
.function PersistAddLinkCalls
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref assoc_o_obj
  .param inst_ref te_relstore
  .param string link_call
  .//
  .select one left_te_class related by left_o_obj->TE_CLASS[R2019]
  .select one right_te_class related by left_o_obj->TE_CLASS[R2019]
  .select one assoc_te_class related by left_o_obj->TE_CLASS[R2019]
  .assign all_classes_in_association_are_persistent = false
  .if ( ( left_te_class.Persistent ) and ( right_te_class.Persistent ) )
    .if ( empty assoc_o_obj )
      .assign all_classes_in_association_are_persistent = true
    .else
      .if ( assoc_te_class.Persistent )
        .assign all_classes_in_association_are_persistent = true
      .end if
    .end if
  .end if
  .if ( all_classes_in_association_are_persistent )
    .assign te_relstore.link_calls = te_relstore.link_calls + "    case ${te_relstore.link_index}:  ${link_call}; break;\n"
  .end if
  .//
.end function
.//
.//============================================================================
.// Return the attributes required in the extent variable for the
.// given class.
.//============================================================================
.function PersistExtentAttributes
  .param inst_ref o_obj
  .//
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if ( te_class.Persistent )
    .select many rel_set related by o_obj->R_OIR[R201]->R_REL[R201]
    .assign link_central = "0"
    .if ( not_empty rel_set )
      .assign link_central = te_class.persist_link
    .end if
,
  sizeof( struct ${te_class.GeneratedName}_attr ), ${link_central}\
  .end if .// te_class.Persistent
  .//
.end function
.//
.//============================================================================
.// Return the name of the variable used to mark instances as modified
.// and needing to be offloaded to NVS.
.//============================================================================
.function PersistInstanceDirtyVariable
  .param inst_ref te_class
  .param string current_state
  .assign attr_type = ""
  .assign attr_name = ""
  .assign attr_dirty = 1
  .assign attr_clean = 0
  .assign attr_result = false
  .assign attr_current_state = ""
  .if ( te_class.Persistent )
    .select any te_persist from instances of TE_PERSIST
    .assign attr_type = te_persist.dirty_type
    .assign attr_name = te_persist.dirty_name
    .assign attr_dirty = te_persist.dirty_dirty
    .assign attr_clean = te_persist.dirty_clean
    .assign attr_result = true
    .if ( current_state == "" )
      .// No current state, add a place holder for consistent typing
      .select any te_typemap from instances of TE_TYPEMAP
      .select any te_instance from instances of TE_INSTANCE
      .assign attr_current_state = "  ${te_typemap.state_number_name} ${te_instance.current_state}; /* non-active persist placeholder */"
    .else
      .assign attr_current_state = current_state
    .end if
  ${attr_type} ${attr_name}; /* modified marker */
  .end if .// te_class.Persistent
.end function
.//
.//============================================================================
.// Return the declaration or definition of the central link function.
.//============================================================================
.function PersistLinkFunction
  .param inst_ref te_relstore
  .param inst_ref o_obj
  .param boolean gen_declaration
  .//
  .assign attr_result = ""
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if ( te_class.Persistent )
    .select any te_instance from instances of TE_INSTANCE
    .select any te_typemap from instances of TE_TYPEMAP
    .if ( gen_declaration )
extern void ${te_class.persist_link}(
  ${te_typemap.instance_index_name},
  ${te_instance.handle},
  ${te_instance.handle},
  ${te_instance.handle}
);
    .else
void
${te_class.persist_link}(
  ${te_typemap.instance_index_name} i,
  ${te_instance.handle} l,
  ${te_instance.handle} r,
  ${te_instance.handle} a
)
{
  switch( i ) {
${te_relstore.link_calls}\
  }
}
    .end if .// gen_declaration
  .end if .// te_class.Persistent
  .//
.end function
.//
.//============================================================================
.// Output the code that calls the link posting persistence code
.// to post the link to the persistence flush queue.
.//============================================================================
.function PersistCallPostLink
  .param string operation
  .param inst_ref te_relstore
  .param inst_ref owner_o_obj
  .param inst_ref left_o_obj
  .param string left_var
  .param inst_ref right_o_obj
  .param string right_var
  .param inst_ref assoc_o_obj
  .param string assoc_var
  .select any te_instance from instances of TE_INSTANCE
  .select one owner_te_class related by owner_o_obj->TE_CLASS[R2019]
  .select one left_te_class related by left_o_obj->TE_CLASS[R2019]
  .select one right_te_class related by right_o_obj->TE_CLASS[R2019]
  .if ( ( ( owner_te_class.Persistent ) and ( left_te_class.Persistent ) ) and ( right_te_class.Persistent ) )
    .invoke post_link = GetPersistentPostLinkName()
  ${post_link.name}(
    .select one te_c related by owner_te_class->TE_C[R2064]
    .invoke r = GetDomainTypeIDFromString( te_c.Name )
    .assign dom_id = r.result
    ${operation}, ${dom_id}, ${owner_te_class.system_class_number}, ${te_relstore.link_index},
    (${te_instance.handle}) ${left_var}, ${left_te_class.system_class_number},
    (${te_instance.handle}) ${right_var}, ${right_te_class.system_class_number},
    .if ( not_empty assoc_o_obj )
      .select one assoc_te_class related by assoc_o_obj->TE_CLASS[R2019]
    (${te_instance.handle}) ${assoc_var}, ${assoc_te_class.system_class_number}
    .else
    0, 0
    .end if
    .if ( operation == "0" )
      .assign te_relstore.link_index = te_relstore.link_index + 1
    .end if
  );
  .end if
.end function
.//
