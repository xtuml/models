.//============================================================================
.// File:  $RCSfile: q.class.cdispatch.arc,v $
.//
.// Description:
.// This archetype file provides the queries to populate templates
.// for class-based state machines.
.//============================================================================
.//
.//
.function CreateClassBasedStateModelEventDispatcher
  .param inst_ref te_c
  .param inst_ref o_obj
  .param boolean  gen_declaration
  .select any te_callout from instances of TE_CALLOUT
  .select any te_file from instances of TE_FILE
  .select any te_eq from instances of TE_EQ
  .select any te_instance from instances of TE_INSTANCE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_trace from instances of TE_TRACE
  .select any te_typemap from instances of TE_TYPEMAP
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if ( gen_declaration )
    .include "${te_file.arc_path}/t.class.cdispatch.h"
  .else
    .select one te_sm related by o_obj->SM_ASM[R519]->SM_SM[R517]->TE_SM[R2043]
    .assign max_state = te_sm.num_states
    .invoke max_event = GetMaxEventInfo( o_obj, FALSE )
    .include "${te_file.arc_path}/t.class.cdispatch.c"
  .end if
.end function
.//
