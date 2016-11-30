/*----------------------------------------------------------------------------
 * File:  monitor_pulse_class.h
 *
 * Class:       pulse  (pulse)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_PULSE_CLASS_H
#define MONITOR_PULSE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   pulse  (pulse)
 */
struct monitor_pulse {

  /* application analysis class attributes */

  /* relationship storage */
  monitor_vitalsign * vitalsign_R2;
};
monitor_vitalsign * monitor_pulse_op_init( void );
void monitor_pulse_op_update(  const i_t );

void monitor_pulse_R2_Link( monitor_vitalsign *, monitor_pulse * );
/* Note:  No vitalsign<-R2->pulse unrelate accessor needed.  */


#define monitor_pulse_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_pulse_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_PULSE_CLASS_H */


