/*----------------------------------------------------------------------------
 * File:  monitor_respiration_class.h
 *
 * Class:       respiration  (respiration)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_RESPIRATION_CLASS_H
#define MONITOR_RESPIRATION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   respiration  (respiration)
 */
struct monitor_respiration {

  /* application analysis class attributes */
  i_t rate;  /* - rate */
  i_t apnia;  /* - apnia */
  i_t inhale;  /* - inhale */
  i_t exhale;  /* - exhale */

  /* relationship storage */
  monitor_vitalsign * vitalsign_R2;
};
void monitor_respiration_op_update(  const i_t );
monitor_vitalsign * monitor_respiration_op_init( void );

void monitor_respiration_R2_Link( monitor_vitalsign *, monitor_respiration * );
/* Note:  No vitalsign<-R2->respiration unrelate accessor needed.  */


#define monitor_respiration_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_respiration_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_RESPIRATION_CLASS_H */


