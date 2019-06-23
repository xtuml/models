/*---------------------------------------------------------------------
 * Persistence mechanisms to maintain instances and
 * associations across power and reset cycles.
 *-------------------------------------------------------------------*/
${persist_check_mark.type} ${persist_check_mark.name}(
${persist_check_mark.arglist_types} );
${persist_post_link.type} ${persist_post_link.name}(
${persist_post_link.arglist_types} );
void ${te_persist.remove}(
  const ${te_instance.handle},
  const ${te_typemap.domain_number_name},
  const ${te_typemap.object_number_name} );
i_t ${te_persist.commit}( void );
i_t ${te_persist.restore}( void );
void ${te_persist.factory_init}( void );
.//
