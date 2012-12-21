/*----------------------------------------------------------------------------
 * File:  Location_GPS_class.h
 *
 * Class:       GPS  (GPS)
 * Component:   Location
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef LOCATION_GPS_CLASS_H
#define LOCATION_GPS_CLASS_H



class Location; // forward reference
/*
 * Structural representation of application analysis class:
 *   GPS  (GPS)
 */
class Location_GPS {
  public:

  /* application analysis class attributes */
  GPSsysc_sdt_Location currentLocation;  /* - currentLocation */
  Escher_Timer_t * timer;  /* - timer */



};

#define Location_GPS_MAX_EXTENT_SIZE 200
extern sys_sets::Escher_Extent_t pG_Location_GPS_extent;

/*
 * class-based event:  GPS_A1:'timeout'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Location_GPS_CBevent1;
extern const Escher_xtUMLEventConstant_t Location_GPS_CBevent1c;

/*
 * class-based event:  GPS_A2:'registerListener'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Location_GPS_CBevent2;
extern const Escher_xtUMLEventConstant_t Location_GPS_CBevent2c;

/*
 * class-based event:  GPS_A3:'unregisterListener'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Location_GPS_CBevent3;
extern const Escher_xtUMLEventConstant_t Location_GPS_CBevent3c;

/*
 * union of events targeted towards 'GPS' state machine
 */
typedef union {
  Location_GPS_CBevent1 gps11;  
  Location_GPS_CBevent2 gps22;  
  Location_GPS_CBevent3 gps33;  
} Location_GPS_CB_Events_u;

/*
 * enumeration of state model states for class
 */
#define Location_GPS_CB_STATE_1 1  /* state [1]:  (idle) */
#define Location_GPS_CB_STATE_2 2  /* state [2]:  (locating) */

/*
 * enumeration of state model event numbers
 */
#define LOCATION_GPS_CBEVENT1NUM 0  /* GPS_A1:'timeout' */
#define LOCATION_GPS_CBEVENT2NUM 1  /* GPS_A2:'registerListener' */
#define LOCATION_GPS_CBEVENT3NUM 2  /* GPS_A3:'unregisterListener' */

extern void Location_GPS_CBDispatch( Escher_xtUMLEvent_t * );




#endif  /* LOCATION_GPS_CLASS_H */


