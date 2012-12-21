/*----------------------------------------------------------------------------
 * File:  gpssysc_sys.h
 *
 * UML Package (Top Module) Declaration
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef GPSSYSC_SYS_H
#define GPSSYSC_SYS_H


#include "GUI.h"
#include "Location.h"
#include "Tracking.h"
#include "HeartRateMonitor.h"


class gpssysc_sys : public sc_module {
  public:
  GUI iGUI;
  Location iLocation;
  Tracking iTracking;
  HeartRateMonitor iHeartRateMonitor;

  SC_HAS_PROCESS( gpssysc_sys );

  gpssysc_sys( sc_module_name name ) : sc_module( name ), iGUI("GUI_module"), iLocation("Location_module"), iTracking("Tracking_module"), iHeartRateMonitor("HeartRateMonitor_module") {
    iGUI.UI(iTracking);
    iLocation.LOC(iTracking);
    iLocation.UTIL(iTracking);
    iTracking.LOC(iLocation);
    iTracking.UIport(iGUI);
    iTracking.HR(iHeartRateMonitor);
    iTracking.UTIL(iLocation);
    iHeartRateMonitor.HR(iTracking);
  }
};


#endif  /* GPSSYSC_SYS_H */
