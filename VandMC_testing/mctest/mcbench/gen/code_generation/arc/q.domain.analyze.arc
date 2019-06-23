.//============================================================================
.// This query file provides the "first pass" of a multi-pass translation
.// model compiler.  The first pass analyzes the action semantics embodied
.// in the analysis domain, and applies optimization algorithms to the
.// action language statements encountered.  The results of these algorithmic
.// operations are then leveraged by subsequent passes of the structural
.// queries and templates to realize time/space/performance trade offs in
.// the generated application code.
.//============================================================================
.//
.//
.function sys_analyze
  .param inst_ref te_sys
  .print "Analyzing model and making optimizations...."
  .// Identify state models having at least one state, event and transition.
  .invoke SM_SM_mark_valid()
  .// Count up how many times each event is created/generated.
  .invoke event_smt_used()
  .// Find classes that are created in some way and identify invalid creates.
  .invoke class_smt_created()
  .// Detect invalid deletions.
  .invoke class_smt_deleted()
  .// Track down optimizable where clauses.
  .invoke selection_whereclause_identify_special()
  .// Identify the associations that need link and/or unlink methods.
  .invoke association_mark_link_unlink_needed()
  .// Identify associations that are navigated (in either or both directions).
  .invoke association_R_OIR_mark_navigated()
  .// Find which event queues are necessary.
  .invoke event_queue_analyze_needed()
  .invoke attr_analyze_accesses()
  .//.invoke attr_analyze_codegen( te_sys )
  .invoke TE_TXN_used()
.end function
.//
