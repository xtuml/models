.//============================================================================
.// This template generates the containing file for the states of a Finite
.// State Machine (FSM) implementation of xtUML state models.
.//============================================================================
.//
.//
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      ${te_class.Name}  (${te_class.Key_Lett})
 * Component:  ${te_c.Name}
  .if ( false )
    .select one state_model related by o_obj->SM_ISM[R518]->SM_SM[R517]
    .if ( empty sm_ism ) 
      .select one state_model related by o_obj->SM_ASM[R519]->SM_SM[R517]
    .end if
 *
 *
 * State Model Description:
    .if ( state_model.Descrip != "" )
 *
${state_model.Descrip}
 *
    .else
 * NOTE: No state model desription present in project model repository!
    .end if
 *
  .end if
  .//
 *--------------------------------------------------------------------------*/
.//
