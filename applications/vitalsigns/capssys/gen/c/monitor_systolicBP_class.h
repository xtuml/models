/*----------------------------------------------------------------------------
 * File:  monitor_systolicBP_class.h
 *
 * Class:       systolic BP  (systolicBP)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_SYSTOLICBP_CLASS_H
#define MONITOR_SYSTOLICBP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   systolic BP  (systolicBP)
 */
struct monitor_systolicBP {

  /* application analysis class attributes */
  i_t timing_interval;  /* - timing_interval */

  /* relationship storage */
  monitor_vitalsign * vitalsign_R2;
};

void monitor_systolicBP_R2_Link( monitor_vitalsign *, monitor_systolicBP * );
/* Note:  No vitalsign<-R2->systolicBP unrelate accessor needed.  */


#define monitor_systolicBP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_systolicBP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_SYSTOLICBP_CLASS_H */


