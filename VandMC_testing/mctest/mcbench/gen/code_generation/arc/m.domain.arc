.//============================================================================
.// $RCSfile: m.domain.arc,v $
.//
.// Description:
.// This archetype file contains the implementation functions for colors
.// specified in the (user supplied/modified) domain.mark file.
.//============================================================================
.//
.//
.//============================================================================
.// Disable the translation of function processing semantics.
.// The default is for all functions to be translated.
.//============================================================================
.function TagFunctionTranslationOff
  .param string function_name
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkFunctionTranslationOff( te_c.Name, function_name )
  .end for
.end function
.function MarkFunctionTranslationOff
  .param string component_name
  .param string function_name
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .if ( "*" == function_name )
      .select many te_syncs related by te_c->TE_SYNC[R2084]
      .for each te_sync in te_syncs
        .assign te_sync.XlateSemantics = FALSE
        .assign msg = "Turned off translation of ${te_sync.Name} function semantics."
      .end for
    .else
      .select any te_sync related by te_c->TE_SYNC[R2084] where ( selected.Name == function_name )
      .if ( not_empty te_sync )
        .assign te_sync.XlateSemantics = FALSE
        .assign msg = "Turned off translation of ${function_name} function semantics."
      .else
        .assign msg = "ERROR:  Function (${function_name}) not found in component ${te_c.Name}."
        .assign msg = msg + "\n  => TagFunctionTranslationOff( ${function_name} )"
      .end if
    .end if
    .print "${msg}"
  .end for
.end function
.//
.//============================================================================
.// Mark a function as being executed during the initialization sequence.
.// All functions marked with this interface will be run during bring-up.
.// Functions bearing input arguments are not allowed to be tagged as
.// initialization functions.
.//============================================================================
.function TagInitializationFunction
  .param string function_name
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkInitializationFunction( te_c.Name, function_name )
  .end for
.end function
.function MarkInitializationFunction
  .param string component_name
  .param string function_name
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select any te_sync related by te_c->TE_SYNC[R2084] where ( selected.Name == function_name )
    .if ( not_empty te_sync )
      .select any te_parm related by te_sync->TE_ABA[R2010]->TE_PARM[R2062]
      .if ( empty te_parm )
        .assign te_sync.IsInitFunction = true
        .assign msg = "Function ${te_sync.Name} marked as initialization function."
      .else
        .assign msg = "ERROR:  Initialization function (${function_name}) in component ${te_c.Name}"
        .assign msg = msg + "\ntakes arguments.  This is not allowed at initialization."
        .assign msg = msg + "\n  => TagInitializationFunction( ${function_name} )"
      .end if
    .else
      .assign msg = "ERROR:  Initialization function (${function_name}) not found in component ${te_c.Name}."
      .assign msg = msg + "\n  => TagInitializationFunction( ${function_name} )"
    .end if
    .print "${msg}"
  .end for
.end function
.//
.//============================================================================
.function TagExcludeObjectFromCodeGen
  .param string obj_key_letters
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkExcludeObjectFromCodeGen( te_c.Name, obj_key_letters )
  .end for
.end function
.function MarkExcludeObjectFromCodeGen
  .param string component_name
  .param string obj_key_letters
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select any te_class related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .if ( not_empty te_class )
      .assign te_class.ExcludeFromGen = true
      .assign msg = "Object ${te_class.Name} (${te_class.Key_Lett}) excluded from code generation."
    .else
      .assign msg = "ERROR:  Class (${obj_key_letters}) not found in component ${te_c.Name}"
      .assign msg = msg + "\n => TagExcludeObjectFromCodeGen( ${obj_key_letters} )"
    .end if
    .print "${msg}"
  .end for
.end function
.//
.//============================================================================
.function TagExcludeSubsystemFromCodeGen
  .param string subsystem_name
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkExcludeSubsystemFromCodeGen( te_c.Name, subsystem_name )
  .end for
.end function
.function MarkExcludeSubsystemFromCodeGen
  .param string component_name
  .param string package_name
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select many ep_pkgs related by te_c->C_C[R2054]->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->EP_PKG[R8001] where ( selected.Name == package_name )
    .if ( not_empty ep_pkgs )
      .select many te_classes related by ep_pkgs->PE_PE[R8000]->O_OBJ[R8001]->TE_CLASS[R2019]
      .for each te_class in te_classes
        .assign te_class.ExcludeFromGen = true
      .end for
      .assign msg = "All classes in package ${package_name} excluded from code generation."
    .else
      .assign msg = "ERROR:  Package ${package_name} not found in component ${te_c.Name}."
      .assign msg = msg + "\n => TagExcludePackageFromCodeGen( ${package_name} )"
    .end if
    .print "${msg}"
  .end for
.end function
.//
.//============================================================================
.function TagStateTransitionTracingOn
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkStateTransitionTracingOn( te_c.Name )
  .end for
.end function
.function MarkStateTransitionTracingOn
  .param string component_name
  .print "Enabling state transition tracing for component(s) ${component_name}."
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.StateTrace = true
  .end for
.end function
.//
.//============================================================================
.function TagActionStatementTracingOn
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkActionStatementTracingOn( te_c.Name )
  .end for
.end function
.function MarkActionStatementTracingOn
  .param string component_name
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.StmtTrace = true
    .print "Action statement tracing enabled for component ${te_c.Name}."
  .end for
.end function
.//
.//============================================================================
.function MarkMessageTracingOn
  .param string component_name
  .param string port_name
  .param string message_name
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .select many te_pos related by te_cs->TE_PO[R2005] where ( selected.Name == port_name )
  .if ( ( "" == port_name ) or ( "*" == port_name ) )
    .select many te_pos related by te_cs->TE_PO[R2005]
  .end if
  .select many te_macts related by te_pos->TE_MACT[R2006] where ( selected.MessageName == message_name )
  .if ( ( "" == message_name ) or ( "*" == message_name ) )
    .select many te_macts related by te_pos->TE_MACT[R2006]
  .end if
  .for each te_mact in te_macts
    .assign te_mact.trace = true
  .end for
  .if ( empty te_macts )
    .print "Warning:  No messages found to trace for ${component_name}::${port_name}::${message_name}."
  .else
    .print "Message tracing enabled for ${component_name}::${port_name}::${message_name}."
  .end if
.end function
.//
.//============================================================================
.function TagEmptyHandleDetectionOn
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkEmptyHandleDetectionOn( te_c.Name )
  .end for
.end function
.function MarkEmptyHandleDetectionOn
  .param string component_name
  .print "Enabling detection of empty handles for component(s) ${component_name}."
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.DetectEmpty = true
  .end for
.end function
.//
.//============================================================================
.function TagFirstPassOptimizationsOff
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkFirstPassOptimizationsOff( te_c.Name )
  .end for
.end function
.function MarkFirstPassOptimizationsOff
  .param string component_name
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.OptDisabled = true
    .print "Code optimizations DISABLED for component ${te_c.Name}"
  .end for
.end function
.//
.//============================================================================
.function TagStateActionCommentBlocksEnabled
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkStateActionCommentBlocksEnabled( te_c.Name )
  .end for
.end function
.function MarkStateActionCommentBlocksEnabled
  .param string component_name
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.RawComments = true
    .print "State action sematics will be included as comments for component ${te_c.Name}."
  .end for
.end function
.//
.//============================================================================
.function TagStateActionStatementCommentsDisabled
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkStateActionStatementCommentsDisabled( te_c.Name )
  .end for
.end function
.function MarkStateActionStatementCommentsDisabled
  .param string component_name
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.CodeComments = false
    .print "State action statement level comments disabled for component ${te_c.Name}"
  .end for
.end function
.//
.function TagStateActionVariableNamesEnabled
.end function
.//
.function TagVerboseReflexivePhrasesEnabled
.end function
.//
.//
.// Mark a port as having a component attached even though the component
.// is not present in the model.
.//
.// .invoke MarkPortWiring( <home_component>, <home_port>, <foreign_component>, <foreign_port> )
.// where:
.//  <home_component> is the local component name.
.//  <home_port> is the local port name.
.//  <foreign_component> is the name of the component on the other side of
.//                      the interface.
.//  <foreign_port> is the name of the port on the other side of the interface.
.//
.//
.function MarkPortWiring
  .param string home_component
  .param string home_port
  .param string foreign_component
  .param string foreign_port
  .select many te_cs from instances of TE_C where ( ( selected.Name == home_component ) and ( selected.included_in_build ) )
  .select many te_pos related by te_cs->TE_PO[R2005] where ( selected.Name == home_port )
  .invoke MarkPortWiringForPort( te_pos, foreign_component, foreign_port )
  .select many te_cs from instances of TE_C where ( ( selected.Name == foreign_component ) and ( selected.included_in_build ) )
  .select many te_pos related by te_cs->TE_PO[R2005] where ( selected.Name == foreign_port )
  .invoke MarkPortWiringForPort( te_pos, home_component, home_port )
.end function
.//
.function MarkPortWiringForPort
  .param inst_ref_set te_pos
  .param string component
  .param string port
  .for each te_po in te_pos
    .select many te_iirs related by te_po->TE_IIR[R2080]
  .for each te_iir in te_iirs
    .if ( te_po.Provision )
      .select many sibling_te_iirs related by te_iir->TE_IIR[R2081.'provides or is delegated']
      .if ( empty sibling_te_iirs )
        .create object instance sibling_te_iir of TE_IIR
        .assign sibling_te_iir.component_name = component
        .assign sibling_te_iir.port_name = port
        .assign sibling_te_iir.interface_name = te_po.InterfaceName
        .assign sibling_te_iir.polymorphic = false
        .relate sibling_te_iir to te_iir across R2081.'requires or delegates'
      .end if
    .else
      .select one sibling_te_iir related by te_iir->TE_IIR[R2081.'requires or delegates']
      .if ( empty sibling_te_iir )
        .create object instance sibling_te_iir of TE_IIR
        .assign sibling_te_iir.component_name = component
        .assign sibling_te_iir.port_name = port
        .assign sibling_te_iir.interface_name = te_po.InterfaceName
        .assign sibling_te_iir.polymorphic = false
        .relate sibling_te_iir to te_iir across R2081.'requires or delegates'
      .end if
    .end if
  .end for
  .end for
.end function
.//
