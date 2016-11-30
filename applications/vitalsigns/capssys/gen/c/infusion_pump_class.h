/*----------------------------------------------------------------------------
 * File:  infusion_pump_class.h
 *
 * Class:       pump  (pump)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_PUMP_CLASS_H
#define INFUSION_PUMP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   pump  (pump)
 */
struct infusion_pump {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t flow_rate;  /* - flow_rate */
  i_t bar_code;  /* - bar_code */

  /* relationship storage */
  /* Note:  No storage needed for pump->infusion[R4] */
};



#define infusion_pump_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_infusion_pump_extent;

/*
 * instance event:  pump1:'go'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  pump2:'stop'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  pump3:'bubble'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  pump4:'cleared'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  pump5:'occlusion'
 * warning:  Event is not used in application - no code generated.
 */


/*
 * enumeration of state model states for class
 */
#define infusion_pump_STATE_1 1  /* state [1]:  (stopped) */
#define infusion_pump_STATE_2 2  /* state [2]:  (pumping) */
#define infusion_pump_STATE_3 3  /* state [3]:  (occluded) */
#define infusion_pump_STATE_4 4  /* state [4]:  (bubble detected) */
#define infusion_pump_STATE_5 5  /* state [5]:  (purging) */
/*
 * enumeration of state model event numbers
 */
extern void infusion_pump_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* INFUSION_PUMP_CLASS_H */


