.//============================================================================
.// This archetype file contains utility functions for relationship namings
.// that span multiple archetype files.
.//============================================================================
.//
.//
.//============================================================================
.// This function returns the name of the object member data to be used
.// for (optimized) storage of a link to a related object.
.//============================================================================
.function GetRelationshipDataMemberName .// string
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .assign result = ( o_obj.Key_Lett + "_R" ) + "$t{r_rel.Numb}"
  .assign obj_id = ""
  .invoke r = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
  .assign suffix = r.result
  .if ( "" != suffix )
    .assign result = result + ( "_" + suffix )
  .end if
  .// Subtype-Supertype relationship?
  .select one subsup_rel related by r_rel->R_SUBSUP[R206]
  .if ( not_empty subsup_rel )
    .select any subtype related by r_rel->R_SUBSUP[R206]->R_SUB[R213] where ( selected.Obj_ID == o_obj.Obj_ID )
    .if ( not_empty subtype )
      .assign result = ( "R" + "$t{r_rel.Numb}" ) + "_subtype"
      .assign obj_id = ( "R" + "$t{r_rel.Numb}" ) + "_object_id"
    .end if
  .end if
  .assign attr_result = result
  .assign attr_obj_id = obj_id
.end function
.//
.//============================================================================
.// Given a relationship <rel> and the object at the other (e.g., right)
.// end <right_obj>, determine the suffix to be used in the relationship
.// link, unlink, and navigation accessor methods.
.// Parameter <rel_phrase> is used for reflexive relationships to determine
.// which "end" of the relationship to get the suffix for.
.//============================================================================
.function GetRelationshipSuffix .// string
  .param inst_ref right_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign result = ""
  .select one simple_rel related by r_rel->R_SIMP[R206]
  .if ( not_empty simple_rel )
    .select any participant related by simple_rel->R_PART[R207]
    .select one formalizer related by simple_rel->R_FORM[R208]
    .if ( right_o_obj.Obj_ID == participant.Obj_ID )
      .assign result = "$_{participant.Txt_Phrs}"
    .else
      .assign result = "$_{formalizer.Txt_Phrs}"
    .end if
    .if ( participant.Obj_ID == formalizer.Obj_ID )
      .if ( participant.Txt_Phrs == rel_phrase )
        .assign result = "$_{participant.Txt_Phrs}"
      .elif ( formalizer.Txt_Phrs == rel_phrase )
        .assign result = "$_{formalizer.Txt_Phrs}"
      .else
        .assign msg = "\nTRANSLATION ERROR:  ${right_o_obj.Key_Lett}[R$t{r_rel.Numb}.'${rel_phrase}']"
        .assign msg = msg + "\nInternal logic error for reflexive simple relationship."
        .print "${msg}"
        .exit 101
      .end if
    .end if
  .else
    .select one assoc_rel related by r_rel->R_ASSOC[R206]
    .if ( not_empty assoc_rel )
      .select one assr related by assoc_rel->R_ASSR[R211]
      .select one one_side related by assoc_rel->R_AONE[R209]
      .select one other_side related by assoc_rel->R_AOTH[R210]
      .if ( one_side.Obj_ID == other_side.Obj_ID )
        .// Reflexive associative relationship
        .if ( rel_phrase == one_side.Txt_Phrs )
          .assign result = "$_{one_side.Txt_Phrs}"
          .// CDS Consider checking here for one side versus other side.
          .// In a role-symmetric reflexive associative, the relationship
          .// phrase may be identical on both ends.
        .elif ( rel_phrase == other_side.Txt_Phrs )
          .assign result = "$_{other_side.Txt_Phrs}"
        .else
          .assign msg = "\nTRANSLATION ERROR:  ${right_o_obj.Key_Lett}[R$t{r_rel.Numb}.'${rel_phrase}']"
          .assign msg = msg + "\nInternal logic error for reflexive associative relationship."
          .print "${msg}"
          .exit 101
        .end if
        .if ( right_o_obj.Obj_ID == assr.Obj_ID )
        .end if
      .else
        .if ( right_o_obj.Obj_ID == one_side.Obj_ID )
          .assign result = "$_{one_side.Txt_Phrs}"
        .elif ( right_o_obj.Obj_ID == other_side.Obj_ID )
          .assign result = "$_{other_side.Txt_Phrs}"
        .end if
      .end if  .// one_side.Obj_ID == other_side.Obj_ID
    .end if  .// not_empty assoc_rel
  .end if  .//  not_empty simp_rel
  .assign attr_result = result
.end function
.//
.//============================================================================
.// Returns whether the left O_OBJ is the formalizer.
.//=============================================================================
.function TE_REL_IsLeftFormalizer .// boolean
  .param inst_ref left_o_obj
  .param inst_ref r_rel
  .param string rel_phrase
  .//
  .assign result = false
  .select one r_simp related by r_rel->R_SIMP[R206]
  .if ( not_empty r_simp )
    .select one formalizer related by r_simp->R_FORM[R208]
    .select any participant related by r_simp->R_PART[R207]
    .if ( participant.Obj_ID != formalizer.Obj_ID )
      .// *** Normal Simple Relationship
      .if ( left_o_obj.Obj_ID == formalizer.Obj_ID )
        .// Left object is formalizer, right object is participant.
        .assign result = true
      .end if
    .else
      .// *** Simple Reflexive Relationship
      .if ( rel_phrase == participant.Txt_Phrs )
        .// Left object is formalizer, right object is participant.
        .assign result = true
      .end if
    .end if
  .else
    .select one subtype_supertype_rel related by r_rel->R_SUBSUP[R206]
    .// Subtype-Supertype relationship?
    .if ( not_empty subtype_supertype_rel )
      .// Left object is the subtype (formalizer)?
      .select any subtype related by subtype_supertype_rel->R_SUB[R213] where ( selected.Obj_ID == left_o_obj.Obj_ID )
      .if ( not_empty subtype )
        .assign result = true
      .end if
    .end if
  .end if
  .assign attr_result = result
.end function
