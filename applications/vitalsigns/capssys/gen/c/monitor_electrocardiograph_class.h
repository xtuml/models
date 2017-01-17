/*----------------------------------------------------------------------------
 * File:  monitor_electrocardiograph_class.h
 *
 * Class:       electrocardiograph  (electrocardiograph)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_ELECTROCARDIOGRAPH_CLASS_H
#define MONITOR_ELECTROCARDIOGRAPH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   electrocardiograph  (electrocardiograph)
 */
struct monitor_electrocardiograph {

  /* application analysis class attributes */
  i_t gain;  /* - gain */
  i_t waveform;  /* - waveform */

  /* relationship storage */
  monitor_vitalsign * vitalsign_R2;
};

void monitor_electrocardiograph_R2_Link( monitor_vitalsign *, monitor_electrocardiograph * );
/* Note:  No vitalsign<-R2->electrocardiograph unrelate accessor needed.  */


#define monitor_electrocardiograph_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_electrocardiograph_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_ELECTROCARDIOGRAPH_CLASS_H */


