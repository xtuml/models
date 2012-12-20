/*----------------------------------------------------------------------------
 * File:  dsl_LEDWORM_class.h
 *
 * Class:       worm around  (LEDWORM)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_LEDWORM_CLASS_H
#define DSL_LEDWORM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   worm around  (LEDWORM)
 */
struct dsl_LEDWORM {

  /* application analysis class attributes */
  /* - direction */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_LEDCMD * LEDCMD_R21;
};
i_t dsl_LEDWORM_op_load(  const dsl_LEDCMD *, const dsl_PROGRAM * );
bool dsl_LEDWORM_op_run( dsl_LEDWORM * );

/* Note:  LEDCMD<-R21->LEDWORM never related (or note needed).  */
/* Note:  No LEDCMD<-R21->LEDWORM unrelate accessor needed.  */


#define dsl_LEDWORM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDWORM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDWORM_CLASS_H */


