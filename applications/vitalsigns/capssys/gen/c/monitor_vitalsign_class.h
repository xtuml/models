/*----------------------------------------------------------------------------
 * File:  monitor_vitalsign_class.h
 *
 * Class:       vital sign  (vitalsign)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_VITALSIGN_CLASS_H
#define MONITOR_VITALSIGN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   vital sign  (vitalsign)
 */
struct monitor_vitalsign {

  /* application analysis class attributes */
  c_t name[ESCHER_SYS_MAX_STRING_LEN];  /* * name */
  i_t value;  /* - value */
  i_t yellow_threshold;  /* - yellow_threshold */
  i_t red_threshold;  /* - red_threshold */

  /* relationship storage */
  /* Note:  No storage needed for vitalsign->patient[R1] */
  void * R2_subtype;
  Escher_ClassNumber_t R2_object_id;
  monitor_alarm * alarm_R7_sounds;
};

void monitor_vitalsign_R1_Link_has( monitor_patient *, monitor_vitalsign * );
void monitor_vitalsign_R1_Unlink_has( monitor_patient *, monitor_vitalsign * );

/* Accessors to vitalsign[R2] subtypes */
#define monitor_pulse_R2_From_vitalsign( vitalsign ) \
   ( (((vitalsign)->R2_object_id) == monitor_pulse_CLASS_NUMBER) ? \
     ((monitor_pulse *)((vitalsign)->R2_subtype)) : (0) )
#define monitor_O2saturation_R2_From_vitalsign( vitalsign ) \
   ( (((vitalsign)->R2_object_id) == monitor_O2saturation_CLASS_NUMBER) ? \
     ((monitor_O2saturation *)((vitalsign)->R2_subtype)) : (0) )
#define monitor_systolicBP_R2_From_vitalsign( vitalsign ) \
   ( (((vitalsign)->R2_object_id) == monitor_systolicBP_CLASS_NUMBER) ? \
     ((monitor_systolicBP *)((vitalsign)->R2_subtype)) : (0) )
#define monitor_responsiveness_R2_From_vitalsign( vitalsign ) \
   ( (((vitalsign)->R2_object_id) == monitor_responsiveness_CLASS_NUMBER) ? \
     ((monitor_responsiveness *)((vitalsign)->R2_subtype)) : (0) )
#define monitor_electrocardiograph_R2_From_vitalsign( vitalsign ) \
   ( (((vitalsign)->R2_object_id) == monitor_electrocardiograph_CLASS_NUMBER) ? \
     ((monitor_electrocardiograph *)((vitalsign)->R2_subtype)) : (0) )
#define monitor_respiration_R2_From_vitalsign( vitalsign ) \
   ( (((vitalsign)->R2_object_id) == monitor_respiration_CLASS_NUMBER) ? \
     ((monitor_respiration *)((vitalsign)->R2_subtype)) : (0) )
#define monitor_diastolicBP_R2_From_vitalsign( vitalsign ) \
   ( (((vitalsign)->R2_object_id) == monitor_diastolicBP_CLASS_NUMBER) ? \
     ((monitor_diastolicBP *)((vitalsign)->R2_subtype)) : (0) )
#define monitor_etCO2_R2_From_vitalsign( vitalsign ) \
   ( (((vitalsign)->R2_object_id) == monitor_etCO2_CLASS_NUMBER) ? \
     ((monitor_etCO2 *)((vitalsign)->R2_subtype)) : (0) )



#define monitor_vitalsign_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_vitalsign_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_VITALSIGN_CLASS_H */


