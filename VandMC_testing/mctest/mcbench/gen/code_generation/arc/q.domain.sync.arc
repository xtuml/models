.//============================================================================
.// Translation methods for Domain Function (Synchronous Services).
.//============================================================================
.//
.//
.//
.//============================================================================
.// Return the declaration and assignment of arguments to the values
.// in the structure.
.//============================================================================
.function UnpackArgumentMembers
  .param inst_ref_set te_parms
  .param string bodyname
  .param string structure_name
  .//
  .if ( not_empty te_parms )
    .select any te_ilb from instances of TE_ILB
  ${bodyname}_arguments_t * ilbargs = (${bodyname}_arguments_t *) ${te_ilb.get_data}();
    .for each te_parm in te_parms
      .select one te_dt related by te_parm->TE_DT[R2049]
  ${te_dt.ExtName}${te_parm.array_spec}\
      .if ( ( 0 != te_parm.By_Ref ) and ( 0 == te_parm.dimensions ) )
        .// Pass "by reference" (read/write parameter)
 *\
      .end if
 ${te_parm.GeneratedName} = ${structure_name}->${te_parm.GeneratedName};
    .end for
  .end if
.end function
.//
.//============================================================================
.// Define the interface for the deferred routine which will pack up
.// the arguments into a structure and post it to the ILB queue.
.// Add second entry point for posting to Interleave Bridge queue.
.// This is intended to allow for this bridge to be called from
.// interrupt and signal handlers, tasks, etc.
.//============================================================================
.function SyncServiceDefineDeferred
  .param inst_ref_set te_parms
  .param string bodyname
  .//
  .select any te_ilb from instances of TE_ILB
  .select any te_instance from instances of TE_INSTANCE
  .select any te_string from instances of TE_STRING
  .if ( not_empty te_parms )
  ${bodyname}_arguments_t * ilbargs = (${bodyname}_arguments_t *) ${te_ilb.interleave_bridge}( ${bodyname}_deferred );
    .for each te_parm in te_parms
      .select one te_dt related by te_parm->TE_DT[R2049]
      .if ( ( "string" == te_dt.Name ) and ( te_parm.By_Ref == 0 ) )
  ${te_instance.module}${te_string.strcpy}( ilbargs->${te_parm.GeneratedName}, ${te_parm.GeneratedName} );
      .else
  ilbargs->${te_parm.GeneratedName} = ${te_parm.GeneratedName};
      .end if
    .end for
  .else
  ${te_ilb.interleave_bridge}( ${bodyname}_deferred );
  .end if
  ${te_ilb.interleave_bridge_done}();
.end function
.//
.//============================================================================
.// Create the declaration of the domain function.  This will include
.// declaration of interfaces for deferred execution.
.//============================================================================
.function CreateSynchronousServiceClassDeclaration
  .param inst_ref te_c
  .param inst_ref te_sync
  .//
  .select any te_file from instances of TE_FILE
  .while ( not_empty te_sync )
    .select one te_aba related by te_sync->TE_ABA[R2010]
    .include "${te_file.arc_path}/t.domain.function.h"
    .select one te_sync related by te_sync->TE_SYNC[R2095.'precedes']
  .end while
.end function
.//
.//============================================================================
.// Create the domain function definition.
.//============================================================================
.function CreateSynchronousServiceClassDefinition
  .param inst_ref te_c
  .param inst_ref te_sync
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_target from instances of TE_TARGET
  .while ( not_empty te_sync )
    .if ( te_sync.XlateSemantics )
      .select one s_sync related by te_sync->S_SYNC[R2023]
      .select many s_sparms related by s_sync->S_SPARM[R24]
      .select many te_parms related by s_sparms->TE_PARM[R2030]
      .//
      .// Define synchronous service routine.
      .invoke r = SyncServiceDefineDeferred( te_parms, te_sync.GeneratedName )
      .assign deferred_definition = r.body
      .// Get and unpack argument data.
      .invoke r = UnpackArgumentMembers( te_parms, te_sync.GeneratedName, "ilbargs" )
      .assign unpack_arguments = r.body
      .invoke event_prioritization_needed = GetEventPrioritizationNeeded()
      .select one te_aba related by te_sync->TE_ABA[R2010]
      .include "${te_file.arc_path}/t.domain.function.c"
    .end if
    .select one te_sync related by te_sync->TE_SYNC[R2095.'precedes']
  .end while
.end function
.//
