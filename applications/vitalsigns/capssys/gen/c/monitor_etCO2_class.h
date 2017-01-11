/*----------------------------------------------------------------------------
 * File:  monitor_etCO2_class.h
 *
 * Class:       etCO2  (etCO2)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_ETCO2_CLASS_H
#define MONITOR_ETCO2_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   etCO2  (etCO2)
 */
struct monitor_etCO2 {

  /* application analysis class attributes */

  /* relationship storage */
  monitor_vitalsign * vitalsign_R2;
};

void monitor_etCO2_R2_Link( monitor_vitalsign *, monitor_etCO2 * );
/* Note:  No vitalsign<-R2->etCO2 unrelate accessor needed.  */


#define monitor_etCO2_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_etCO2_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_ETCO2_CLASS_H */


