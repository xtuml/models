.//============================================================================
.// External Entity bridge body.
.//============================================================================
.//

/*
 * Bridge:  ${te_brg.Name}
.// Include the action language for this bridge activity?
.if ( not_empty te_c )
  .if ( te_c.RawComments )

       Action language follows:
  ${s_brg.Action_Semantics}
  .end if
.end if
 */
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}(${te_aba.ParameterDefinition})
{
.if ( te_dt.Name != "void" )
  .if ( ( s_brg.Suc_Pars == 1 ) and ( "" != te_aba.code ) )
  /* Replace/Insert the following instructions with your implementation code.  */
${te_aba.code}\
  .else
    .if ( "CTOR" == te_dt.Initial_Value )
  ${te_aba.ReturnDataType} result = 0;
    .else
  ${te_aba.ReturnDataType} result = ${te_dt.Initial_Value};
    .end if
    .if ( te_sys.PersistentClassCount > 0 )
      .if ( ( te_brg.EEkeyletters == "PERSIST" ) and ( te_brg.Name == "commit" ) )
  result = ${te_prefix.result}PersistenceCommit(${te_aba.ParameterInvocation});  /* architectural persist routine */
      .elif ( ( te_brg.EEkeyletters == "PERSIST" ) and ( te_brg.Name == "restore" ) )
  result = ${te_prefix.result}PersistenceRestore(${te_aba.ParameterInvocation});  /* architectural restore operation */
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "checksum" ) )
  /* Note:  Customer/User must implement this function.  Calling stub.  */
  result = ${te_prefix.result}NVS_checksum(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "defrag" ) )
  result = ${te_prefix.result}NVS_defrag(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "remove" ) )
  result = ${te_prefix.result}NVS_remove(${te_aba.ParameterInvocation});
  /*
   * To keep the NVS continually defragmented, add a call to the defrag
   * method here.  [result = ${te_prefix.result}NVS_defrag()]
   */
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "format" ) )
  result = ${te_prefix.result}NVS_format(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "initialize" ) )
  result = ${te_prefix.result}NVS_initialize(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "insert" ) )
  result = ${te_prefix.result}NVS_insert(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "next" ) )
  result = ${te_prefix.result}NVS_next((u4_t *)${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "select" ) )
  result = ${te_prefix.result}NVS_select(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "space_available" ) )
  result = ${te_prefix.result}NVS_space_available(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "space_total" ) )
  result = ${te_prefix.result}NVS_space_total(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "space_used" ) )
  result = ${te_prefix.result}NVS_space_used(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "update" ) )
  result = ${te_prefix.result}NVS_update(${te_aba.ParameterInvocation});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "version" ) )
  /* Note:  User must implement this function.  Calling stub.  */
  result = ${te_prefix.result}NVS_version(${te_aba.ParameterInvocation});
      .end if
    .end if
    .if ( 0 < te_sys.StateSaveBufferSize )
      .if ( ( "State Save" == te_ee.Name ) and ( "SS" == te_ee.Key_Lett ) and ( "access" == te_brg.Name ) )
  #ifndef ${te_prefix.define_u}STATESAVE
  result = (c_t *) ssbuf;
  #endif
      .end if
    .end if
  /* Insert your implementation code here... */
  return result;
    .//
  .end if
.else
  .if ( ( te_brg.EEkeyletters == "ARCH" ) and ( te_brg.Name == "shutdown" ) )
    .if ( ( "C" != te_target.language ) and ( not_empty te_c ) )
  ${te_instance.module}${te_eq.run_flag} = false; /* default automatic action for this bridge */
    .end if
    .if ( "C" == te_target.language )
  ${te_eq.run_flag} = false; /* default automatic action for this bridge */
    .end if
  return;
  .end if
  /* Replace/Insert your implementation code here... */
${te_aba.code}\
  .if ( 0 < te_sys.StateSaveBufferSize )
    .if ( ( "State Save" == te_ee.Name ) and ( "SS" == te_ee.Key_Lett ) and ( "trigger" == te_brg.Name ) )
  #ifndef ${te_prefix.define_u}STATESAVE
  sstrigger();
  #endif
    .end if
  .end if
.end if
}

.//
