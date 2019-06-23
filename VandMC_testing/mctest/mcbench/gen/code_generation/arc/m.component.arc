.//============================================================================
.// $RCSfile: m.component.arc,v $
.//
.// Description:
.// Component level marking functions are found here.
.//============================================================================
.//
.//
.//============================================================================
.// Mark components as channels using package name and/or component
.// name as the selection criteria.
.//============================================================================
.function MarkAsChannel
  .param string package_name
  .param string component_name
  .param string inc_file
  .invoke MarkComponentAsChannel( package_name, component_name, inc_file )
.end function
.function MarkComponentAsChannel
  .param string package_name
  .param string component_name
  .param string inc_file
  .select many c_cs from instances of C_C where ( false )
  .if ( ( ( "" == package_name ) and ( "" == component_name ) ) or ( ( "*" == package_name ) and ( "*" == component_name ) ) )
    .// all components
    .select many c_cs from instances of C_C
  .elif ( ( "" == package_name ) or ( "*" == package_name ) )
    .// matches without respect to package
    .select many c_cs from instances of C_C where ( selected.Name == component_name )
  .elif ( ( "" == component_name ) or ( "*" == component_name ) )
    .// all components in packages with given name
    .select many ep_pkgs from instances of EP_PKG where ( selected.Name == package_name )
    .select many c_cs related by ep_pkgs->PE_PE[R8000]->C_C[R8001]
  .else
    .// particular component in particular package(s)
    .select many ep_pkgs from instances of EP_PKG where ( selected.Name == package_name )
    .select many c_cs related by ep_pkgs->PE_PE[R8000]->C_C[R8001] where ( selected.Name == component_name )
  .end if
  .select many te_cs related by c_cs->TE_C[R2054]
  .if ( empty te_cs )
    .print "WARNING:  MarkComponentAsChannel - Could not find component ${package_name}::${component_name}."
  .end if
  .for each te_c in te_cs
    .select one tm_c related by te_c->TM_C[R2804]
    .if ( empty tm_c )
      .create object instance tm_c of TM_C
      .assign tm_c.Package = package_name
      .assign tm_c.Name = component_name
      .relate te_c to tm_c across R2804
    .end if
    .assign tm_c.isChannel = true
    .assign tm_c.include_file = inc_file
    .// Now that we have marked this component as a channel modify the message names
    .select many te_macts related by te_c->TE_MACT[R2002]
    .for each te_mact in te_macts
      .select one te_aba related by te_mact->TE_ABA[R2010]
      .assign te_mact.GeneratedName = te_mact.MessageName
      .assign te_mact.GeneratedName = "$r{te_mact.GeneratedName}"
      .assign te_aba.GeneratedName = te_mact.GeneratedName
    .end for
  .end for
.end function
.//
.//============================================================================
.// Mark a component that has a C++ template.
.//============================================================================
.function MarkComponentWithTemplate
  .param string package_name
  .param string component_name
  .select many c_cs from instances of C_C where ( false )
  .if ( ( ( "" == package_name ) and ( "" == component_name ) ) or ( ( "*" == package_name ) and ( "*" == component_name ) ) )
    .// all components
    .select many c_cs from instances of C_C
  .elif ( ( "" == package_name ) or ( "*" == package_name ) )
    .// matches without respect to package
    .select many c_cs from instances of C_C where ( selected.Name == component_name )
  .elif ( ( "" == component_name ) or ( "*" == component_name ) )
    .// all components in packages with given name
    .select many ep_pkgs from instances of EP_PKG where ( selected.Name == package_name )
    .select many c_cs related by ep_pkgs->PE_PE[R8000]->C_C[R8001]
  .else
    .// particular component in particular package(s)
    .select many ep_pkgs from instances of EP_PKG where ( selected.Name == package_name )
    .select many c_cs related by ep_pkgs->PE_PE[R8000]->C_C[R8001] where ( selected.Name == component_name )
  .end if
  .select many te_cs related by c_cs->TE_C[R2054]
  .if ( empty te_cs )
    .print "WARNING:  MarkComponentWithTemplate - Could not find component ${package_name}::${component_name}."
  .end if
  .for each te_c in te_cs
    .select one tm_c related by te_c->TM_C[R2804]
    .if ( empty tm_c )
      .create object instance tm_c of TM_C
      .assign tm_c.Package = package_name
      .assign tm_c.Name = component_name
      .assign tm_c.isChannel = false
      .assign tm_c.include_file = ""
    .end if
    .if ( not_empty te_c )
      .relate te_c to tm_c across R2804
    .end if
    .// Make the new template the current one for follow-on markings.
    .select many tm_templates from instances of TM_TEMPLATE
    .for each tm_template in tm_templates
      .assign tm_template.current = false
    .end for
    .create object instance tm_template of TM_TEMPLATE
    .assign tm_template.current = true
    .relate tm_template to tm_c across R2800
  .end for
.end function
.//
.//============================================================================
.// Mark an interface that has a C++ template.
.//============================================================================
.function MarkInterfaceWithTemplate
  .param string package_name
  .param string interface_name
  .select any c_i from instances of C_I where ( false )
  .if ( ( "" == package_name ) or ( "*" == package_name ) )
    .select any c_i from instances of C_I where ( selected.Name == interface_name )
  .else
    .select many ep_pkgs from instances of EP_PKG where ( selected.Name == package_name )
    .select any c_i related by ep_pkgs->PE_PE[R8000]->C_I[R8001] where ( selected.Name == interface_name )
  .end if
  .if ( empty c_i )
    .print "WARNING:  MarkInterfaceWithTemplate - Could not find interface ${package_name}::${interface_name}."
  .end if
  .create object instance tm_if of TM_IF
  .assign tm_if.Package = package_name
  .assign tm_if.Name = interface_name
  .relate tm_if to c_i across R2807
  .// Make the new template the current one for follow-on markings.
  .select many tm_templates from instances of TM_TEMPLATE
  .for each tm_template in tm_templates
    .assign tm_template.current = false
  .end for
  .create object instance tm_template of TM_TEMPLATE
  .assign tm_template.current = true
  .relate tm_template to tm_if across R2802
.end function
.//
.//============================================================================
.// Add a template parameter to a C++ template.
.// The template is located based upon the associated component.
.//============================================================================
.function AddTemplateParameter
  .param string package_name
  .param string component_name
  .param string type_name
  .param string variable_name
  .param string default_value
  .select any tm_template from instances of TM_TEMPLATE where ( selected.current )
  .select any tm_c from instances of TM_C where ( ( selected.Package == package_name ) and ( selected.Name == component_name ) )
  .if ( ( "" == package_name ) or ( "*" == package_name ) )
    .select any tm_c from instances of TM_C where ( selected.Name == component_name )
    .if ( empty tm_c )
      .select one tm_c related by tm_template->TM_C[R2800]
    .end if
  .end if
  .if ( empty tm_c )
    .select any tm_if from instances of TM_IF where ( ( selected.Package == package_name ) and ( selected.Name == component_name ) )
    .if ( ( "" == package_name ) or ( "*" == package_name ) )
      .select any tm_if from instances of TM_IF where ( selected.Name == component_name )
      .if ( empty tm_if )
        .select one tm_if related by tm_template->TM_IF[R2802]
      .end if
    .end if
    .if ( empty tm_if )
      .print "ERROR:  AddTemplateParameter - Could not find element (component or interface) ${package_name}::${component_name}."
    .else
      .select one tm_template related by tm_if->TM_TEMPLATE[R2802]
    .end if
  .else
    .select one tm_template related by tm_c->TM_TEMPLATE[R2800]
  .end if
  .if ( not_empty tm_template )
    .create object instance tm_tp of TM_TP
    .relate tm_tp to tm_template across R2801
    .assign tm_tp.typename = type_name
    .assign tm_tp.Name = variable_name
    .assign tm_tp.DefaultValue = default_value
  .else
    .print "ERROR:  AddTemplateParameter - Could not find template for element ${package_name}::${component_name}."
  .end if
.end function
.//
.//============================================================================
.// Set the template parameter for an instance of a component or interface
.// class.  The template is navigated based upon the associated package
.// and instance.
.//============================================================================
.function SetTemplateParameter
  .param string package_name
  .param string instance
  .param string variable_name
  .param string value
  .// Base selection upon the template that most recently got created.
  .select any tm_template from instances of TM_TEMPLATE where ( selected.current )
  .select one tm_c related by tm_template->TM_C[R2800]
  .select one tm_if related by tm_template->TM_IF[R2802]
  .select any tm_tp related by tm_template->TM_TP[R2801] where ( selected.Name == variable_name )
  .if ( ( ( "" == package_name ) or ( "" == instance ) ) or ( ( "" == variable_name ) or ( "" == value ) ) )
    .print "ERROR:  SetTemplateParameter -  Must provide valid strings for all arguments. ${package_name}::${instance}.${variable_name} to value ${value}."
  .else
  .select any ep_pkg from instances of EP_PKG where ( selected.Name == package_name )
  .if ( empty ep_pkg )
    .print "ERROR:  SetTemplateParameter -  Package, ${package_name}, not found for ${package_name}::${instance}.${variable_name} to value ${value}."
  .end if
  .if ( not_empty tm_tp )
    .if ( not_empty tm_c )
      .select any te_ci related by ep_pkg->PE_PE[R8000]->CL_IC[R8001]->TE_CI[R2009] where ( selected.ClassifierName == instance )
      .if ( empty te_ci )
        .select any te_ci related by ep_pkg->PE_PE[R8000]->C_C[R8001]->PE_PE[R8003]->CL_IC[R8001]->TE_CI[R2009] where ( selected.ClassifierName == instance )
      .end if
      .if ( not_empty te_ci )
        .create object instance tm_tpv of TM_TPV
        .assign tm_tpv.instance = instance
        .assign tm_tpv.value = value
        .relate tm_tpv to tm_tp across R2808
        .relate tm_tpv to te_ci across R2805
      .else
        .print "ERROR:  SetTemplateParameter - no component instance for ${package_name}::${instance} with name ${variable_name}."
      .end if
    .elif ( not_empty tm_if )
      .select many te_iirs related by ep_pkg->PE_PE[R8000]->CL_IC[R8001]->CL_POR[R4707]->CL_IIR[R4708]->TE_IIR[R2013] where ( ( selected.port_name == instance ) and ( selected.interface_name == tm_if.Name ) )
      .for each te_iir in te_iirs
        .create object instance tm_tpv of TM_TPV
        .assign tm_tpv.instance = instance
        .assign tm_tpv.value = value
        .relate tm_tpv to tm_tp across R2808
        .relate tm_tpv to te_iir across R2806
      .end for
      .select many te_iirs related by ep_pkg->PE_PE[R8000]->C_C[R8001]->PE_PE[R8003]->CL_IC[R8001]->CL_POR[R4707]->CL_IIR[R4708]->TE_IIR[R2013] where ( ( selected.port_name == instance ) and ( selected.interface_name == tm_if.Name ) )
      .for each te_iir in te_iirs
        .create object instance tm_tpv of TM_TPV
        .assign tm_tpv.instance = instance
        .assign tm_tpv.value = value
        .relate tm_tpv to tm_tp across R2808
        .relate tm_tpv to te_iir across R2806
      .end for
      .select many te_iirs related by ep_pkg->PE_PE[R8000]->C_C[R8001]->C_PO[R4010]->C_IR[R4016]->TE_IIR[R2046] where ( ( selected.port_name == instance ) and ( selected.interface_name == tm_if.Name ) )
      .for each te_iir in te_iirs
        .create object instance tm_tpv of TM_TPV
        .assign tm_tpv.instance = instance
        .assign tm_tpv.value = value
        .relate tm_tpv to tm_tp across R2808
        .relate tm_tpv to te_iir across R2806
      .end for
    .else
      .print "ERROR:  SetTemplateParameter - Found a template parameter for a template that is orphaned."
    .end if
  .else
    .print "WARNING:  SetTemplateParameter - Did NOT find template parameter for package ${package_name}::${instance} with name ${variable_name}."
  .end if
  .end if
.end function
.//
.//============================================================================
.// Set Template Parameter Value
.//   Once components and interfaces have been marked with C++ templates
.//   and all template parameters added, the template parameter values can
.//   be set and associated with the appropriate component and interface
.//   instances (component references and ports).
.//   Set the template parameter for an instance of a component or interface
.//   class.  The template is navigated based upon the associated package
.//   and instance.
.//============================================================================
.function SetTPV
  .param string package_name
  .param string parent_component
  .param string component
  .param string classifier_name
  .param string port
  .param string variable_name
  .param string value
  .assign trace = "${package_name}::${parent_component}::${component}:${classifier_name}.${variable_name} value ${value} (and port ${port})"
  .if ( ( ( "" == package_name ) or ( "" == component ) ) or ( ( "" == classifier_name ) or ( ( ( "" == variable_name ) or (  "" == value ) ) ) ) )
    .print "ERROR:  SetTPV - Must provide valid strings for all arguments except the optional port, ${package_name}::${parent_component}::${component}:${classifier_name}.${variable_name} to value ${value} (and port ${port})."
  .else
  .select any ep_pkg from instances of EP_PKG where ( selected.Name == package_name )
  .if ( empty ep_pkg )
    .print "ERROR:  SetTPV -  Package, ${package_name}, not found for ${package_name}::${parent_component}::${component}:${classifier_name}.${variable_name} to value ${value}."
  .end if
  .select many te_cis related by ep_pkg->PE_PE[R8000]->CL_IC[R8001]->TE_CI[R2009] where ( ( selected.Name == component ) and ( selected.ClassifierName == classifier_name ) )
  .if ( "" != parent_component )
    .select many c_cs related by ep_pkg->PE_PE[R8000]->C_C[R8001] where ( selected.Name == parent_component )
    .select many te_cis related by c_cs->PE_PE[R8003]->CL_IC[R8001]->TE_CI[R2009] where ( ( selected.Name == component ) and ( selected.ClassifierName == classifier_name ) )
  .else
    .if ( empty te_cis )
      .select many te_cis related by ep_pkg->PE_PE[R8000]->C_C[R8001]->PE_PE[R8003]->CL_IC[R8001]->TE_CI[R2009] where ( ( selected.Name == component ) and ( selected.ClassifierName == classifier_name ) )
    .end if
  .end if
  .assign te_cis_count = cardinality te_cis
  .if ( te_cis_count > 1 )
    .print "WARNING:  SetTPV - More than one instantiation found for ${package_name}::${parent_component}::${component}:${classifier_name}.${variable_name} to value ${value}."
    .print "                   All instantiations will be marked to receive the same template parameter value."
  .elif ( 0 == te_cis_count )
    .print "ERROR:  SetTPV - Component instance not found for ${package_name}::${parent_component}::${component}:${classifier_name}."
  .end if
  .if ( "" == port )
    .// We are setting values for component templates.
    .for each te_ci in te_cis
      .select one tm_template related by te_ci->TE_C[R2008]->TM_C[R2804]->TM_TEMPLATE[R2800]
      .select any tm_tp related by tm_template->TM_TP[R2801] where ( selected.Name == variable_name )
      .if ( not_empty tm_tp )
        .// Create the template parameter value and link it in.
        .create object instance tm_tpv of TM_TPV
        .assign tm_tpv.instance = component
        .assign tm_tpv.value = value
        .relate tm_tpv to tm_tp across R2808
        .relate tm_tpv to te_ci across R2805
      .else
        .print "WARNING:  SetTPV - Template parameter not found for ${package_name}::${parent_component}::${component}:${classifier_name}."
      .end if
    .end for
  .else
    .// We are setting a value for an interface template.
    .for each te_ci in te_cis
      .select any te_iir related by te_ci->CL_IC[R2009]->CL_POR[R4707]->CL_IIR[R4708]->TE_IIR[R2013] where ( selected.port_name == port )
      .invoke SetTPV_for_channel_connection( te_iir, variable_name, value, trace, 0 )
    .end for
  .end if
  .end if
.end function
.//
.// Rules
.// Always start from IIR.
.// On a first call, first try to cross a satisfaction from IIR.
.// It is only possible to go upward on a delegation on the first call.
.// After the first call, it is O.K. to cross a satisfaction after crossing
.// a delegation.
.// After traversing to an imported interface reference, consider marking
.// the associated interface reference.  (Mark both.)
.// Gather all the delegated_te_iirs into a collection and then loop through.
.// This is necessary for delegations only.
.// Be smart and look for only the right types in the right direction.
.function SetTPV_for_channel_connection
  .param inst_ref te_iir
  .param string variable_name
  .param string value
  .param string trace
  .param integer flavor
  .select many delegated_te_iirs from instances of TE_IIR where ( false )
  .// flavors:  0:firstcall, 1:coming from satisfaction, 2:coming from delegation
  .select any tm_tp related by te_iir->C_IR[R2046]->C_I[R4012]->TM_IF[R2807]->TM_TEMPLATE[R2802]->TM_TP[R2801] where ( selected.Name == variable_name )
  .if ( empty tm_tp )
    .select any tm_tp related by te_iir->CL_IIR[R2013]->C_IR[R4701]->C_I[R4012]->TM_IF[R2807]->TM_TEMPLATE[R2802]->TM_TP[R2801] where ( selected.Name == variable_name )
    .if ( empty tm_tp )
      .print "WARNING:  SetTPV - Template parameter not found for ${trace}."
    .end if
  .end if
  .// Determine whether we have an interface reference for a component marked
  .// as a channel.  Process channel interface references on first call only.
  .select one tm_c related by te_iir->TE_PO[R2080]->TE_C[R2005]->TM_C[R2804]
  .assign isChannel = false
  .if ( not_empty tm_c )
    .assign isChannel = tm_c.isChannel
  .end if
  .// See if this template parameter already has a value for this reference.
  .select any tm_tpv related by te_iir->TM_TPV[R2806] where ( ( selected.instance == te_iir.interface_name ) and ( selected.tm_tpID == tm_tp.ID ) )
  .// If isChannel, then skip unless it is the first call.
  .if ( ( ( ( empty tm_tpv ) and ( not_empty tm_tp ) ) and ( not isChannel ) ) or ( 0 == flavor ) )
.//.select one te_c related by te_iir->TE_PO[R2080]->TE_C[R2005]
.//.print "${trace} ${te_iir.port_name} ${te_c.Name}"
    .create object instance tm_tpv of TM_TPV
    .assign tm_tpv.instance = te_iir.interface_name
    .assign tm_tpv.value = value
    .relate tm_tpv to tm_tp across R2808
    .relate tm_tpv to te_iir across R2806
    .//
    .// Find a satisfaction or delegation.  Recursively apply the same template parameter value to the connections.
    .select one satisfied_te_iir related by te_iir->TE_IIR[R2081.'requires or delegates'] where ( false )
    .if ( ( 0 == flavor ) or ( 2 == flavor ) )
      .// iir to iir
      .// Search from imported reference across satisfaction to imported reference provision to requirement.
      .select many satisfied_te_iirs related by te_iir->CL_IIR[R2013]->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->CL_IR[R4706]->CL_IIR[R4703]->TE_IIR[R2013]
      .if ( not_empty satisfied_te_iirs )
        .for each satisfied_te_iir in satisfied_te_iirs
          .invoke SetTPV_for_channel_connection( satisfied_te_iir, variable_name, value, " 1${trace}", 1 )
        .end for
      .else
      .// Search from imported reference across satisfaction to imported reference requirement to provision.
      .select one satisfied_te_iir related by te_iir->CL_IIR[R2013]->CL_IR[R4703]->C_SF[R4706]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]->TE_IIR[R2013]
      .if ( not_empty satisfied_te_iir )
        .invoke SetTPV_for_channel_connection( satisfied_te_iir, variable_name, value, " 2${trace}", 1 )
      .else
      .// mixed iir and ir
      .// Search from imported reference across satisfaction to reference imported provision to requirement.
      .select many satisfied_te_iirs related by te_iir->CL_IIR[R2013]->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->C_R[R4002]->C_IR[R4009]->TE_IIR[R2046]
      .if ( not_empty satisfied_te_iirs )
        .for each satisfied_te_iir in satisfied_te_iirs
          .invoke SetTPV_for_channel_connection( satisfied_te_iir, variable_name, value, " 3${trace}", 1 )
        .end for
      .else
      .// Search from imported reference across satisfaction to reference imported requirement to provision.
      .select one satisfied_te_iir related by te_iir->CL_IIR[R2013]->CL_IR[R4703]->C_SF[R4706]->C_P[R4002]->C_IR[R4009]->TE_IIR[R2046]
      .if ( not_empty satisfied_te_iir )
        .invoke SetTPV_for_channel_connection( satisfied_te_iir, variable_name, value, " 4${trace}", 1 )
      .else
      .// Search from reference across satisfaction to reference provision to requirement.
      .select any satisfied_te_iir related by te_iir->C_IR[R2046]->C_P[R4009]->C_SF[R4002]->C_R[R4002]->C_IR[R4009]->TE_IIR[R2046]
      .if ( not_empty satisfied_te_iir )
        .invoke SetTPV_for_channel_connection( satisfied_te_iir, variable_name, value, " 4a${trace}", 1 )
      .else
      .// Search from reference across satisfaction to reference requirement to provision.
      .select any satisfied_te_iir related by te_iir->C_IR[R2046]->C_R[R4009]->C_SF[R4002]->C_P[R4002]->C_IR[R4009]->TE_IIR[R2046]
      .if ( not_empty satisfied_te_iir )
        .invoke SetTPV_for_channel_connection( satisfied_te_iir, variable_name, value, " 4b${trace}", 1 )
      .else
      .// Search from reference across satisfaction to imported reference imported provision to requirement.
      .// CDS should not find these, because we already go the other mixed direction?
      .//.select one satisfied_te_iir related by te_iir->C_IR[R2046]->C_P[R4009]->C_SF[R4002]->CL_IR[R4706]->CL_IIR[R4703]->TE_IIR[R2013]
      .if ( not_empty satisfied_te_iir )
        .invoke SetTPV_for_channel_connection( satisfied_te_iir, variable_name, value, " 5${trace}", 1 )
      .else
      .// Search from reference across satisfaction to imported reference imported requirement to provision.
      .// CDS should not find these, because we already go the other mixed direction?
      .//.select one satisfied_te_iir related by te_iir->C_IR[R2046]->C_R[R4009]->C_SF[R4002]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]->TE_IIR[R2013]
      .if ( not_empty satisfied_te_iir )
        .invoke SetTPV_for_channel_connection( satisfied_te_iir, variable_name, value, " 6${trace}", 1 )
      .end if
      .end if
      .end if
      .end if
      .end if
      .end if
      .end if
      .end if
    .end if
    .// delegation
    .if ( empty satisfied_te_iir )
      .select one delegated_te_iir related by satisfied_te_iir->TE_IIR[R2081.'requires or delegates'] where ( false )
      .// IIR IR DG  RID IR
      .select any delegated_te_iir related by te_iir->CL_IIR[R2013]->C_DG[R4704]->C_RID[R4013]->C_IR[R4013]->TE_IIR[R2046]
      .if ( not_empty delegated_te_iir )
        .assign delegated_te_iirs = delegated_te_iirs | delegated_te_iir
        .assign trace = "7a " + trace
      .end if
      .select any delegated_te_iir related by te_iir->CL_IIR[R2013]->C_IR[R4701]->C_RID[R4013]->C_DG[R4013]->CL_IIR[R4704]->TE_IIR[R2013]
      .if ( not_empty delegated_te_iir )
        .assign delegated_te_iirs = delegated_te_iirs | delegated_te_iir
        .assign trace = "7b " + trace
      .end if
      .//     IR DG  RID IR
      .select any delegated_te_iir related by te_iir->C_IR[R2046]->C_DG[R4014]->C_RID[R4013]->C_IR[R4013]->TE_IIR[R2046]
      .if ( not_empty delegated_te_iir )
        .assign delegated_te_iirs = delegated_te_iirs | delegated_te_iir
        .assign trace = "8a " + trace
      .end if
      .//     IR RID DG  IR
      .select any delegated_te_iir related by te_iir->C_IR[R2046]->C_RID[R4013]->C_DG[R4013]->C_IR[R4014]->TE_IIR[R2046]
      .if ( not_empty delegated_te_iir )
        .assign delegated_te_iirs = delegated_te_iirs | delegated_te_iir
        .assign trace = "8b " + trace
      .end if
      .// IIR IR DG  RID IR
      .select any delegated_te_iir related by te_iir->CL_IIR[R2013]->C_IR[R4701]->C_DG[R4014]->C_RID[R4013]->C_IR[R4013]->TE_IIR[R2046]
      .if ( not_empty delegated_te_iir )
        .assign delegated_te_iirs = delegated_te_iirs | delegated_te_iir
        .assign trace = "8c " + trace
      .end if
      .//     IR DG  RID IR IIR
      .select any delegated_te_iir related by te_iir->C_IR[R2046]->C_DG[R4014]->C_RID[R4013]->C_IR[R4013]->CL_IIR[R4701]->TE_IIR[R2013]
      .if ( not_empty delegated_te_iir )
        .assign delegated_te_iirs = delegated_te_iirs | delegated_te_iir
        .assign trace = "8d " + trace
      .end if
      .// IIR IR RID DG  IR
      .select many more_delegated_te_iirs related by te_iir->CL_IIR[R2013]->C_IR[R4701]->C_RID[R4013]->C_DG[R4013]->C_IR[R4014]->TE_IIR[R2046]
      .if ( not_empty more_delegated_te_iirs )
        .assign delegated_te_iirs = delegated_te_iirs | more_delegated_te_iirs
        .assign trace = "8e " + trace
      .end if
      .//     IR RID DG  IR IIR
      .select many more_delegated_te_iirs related by te_iir->C_IR[R2046]->C_RID[R4013]->C_DG[R4013]->C_IR[R4014]->CL_IIR[R4701]->TE_IIR[R2013]
      .if ( not_empty more_delegated_te_iirs )
        .assign delegated_te_iirs = delegated_te_iirs | more_delegated_te_iirs
        .assign trace = "8f " + trace
      .end if
      .// IIR IR DG  RID IR IIR
      .select any delegated_te_iir related by te_iir->CL_IIR[R2013]->C_IR[R4701]->C_DG[R4014]->C_RID[R4013]->C_IR[R4013]->CL_IIR[R4701]->TE_IIR[R2013]
      .if ( not_empty delegated_te_iir )
        .assign delegated_te_iirs = delegated_te_iirs | delegated_te_iir
        .assign trace = "8g " + trace
      .end if
      .// IIR IR RID DG  IR IIR
      .select many more_delegated_te_iirs related by te_iir->CL_IIR[R2013]->C_IR[R4701]->C_RID[R4013]->C_DG[R4013]->C_IR[R4014]->CL_IIR[R4701]->TE_IIR[R2013]
      .if ( not_empty more_delegated_te_iirs )
        .assign delegated_te_iirs = delegated_te_iirs | more_delegated_te_iirs
        .assign trace = "8h " + trace
      .end if
      .select any delegated_te_iir related by te_iir->CL_IIR[R2013]->C_IR[R4701]->C_RID[R4013]->C_DG[R4013]->C_IR[R4014]->TE_IIR[R2046]
      .if ( not_empty delegated_te_iir )
        .assign delegated_te_iirs = delegated_te_iirs | delegated_te_iir
        .assign trace = "B " + trace
      .end if
      .for each delegated_te_iir in delegated_te_iirs
        .invoke SetTPV_for_channel_connection( delegated_te_iir, variable_name, value, "${trace}", 2 )
      .end for
    .end if
  .else
    .if ( empty tm_tp )
      .print "SetTPV:  warning - no variable ${te_iir.port_name} ${te_iir.interface_name}"
    .end if
  .end if
.end function
.//
.//============================================================================
.// Mark the prefixes for the interface naming.
.//============================================================================
.function MarkInterfacePrefix
  .param string provided_port
  .param string required_port
  .param string channel
  .select any te_prefix from instances of TE_PREFIX
  .assign te_prefix.provided_port = provided_port
  .assign te_prefix.required_port = required_port
  .assign te_prefix.channel = channel
.end function
.//
.//============================================================================
.// Mark components as realized using package name and/or component
.// name as the selection criteria.
.//============================================================================
.function MarkComponentAsRealized
  .param string package_name
  .param string component_name
  .param string inc_file
  .select many c_cs from instances of C_C where ( false )
  .if ( ( ( "" == package_name ) and ( "" == component_name ) ) or ( ( "*" == package_name ) and ( "*" == component_name ) ) )
    .// all components
    .select many c_cs from instances of C_C
  .elif ( ( "" == package_name ) or ( "*" == package_name ) )
    .// matches without respect to package
    .select many c_cs from instances of C_C where ( selected.Name == component_name )
  .elif ( ( "" == component_name ) or ( "*" == component_name ) )
    .// all components in packages with given name
    .select many ep_pkgs from instances of EP_PKG where ( selected.Name == package_name )
    .select many c_cs related by ep_pkgs->PE_PE[R8000]->C_C[R8001]
  .else
    .// particular component in particular package(s)
    .select many ep_pkgs from instances of EP_PKG where ( selected.Name == package_name )
    .select many c_cs related by ep_pkgs->PE_PE[R8000]->C_C[R8001] where ( selected.Name == component_name )
  .end if
  .if ( empty c_cs )
    .print "WARNING:  MarkComponentAsRealized - Could not find component ${package_name}::${component_name}."
  .end if
  .for each c_c in c_cs
    .select any tm_c from instances of TM_C where ( ( selected.Name == component_name ) and ( selected.Package == package_name ) )
    .if ( empty tm_c )
      .create object instance tm_c of TM_C
      .assign tm_c.Package = package_name
      .assign tm_c.Name = component_name
    .end if
    .assign tm_c.isRealized = true
    .assign tm_c.include_file = inc_file
  .end for
.end function
