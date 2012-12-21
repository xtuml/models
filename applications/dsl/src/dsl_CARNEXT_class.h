/*----------------------------------------------------------------------------
 * File:  dsl_CARNEXT_class.h
 *
 * Class:       carousel next  (CARNEXT)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_CARNEXT_CLASS_H
#define DSL_CARNEXT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   carousel next  (CARNEXT)
 */
struct dsl_CARNEXT {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

  /* relationship storage */
  dsl_ASCMD * ASCMD_R31;
};
i_t dsl_CARNEXT_op_load(  const dsl_ASCMD *, const dsl_PROGRAM * );
bool dsl_CARNEXT_op_run( dsl_CARNEXT * );

/* Note:  ASCMD<-R31->CARNEXT never related (or note needed).  */
/* Note:  No ASCMD<-R31->CARNEXT unrelate accessor needed.  */


#define dsl_CARNEXT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_CARNEXT_extent;


/*
 * enumeration of state model states for class
 */
#define dsl_CARNEXT_STATE_1 1  /* state [1]:  (a) */
/* note:  no events defined in state model */
extern void dsl_CARNEXT_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_CARNEXT_CLASS_H */


