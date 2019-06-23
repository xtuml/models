.//============================================================================
.// $RCSfile: m.class.arc,v $
.//
.// Description:
.// This archetype file contains the implementation functions for colors
.// specified in the (user supplied/modified) object.clr file.
.//============================================================================
.//
.//============================================================================
.// Set default extension for entire component.
.//============================================================================
.function TagSystemObjectDefaultExtentSize
  .param integer extent_size
  .invoke MarkSystemObjectDefaultExtentSize( extent_size )
.end function
.function MarkSystemObjectDefaultExtentSize
  .param integer extent_size
  .select many te_classes from instances of TE_CLASS
  .for each te_class in te_classes
    .assign te_class.MaxExtentSize = extent_size
  .end for
  .print "Class default extent size is $t{extent_size} for _all_ classes."
.end function
.//
.//============================================================================
.function TagObjectExtentSize
  .param string obj_key_letters
  .param integer extent_size
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkObjectExtentSize( te_c.Name, obj_key_letters, extent_size )
  .end for
.end function
.function MarkObjectExtentSize
  .param string component_name
  .param string obj_key_letters
  .param integer extent_size
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .select any te_class related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .if ( not_empty te_class )
      .assign te_class.MaxExtentSize = extent_size
      .print "Class '${te_class.Name}' (${te_class.Key_Lett}) extent size is $t{extent_size}"
    .else
      .print "ERROR:  Class (${obj_key_letters}) not found in component '${te_c.Name}'."
      .print "      => MarkObjectExtentSize( ${obj_key_letters}, $t{extent_size} )"
    .end if
  .end for
.end function
.//
.//============================================================================
.// This function was used in previous versions of MC-3020 to enable
.// the generation of code from actions in transformers (operations).
.// This function is deprecated in favor of translating operations by
.// default.  Translation may be disabled with MarkClassOperationTranslationOff.
.//============================================================================
.function TagTransformerGeneration
  .param string obj_key_letters
  .param string transformer_name
  .print "Note:  TagTransformerGeneration is no longer used.  Please use"
  .print "MarkClassOperationTranslationOff to control semantic translation."
.end function
.//
.//============================================================================
.// Disable the translation of class operation processing semantics.
.// The default is for all operations to be translated.
.//============================================================================
.function TagClassOperationTranslationOff
  .param string obj_key_letters
  .param string op_name
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkClassOperationTranslationOff( te_c.Name, obj_key_letters, op_name )
  .end for
.end function
.function MarkClassOperationTranslationOff
  .param string component_name
  .param string obj_key_letters
  .param string op_name
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( false )
    .if ( "*" == obj_key_letters )
      .select many te_classes related by te_c->TE_CLASS[R2064]
    .else
      .select many te_classes related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .end if
    .if ( empty te_classes )
      .assign msg = "ERROR:  Class ${obj_key_letters} not found in component."
      .assign msg = msg + "\n => MarkClassOperationTranslationOff( ${obj_key_letters}, ${op_name} )"
    .end if
    .for each te_class in te_classes
      .if ( "*" == op_name )
        .select many te_tfrs related by te_class->O_OBJ[R2019]->O_TFR[R115]->TE_TFR[R2024]
        .if ( not_empty te_tfrs )
          .for each te_tfr in te_tfrs 
            .assign te_tfr.XlateSemantics = false
          .end for
          .assign msg = "Class ${te_class.Name} (${te_class.Key_Lett}) all operation semantics disabled."
        .end if
      .else
        .select any o_tfr related by te_class->O_OBJ[R2019]->O_TFR[R115] where ( selected.Name == op_name )
        .if ( not_empty o_tfr )
          .select one te_tfr related by o_tfr->TE_TFR[R2024]
          .assign te_tfr.XlateSemantics = false
          .assign msg = "Class Operation ${te_class.Name} ${te_class.Key_Lett}::${te_tfr.Name} semantics disabled."
        .else
          .assign msg = "ERROR:  Class Operation ${te_class.Name} ${te_class.Key_Lett}::${op_name} is not defined."
          .assign msg = msg + "\n  => MarkClassOperationTranslationOff( ${obj_key_letters}, ${op_name} )"
        .end if
      .end if
    .end for
    .if ( msg != "" )
      .print "${msg}"
    .end if
  .end for
.end function
.//
.//============================================================================
.function MarkClassTraceOff
  .param string component_name
  .param string obj_key_letters
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select many te_abas related by te_c->TE_ABA[R2088] where ( false )
    .if ( "*" == obj_key_letters )
      .select many te_classs related by te_c->TE_CLASS[R2064]
      .for each te_class in te_classs
        .assign te_class.IsTrace = false
      .end for
      .select many te_abas related by te_classs->O_OBJ[R2019]->O_TFR[R115]->TE_TFR[R2024]->TE_ABA[R2010]
      .select many more_te_abas related by te_classs->O_OBJ[R2019]->O_ATTR[R102]->O_BATTR[R106]->O_DBATTR[R107]->TE_DBATTR[R2026]->TE_ABA[R2010]
      .assign te_abas = te_abas | more_te_abas
      .select many more_te_abas related by te_classs->TE_SM[R2072]->SM_SM[R2043]->SM_ACT[R515]->TE_ACT[R2022]->TE_ABA[R2010]
      .assign te_abas = te_abas | more_te_abas
      .assign msg = "Class tracing for all is disabled in component ${te_c.Name}."
    .else
      .select any te_class related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
      .if ( not_empty te_class )
        .assign te_class.IsTrace = false
        .assign msg = "Class ${te_class.Name} (${te_class.Key_Lett}) tracing is disabled."
        .select many te_abas related by te_class->O_OBJ[R2019]->O_TFR[R115]->TE_TFR[R2024]->TE_ABA[R2010]
        .select many more_te_abas related by te_class->O_OBJ[R2019]->O_ATTR[R102]->O_BATTR[R106]->O_DBATTR[R107]->TE_DBATTR[R2026]->TE_ABA[R2010]
        .assign te_abas = te_abas | more_te_abas
        .select many more_te_abas related by te_class->TE_SM[R2072]->SM_SM[R2043]->SM_ACT[R515]->TE_ACT[R2022]->TE_ABA[R2010]
        .assign te_abas = te_abas | more_te_abas
      .else
        .assign msg = "ERROR:  Class (${obj_key_letters}) not found in component ${te_c.Name}."
        .assign msg = msg + "\n => MarkClassTraceOff( ${component_name}, ${obj_key_letters} )"
      .end if
    .end if
    .for each te_aba in te_abas
      .assign te_aba.IsTrace = false
    .end for
    .if ( "" != msg )
      .print "${msg}"
    .end if
  .end for
.end function
.//
.//============================================================================
.function MarkClassTraceOn
  .param string component_name
  .param string obj_key_letters
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select many te_abas related by te_c->TE_ABA[R2088] where ( false )
    .if ( "*" == obj_key_letters )
      .select many te_classs related by te_c->TE_CLASS[R2064]
      .for each te_class in te_classs
        .assign te_class.IsTrace = true
      .end for
      .select many te_abas related by te_classs->O_OBJ[R2019]->O_TFR[R115]->TE_TFR[R2024]->TE_ABA[R2010]
      .select many more_te_abas related by te_classs->O_OBJ[R2019]->O_ATTR[R102]->O_BATTR[R106]->O_DBATTR[R107]->TE_DBATTR[R2026]->TE_ABA[R2010]
      .assign te_abas = te_abas | more_te_abas
      .select many more_te_abas related by te_classs->TE_SM[R2072]->SM_SM[R2043]->SM_ACT[R515]->TE_ACT[R2022]->TE_ABA[R2010]
      .assign te_abas = te_abas | more_te_abas
      .assign msg = "Class tracing for all is enabled in component ${te_c.Name}."
    .else
      .select any te_class related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
      .if ( not_empty te_class )
        .assign te_class.IsTrace = true
        .assign msg = "Class ${te_class.Name} (${te_class.Key_Lett}) tracing is enabled."
        .select many te_abas related by te_class->O_OBJ[R2019]->O_TFR[R115]->TE_TFR[R2024]->TE_ABA[R2010]
        .select many more_te_abas related by te_class->O_OBJ[R2019]->O_ATTR[R102]->O_BATTR[R106]->O_DBATTR[R107]->TE_DBATTR[R2026]->TE_ABA[R2010]
        .assign te_abas = te_abas | more_te_abas
        .select many more_te_abas related by te_class->TE_SM[R2072]->SM_SM[R2043]->SM_ACT[R515]->TE_ACT[R2022]->TE_ABA[R2010]
        .assign te_abas = te_abas | more_te_abas
      .else
        .assign msg = "ERROR:  Class (${obj_key_letters}) not found in component ${te_c.Name}."
        .assign msg = msg + "\n => MarkClassTraceOn( ${component_name}, ${obj_key_letters} )"
      .end if
    .end if
    .for each te_aba in te_abas
      .assign te_aba.IsTrace = true
    .end for
    .if ( "" != msg )
      .print "${msg}"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Identify this class as having preexisting instances defined
.// in data.
.//============================================================================
.function TagPEIsDefinedInData
  .param string ss_prefix
  .param string obj_key_letters
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkPEIsDefinedInData( te_c.Name, ss_prefix, obj_key_letters )
  .end for
.end function
.function MarkPEIsDefinedInData
  .param string component_name
  .param string package_name
  .param string obj_key_letters
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .// Get set into scope.
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( false )
    .// Check for an explicit object.
    .// Check for an explicit package.
    .// Check a star in the package and component.
    .// Otherwise, generate a coloring error.
    .if ( ( "*" == package_name ) and ( "*" == obj_key_letters ) )
      .select many te_classes related by te_c->TE_CLASS[R2064]
    .elif ( "" == package_name )
      .select many te_classes related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .elif ( "*" == obj_key_letters )
      .select many ep_pkgs related by te_c->C_C[R2054]->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->EP_PKG[R8001] where ( selected.Name == package_name )
      .select many te_classes related by ep_pkgs->PE_PE[R8000]->O_OBJ[R8001]->TE_CLASS[R2019]
    .else
      .assign msg = msg + "ERROR:  MarkPEIsDefinedInData( ${package_name}, ${obj_key_letters} ) in component ${te_c.Name}\n"
    .end if
    .for each te_class in te_classes
      .assign te_class.PEIsDefinedInData = true
      .assign msg = msg + "Class ${te_class.Name} (${te_class.Key_Lett}) in component ${te_c.Name} marked to enable PEIs in data.\n"
    .end for
    .if ( "" != msg )
      .print "${msg}"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Identify this class as having a static instance population.
.// That is, after initialization is complete, instances are neither
.// created nor destroyed.
.//============================================================================
.function TagStaticInstancePopulation
  .param string ss_prefix
  .param string obj_key_letters
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkStaticInstancePopulation( te_c.Name, ss_prefix, obj_key_letters )
  .end for
.end function
.function MarkStaticInstancePopulation
  .param string component_name
  .param string package_name
  .param string obj_key_letters
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .// Get set into scope.
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( false )
    .// Check for an explicit object.
    .// Check for an explicit package.
    .// Check a star in the package and component.
    .// Otherwise, generate a coloring error.
    .if ( ( "*" == package_name ) and ( "*" == obj_key_letters ) )
      .select many te_classes related by te_c->TE_CLASS[R2064]
    .elif ( "" == package_name )
      .select many te_classes related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .elif ( "*" == obj_key_letters )
      .select many ep_pkgs related by te_c->C_C[R2054]->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->EP_PKG[R8001] where ( selected.Name == package_name )
      .select many te_classes related by ep_pkgs->PE_PE[R8000]->O_OBJ[R8001]->TE_CLASS[R2019]
    .else
      .assign msg = msg + "ERROR:  MarkStaticInstancePopulation( ${package_name}, ${obj_key_letters} ) in component ${te_c.Name}\n"
    .end if
    .for each te_class in te_classes
      .assign te_class.IsFixedPopulation = true
      .assign msg = msg + "Class ${te_class.Name} (${te_class.Key_Lett}) in component ${te_c.Name} marked as\n"
      .assign msg = msg + "as having a static instance population.\n"
    .end for
    .if ( "" != msg )
      .print "${msg}"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Mark object as read only.
.//============================================================================
.function TagReadOnly
  .param string ss_prefix
  .param string obj_key_letters
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkReadOnly( te_c.Name, ss_prefix, obj_key_letters )
  .end for
.end function
.function MarkReadOnly
  .param string component_name
  .param string package_name
  .param string obj_key_letters
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .// Get set into scope.
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( false )
    .// Check for an explicit object.
    .// Check for an explicit package.
    .// Check a star in the package and component.
    .// Otherwise, generate a coloring error.
    .if ( ( "*" == package_name ) and ( "*" == obj_key_letters ) )
      .select many te_classes related by te_c->TE_CLASS[R2064]
    .elif ( "" == package_name )
      .select many te_classes related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .elif ( "*" == obj_key_letters )
      .select many ep_pkgs related by te_c->C_C[R2054]->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->EP_PKG[R8001] where ( selected.Name == package_name )
      .select many te_classes related by ep_pkgs->PE_PE[R8000]->O_OBJ[R8001]->TE_CLASS[R2019]
    .else
      .assign msg = msg + "ERROR:  MarkReadOnly( ${package_name}, ${obj_key_letters} ) in component ${te_c.Name}\n"
    .end if
    .for each te_class in te_classes
      .assign te_class.IsReadOnly = true
      .assign msg = msg + "Class ${te_class.Name} (${te_class.Key_Lett}) in component ${te_c.Name} marked as read only.\n"
    .end for
    .if ( "" != msg )
      .print "${msg}"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Enable persistent storage of the specified class or classes.
.//============================================================================
.function TagPersistentClass
  .param string ss_prefix
  .param string obj_key_letters
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkPersistentClass( te_c.Name, ss_prefix, obj_key_letters )
  .end for
.end function
.function MarkPersistentClass
  .param string component_name
  .param string package_name
  .param string obj_key_letters
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .// Get set into scope.
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( false )
    .// Check for an explicit object.
    .// Check for an explicit package.
    .// Check a star in the package and component.
    .// Otherwise, generate a coloring error.
    .if ( ( "*" == package_name ) and ( "*" == obj_key_letters ) )
      .select many te_classes related by te_c->TE_CLASS[R2064]
    .elif ( "" == package_name )
      .select many te_classes related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .elif ( "*" == obj_key_letters )
      .select many ep_pkgs related by te_c->C_C[R2054]->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->EP_PKG[R8001] where ( selected.Name == package_name )
      .select many te_classes related by ep_pkgs->PE_PE[R8000]->O_OBJ[R8001]->TE_CLASS[R2019]
    .else
      .assign msg = msg + "ERROR:  MarkPersistentClass( ${package_name}, ${obj_key_letters} ) in component ${te_c.Name}\n"
    .end if
    .for each te_class in te_classes
      .assign te_class.Persistent = true
      .assign msg = msg + "Class ${te_class.Name} (${te_class.Key_Lett}) in component ${te_c.Name} marked as persistent.\n"
    .end for
    .if ( "" != msg )
      .print "${msg}"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Disable persistent storage of the specified class or classes.
.// This interface is meant to undo what the MarkPersistent interface
.// does.  This way the user can tag all classes persistent and then
.// unmark a few (rather than explicitly mark a whole bunch).
.//============================================================================
.function TagNonPersistentClass
  .param string ss_prefix
  .param string obj_key_letters
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkNonPersistentClass( te_c.Name, ss_prefix, obj_key_letters )
  .end for
.end function
.function MarkNonPersistentClass
  .param string component_name
  .param string package_name
  .param string obj_key_letters
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .// Get set into scope.
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( false )
    .// Check for an explicit object.
    .// Check for an explicit package.
    .// Check a star in the package and component.
    .// Otherwise, generate a coloring error.
    .if ( ( "*" == package_name ) and ( "*" == obj_key_letters ) )
      .select many te_classes related by te_c->TE_CLASS[R2064]
    .elif ( "" == package_name )
      .select many te_classes related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .elif ( "*" == obj_key_letters )
      .select many ep_pkgs related by te_c->C_C[R2054]->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->EP_PKG[R8001] where ( selected.Name == package_name )
      .select many te_classes related by ep_pkgs->PE_PE[R8000]->O_OBJ[R8001]->TE_CLASS[R2019]
    .else
      .assign msg = msg + "ERROR:  MarkNonPersistentClass( ${package_name}, ${obj_key_letters} ) in component ${te_c.Name}\n"
    .end if
    .for each te_class in te_classes
      .assign te_class.Persistent = false
      .assign msg = msg + "Class ${te_class.Name} (${te_class.Key_Lett}) in component ${te_c.Name} marked as not persistent.\n"
    .end for
    .if ( "" != msg )
      .print "${msg}"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Map classes to tasks based upon user marking.  With this interface
.// an individual class, package or component can be mapped to the
.// specified task.
.//============================================================================
.function MapClassToTask
  .param string ss_prefix
  .param string obj_key_letters
  .param integer task
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkClassToTask( te_c.Name, ss_prefix, obj_key_letters, task )
  .end for
.end function
.function MarkClassToTask
  .param string component_name
  .param string package_name
  .param string obj_key_letters
  .param integer task
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .// Get set into scope.
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( false )
    .// Check for an explicit object.
    .// Check for an explicit package.
    .// Check a star in the package and component.
    .// Otherwise, generate a coloring error.
    .if ( ( "*" == package_name ) and ( "*" == obj_key_letters ) )
      .select many te_classes related by te_c->TE_CLASS[R2064]
    .elif ( "" == package_name )
      .select many te_classes related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .elif ( "*" == obj_key_letters )
      .select many ep_pkgs related by te_c->C_C[R2054]->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->EP_PKG[R8001] where ( selected.Name == package_name )
      .select many te_classes related by ep_pkgs->PE_PE[R8000]->O_OBJ[R8001]->TE_CLASS[R2019]
    .else
      .print "ERROR:  MapClassToTask( ${package_name}, ${obj_key_letters}, $t{task} ) in component ${te_c.Name}\n"
    .end if
    .for each te_class in te_classes
      .assign te_class.Task = task
    .end for
  .end for
.end function
.//
