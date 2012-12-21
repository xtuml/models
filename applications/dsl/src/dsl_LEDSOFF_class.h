/*----------------------------------------------------------------------------
 * File:  dsl_LEDSOFF_class.h
 *
 * Class:       LEDs off  (LEDSOFF)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_LEDSOFF_CLASS_H
#define DSL_LEDSOFF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   LEDs off  (LEDSOFF)
 */
struct dsl_LEDSOFF {

  /* application analysis class attributes */

  /* relationship storage */
  dsl_LEDCMD * LEDCMD_R21;
};
i_t dsl_LEDSOFF_op_load(  const dsl_LEDCMD *, const dsl_PROGRAM * );
bool dsl_LEDSOFF_op_run( dsl_LEDSOFF * );

/* Note:  LEDCMD<-R21->LEDSOFF never related (or note needed).  */
/* Note:  No LEDCMD<-R21->LEDSOFF unrelate accessor needed.  */


#define dsl_LEDSOFF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDSOFF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDSOFF_CLASS_H */


