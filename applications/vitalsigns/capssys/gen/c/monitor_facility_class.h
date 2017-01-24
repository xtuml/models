/*----------------------------------------------------------------------------
 * File:  monitor_facility_class.h
 *
 * Class:       facility  (facility)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_FACILITY_CLASS_H
#define MONITOR_FACILITY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   facility  (facility)
 */
struct monitor_facility {

  /* application analysis class attributes */
  c_t SSID[ESCHER_SYS_MAX_STRING_LEN];  /* - SSID */
  capssys_language_t language;  /* - language */
  bool print_alarm;  /* - print_alarm */

};



#define monitor_facility_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_facility_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_FACILITY_CLASS_H */


