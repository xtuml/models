.if ( te_c.internal_behavior )
  .if ( "C" == te_target.language )
/*
 * Initialization services for component:  ${te_c.Name}
 */
    .if ( not_empty te_class )
extern ${te_cia.class_info_type} * const ${te_dci.array_name}[];
      .if ( not_empty te_sm )
extern const ${class_dispatch_array.element_type} ${class_dispatch_array.result}[];
      .end if
    .end if
void ${te_c.Name}_execute_initialization( void );
  .end if
.end if
