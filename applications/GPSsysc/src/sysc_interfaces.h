/*----------------------------------------------------------------------------
 * File:  sysc_interfaces.h"
 *
 * UML Port Messages (Interface Operations and Signals)
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef XTUMLSYSC_INTERFACES_H
#define XTUMLSYSC_INTERFACES_H


#include "GPSsysc_sys_types.h"

// messages for interface reference HeartRateProvider (provision)
class HeartRateProvider_provision : virtual public sc_interface {
  public:
  virtual void HeartRateProvider_registerListener( void ) = 0;
  virtual void HeartRateProvider_unregisterListener( void ) = 0;
};

// messages for interface reference HeartRateProvider (requirement)
class HeartRateProvider_requirement : virtual public sc_interface {
  public:
  virtual void HeartRateProvider_heartRateChanged( r4_t ) = 0;
};

// messages for interface reference LocationProvider (provision)
class LocationProvider_provision : virtual public sc_interface {
  public:
  virtual void LocationProvider_registerListener( void ) = 0;
  virtual void LocationProvider_unregisterListener( void ) = 0;
};

// messages for interface reference LocationProvider (requirement)
class LocationProvider_requirement : virtual public sc_interface {
  public:
  virtual void LocationProvider_locationUpdate( GPSsysc_sdt_Location ) = 0;
};

// messages for interface reference LocationUtil (provision)
class LocationUtil_provision : virtual public sc_interface {
  public:
  virtual r4_t LocationUtil_getDistance( GPSsysc_sdt_Location, GPSsysc_sdt_Location ) = 0;
};

// messages for interface reference LocationUtil (requirement)
class LocationUtil_requirement : virtual public sc_interface {
  public:
};

// messages for interface reference UIif (provision)
class UIif_provision : virtual public sc_interface {
  public:
  virtual void UIif_setTime( i_t ) = 0;
  virtual void UIif_setData( Unit_t, r4_t ) = 0;
};

// messages for interface reference UIif (requirement)
class UIif_requirement : virtual public sc_interface {
  public:
  virtual void UIif_startStopPressed( void ) = 0;
  virtual void UIif_lapResetPressed( void ) = 0;
  virtual void UIif_lightPressed( void ) = 0;
  virtual void UIif_modePressed( void ) = 0;
  virtual void UIif_setTargetPressed( void ) = 0;
};


#endif
