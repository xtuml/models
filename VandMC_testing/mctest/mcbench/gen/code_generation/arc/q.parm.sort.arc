.// CDS temporarily order parameters alphabetically for backwards compatibility
.function sparm_sort
  .param inst_ref_set s_sparms
  .for each s_sparm in s_sparms
    .select one prev_s_sparm related by s_sparm->S_SPARM[R54.'succeeds']
    .if ( not_empty prev_s_sparm )
      .unrelate s_sparm from prev_s_sparm across R54.'succeeds'
    .end if
  .end for
  .// Declare an empty instance reference.
  .select any head_s_sparm related by s_sparms->S_SPARM[R54.'succeeds'] where ( false )
  .for each s_sparm in s_sparms
    .invoke r = sparm_insert( head_s_sparm, s_sparm )
    .assign head_s_sparm = r.result
  .end for
.end function
.function sparm_insert  .// s_sparm
  .param inst_ref head_s_sparm
  .param inst_ref s_sparm
  .assign result = s_sparm
  .if ( empty head_s_sparm )
    .// Just starting.  Return s_sparm as head.
  .elif ( s_sparm.Name <= head_s_sparm.Name )
    .// insert before
    .relate s_sparm to head_s_sparm across R54.'precedes'
  .else
    .// find bigger
    .assign result = head_s_sparm
    .assign prev_s_sparm = head_s_sparm
    .select one cursor_s_sparm related by head_s_sparm->S_SPARM[R54.'precedes']
    .while ( not_empty cursor_s_sparm )
      .if ( s_sparm.Name <= cursor_s_sparm.Name )
        .break while
      .else
        .assign prev_s_sparm = cursor_s_sparm
        .select one cursor_s_sparm related by cursor_s_sparm->S_SPARM[R54.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_s_sparm )
      .unrelate prev_s_sparm from cursor_s_sparm across R54.'precedes'
      .relate s_sparm to cursor_s_sparm across R54.'precedes'
    .end if
    .relate prev_s_sparm to s_sparm across R54.'precedes'
  .end if
  .assign attr_result = result
.end function
.//
.//
.function bparm_sort
  .param inst_ref_set s_bparms
  .for each s_bparm in s_bparms
    .select one prev_s_bparm related by s_bparm->S_BPARM[R55.'succeeds']
    .if ( not_empty prev_s_bparm )
      .unrelate s_bparm from prev_s_bparm across R55.'succeeds'
    .end if
  .end for
  .// Declare an empty instance reference.
  .select any head_s_bparm related by s_bparms->S_BPARM[R55.'succeeds'] where ( false )
  .for each s_bparm in s_bparms
    .invoke r = bparm_insert( head_s_bparm, s_bparm )
    .assign head_s_bparm = r.result
  .end for
.end function
.function bparm_insert .// s_bparm
  .param inst_ref head_s_bparm
  .param inst_ref s_bparm
  .assign result = s_bparm
  .if ( empty head_s_bparm )
    .// Just starting.  Return s_bparm as head.
  .elif ( s_bparm.Name <= head_s_bparm.Name )
    .// insert before
    .relate s_bparm to head_s_bparm across R55.'precedes'
  .else
    .// find bigger
    .assign result = head_s_bparm
    .assign prev_s_bparm = head_s_bparm
    .select one cursor_s_bparm related by head_s_bparm->S_BPARM[R55.'precedes']
    .while ( not_empty cursor_s_bparm )
      .if ( s_bparm.Name <= cursor_s_bparm.Name )
        .break while
      .else
        .assign prev_s_bparm = cursor_s_bparm
        .select one cursor_s_bparm related by cursor_s_bparm->S_BPARM[R55.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_s_bparm )
      .unrelate prev_s_bparm from cursor_s_bparm across R55.'precedes'
      .relate s_bparm to cursor_s_bparm across R55.'precedes'
    .end if
    .relate prev_s_bparm to s_bparm across R55.'precedes'
  .end if
  .assign attr_result = result
.end function
.//
.//
.function tparm_sort
  .param inst_ref_set o_tparms
  .for each o_tparm in o_tparms
    .select one prev_o_tparm related by o_tparm->O_TPARM[R124.'succeeds']
    .if ( not_empty prev_o_tparm )
      .unrelate o_tparm from prev_o_tparm across R124.'succeeds'
    .end if
  .end for
  .// Declare an empty instance reference.
  .select any head_o_tparm related by o_tparms->O_TPARM[R124.'succeeds'] where ( false )
  .for each o_tparm in o_tparms
    .invoke r = tparm_insert( head_o_tparm, o_tparm )
    .assign head_o_tparm = r.result
  .end for
.end function
.function tparm_insert .// o_tparm
  .param inst_ref head_o_tparm
  .param inst_ref o_tparm
  .assign result = o_tparm
  .if ( empty head_o_tparm )
    .// Just starting.  Return o_tparm as head.
  .elif ( o_tparm.Name <= head_o_tparm.Name )
    .// insert before
    .relate o_tparm to head_o_tparm across R124.'precedes'
  .else
    .// find bigger
    .assign result = head_o_tparm
    .assign prev_o_tparm = head_o_tparm
    .select one cursor_o_tparm related by head_o_tparm->O_TPARM[R124.'precedes']
    .while ( not_empty cursor_o_tparm )
      .if ( o_tparm.Name <= cursor_o_tparm.Name )
        .break while
      .else
        .assign prev_o_tparm = cursor_o_tparm
        .select one cursor_o_tparm related by cursor_o_tparm->O_TPARM[R124.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_o_tparm )
      .unrelate prev_o_tparm from cursor_o_tparm across R124.'precedes'
      .relate o_tparm to cursor_o_tparm across R124.'precedes'
    .end if
    .relate prev_o_tparm to o_tparm across R124.'precedes'
  .end if
  .assign attr_result = result
.end function
.//
.//
.function evtdi_sort
  .param inst_ref_set sm_evtdis
  .for each sm_evtdi in sm_evtdis
    .select one prev_sm_evtdi related by sm_evtdi->SM_EVTDI[R533.'succeeds']
    .if ( not_empty prev_sm_evtdi )
      .unrelate sm_evtdi from prev_sm_evtdi across R533.'succeeds'
    .end if
  .end for
  .// Declare an empty instance reference.
  .select any head_sm_evtdi related by sm_evtdis->SM_EVTDI[R533.'succeeds'] where ( false )
  .for each sm_evtdi in sm_evtdis
    .invoke r = evtdi_insert( head_sm_evtdi, sm_evtdi )
    .assign head_sm_evtdi = r.result
  .end for
.end function
.function evtdi_insert .// sm_evtdi
  .param inst_ref head_sm_evtdi
  .param inst_ref sm_evtdi
  .assign result = sm_evtdi
  .if ( empty head_sm_evtdi )
    .// Just starting.  Return sm_evtdi as head.
  .elif ( sm_evtdi.Name <= head_sm_evtdi.Name )
    .// insert before
    .relate sm_evtdi to head_sm_evtdi across R533.'precedes'
  .else
    .// find bigger
    .assign result = head_sm_evtdi
    .assign prev_sm_evtdi = head_sm_evtdi
    .select one cursor_sm_evtdi related by head_sm_evtdi->SM_EVTDI[R533.'precedes']
    .while ( not_empty cursor_sm_evtdi )
      .if ( sm_evtdi.Name <= cursor_sm_evtdi.Name )
        .break while
      .else
        .assign prev_sm_evtdi = cursor_sm_evtdi
        .select one cursor_sm_evtdi related by cursor_sm_evtdi->SM_EVTDI[R533.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_sm_evtdi )
      .unrelate prev_sm_evtdi from cursor_sm_evtdi across R533.'precedes'
      .relate sm_evtdi to cursor_sm_evtdi across R533.'precedes'
    .end if
    .relate prev_sm_evtdi to sm_evtdi across R533.'precedes'
  .end if
  .assign attr_result = result
.end function
.//
.//
.function pp_sort
  .param inst_ref_set c_pps
  .for each c_pp in c_pps
    .select one prev_c_pp related by c_pp->C_PP[R4021.'succeeds']
    .if ( not_empty prev_c_pp )
      .unrelate c_pp from prev_c_pp across R4021.'succeeds'
    .end if
  .end for
  .// Declare an empty instance reference.
  .select any head_c_pp related by c_pps->C_PP[R4021.'succeeds'] where ( false )
  .for each c_pp in c_pps
    .invoke r = pp_insert( head_c_pp, c_pp )
    .assign head_c_pp = r.result
  .end for
.end function
.function pp_insert .// c_pp
  .param inst_ref head_c_pp
  .param inst_ref c_pp
  .assign result = c_pp
  .if ( empty head_c_pp )
    .// Just starting.  Return c_pp as head.
  .elif ( c_pp.Name <= head_c_pp.Name )
    .// insert before
    .relate c_pp to head_c_pp across R4021.'precedes'
  .else
    .// find bigger
    .assign result = head_c_pp
    .assign prev_c_pp = head_c_pp
    .select one cursor_c_pp related by head_c_pp->C_PP[R4021.'precedes']
    .while ( not_empty cursor_c_pp )
      .if ( c_pp.Name <= cursor_c_pp.Name )
        .break while
      .else
        .assign prev_c_pp = cursor_c_pp
        .select one cursor_c_pp related by cursor_c_pp->C_PP[R4021.'precedes']
      .end if
    .end while
    .if ( not_empty cursor_c_pp )
      .unrelate prev_c_pp from cursor_c_pp across R4021.'precedes'
      .relate c_pp to cursor_c_pp across R4021.'precedes'
    .end if
    .relate prev_c_pp to c_pp across R4021.'precedes'
  .end if
  .assign attr_result = result
.end function
.//
.// CDS temporary for sorting model data parameters
.function parm_sort
  .if ( true )
    .select many s_syncs from instances of S_SYNC
    .for each s_sync in s_syncs
      .select many s_sparms related by s_sync->S_SPARM[R24]
      .invoke sparm_sort( s_sparms )
    .end for
    .select many s_brgs from instances of S_BRG
    .for each s_brg in s_brgs
      .select many s_bparms related by s_brg->S_BPARM[R21]
      .invoke bparm_sort( s_bparms )
    .end for
    .select many o_tfrs from instances of O_TFR
    .for each o_tfr in o_tfrs
      .select many o_tparms related by o_tfr->O_TPARM[R117]
      .invoke tparm_sort( o_tparms )
    .end for
    .select many sm_evts from instances of SM_EVT
    .for each sm_evt in sm_evts
      .select many sm_evtdis related by sm_evt->SM_EVTDI[R532]
      .invoke evtdi_sort( sm_evtdis )
    .end for
    .select many c_eps from instances of C_EP
    .for each c_ep in c_eps
      .select many c_pps related by c_ep->C_PP[R4006]
      .invoke pp_sort( c_pps )
    .end for
  .end if
.end function
.// CDS end of temporary sorting of model data parameters
