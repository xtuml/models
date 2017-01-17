/*----------------------------------------------------------------------------
 * File:  monitor_O2saturation_class.h
 *
 * Class:       O2saturation  (O2saturation)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_O2SATURATION_CLASS_H
#define MONITOR_O2SATURATION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   O2saturation  (O2saturation)
 */
struct monitor_O2saturation {

  /* application analysis class attributes */

  /* relationship storage */
  monitor_vitalsign * vitalsign_R2;
};
monitor_vitalsign * monitor_O2saturation_op_init( void );
void monitor_O2saturation_op_update(  const i_t );

void monitor_O2saturation_R2_Link( monitor_vitalsign *, monitor_O2saturation * );
/* Note:  No vitalsign<-R2->O2saturation unrelate accessor needed.  */


#define monitor_O2saturation_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_O2saturation_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_O2SATURATION_CLASS_H */


