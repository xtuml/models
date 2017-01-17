/*----------------------------------------------------------------------------
 * File:  infusion_infusion_class.h
 *
 * Class:       infusion  (infusion)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_INFUSION_CLASS_H
#define INFUSION_INFUSION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   infusion  (infusion)
 */
struct infusion_infusion {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t AMR;  /* - AMR */
  bool block_increase_unresponsive;  /* - block_increase_unresponsive */
  bool block_PRN_during_alarm;  /* - block_PRN_during_alarm */
  bool block_restart_during_yellow;  /* - block_restart_during_yellow */

  /* relationship storage */
  /* Note:  No storage needed for infusion->pump[R4] */
  /* Note:  No storage needed for infusion->dose[R5] */
};
void infusion_infusion_op_init( infusion_infusion * );

/* xtUML WARNING:  pump<-R4->infusion never related!  */
/* Note:  pump<-R4->infusion unrelate accessor not needed */
/* xtUML WARNING:  dose<-R5->infusion never related!  */
/* Note:  dose<-R5->infusion unrelate accessor not needed */


#define infusion_infusion_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_infusion_infusion_extent;

/*
 * instance event:  infusion1:'tick'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * creation event:  infusion2:'start'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  infusion3:'PRN'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  infusion4:'done'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  infusion5:'pause'
 * warning:  Event is not used in application - no code generated.
 */


/*
 * enumeration of state model states for class
 */
#define infusion_infusion_STATE_1 1  /* state [1]:  (loading) */
#define infusion_infusion_STATE_2 2  /* state [2]:  (maintaining) */
#define infusion_infusion_STATE_3 3  /* state [3]:  (stopped) */
#define infusion_infusion_STATE_4 4  /* state [4]:  (paused) */
#define infusion_infusion_STATE_5 5  /* state [5]:  (PRNing) */
/*
 * enumeration of state model event numbers
 */
extern void infusion_infusion_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* INFUSION_INFUSION_CLASS_H */


