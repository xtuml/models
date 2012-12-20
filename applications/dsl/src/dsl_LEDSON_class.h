/*----------------------------------------------------------------------------
 * File:  dsl_LEDSON_class.h
 *
 * Class:       LEDs on  (LEDSON)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
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
i_t dsl_LEDSON_op_load(  dsl_LEDCMD *, dsl_PROGRAM * );
bool dsl_LEDSON_op_run( dsl_LEDSON * );

void dsl_LEDSON_R21_Link( dsl_LEDCMD *, dsl_LEDSON * );
/* Note:  No LEDCMD<-R21->LEDSON unrelate accessor needed.  */


#define dsl_LEDSON_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDSON_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDSON_CLASS_H */


