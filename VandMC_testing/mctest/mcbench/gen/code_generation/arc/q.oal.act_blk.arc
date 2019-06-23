.//============================================================================
.// This function provides indirection and a single point of turning for
.// fragment versus OAL instance based code generation.
.//============================================================================
.//
.//
.// This function produces the code for an action given the outer
.// block.  It traverses each statement in order and generates for it.
.//
.// If the statement is a control statement, then there are two
.// buffers of generated code, otherwise there is only one.
.//
.function blck_xlate
  .param boolean trace
  .param inst_ref te_blk
  .param inst_ref te_aba
  .invoke r = T_quote()
  .assign quote = r.result
  .if ( "" != te_blk.declaration )
    .invoke aba_code_append( te_aba, te_blk.indentation )
    .invoke aba_code_append( te_aba, te_blk.declaration )
    .invoke aba_code_append( te_aba, "\n" )
  .end if
  .select one te_smt related by te_blk->TE_SMT[R2014]
  .if ( not_empty te_smt )
    .select one act_smt related by te_smt->ACT_SMT[R2038]
    .// We have statements in this block.
    .// Get empty handles into scope.
    .select one current_act_if related by act_smt->ACT_IF[R603] where ( false )
    .select one empty_act_smt related by current_act_if->ACT_SMT[R603] where ( false )
    .assign emit_statement_comments = true
    .select one te_c related by te_aba->TE_C[R2088]
    .if ( not_empty te_c )
      .assign emit_statement_comments = te_c.CodeComments
    .end if
    .while ( not_empty act_smt )
      .assign next = empty_act_smt
      .select one te_smt related by act_smt->TE_SMT[R2038]
      .if ( "" != te_smt.OAL )
        .if ( emit_statement_comments )
          .assign statement_comment = ( ( te_blk.indentation + "/" ) + ( "* " + te_smt.OAL ) ) + ( " *" + "/\n" )
          .invoke aba_code_append( te_aba, statement_comment )
        .end if
        .if ( trace and te_aba.IsTrace )
          .assign statement_trace = te_blk.indentation + "XTUML_OAL_STMT_TRACE( " + "$t{te_blk.depth}" + ", " + quote + te_smt.OAL + quote + " );\n"
          .invoke aba_code_append( te_aba, statement_trace )
        .end if
      .end if
      .invoke aba_code_append( te_aba, te_smt.buffer )
      .select one for_te_blk related by act_smt->ACT_FOR[R603]->ACT_BLK[R605]->TE_BLK[R2016]
      .if ( not_empty for_te_blk )
        .invoke blck_xlate( trace, for_te_blk, te_aba )
      .else
      .select one whl_te_blk related by act_smt->ACT_WHL[R603]->ACT_BLK[R608]->TE_BLK[R2016]
      .if ( not_empty whl_te_blk )
        .invoke blck_xlate( trace, whl_te_blk, te_aba )
      .else
      .select one act_if related by act_smt->ACT_IF[R603]
      .if ( not_empty act_if )
        .assign current_act_if = act_if
        .select one if_te_blk related by act_if->ACT_BLK[R607]->TE_BLK[R2016]
        .if ( not_empty if_te_blk )
          .invoke blck_xlate( trace, if_te_blk, te_aba )
        .end if
        .// ELIF and ELSE are not linked across R661.  So, get the next
        .// one from here.
        .select any next related by act_if->ACT_EL[R682]->ACT_SMT[R603]
        .if ( empty next )
          .select one next related by act_if->ACT_E[R683]->ACT_SMT[R603]
        .else
          .select many next_elif_act_smts related by act_if->ACT_EL[R682]->ACT_SMT[R603]
          .for each next_elif_act_smt in next_elif_act_smts
            .if ( next_elif_act_smt.LineNumber < next.LineNumber )
              .assign next = next_elif_act_smt
            .end if
          .end for
        .end if
      .else
      .select one eli_te_blk related by act_smt->ACT_EL[R603]->ACT_BLK[R658]->TE_BLK[R2016]
      .if ( not_empty eli_te_blk )
        .invoke blck_xlate( trace, eli_te_blk, te_aba )
        .// ELIF and ELSE are not linked across R661.  So, get the next
        .// one from here.
        .select any next related by current_act_if->ACT_EL[R682]->ACT_SMT[R603] where ( selected.LineNumber > act_smt.LineNumber )
        .if ( empty next )
          .select one next related by current_act_if->ACT_E[R683]->ACT_SMT[R603]
          .if ( empty next )
            .select one next related by current_act_if->ACT_SMT[R603]->ACT_SMT[R661.'succeeds']
          .end if
        .else
          .select many next_elif_act_smts related by current_act_if->ACT_EL[R682]->ACT_SMT[R603] where ( selected.LineNumber > act_smt.LineNumber )
          .for each next_elif_act_smt in next_elif_act_smts
            .if ( next_elif_act_smt.LineNumber < next.LineNumber )
              .assign next = next_elif_act_smt
            .end if
          .end for
        .end if
      .else
      .select one else_te_blk related by act_smt->ACT_E[R603]->ACT_BLK[R606]->TE_BLK[R2016]
      .if ( not_empty else_te_blk )
        .invoke blck_xlate( trace, else_te_blk, te_aba )
        .select one next related by current_act_if->ACT_SMT[R603]->ACT_SMT[R661.'succeeds']
      .end if
      .end if
      .end if
      .end if
      .end if
      .if ( "" != te_smt.buffer2 )
        .invoke aba_code_append( te_aba, te_smt.buffer2 )
        .invoke aba_code_append( te_aba, "\n" )
      .end if
      .if ( empty next )
        .select one next related by act_smt->ACT_SMT[R661.'succeeds']
      .end if
      .assign act_smt = next
    .end while
    .if ( "" != te_blk.deallocation )
      .invoke aba_code_append( te_aba, te_blk.indentation )
      .invoke aba_code_append( te_aba, te_blk.deallocation )
      .invoke aba_code_append( te_aba, "\n" )
    .end if
  .end if
.end function
.//
.function smt_buffer_append
  .param inst_ref te_smt
  .param string s
  .assign te_smt.buffer = te_smt.buffer + s
.end function
.//
.function blk_declaration_append
  .param inst_ref te_blk
  .param string s
  .invoke oal( "if ( strlen( te_blk->declaration ) > 400 ) { static char counter = 0; if ( counter++ > 32 ) { counter = 0; s = Escher_stradd( s, quote newline blank blank quote ); } } // Ccode imbed newline blank blank" )
  .assign te_blk.declaration = te_blk.declaration + s
.end function
.//
.function blk_deallocation_append
  .param inst_ref te_blk
  .param string s
  .assign te_blk.deallocation = te_blk.deallocation + s
.end function
.//
.function aba_code_append
  .param inst_ref te_aba
  .param string s
  .assign te_aba.code = te_aba.code + s
  .invoke oal( "strcat( te_aba->code, p_s ); // Ccode comment out above 2 lines" )
.end function
