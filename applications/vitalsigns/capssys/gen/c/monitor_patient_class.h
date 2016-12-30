/*----------------------------------------------------------------------------
 * File:  monitor_patient_class.h
 *
 * Class:       patient  (patient)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_PATIENT_CLASS_H
#define MONITOR_PATIENT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   patient  (patient)
 */
struct monitor_patient {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t identifier;  /* * identifier */
  i_t age;  /* - age */
  i_t weight;  /* - weight */
  capssys_gender_t gender;  /* - gender */
  c_t name[ESCHER_SYS_MAX_STRING_LEN];  /* - name */

  /* relationship storage */
  Escher_ObjectSet_s vitalsign_R1_has;
};
void monitor_patient_op_init(  const i_t, const capssys_gender_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void monitor_patient_op_cleanup( void );

#define monitor_vitalsign_R1_From_patient_has( patient ) ( &((patient)->vitalsign_R1_has) )


#define monitor_patient_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_patient_extent;

/*
 * instance event:  patient1:'start'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  patient2:'restart'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  patient3:'minute3'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  patient4:'cleared'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  patient5:'yellow'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  patient6:'red'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  patient7:'complaint'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  patient8:'setup'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} monitor_patientevent8;
extern const Escher_xtUMLEventConstant_t monitor_patientevent8c;

/*
 * union of events targeted towards 'patient' state machine
 */
typedef union {
  monitor_patientevent8 patient8_1;  
} monitor_patient_Events_u;

/*
 * enumeration of state model states for class
 */
#define monitor_patient_STATE_1 1  /* state [1]:  (unsedated) */
#define monitor_patient_STATE_2 2  /* state [2]:  (loading) */
#define monitor_patient_STATE_3 3  /* state [3]:  (sedated) */
#define monitor_patient_STATE_4 4  /* state [4]:  (sinking) */
#define monitor_patient_STATE_5 5  /* state [5]:  (over sedated) */
#define monitor_patient_STATE_6 6  /* state [6]:  (recovering) */
#define monitor_patient_STATE_7 7  /* state [7]:  (aggitated) */
/*
 * enumeration of state model event numbers
 */
#define MONITOR_PATIENTEVENT8NUM 0  /* patient8:'setup' */
extern void monitor_patient_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_PATIENT_CLASS_H */


