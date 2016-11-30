/*----------------------------------------------------------------------------
 * File:  monitor_responsiveness_class.h
 *
 * Class:       responsiveness  (responsiveness)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_RESPONSIVENESS_CLASS_H
#define MONITOR_RESPONSIVENESS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   responsiveness  (responsiveness)
 */
struct monitor_responsiveness {

  /* application analysis class attributes */
  i_t response_time;  /* - response_time */

  /* relationship storage */
  monitor_vitalsign * vitalsign_R2;
};

void monitor_responsiveness_R2_Link( monitor_vitalsign *, monitor_responsiveness * );
/* Note:  No vitalsign<-R2->responsiveness unrelate accessor needed.  */


#define monitor_responsiveness_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_responsiveness_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_RESPONSIVENESS_CLASS_H */


