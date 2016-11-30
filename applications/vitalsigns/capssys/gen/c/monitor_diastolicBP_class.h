/*----------------------------------------------------------------------------
 * File:  monitor_diastolicBP_class.h
 *
 * Class:       diastolic BP  (diastolicBP)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_DIASTOLICBP_CLASS_H
#define MONITOR_DIASTOLICBP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   diastolic BP  (diastolicBP)
 */
struct monitor_diastolicBP {

  /* application analysis class attributes */

  /* relationship storage */
  monitor_vitalsign * vitalsign_R2;
};

void monitor_diastolicBP_R2_Link( monitor_vitalsign *, monitor_diastolicBP * );
/* Note:  No vitalsign<-R2->diastolicBP unrelate accessor needed.  */


#define monitor_diastolicBP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_diastolicBP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_DIASTOLICBP_CLASS_H */


