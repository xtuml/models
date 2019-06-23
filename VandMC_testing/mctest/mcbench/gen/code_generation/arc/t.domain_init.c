.if ( not_empty te_class )
  .if ( te_sys.InstanceLoading )
Escher_idf ${te_c.Name}_instance_dumpers[ ${te_dci.max} ] = {${instance_dumpers}
};
  .end if
/* xtUML class info (collections, sizes, etc.) */
${te_set.scope}${te_cia.class_info_type} * const ${te_dci.array_name}[ ${te_dci.max} ] = {${class_info_init}
};

  .if ( not_empty te_sm )
/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const ${class_dispatch_array.element_type} ${class_dispatch_array.result}[ ${te_dci.max_models} ] = {
  ${te_c.Name}_class_dispatchers
};
  .end if

.end if
void ${te_c.Name}_execute_initialization()
{
${init_segment}\
}
.//
