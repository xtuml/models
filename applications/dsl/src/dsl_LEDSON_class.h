/*----------------------------------------------------------------------------
 * File:  dsl_LEDSON_class.h
 *
 * Class:       LEDs on  (LEDSON)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_LEDSON_CLASS_H
#define DSL_LEDSON_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   LEDs on  (LEDSON)
 */
struct dsl_LEDSON {

  /* application analysis class attributes */

  /* relationship storage */
  dsl_LEDCMD * LEDCMD_R21;
};
i_t dsl_LEDSON_op_load(  const dsl_LEDCMD *, const dsl_PROGRAM * );
bool dsl_LEDSON_op_run( dsl_LEDSON * );

/* Note:  LEDCMD<-R21->LEDSON never related (or note needed).  */
/* Note:  No LEDCMD<-R21->LEDSON unrelate accessor needed.  */


#define dsl_LEDSON_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDSON_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDSON_CLASS_H */


