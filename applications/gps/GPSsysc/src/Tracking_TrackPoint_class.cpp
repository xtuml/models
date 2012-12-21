/*----------------------------------------------------------------------------
 * File:  Tracking_TrackPoint_class.cpp
 *
 * Class:       TrackPoint  (TrackPoint)
 * Component:   Tracking
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSsysc_sys_types.h"
#include "Tracking.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"


/*
 * RELATE <left> TrackPoint TO <right> TrackPoint ACROSS R2.'follows'
 */
void
Tracking_TrackPoint::Tracking_TrackPoint_R2_Link_follows( Tracking_TrackPoint * left, Tracking_TrackPoint * right, Tracking * thismodule )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackPoint", "Tracking_TrackPoint::Tracking_TrackPoint_R2_Link_follows" );
    return;
  }
  left->TrackPoint_R2_follows = right; /* SR L1 */
  right->TrackPoint_R2_preceeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TrackPoint FROM <right> TrackPoint ACROSS R2.'follows'
 */
void
Tracking_TrackPoint::Tracking_TrackPoint_R2_Unlink_follows( Tracking_TrackPoint * left, Tracking_TrackPoint * right, Tracking * thismodule )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackPoint", "Tracking_TrackPoint::Tracking_TrackPoint_R2_Unlink_follows" );
    return;
  }
  left->TrackPoint_R2_follows = 0; /* SR U1 */
  right->TrackPoint_R2_preceeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TrackPoint TO <right> TrackPoint ACROSS R2.'preceeds'
 */
void
Tracking_TrackPoint::Tracking_TrackPoint_R2_Link_preceeds( Tracking_TrackPoint * left, Tracking_TrackPoint * right, Tracking * thismodule )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackPoint", "Tracking_TrackPoint::Tracking_TrackPoint_R2_Link_preceeds" );
    return;
  }
  right->TrackPoint_R2_follows = left; /* SR L4 */
  left->TrackPoint_R2_preceeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TrackPoint FROM <right> TrackPoint ACROSS R2.'preceeds'
 */
void
Tracking_TrackPoint::Tracking_TrackPoint_R2_Unlink_preceeds( Tracking_TrackPoint * left, Tracking_TrackPoint * right, Tracking * thismodule )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackPoint", "Tracking_TrackPoint::Tracking_TrackPoint_R2_Unlink_preceeds" );
    return;
  }
  right->TrackPoint_R2_follows = 0; /* SR U4 */
  left->TrackPoint_R2_preceeds = 0; /* SR U5 */
}

/*
 * RELATE TrackLog TO TrackPoint ACROSS R3
 */
void
Tracking_TrackPoint::Tracking_TrackPoint_R3_Link( Tracking_TrackLog * part, Tracking_TrackPoint * form, Tracking * thismodule )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackPoint", "Tracking_TrackPoint::Tracking_TrackPoint_R3_Link" );
    return;
  }
  /* Note:  TrackPoint->TrackLog[R3] not navigated */
  part->TrackPoint_R3 = form;
}

/*
 * UNRELATE TrackLog FROM TrackPoint ACROSS R3
 */
void
Tracking_TrackPoint::Tracking_TrackPoint_R3_Unlink( Tracking_TrackLog * part, Tracking_TrackPoint * form, Tracking * thismodule )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TrackPoint", "Tracking_TrackPoint::Tracking_TrackPoint_R3_Unlink" );
    return;
  }
  /* Note:  TrackPoint->TrackLog[R3] not navigated */
  part->TrackPoint_R3 = 0;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static sys_sets::Escher_SetElement_s Tracking_TrackPoint_container[ Tracking_TrackPoint_MAX_EXTENT_SIZE ];
static Tracking_TrackPoint Tracking_TrackPoint_instances[ Tracking_TrackPoint_MAX_EXTENT_SIZE ];
sys_sets::Escher_Extent_t pG_Tracking_TrackPoint_extent = {
  {0}, {0}, &Tracking_TrackPoint_container[ 0 ],
  (Escher_iHandle_t) &Tracking_TrackPoint_instances,
  sizeof( Tracking_TrackPoint ), 0, Tracking_TrackPoint_MAX_EXTENT_SIZE
  };


