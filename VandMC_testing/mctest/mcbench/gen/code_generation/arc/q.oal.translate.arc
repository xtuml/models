.//====================================================================
.//
.// File:      $RCSfile: q.oal.translate.arc,v $
.//
.//
.//====================================================================
.//
.//    Purpose:    This file contains the functions that generate
.//                action language from the populated OOA of BPAL.
.//
.//============================================================================
.//
.//  These functions are part one of a two-step translation of
.//  the action language from the model of OAL.  Each of the invoked
.//  functions below translate a specific part of the OAL.  For
.//  example the val_literal_boolean_values() function generates all
.//  of the code for each literal boolean value found in all of the
.//  actions for a domain.  The function smt_ifs()
.//  generates the code for all of the if statements found in the
.//  actions for a domain.  
.//
.//  Each of the functions places the generated code for its
.//  element in an attribute of the supertype, called _buffer_.
.//  In the case of a value, the supertype is V_VAL, for a
.//  statement, the supertype is ACT_SMT.
.//
.//  Once all of the values and statements have been translated,
.//  and all of the code is in the buffers,  the function
.//  blck_xlate is called to order the statements.
.//
.//============================================================================
.//
.function smt_translate_control_statements
  .invoke smt_ifs()
  .invoke smt_elses()
  .invoke smt_fors()
  .invoke smt_whiles()
  .invoke smt_elifs()
.end function
.//
.function smt_translate_other_statements
  .invoke smt_assigns()
  .invoke smt_create_instances()
  .invoke smt_create_instance_novars()
  .invoke smt_delete_instances()
  .invoke smt_create_events_to_instance()
  .invoke smt_create_events_to_class()
  .invoke smt_create_events_to_creator()
  .invoke smt_relates()
  .invoke smt_unrelates()
  .invoke smt_selects()
  .invoke smt_select_wheres()
  .invoke smt_select_relateds()
  .invoke smt_select_related_wheres()
  .invoke smt_relate_usings()
  .invoke smt_unrelate_usings()
  .invoke smt_generate_precreated_events()
  .invoke smt_generate_events()
  .invoke smt_generate_class_events()
  .invoke smt_generate_creator_events()
  .invoke smt_sgns()
  .invoke smt_iops()
  .invoke smt_operates()
  .invoke smt_bridges()
  .invoke smt_functions()
  .invoke smt_returns()
  .invoke smt_controls()
  .invoke smt_breaks()
  .invoke smt_continues()
.end function
.//
.// 
.function oal_translate
  .//
  .//.print "translating values"
  .//.invoke val_translate()
  .//.print "showing values"
  .//.invoke oal_v_val_test()
  .print "translating control statements"
  .invoke smt_translate_control_statements()
  .print "translating other statements"
  .invoke smt_translate_other_statements()
  .print "rolling up statements into action bodies"
  .invoke TE_ABA_rollup()
  .print "done translating statements"
.end function
.//
