/*----------------------------------------------------------------------------
 * File:  Tracking_LapMarker_class.h
 *
 * Class:       LapMarker  (LapMarker)
 * Component:   Tracking
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_LAPMARKER_CLASS_H
#define TRACKING_LAPMARKER_CLASS_H



class Tracking; // forward reference
/*
 * Structural representation of application analysis class:
 *   LapMarker  (LapMarker)
 */
class Tracking_LapMarker {
  public:

  /* application analysis class attributes */
  i_t lapTime;  /* - lapTime */

  /* relationship storage */
  /* Note:  No storage needed for LapMarker->TrackLog[R5] */

static void Tracking_LapMarker_R5_Link( Tracking_TrackLog *, Tracking_LapMarker *, Tracking * );
static void Tracking_LapMarker_R5_Unlink( Tracking_TrackLog *, Tracking_LapMarker *, Tracking * );

};

#define Tracking_LapMarker_MAX_EXTENT_SIZE 200
extern sys_sets::Escher_Extent_t pG_Tracking_LapMarker_extent;



#endif  /* TRACKING_LAPMARKER_CLASS_H */


