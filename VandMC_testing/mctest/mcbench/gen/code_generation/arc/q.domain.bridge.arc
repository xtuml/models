.//============================================================================
.// External Entity bridge process skeleton generator.
.//============================================================================
.//
.//
.//============================================================================
.// Build the include file body for the bridge.
.//============================================================================
.function TE_BRG_CreateDeclarations
  .param inst_ref te_ee
  .param inst_ref_set te_brgs
  .select any te_file from instances of TE_FILE
  .select any te_target from instances of TE_TARGET
  .for each te_brg in te_brgs
    .if ( first te_brgs )
      .if ( "C++" == te_target.language )
class ${te_ee.RegisteredName} {
  public:
      .end if
    .end if
    .select one te_aba related by te_brg->TE_ABA[R2010]
    .if ( "C++" == te_target.language )
      .include "${te_file.arc_path}/t.ee.bridge.h"
      .if ( last te_brgs )
};
      .end if
    .else
      .include "${te_file.arc_path}/t.component.message.h"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Generate the bridge skeletons.  Go ahead and translate any action
.// language in the body of the bridge.
.// For TIM, NVS and PERSIST do some special processing.
.//============================================================================
.function TE_BRG_CreateDefinition
  .param inst_ref te_sys
  .param inst_ref te_ee
  .param inst_ref_set te_brgs
  .select any te_eq from instances of TE_EQ
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_target from instances of TE_TARGET
  .assign statement_trace = false
  .select one te_c related by te_ee->TE_C[R2085]
  .if ( not_empty te_c )
    .assign statement_trace = te_c.StmtTrace
  .end if
  .for each te_brg in te_brgs
    .select one te_aba related by te_brg->TE_ABA[R2010]
    .select one te_dt related by te_brg->S_BRG[R2025]->S_DT[R20]->TE_DT[R2021]
    .select one s_brg related by te_brg->S_BRG[R2025]
    .include "${te_file.arc_path}/t.ee.brg.c"
  .end for
.end function
.//
