/*----------------------------------------------------------------------------
 * File:  dsl_NEEDLEUP_class.h
 *
 * Class:       needle up  (NEEDLEUP)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_NEEDLEUP_CLASS_H
#define DSL_NEEDLEUP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   needle up  (NEEDLEUP)
 */
struct dsl_NEEDLEUP {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

  /* relationship storage */
  dsl_ASCMD * ASCMD_R31;
};
i_t dsl_NEEDLEUP_op_load(  const dsl_ASCMD *, const dsl_PROGRAM * );
bool dsl_NEEDLEUP_op_run( dsl_NEEDLEUP * );

/* Note:  ASCMD<-R31->NEEDLEUP never related (or note needed).  */
/* Note:  No ASCMD<-R31->NEEDLEUP unrelate accessor needed.  */


#define dsl_NEEDLEUP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_NEEDLEUP_extent;


/*
 * enumeration of state model states for class
 */
#define dsl_NEEDLEUP_STATE_1 1  /* state [1]:  (a) */
/* note:  no events defined in state model */
extern void dsl_NEEDLEUP_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_NEEDLEUP_CLASS_H */


