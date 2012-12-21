/*----------------------------------------------------------------------------
 * File:  dsl_LEDWALK_class.h
 *
 * Class:       walk around  (LEDWALK)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_LEDWALK_CLASS_H
#define DSL_LEDWALK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   walk around  (LEDWALK)
 */
struct dsl_LEDWALK {

  /* application analysis class attributes */
  /* - direction */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_LEDCMD * LEDCMD_R21;
};
i_t dsl_LEDWALK_op_load(  const dsl_LEDCMD *, const dsl_PROGRAM * );
bool dsl_LEDWALK_op_run( dsl_LEDWALK * );

/* Note:  LEDCMD<-R21->LEDWALK never related (or note needed).  */
/* Note:  No LEDCMD<-R21->LEDWALK unrelate accessor needed.  */


#define dsl_LEDWALK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDWALK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDWALK_CLASS_H */


