.//============================================================================
.// $RCSfile: m.event.arc,v $
.//
.// Description:
.// This archetype file contains the implementation functions for colors
.// specified in the (user supplied/modified) event.clr file.
.//============================================================================
.//
.//
.//============================================================================
.// Choose the type of dispatcher to run.  Zero is the default.
.// Selecting 2 will provide a single system level event dispatcher.
.//============================================================================
.function TagDispatchFlavor
  .param integer flavor
.end function
.//
.//============================================================================
.// Color event to higher than default priority.
.//============================================================================
.function TagPriorityEvent
  .param string evt_label
  .param integer priority_value
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkPriorityEvent( te_c.Name, evt_label, priority_value )
  .end for
.end function
.function MarkPriorityEvent
  .param string component_name
  .param string evt_label
  .param integer priority_value
  .assign component_name = "$r{component_name}"
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .//
    .// Check for legal range on input priority.
    .//
    .if ( ( priority_value > 255 ) or ( priority_value < 0 ) )
      .assign msg = "ERROR:  Priority ($t{priority_value}) out of legal range (0-255)."
    .end if
    .//
    .// Store the priority of the event in an attribute.
    .//
    .select any sm_evt related by te_c->TE_CLASS[R2064]->O_OBJ[R2019]->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502] where ( selected.Drv_Lbl == evt_label )
    .if ( empty sm_evt )
      .select any sm_evt related by te_c->TE_CLASS[R2064]->O_OBJ[R2019]->SM_ASM[R519]->SM_SM[R517]->SM_EVT[R502] where ( selected.Drv_Lbl == evt_label )
    .end if
    .if ( not_empty sm_evt )
      .//
      .// We are not allowing prioritized polymorphic events... yet.
      .//
      .select one sm_pevt related by sm_evt->SM_PEVT[R525]
      .if ( not_empty sm_pevt )
        .assign msg = "ERROR:  Prioritized Polymorphic Event (${evt_label}) component ${te_c.Name}"
        .assign msg = msg + "\nPriority Polys are not supported."
      .end if
      .select one te_evt related by sm_evt->TE_EVT[R2036]
      .assign te_evt.Priority = priority_value
      .assign msg = "Event ${sm_evt.Drv_Lbl}:${sm_evt.Mning} marked as priority event."
    .else
      .assign msg = "ERROR:  Event (${evt_label}) not found in component ${te_c.Name}"
    .end if
    .assign msg = msg + " => TagPriorityEvent( ${evt_label}, $t{priority_value} )"
    .print "${msg}"
  .end for
.end function
.//
