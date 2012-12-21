/*----------------------------------------------------------------------------
 * File:  dsl_NEEDLEDOWN_class.h
 *
 * Class:       needle down  (NEEDLEDOWN)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_NEEDLEDOWN_CLASS_H
#define DSL_NEEDLEDOWN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   needle down  (NEEDLEDOWN)
 */
struct dsl_NEEDLEDOWN {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

  /* relationship storage */
  dsl_ASCMD * ASCMD_R31;
};
i_t dsl_NEEDLEDOWN_op_load(  const dsl_ASCMD *, const dsl_PROGRAM * );
bool dsl_NEEDLEDOWN_op_run( dsl_NEEDLEDOWN * );

/* Note:  ASCMD<-R31->NEEDLEDOWN never related (or note needed).  */
/* Note:  No ASCMD<-R31->NEEDLEDOWN unrelate accessor needed.  */


#define dsl_NEEDLEDOWN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_NEEDLEDOWN_extent;


/*
 * enumeration of state model states for class
 */
#define dsl_NEEDLEDOWN_STATE_1 1  /* state [1]:  (a) */
/* note:  no events defined in state model */
extern void dsl_NEEDLEDOWN_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_NEEDLEDOWN_CLASS_H */


