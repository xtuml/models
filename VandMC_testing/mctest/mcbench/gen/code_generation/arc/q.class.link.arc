.//============================================================================
.// $RCSfile: q.class.link.arc,v $
.//
.// Description:
.// This archetype file contains the functions for generating class
.// association link methods and member data implementation code.
.//============================================================================
.//
.//============================================================================
.// This function provides the first level of translation indirection for
.// implementation of relationships for a given application analysis object.
.// For each relationship in which the object participates, invoke processing
.// algorithm centric to the specific relationship type.
.//============================================================================
.function RenderObjectRelationships
  .param inst_ref o_obj
  .param boolean  gen_declaration
  .//
  .select any te_instance from instances of TE_INSTANCE
  .select many te_rels related by o_obj->R_OIR[R201]->R_REL[R201]->TE_REL[R2034]
  .//
  .// Create an instance on which the relationship data storage components
  .// will be propagated.
  .create object instance te_relstore of TE_RELSTORE
  .assign te_relstore.link_index = 0
  .assign te_relstore.self_name = te_instance.self
  .//
  .if ( not_empty te_rels )
    .// Pre-order the relationships ascending by their relationship number.
    .// Note:  Decouples code gen from SQL table insertion ordering internals.
    .invoke SortSetAscendingByAttr_Numb( te_rels )
    .assign rel_count = 0
    .assign rel_cardinality = cardinality te_rels
    .// Allocate a fragment for the link calls and propogate it.
    .//
    .while ( rel_count < rel_cardinality )
      .for each te_rel in te_rels
        .select one rel related by te_rel->R_REL[R2034]
        .if ( te_rel.Order == rel_count )
          .// Simple relationship?
          .select one r_simp related by rel->R_SIMP[R206]
          .if ( not_empty r_simp )
            .invoke methods = SimpleRelationshipMethods( o_obj, rel, te_relstore, gen_declaration )
${methods.body}\
          .else
            .// Subtype-Supertype relationship?
            .select one subtype_supertype_rel related by rel->R_SUBSUP[R206]
            .if ( not_empty subtype_supertype_rel )
              .invoke methods = SubSuperRelationshipMethods( o_obj, rel, te_relstore, gen_declaration )
${methods.body}\
          .else
            .// Associative relationship?
            .select one associative_rel related by rel->R_ASSOC[R206]
            .if ( not_empty associative_rel )
              .invoke methods = AssociativeRelationshipMethods( o_obj, rel, te_relstore, gen_declaration )
${methods.body}\
          .else
            .// Composed relationship?
            .select one composed_rel related by rel->R_COMP[R206]
            .if ( not_empty composed_rel )
              .invoke methods = ComposedRelationshipMethods( o_obj, rel, te_relstore, gen_declaration )
${methods.body}\
          .else
            .// Error:  New subtype of R_REL or a corrupted model SQL...
            .print "ERROR:  Unknown association type:R${rel.Numb} for class ${o_obj.Name} (${o_obj.Name})"
            .exit 101
          .end if  .// not_empty composed_rel
          .end if  .// not_empty associative_rel
          .end if  .// not_empty subtype_supertype_rel
          .end if  .// not_empty simp_rel
          .//
          .break for  .// rel in rel_set
        .end if  .// rel.Order == rel_count
      .end for  .// rel in rel_set
      .//
      .assign rel_count = rel_count + 1
    .end while .// rel_count < rel_cardinality
    .invoke persist_link_function = PersistLinkFunction( te_relstore, o_obj, gen_declaration )
${persist_link_function.body}\
  .end if  .// not_empty rel_set
  .//
  .// Propagate the relationship data storage component fragments as
  .// an output fragment attribute of this function.
  .assign attr_result = te_relstore
  .//
.end function
.//
.//============================================================================
.// Generate code for simple relationships (one to one, one to many with
.// no associator).  This includes simple reflexives.
.//============================================================================
.function SimpleRelationshipMethods
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param inst_ref te_relstore
  .param boolean  gen_declaration
  .//
  .select one r_simp related by r_rel->R_SIMP[R206]
  .select one formalizer related by r_simp->R_FORM[R208]
  .select one participant related by r_simp->R_PART[R207]
  .//
  .select one r_rto related by participant->R_RTO[R204]
  .select one r_rgo related by formalizer->R_RGO[R205]
  .//
  .invoke r = FactoryTE_RELINFO()
  .assign te_relinfo = r.result
  .assign te_relinfo.gen_declaration = gen_declaration
  .//
  .if ( participant.Obj_ID != formalizer.Obj_ID )
    .//
    .assign related_o_obj = o_obj
    .if ( o_obj.Obj_ID == participant.Obj_ID )
      .// object as Simple Participant, get formalizing object.
      .select one related_o_obj related by formalizer->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
      .assign te_relinfo.multiplicity = formalizer.Mult
      .assign te_relinfo.is_formalizer = false
    .else
      .// object as Simple Formalizer, get participant object.
      .select one related_o_obj related by r_rto->R_OIR[R203]->O_OBJ[R201]
      .assign te_relinfo.multiplicity = participant.Mult
      .assign te_relinfo.is_formalizer = true
      .//
      .invoke links = CreateSimpleFormalizerMethods( te_relstore, o_obj, r_rel, gen_declaration )
${links.body}\
      .//
    .end if
    .//
    .invoke methods = ImplementRelationshipFundamentals( o_obj, related_o_obj, r_rto, r_rgo, r_rel, te_relinfo, te_relstore )
${methods.body}\
    .//
  .else
    .// reflexive simple relationship
    .if ( gen_declaration )
      .invoke part_mc = GetMultCondString( participant.Mult, participant.Cond )
      .invoke form_mc = GetMultCondString( formalizer.Mult, formalizer.Cond )
      
/*
 * R$t{r_rel.Numb} is Simple Reflexive:  ${part_mc.result}:${form_mc.result}
      .// Check for OOA96 compliance
      .if ( participant.Mult != formalizer.Mult )
 * Note:  Reflexive association is asymmetric.
      .end if
 *  Formalizing ${o_obj.Key_Lett} ${participant.Txt_Phrs} participant
 *  Participant ${o_obj.Key_Lett} ${formalizer.Txt_Phrs} formalizer
 */
    .end if  .// gen_declaration
    .//
    .// Handle participant side
    .assign te_relinfo.multiplicity = participant.Mult
    .assign te_relinfo.rel_phrase = participant.Txt_Phrs
    .assign te_relinfo.is_formalizer = false
    .invoke part_links = CreateSimpleReflexiveFormalizerMethods( te_relstore, o_obj, r_rel, participant.Txt_Phrs, gen_declaration )
    .invoke part_fundamentals = ImplementRelationshipFundamentals( o_obj, o_obj, r_rto, r_rgo, r_rel, te_relinfo, te_relstore )
    .//
    .// Handle formalizer side
    .assign te_relinfo.multiplicity = formalizer.Mult
    .assign te_relinfo.rel_phrase = formalizer.Txt_Phrs
    .assign te_relinfo.is_formalizer = true
    .invoke form_links = CreateSimpleReflexiveFormalizerMethods( te_relstore, o_obj, r_rel, formalizer.Txt_Phrs, gen_declaration )
    .invoke form_fundamentals = ImplementRelationshipFundamentals( o_obj, o_obj, r_rto, r_rgo, r_rel, te_relinfo, te_relstore )
    .//
${part_links.body}\
${form_links.body}\
${part_fundamentals.body}\
${form_fundamentals.body}\
    .//
  .end if
.end function
.//
.//============================================================================
.// Build subtype/supertype accessors.
.//============================================================================
.function SubSuperRelationshipMethods
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param inst_ref te_relstore
  .param boolean  gen_declaration
  .//
  .select one r_super related by r_rel->R_SUBSUP[R206]->R_SUPER[R212]
  .select one r_rto related by r_super->R_RTO[R204]
  .select any r_rgo related by r_rel->R_SUBSUP[R206]->R_SUB[R213]->R_RGO[R205]
  .//
  .invoke r = FactoryTE_RELINFO()
  .assign te_relinfo = r.result
  .assign te_relinfo.gen_declaration = gen_declaration
  .//
  .if ( o_obj.Obj_ID == r_super.Obj_ID )
    .// object as supertype in relationship.
    .assign te_relinfo.is_supertype = true
    .assign te_relinfo.generate_subtype = true
    .assign te_relinfo.is_formalizer = false
    .select many subtype_set related by r_rel->R_SUBSUP[R206]->R_SUB[R213]
    .assign blurped_comment = false
    .for each subtype in subtype_set
      .select one r_rgo related by subtype->R_RGO[R205]
      .select one sub_o_obj related by subtype->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
      .invoke methods = ImplementRelationshipFundamentals( o_obj, sub_o_obj, r_rto, r_rgo, r_rel, te_relinfo, te_relstore )
      .if ( not blurped_comment )

/* Accessors to ${o_obj.Key_Lett}[R$t{r_rel.Numb}] subtypes */
        .assign blurped_comment = true
      .end if
${methods.body}\
    .end for

  .else
    .// object as subtype in relationship
    .select any r_rgo related by r_rel->R_SUBSUP[R206]->R_SUB[R213]->R_RGO[R205] where ( selected.Obj_ID == o_obj.Obj_ID )
    .select one supertype_o_obj related by r_super->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
    .assign te_relinfo.is_formalizer = true
    .invoke AddRelationshipStorage( o_obj, supertype_o_obj, r_rto, r_rgo, r_rel, te_relinfo, te_relstore )
    .invoke methods = CreateSubtypeFormalizerMethods( te_relstore, o_obj, r_rel, gen_declaration )
${methods.body}\
  .end if
.end function
.//
.//============================================================================
.// Build up code gen info for associatives.
.//============================================================================
.function AssociativeRelationshipMethods
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param inst_ref te_relstore
  .param boolean  gen_declaration
  .//
  .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
  .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
  .select one assr related by r_rel->R_ASSOC[R206]->R_ASSR[R211]
  .//
  .select one aone_rto related by aone->R_RTO[R204]
  .select one aoth_rto related by aoth->R_RTO[R204]
  .select one assr_rgo related by assr->R_RGO[R205]
  .//
  .select one aone_oir related by aone_rto->R_OIR[R203]
  .select one aoth_oir related by aoth_rto->R_OIR[R203]
  .select one assr_oir related by assr_rgo->R_OIR[R203]
  .//
  .select one aone_obj related by aone_oir->O_OBJ[R201]
  .select one aoth_obj related by aoth_oir->O_OBJ[R201]
  .select one assr_obj related by assr_oir->O_OBJ[R201]
  .//
  .select one aone_te_class related by aone_obj->TE_CLASS[R2019]
  .select one aoth_te_class related by aoth_obj->TE_CLASS[R2019]
  .select one assr_te_class related by assr_obj->TE_CLASS[R2019]
  .//
  .// NOTE:  For now, we do not / cannot optimize out data based on navigation use.
  .//        Punch in as NavigatedTo to assure functional code...
  .//        ...unless dealing with a class that is discluded from gen.
  .if ( not aone_te_class.ExcludeFromGen )
    .select one te_oir related by aone_oir->TE_OIR[R2035]
    .assign te_oir.NavigatedTo = true
  .end if
  .if ( not aoth_te_class.ExcludeFromGen )
    .select one te_oir related by aoth_oir->TE_OIR[R2035]
    .assign te_oir.NavigatedTo = true
  .end if
  .if ( not assr_te_class.ExcludeFromGen )
    .select one te_oir related by assr_oir->TE_OIR[R2035]
    .assign te_oir.NavigatedTo = true
  .end if
  .//
  .assign associative_reflexive = false
  .if ( aone.Obj_ID == aoth.Obj_ID )
    .assign associative_reflexive = true
  .end if
  .//
  .invoke r = FactoryTE_RELINFO()
  .assign te_relinfo = r.result
  .assign te_relinfo.gen_declaration = gen_declaration
  .//
  .if ( o_obj.Obj_ID == assr.Obj_ID )
    .// Associator object processing. e.g., Object As Associator (R_ASSR)
    .if ( not associative_reflexive )
      .//
      .assign te_relinfo.multiplicity = 0
      .assign te_relinfo.is_formalizer = true
      .invoke assr_methods = CreateAssociativeFormalizerMethods( te_relstore, r_rel, "", gen_declaration )
      .//
      .// Handle Object As Associated One Side (R_AONE)
      .invoke aone_fundamentals = ImplementRelationshipFundamentals( o_obj, aone_obj, aone_rto, assr_rgo, r_rel, te_relinfo, te_relstore )
      .//
      .// Handle Object As Associated Other Side (R_AOTH)
      .invoke aoth_fundamentals = ImplementRelationshipFundamentals( o_obj, aoth_obj, aoth_rto, assr_rgo, r_rel, te_relinfo, te_relstore )
      .//
${assr_methods.body}\
${aone_fundamentals.body}\
${aoth_fundamentals.body}\
      .//
    .else
      .// reflexive associative relationship
      .assign te_relinfo.multiplicity = 0
      .assign te_relinfo.is_formalizer = true
      .//
      .if ( gen_declaration )
        .select one aone_oid related by aone->R_RTO[R204]->O_ID[R109]
        .select one aoth_oid related by aoth->R_RTO[R204]->O_ID[R109]
/*
        .if ( (not_empty aone_oid) and (not_empty aoth_oid) )
          .select many aone_ref_set related by aone->R_RTO[R204]->O_RTIDA[R110]->O_REF[R111]->O_RATTR[R108]->O_ATTR[R106]
          .select many aoth_ref_set related by aoth->R_RTO[R204]->O_RTIDA[R110]->O_REF[R111]->O_RATTR[R108]->O_ATTR[R106]
          .invoke one_mc = GetMultCondString( aone.Mult, aone.Cond )
          .invoke other_mc = GetMultCondString( aoth.Mult, aoth.Cond )

 * R$t{r_rel.Numb} is Associative Reflexive:  \
          .if ( assr.Mult == 0 )
1-(${one_mc.result}:${other_mc.result})
          .else
M-(${one_mc.result}:${other_mc.result})
          .end if
          .// Check for OOA96 compliance
          .if ( (aone.Mult != aoth.Mult) or (aone.Cond != aoth.Cond) )
 * Note:  Reflexive association is asymmetric!
          .end if
 *
          .for each aone_ref in aone_ref_set
            .select one one_ref_attr_obj related by aone_ref->O_OBJ[R102]
 *  Referential attribute ${one_ref_attr_obj.Name}.${aone_ref.Name}
 *    refers across R$t{r_rel.Numb} in the direction of ${aone.Txt_Phrs} (R_AONE)
          .end for
 *
          .for each aoth_ref in aoth_ref_set
            .select one other_ref_attr_obj related by aoth_ref->O_OBJ[R102]
 *  Referential attribute ${other_ref_attr_obj.Name}.${aoth_ref.Name}
 *    refers across R$t{r_rel.Numb} in the direction of ${aoth.Txt_Phrs} (R_AOTH)
          .end for
          .//
        .else
          .// Relationship is not formalized.
        .end if  .// (not_empty aone_oid) and (not_empty aoth_oid)
 */
        .//
      .end if
      .//
      .// Here we distinguish between aone and aother for role symmetric
      .// reflexive relationships (where the relationship phrase is identical
      .// on both ends of the relationship).
      .// We will create only one set of methods when role symmetric.
      .invoke aone_methods = CreateAssociativeReflexiveFormalizerMethods( te_relstore, r_rel, aone.Txt_Phrs, gen_declaration, true )
${aone_methods.body}\
      .if ( aone.Txt_Phrs != aoth.Txt_Phrs )
        .invoke aoth_methods = CreateAssociativeReflexiveFormalizerMethods( te_relstore, r_rel, aoth.Txt_Phrs, gen_declaration, false )
${aoth_methods.body}\
      .end if
      .//
      .// Handle Object As Associated One Side (R_AONE)
      .// * Note the reversal of R_RTO here!
      .assign te_relinfo.rel_phrase = aone.Txt_Phrs
      .invoke aone_fundamentals = ImplementRelationshipFundamentals( o_obj, aone_obj, aoth_rto, assr_rgo, r_rel, te_relinfo, te_relstore )
      .//
      .// Handle Object As Associated Other Side (R_AOTH)
      .// * Note the reversal of R_RTO here!
      .assign te_relinfo.rel_phrase = aoth.Txt_Phrs
      .invoke aoth_fundamentals = ImplementRelationshipFundamentals( o_obj, aoth_obj, aone_rto, assr_rgo, r_rel, te_relinfo, te_relstore )
      .//
${aone_fundamentals.body}\
${aoth_fundamentals.body}\
      .//
    .end if
    .//
  .else
    .// associated object processing
    .if ( not associative_reflexive )
      .if ( o_obj.Obj_ID == aone.Obj_ID )
        .// This object is Object As Associated One Side (R_AONE)
        .// NOTE:  Multiplicity is that of the Other Side
        .assign te_relinfo.multiplicity = aoth.Mult
        .invoke fundamentals = ImplementRelationshipFundamentals( o_obj, assr_obj, aone_rto, assr_rgo, r_rel, te_relinfo, te_relstore )
${fundamentals.body}\
        .//
      .else
        .// This object is Object As Associated Other Side (R_AOTH)
        .// NOTE:  Multiplicity is that of the One Side
        .assign te_relinfo.multiplicity = aone.Mult
        .invoke fundamentals = ImplementRelationshipFundamentals( o_obj, assr_obj, aoth_rto, assr_rgo, r_rel, te_relinfo, te_relstore )
${fundamentals.body}\
        .//
      .end if
    .else
      .// reflexive associative relationship
      .//
      .// Handle One Side
      .assign te_relinfo.rel_phrase = aone.Txt_Phrs
      .assign te_relinfo.multiplicity = aone.Mult
      .invoke aone_fundamentals = ImplementRelationshipFundamentals( o_obj, assr_obj, aone_rto, assr_rgo, r_rel, te_relinfo, te_relstore )
      .//
      .// Handle Other Side
      .assign te_relinfo.rel_phrase = aoth.Txt_Phrs
      .assign te_relinfo.multiplicity = aoth.Mult
      .invoke aoth_fundamentals = ImplementRelationshipFundamentals( o_obj, assr_obj, aoth_rto, assr_rgo, r_rel, te_relinfo, te_relstore )
      .//
${aone_fundamentals.body}\
${aoth_fundamentals.body}\
      .//
    .end if
  .end if  .// o_obj.Obj_ID == assr.Obj_ID
.end function
.//
.//============================================================================
.// In this architecture, we do not support direct navigation of composed
.// relationships.  In structural code generation, just issue a warning.
.// Fragment generation will terminate if navigation is attempted in the
.// action language.
.//============================================================================
.function ComposedRelationshipMethods
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param inst_ref te_relstore
  .param boolean  gen_declaration
  .//
  .if ( gen_declaration )
    .select one comp related by r_rel->R_COMP[R206]
    .select one one_side related by comp->R_CONE[R214]
    .select one one_side_oir related by one_side->R_OIR[R203]
    .invoke one_mc = GetMultCondString( one_side.Mult, one_side.Cond )
    .select any one_obj from instances of O_OBJ where ( selected.Obj_ID == one_side_oir.Obj_ID )
    .select one other_side related by comp->R_COTH[R215]
    .select one other_side_oir related by other_side->R_OIR[R203]
    .invoke other_mc = GetMultCondString( other_side.Mult, other_side.Cond )
    .select any other_obj from instances of O_OBJ where ( selected.Obj_ID == other_side_oir.Obj_ID )
    .//
    .assign msg1 = "WARNING:  R$t{r_rel.Numb} is COMPOSITION - No code generated"
    .assign msg2 = "R$t{r_rel.Numb} = ${comp.Rel_Chn} is ${one_mc.result}:${other_mc.result} from (${one_obj.Key_Lett}) to (${other_obj.Key_Lett})"
    .print "\n  ${msg1}\n  ${msg2}"
/* ${msg1} */
/* ${msg2} */
  .end if
  .//
.end function
.//
.//
.//============================================================================
.// association formalizing object Link/Unlink functions:
.//============================================================================
.//
.//
.//============================================================================
.// This function creates the relationship link and unlink methods for a
.// simple (non-reflexive) relationship. 
.//============================================================================
.function CreateSimpleFormalizerMethods
  .param inst_ref te_relstore
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param boolean  gen_declaration
  .//
  .select any te_file from instances of TE_FILE
  .select any te_set from instances of TE_SET
  .select any te_target from instances of TE_TARGET
  .select one te_rel related by r_rel->TE_REL[R2034]
  .select one form related by r_rel->R_SIMP[R206]->R_FORM[R208]
  .select one part related by r_rel->R_SIMP[R206]->R_PART[R207]
  .select one part_obj related by part->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
  .//
  .select one rto related by part->R_RTO[R204]
  .select one rgo related by form->R_RGO[R205]
  .//
  .select one part_te_class related by part_obj->TE_CLASS[R2019]
  .select one form_te_class related by o_obj->TE_CLASS[R2019]
  .select one te_c related by form_te_class->TE_C[R2064]
  .//
  .invoke r = GetRelateToName( o_obj, r_rel, "" )
  .assign relate_method = r.result
  .invoke r = GetUnrelateFromName( o_obj, r_rel, "" )
  .assign unrelate_method = r.result
  .//
  .select one part_te_oir related by rto->R_OIR[R203]->TE_OIR[R2035]
  .select one form_te_oir related by rgo->R_OIR[R203]->TE_OIR[R2035]
  .if ( gen_declaration )
    .assign part_mult_cmt = "<-"
    .if ( part.Mult != 0 )
      .assign part_mult_cmt = "<<-"
    .end if
    .assign form_mult_cmt = "->"
    .if ( form.Mult != 0 )
      .assign form_mult_cmt = "->>"
    .end if
    .assign externstatic = "static "
    .assign thismodule = ", ${te_c.Name} *"
    .if ( "C" == te_target.language )
      .assign externstatic = ""
      .assign thismodule = ""
    .end if
    .include "${te_file.arc_path}/t.class.relate_simple.h"
  .else
    .assign thismodule = ", ${te_c.Name} * thismodule"
    .if ( "C" == te_target.language )
      .assign thismodule = ""
    .end if
    .assign link_call = "${form_te_class.scope}${relate_method}( (${part_te_class.GeneratedName} *) l, (${form_te_class.GeneratedName} *) r )"
    .select any assoc from instances of O_OBJ where ( false )
    .invoke PersistAddLinkCalls( o_obj, part_obj, assoc, te_relstore, link_call )
    .select any oref related by rgo->O_REF[R111]
    .assign set_referentials = ""
    .assign reset_referentials = ""
    .if ( not_empty oref )
      .invoke set_refs = SetReferentialAttributes( "part", "form", rto, rgo )
      .invoke reset_refs = ResetReferentialAttributes( "form", rgo )
      .assign set_referentials = set_refs.body
      .assign reset_referentials = reset_refs.body
    .end if  .// not_empty oid
    .select any assoc from instances of O_OBJ where ( false )
    .invoke persist_relate = PersistCallPostLink( "0", te_relstore, o_obj, part_obj, "part", o_obj, "form", assoc, "" )
    .invoke persist_unrelate = PersistCallPostLink( "1", te_relstore, o_obj, part_obj, "part", o_obj, "form", assoc, "" )
    .include "${te_file.arc_path}/t.class.relate_simple.c"
  .end if  .// gen_declaration
  .//
.end function
.//
.//============================================================================
.// This function creates the relationship link and unlink methods for a
.// simple reflexive relationship.
.//============================================================================
.function CreateSimpleReflexiveFormalizerMethods
  .param inst_ref te_relstore
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .param boolean  gen_declaration
  .//
  .select any te_file from instances of TE_FILE
  .select any te_set from instances of TE_SET
  .select any te_target from instances of TE_TARGET
  .select one te_rel related by r_rel->TE_REL[R2034]
  .select one form related by r_rel->R_SIMP[R206]->R_FORM[R208]
  .select one part related by r_rel->R_SIMP[R206]->R_PART[R207]
  .select one rto related by part->R_RTO[R204]
  .select one rgo related by form->R_RGO[R205]
  .select one part_te_oir related by rto->R_OIR[R203]->TE_OIR[R2035]
  .select one form_te_oir related by rgo->R_OIR[R203]->TE_OIR[R2035]
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_c related by te_class->TE_C[R2064]
  .//
  .invoke r = GetRelateToName( o_obj, r_rel, rel_phrase )
  .assign relate_method = r.result
  .invoke r = GetUnrelateFromName( o_obj, r_rel, rel_phrase )
  .assign unrelate_method = r.result
    .//
  .//
  .if ( gen_declaration )
    .assign externstatic = "static "
    .assign thismodule = ", ${te_c.Name} *"
    .if ( "C" == te_target.language )
      .assign externstatic = ""
      .assign thismodule = ""
    .end if
    .include "${te_file.arc_path}/t.class.relate_reflex.h"
  .else
    .assign thismodule = ", ${te_c.Name} * thismodule"
    .if ( "C" == te_target.language )
      .assign thismodule = ""
    .end if
    .assign left_is_formalizer = false
    .if ( rel_phrase == part.Txt_Phrs )
      .// Left is formalizer, right is participant
      .assign left_is_formalizer = true
    .end if
    .select any assoc from instances of O_OBJ where ( false )
    .assign link_call = "${te_class.scope}${relate_method}( (${te_class.GeneratedName} *) l, (${te_class.GeneratedName} *) r )"
    .invoke persist_relate = PersistCallPostLink( "0", te_relstore, o_obj, o_obj, "left", o_obj, "right", assoc, "" )
    .invoke persist_unrelate = PersistCallPostLink( "1", te_relstore, o_obj, o_obj, "left", o_obj, "right", assoc, "" )
    .invoke PersistAddLinkCalls( o_obj, o_obj, assoc, te_relstore, link_call )
    .select any oref related by rgo->O_REF[R111]
    .assign set_referentials = ""
    .assign reset_referentials = ""
    .if ( not_empty oref )
      .invoke set_refs = SetReferentialAttributes( "left", "right", rto, rgo )
      .invoke reset_refs = ResetReferentialAttributes( "right", rgo )
      .if ( rel_phrase == part.Txt_Phrs )
        .invoke set_refs = SetReferentialAttributes( "right", "left", rto, rgo )
        .invoke reset_refs = ResetReferentialAttributes( "left", rgo )
      .end if
      .assign set_referentials = set_refs.body
      .assign reset_referentials = reset_refs.body
    .end if  .// not_empty oid
    .invoke persist_relate = PersistCallPostLink( "0", te_relstore, o_obj, o_obj, "left", o_obj, "right", assoc, "" )
    .invoke persist_unrelate = PersistCallPostLink( "1", te_relstore, o_obj, o_obj, "left", o_obj, "right", assoc, "" )
    .include "${te_file.arc_path}/t.class.relate_reflex.c"
  .end if  .// gen_declaration
.end function
.//
.//============================================================================
.// This function creates the relationship link and unlink methods for a
.// subtype/supertype relationship.
.//
.// Note that we _always_ fully link a subtype to supertype regardless of
.// whether or not the link is navigated in the analysis model.  It is
.// plausable that the relationship may never be navigated, especially in the
.// case of a polymorphic event hierarchy. In which case we need full linkage
.// to forward the event.  Thus, attempting to save a few bytes in the case
.// of an incomplete non-poly model just is not worth the effort.
.//============================================================================
.function CreateSubtypeFormalizerMethods
  .param inst_ref te_relstore
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param boolean  gen_declaration
  .//
  .select any te_file from instances of TE_FILE
  .select any te_target from instances of TE_TARGET
  .select one te_rel related by r_rel->TE_REL[R2034]
  .select one r_super related by r_rel->R_SUBSUP[R206]->R_SUPER[R212]
  .select one supertype_obj related by r_super->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
  .//
  .select one rto related by r_super->R_RTO[R204]
  .select any rgo related by r_rel->R_SUBSUP[R206]->R_SUB[R213]->R_RGO[R205] where (selected.Obj_ID == o_obj.Obj_ID)
  .//
  .select one super_te_class related by supertype_obj->TE_CLASS[R2019]
  .select one sub_te_class related by o_obj->TE_CLASS[R2019]
  .select one te_c related by sub_te_class->TE_C[R2064]
  .//
  .invoke r = GetRelateToName( o_obj, r_rel, "" )
  .assign relate_method = r.result
  .invoke r = GetUnrelateFromName( o_obj, r_rel, "" )
  .assign unrelate_method = r.result
  .//
  .select one super_te_oir related by rto->R_OIR[R203]->TE_OIR[R2035]
  .select one sub_te_oir related by rgo->R_OIR[R203]->TE_OIR[R2035]
  .if ( gen_declaration )
    .assign externstatic = "static "
    .assign thismodule = ", ${te_c.Name} *"
    .if ( "C" == te_target.language )
      .assign externstatic = ""
      .assign thismodule = ""
    .end if
    .include "${te_file.arc_path}/t.class.relate_subtype.h"
  .else
    .assign thismodule = ", ${te_c.Name} * thismodule"
    .if ( "C" == te_target.language )
      .assign thismodule = ""
    .end if
    .select one subtype_te_class related by o_obj->TE_CLASS[R2019]
    .assign link_call = "${sub_te_class.scope}${relate_method}( (${super_te_class.GeneratedName} *) l, (${sub_te_class.GeneratedName} *) r )"
    .select any assoc from instances of O_OBJ where ( false )
    .invoke PersistAddLinkCalls( supertype_obj, o_obj, assoc, te_relstore, link_call )
    .select any oref related by rgo->O_REF[R111]
    .assign set_referentials = ""
    .assign reset_referentials = ""
    .if ( not_empty oref )
      .invoke set_refs = SetReferentialAttributes( "supertype", "subtype", rto, rgo )
      .invoke reset_refs = ResetReferentialAttributes( "subtype", rgo )
      .assign set_referentials = set_refs.body
      .assign reset_referentials = reset_refs.body
    .end if  .// not_empty oid
    .invoke persist_relate = PersistCallPostLink( "0", te_relstore, o_obj, supertype_obj, "supertype", o_obj, "subtype", assoc, "" )
    .invoke persist_unrelate = PersistCallPostLink( "1", te_relstore, o_obj, supertype_obj, "supertype", o_obj, "subtype", assoc, "" )
    .include "${te_file.arc_path}/t.class.relate_subtype.c"
  .end if  .// gen_declaration
.end function
.//
.//============================================================================
.// This function creates the relationship link and unlink methods for an
.// associative relationship. 
.//============================================================================
.function CreateAssociativeFormalizerMethods
  .param inst_ref te_relstore
  .param inst_ref r_rel
  .param string   rel_phrase
  .param boolean  gen_declaration
  .//
  .select any te_file from instances of TE_FILE
  .select any te_set from instances of TE_SET
  .select any te_target from instances of TE_TARGET
  .select one te_rel related by r_rel->TE_REL[R2034]
  .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
  .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
  .select one assr related by r_rel->R_ASSOC[R206]->R_ASSR[R211]
  .//
  .select one aone_rto related by aone->R_RTO[R204]
  .select one aoth_rto related by aoth->R_RTO[R204]
  .select one assr_rgo related by assr->R_RGO[R205]
  .//
  .select one aone_te_oir related by aone_rto->R_OIR[R203]->TE_OIR[R2035]
  .select one aoth_te_oir related by aoth_rto->R_OIR[R203]->TE_OIR[R2035]
  .select one assr_te_oir related by assr_rgo->R_OIR[R203]->TE_OIR[R2035]
  .//
  .select one aone_obj related by aone_rto->R_OIR[R203]->O_OBJ[R201]
  .select one aoth_obj related by aoth_rto->R_OIR[R203]->O_OBJ[R201]
  .select one assr_obj related by assr_rgo->R_OIR[R203]->O_OBJ[R201]
  .//
  .select one aone_te_class related by aone_obj->TE_CLASS[R2019]
  .select one aoth_te_class related by aoth_obj->TE_CLASS[R2019]
  .select one assr_te_class related by assr_obj->TE_CLASS[R2019]
  .select one te_c related by assr_te_class->TE_C[R2064]
  .invoke r = GetRelateToName( assr_obj, r_rel, "" )
  .assign relate_method = r.result
  .invoke r = GetUnrelateFromName( assr_obj, r_rel, "" )
  .assign unrelate_method = r.result
  .//
  .if ( gen_declaration )
    .assign externstatic = "static "
    .assign thismodule = ", ${te_c.Name} *"
    .if ( "C" == te_target.language )
      .assign externstatic = ""
      .assign thismodule = ""
    .end if
    .include "${te_file.arc_path}/t.class.relate_assoc.h"
  .else
    .assign thismodule = ", ${te_c.Name} * thismodule"
    .if ( "C" == te_target.language )
      .assign thismodule = ""
    .end if
    .//
    .assign link_call = "${assr_te_class.scope}${relate_method}( (${aone_te_class.GeneratedName} *) l, (${aoth_te_class.GeneratedName} *) r, (${assr_te_class.GeneratedName} *) a )"
    .invoke PersistAddLinkCalls( aone_obj, aoth_obj, assr_obj, te_relstore, link_call )
    .select any oref related by assr_rgo->O_REF[R111]
    .assign set_aone_referentials = ""
    .assign set_aoth_referentials = ""
    .assign reset_referentials = ""
    .if ( not_empty oref )
      .invoke set_aone_refs = SetReferentialAttributes( "aone", "assr", aone_rto, assr_rgo )
      .invoke set_aoth_refs = SetReferentialAttributes( "aoth", "assr", aoth_rto, assr_rgo )
      .invoke reset_refs = ResetReferentialAttributes( "assr", assr_rgo )
      .assign set_aone_referentials = set_aone_refs.body
      .assign set_aoth_referentials = set_aoth_refs.body
      .assign reset_referentials = reset_refs.body
    .end if  .// not_empty oid
    .invoke persist_relate = PersistCallPostLink( "0", te_relstore, assr_obj, aone_obj, "aone", aoth_obj, "aoth", assr_obj, "assr" )
    .invoke persist_unrelate = PersistCallPostLink( "1", te_relstore, assr_obj, aone_obj, "aone", aoth_obj, "aoth", assr_obj, "assr" )
    .include "${te_file.arc_path}/t.class.relate_assoc.c"
  .end if  .// gen_declaration
.end function
.//
.//============================================================================
.// This function creates the relationship link and unlink methods for an
.// associative reflexive relationship. 
.//============================================================================
.function CreateAssociativeReflexiveFormalizerMethods
  .param inst_ref te_relstore
  .param inst_ref r_rel
  .param string   rel_phrase
  .param boolean  gen_declaration
  .param boolean  towards_aone
  .//
  .select any te_file from instances of TE_FILE
  .select any te_set from instances of TE_SET
  .select any te_target from instances of TE_TARGET
  .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
  .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
  .select one assr related by r_rel->R_ASSOC[R206]->R_ASSR[R211]
  .//
  .select one aone_rto related by aone->R_RTO[R204]
  .select one aoth_rto related by aoth->R_RTO[R204]
  .select one assr_rgo related by assr->R_RGO[R205]
  .//
  .select one assoc_obj related by aone_rto->R_OIR[R203]->O_OBJ[R201]
  .select one assr_obj related by assr_rgo->R_OIR[R203]->O_OBJ[R201]
  .select one assoc_te_class related by assoc_obj->TE_CLASS[R2019]
  .select one assr_te_class related by assr_obj->TE_CLASS[R2019]
  .select one te_c related by assr_te_class->TE_C[R2064]
  .select one te_rel related by r_rel->TE_REL[R2034]
  .//
  .invoke r = GetRelateToName( assr_obj, r_rel, rel_phrase )
  .assign relate_method = r.result
  .invoke r = GetUnrelateFromName( assr_obj, r_rel, rel_phrase )
  .assign unrelate_method = r.result
  .//
  .if ( gen_declaration )
    .assign externstatic = "static "
    .assign thismodule = ", ${te_c.Name} *"
    .if ( "C" == te_target.language )
      .assign externstatic = ""
      .assign thismodule = ""
    .end if
    .include "${te_file.arc_path}/t.class.relate_assref.h"
  .else
    .assign thismodule = ", ${te_c.Name} * thismodule"
    .if ( "C" == te_target.language )
      .assign thismodule = ""
    .end if
    .// CDS Here we need to distinguish between aone and aother for role symmetric
    .// reflexive relationships (where the relationship phrase is identical on both
    .// ends of the relationship).
    .select any aone_te_oir related by r_rel->R_OIR[R201]->TE_OIR[R2035] where ( ( selected.Obj_ID == assoc_obj.Obj_ID ) and ( selected.rel_phrase == "$_{aone.Txt_Phrs}" ) )
    .select any aoth_te_oir related by r_rel->R_OIR[R201]->TE_OIR[R2035] where ( ( selected.Obj_ID == assoc_obj.Obj_ID ) and ( selected.rel_phrase == "$_{aoth.Txt_Phrs}" ) )
    .select any assr_te_oir related by r_rel->R_OIR[R201]->TE_OIR[R2035] where ( selected.Obj_ID == assr_obj.Obj_ID )
    .assign link_call = "${assr_te_class.scope}${relate_method}( (${assoc_te_class.GeneratedName} *) l, (${assoc_te_class.GeneratedName} *) r, (${assr_te_class.GeneratedName} *) a )"
    .invoke PersistAddLinkCalls( assoc_obj, assoc_obj, assr_obj, te_relstore, link_call )
    .invoke persist_relate = PersistCallPostLink( "0", te_relstore, assr_obj, assoc_obj, "left", assoc_obj, "right", assr_obj, "assr" )
    .invoke persist_unrelate = PersistCallPostLink( "1", te_relstore, assr_obj, assoc_obj, "left", assoc_obj, "right", assr_obj, "assr" )
    .select any oref related by assr_rgo->O_REF[R111]
    .assign set_aone_referentials = ""
    .assign set_aoth_referentials = ""
    .assign reset_referentials = ""
    .if ( not_empty oref )
      .if ( towards_aone )
        .invoke set_aone_refs = SetReferentialAttributes( "right", "assr", aone_rto, assr_rgo )
        .invoke set_aoth_refs = SetReferentialAttributes( "left", "assr", aoth_rto, assr_rgo )
        .assign set_aone_referentials = set_aone_refs.body
        .assign set_aoth_referentials = set_aoth_refs.body
      .else
        .invoke set_aone_refs = SetReferentialAttributes( "left", "assr", aone_rto, assr_rgo )
        .invoke set_aoth_refs = SetReferentialAttributes( "right", "assr", aoth_rto, assr_rgo )
        .assign set_aone_referentials = set_aone_refs.body
        .assign set_aoth_referentials = set_aoth_refs.body
      .end if
      .invoke reset_refs = ResetReferentialAttributes( "assr", assr_rgo )
      .assign reset_referentials = reset_refs.body
    .end if
    .include "${te_file.arc_path}/t.class.relate_assref.c"
  .end if
  .//
.end function
.//
.//============================================================================
.// Copy across the (accessed) identifier into the referential attribute(s).
.// NOTE:  Predicates - The following logic assumes that:
.// 1) The relationship is formalized (<oid> will exist)
.//============================================================================
.function SetReferentialAttributes
  .param string part_ptr
  .param string form_ptr
  .param inst_ref r_rto
  .param inst_ref r_rgo
  .//
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_string from instances of TE_STRING
  .select any te_sys from instances of TE_SYS
  .// Get set of Object Identifying Attribute(s)
  .select many o_oidas related by r_rto->O_ID[R109]->O_OIDA[R105]
  .for each o_oida in o_oidas
    .// Get the identifying attribute corresponding to this <o_oida> instance.
    .select any o_attr related by o_oida->O_ATTR[R105] where (selected.Attr_ID == o_oida.Attr_ID)
    .// Get the Referred To Identifier Attribute (O_RTIDA) instance reference.
    .select any o_rtida related by r_rto->O_RTIDA[R110] where ((selected.Attr_ID == o_oida.Attr_ID) and ((selected.Obj_ID == o_oida.Obj_ID) and (selected.Oid_ID == o_oida.Oid_ID)))
    .// There can be more than one valid O_REF here, so get _any_ one.
    .// Note:  If MANY <o_rtida>, we need to rip through the (possible) combined referentials,
    .// unlinking any non-constrained elements.
    .select any o_ref related by o_rtida->O_REF[R111] where ( (selected.Obj_ID == r_rgo.Obj_ID) and (selected.OIR_ID == r_rgo.OIR_ID) )
    .// Get the referential attribute corresponding to the current <o_attr>.
    .select one ref_o_attr related by o_ref->O_RATTR[R108]->O_ATTR[R106]
    .select one ref_te_attr related by ref_o_attr->TE_ATTR[R2033]
    .if ( ref_te_attr.translate )
      .select one ident_te_attr related by o_attr->TE_ATTR[R2033]
      .assign ident_accessor = ( ${part_ptr} + "->" ) + ${ident_te_attr.GeneratedName}
      .select one o_dbattr related by o_attr->O_BATTR[R106]->O_DBATTR[R107]
      .if ( not_empty o_dbattr )
        .// derived attributes should be accessed via the accessor function
        .select one te_dbattr related by o_dbattr->TE_DBATTR[R2026]
        .assign ident_accessor = ( ${te_dbattr.GeneratedName} + "( " ) + ( ${part_ptr} + " )" )
      .end if
      .invoke r = GetAttributeCodeGenType( ref_o_attr )
      .assign te_dt = r.result
      .include "${te_file.arc_path}/t.class.set_refs.c"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Provide code to reset the referentials after an UNRELATE statement.
.//============================================================================
.function ResetReferentialAttributes
  .param string   form_ptr
  .param inst_ref r_rgo
  .//
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_string from instances of TE_STRING
  .select many o_attrs related by r_rgo->O_REF[R111]->O_RATTR[R108]->O_ATTR[R106]
  .for each o_attr in o_attrs
    .select one ref_te_attr related by o_attr->TE_ATTR[R2033]
    .if ( ref_te_attr.translate )
      .select many o_refs related by o_attr->O_RATTR[R106]->O_REF[R108]
      .assign c = cardinality o_refs
      .if ( c == 1 )
        .select any o_oida related by o_attr->O_OIDA[R105]
        .if ( empty o_oida )
          .invoke r = GetAttributeCodeGenType( o_attr )
          .assign te_dt = r.result
          .include "${te_file.arc_path}/t.class.reset_refs.c"
        .end if
      .end if
    .end if
  .end for
.end function
.//
.//============================================================================
.// Update the relationship storage instance with additional information
.// regarding the declaration and init/cleanup of relationship data/code.
.//============================================================================
.function AddRelationshipStorage
  .param inst_ref this_o_obj
  .param inst_ref related_o_obj
  .param inst_ref rto
  .param inst_ref rgo
  .param inst_ref rel
  .param inst_ref te_relinfo
  .param inst_ref te_relstore
  .//
  .select one related_te_class related by related_o_obj->TE_CLASS[R2019]
  .select one te_c related by related_te_class->TE_C[R2064]
  .select any te_instance from instances of TE_INSTANCE
  .select any te_set from instances of TE_SET
  .select any te_typemap from instances of TE_TYPEMAP
  .//
  .// Get the base names of the data member(s) to be generated.
  .select any te_oir related by rel->R_OIR[R201]->TE_OIR[R2035] where ( ( selected.Obj_ID == related_o_obj.Obj_ID ) and ( selected.rel_phrase == "$_{te_relinfo.rel_phrase}" ) )
  .if ( empty te_oir )
    .select any te_oir related by rel->R_OIR[R201]->TE_OIR[R2035] where ( selected.Obj_ID == related_o_obj.Obj_ID )
  .end if
  .invoke member_data_name = GetRelationshipDataMemberName( related_o_obj, rel, te_relinfo.rel_phrase )
  .//
  .assign storage_needed = false
  .assign phrase = ""
  .if ( "" != te_relinfo.rel_phrase )
    .// Include relationship phrase in reflexive relationship commenting.
    .assign phrase = ".'${te_relinfo.rel_phrase}'"
  .end if
  .//
  .if ( not_empty te_c )
  .if ( this_o_obj.Obj_ID != related_o_obj.Obj_ID )
    .// Non-reflexive - linkage based on navigation needs
    .if ( te_relinfo.is_formalizer )
      .select one rto_te_oir related by rto->R_OIR[R203]->TE_OIR[R2035]
      .if ( rto_te_oir.NavigatedTo or te_c.OptDisabled )
        .assign storage_needed = true
      .else
        .select one super related by rto->R_SUPER[R204]
        .if ( not_empty super )
          .assign storage_needed = true
        .end if
      .end if
    .else
      .select one rgo_te_oir related by rgo->R_OIR[R203]->TE_OIR[R2035]
      .if ( rgo_te_oir.NavigatedTo or te_c.OptDisabled )
        .assign storage_needed = true
      .else
        .select one sub related by rgo->R_SUB[R205]
        .if ( not_empty sub )
          .assign storage_needed = true
        .end if
      .end if
    .end if
  .else
    .// Reflexive - always need bi-directional linkage
    .assign storage_needed = true
  .end if
  .end if
  .//
  .if ( te_relinfo.gen_declaration )
    .// Add relationship data storage declaration.
    .// Links to related objects are stored as member data of the class.
    .assign data_declare = ""
    .//
    .if ( te_relinfo.multiplicity == 0 )
      .if ( not te_relinfo.is_supertype )
        .// relationship data storage for link to ONE
        .if ( storage_needed )
          .assign data_declare = "  ${related_te_class.GeneratedName} * ${member_data_name.result};\n"
        .else
          .assign data_declare = "  /* Note:  No storage needed for ${this_o_obj.Key_Lett}->${related_o_obj.Key_Lett}[R${rel.Numb}${phrase}] */\n"
        .end if
      .else
        .if ( te_relinfo.generate_subtype )
          .// optimized relationship storage for link to a subtype
          .assign data_declare = "  void * ${member_data_name.result};\n  ${te_typemap.object_number_name} ${member_data_name.obj_id};\n"
          .assign te_relinfo.generate_subtype = false
        .end if
      .end if
    .else
      .// relationship data storage for link to MANY
      .if ( storage_needed )
        .assign data_declare = "  ${te_set.scope}${te_set.base_class} ${member_data_name.result};\n"
      .else
        .assign data_declare = "  /* Note:  No storage needed for ${this_o_obj.Key_Lett}->${related_o_obj.Key_Lett}[R${rel.Numb}${phrase}] */\n"
      .end if
    .end if
    .//
    .assign te_relstore.data_declare = te_relstore.data_declare + data_declare
  .else
    .// Add relationship data storage definition.
    .assign data_init = ""
    .assign data_fini = ""
    .//
    .if ( te_relinfo.multiplicity == 0 )
      .// relationship data storage for link to ONE
      .if ( not te_relinfo.is_supertype )
        .if ( storage_needed )
          .assign data_init = "  ${te_instance.self}->${member_data_name.result} = 0;\n"
          .assign data_fini = "  ${te_instance.self}->${member_data_name.result} = 0;\n"
        .end if
      .else
        .if ( te_relinfo.generate_subtype )
          .// optimized relationship storage for link to a subtype
          .assign data_init = "  ${te_instance.self}->${member_data_name.result} = 0;\n  ${te_instance.self}->${member_data_name.obj_id} = 0;\n"
          .if ( storage_needed )
            .assign data_fini = "  ${te_instance.self}->${member_data_name.result} = 0;\n  ${te_instance.self}->${member_data_name.obj_id} = 0;\n"
            .assign te_relinfo.generate_subtype = false
          .end if
        .end if
      .end if
    .else
      .// relationship data storage for link to MANY
      .if ( storage_needed )
        .assign data_init = "  ${te_set.init}( &${te_instance.self}->${member_data_name.result} );\n"
        .assign data_fini = "  ${te_set.module}${te_set.clear}( &${te_instance.self}->${member_data_name.result} );\n"
      .end if
    .end if
    .//
    .// Propagate local expressions upon te_relstore instance output attributes.
    .assign te_relstore.data_init = te_relstore.data_init + data_init
    .assign te_relstore.data_fini = te_relstore.data_fini + data_fini
    .select one te_rel related by rel->TE_REL[R2034]
    .assign te_rel.storage_needed = storage_needed
    .//
  .end if
.end function
.//
.//============================================================================
.// Output Fragment Attributes:
.// <body> :  Generated code for the relationship methods.
.//
.// Modifies:
.// <te_relstore> :  Requisite storage components for the association are appended.
.//============================================================================
.function ImplementRelationshipFundamentals
  .param inst_ref this_o_obj
  .param inst_ref related_o_obj
  .param inst_ref r_rto
  .param inst_ref r_rgo
  .param inst_ref r_rel
  .param inst_ref te_relinfo
  .param inst_ref te_relstore
  .select any te_file from instances of TE_FILE
  .// Append relationship data storage components to te_relstore instance.
  .invoke AddRelationshipStorage( this_o_obj, related_o_obj, r_rto, r_rgo, r_rel, te_relinfo, te_relstore )
  .if ( te_relinfo.gen_declaration )
    .assign gen_navigate = false
    .if ( te_relinfo.is_supertype or ( te_relinfo.multiplicity != 0 ) )
      .assign gen_navigate = true
    .end if
    .if ( gen_navigate )
      .select one te_class related by this_o_obj->TE_CLASS[R2019]
      .select one related_te_class related by related_o_obj->TE_CLASS[R2019]
      .select one te_c related by te_class->TE_C[R2064]
      .if ( ( ( not_empty te_class ) and ( not_empty related_te_class ) ) and ( not_empty te_c ) )
        .// Get the base names of the methods and data members to be generated.
        .select any te_oir related by r_rel->R_OIR[R201]->TE_OIR[R2035] where ( selected.Obj_ID == related_o_obj.Obj_ID )
        .invoke navigate_method  = GetNavigateLinkMethodName( this_o_obj, related_o_obj, r_rel, te_relinfo.rel_phrase )
        .invoke member_data_name = GetRelationshipDataMemberName( related_o_obj, r_rel, te_relinfo.rel_phrase )
        .//
        .// Add the relationship navigation accessor method declaration as an inline
        .select one te_oir1 related by r_rto->R_OIR[R203]->TE_OIR[R2035]
        .select one te_oir2 related by r_rgo->R_OIR[R203]->TE_OIR[R2035]
        .assign navigated = ( te_oir1.NavigatedTo or te_oir2.NavigatedTo )
        .include "${te_file.arc_path}/t.class.link.h"
      .end if
    .end if
  .end if
.end function
.//
.function FactoryTE_RELINFO
  .select any te_relinfo from instances of TE_RELINFO
  .invoke relinfo_factory( te_relinfo )
  .assign attr_result = te_relinfo
.end function
.//
.//============================================================================
.// Clean up the input instance te_relstore.
.//============================================================================
.function FiniRelStorageFragment
  .param inst_ref te_relstore
  .assign te_relstore.data_declare = ""
  .assign te_relstore.data_init    = ""
  .assign te_relstore.data_fini    = ""
  .assign te_relstore.link_calls   = ""
  .assign te_relstore.link_index   = 0
  .delete object instance te_relstore
.end function
.//
.//============================================================================
.// Return <result> the multiplicity/conditionality string.
.//
.// Inputs:
.// <multiplicity>   : 0 = one, 1 = many
.// <conditionality> : 0 = unconditional, 1 = conditional
.//============================================================================
.function GetMultCondString
  .param integer multiplicity
  .param integer conditionality
  .//
  .assign attr_result = "??"
  .if ( multiplicity == 0 )
    .if ( conditionality == 0 )
      .assign attr_result = "1"
    .elif ( conditionality == 1 )
      .assign attr_result = "0..1"
    .end if 
  .elif ( multiplicity == 1 )
    .if ( conditionality == 0 )
      .assign attr_result = "0..*"
    .elif ( conditionality == 1 )
      .assign attr_result = "*"
    .end if 
  .end if
.end function
.//
