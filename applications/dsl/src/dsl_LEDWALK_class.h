/*----------------------------------------------------------------------------
 * File:  dsl_LEDWALK_class.h
 *
 * Class:       walk around  (LEDWALK)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
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
  i_t direction;  /* - direction */

  /* relationship storage */
  dsl_LEDCMD * LEDCMD_R21;
};
i_t dsl_LEDWALK_op_load(  dsl_LEDCMD *, dsl_PROGRAM * );
bool dsl_LEDWALK_op_run( dsl_LEDWALK * );

void dsl_LEDWALK_R21_Link( dsl_LEDCMD *, dsl_LEDWALK * );
/* Note:  No LEDCMD<-R21->LEDWALK unrelate accessor needed.  */


#define dsl_LEDWALK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDWALK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDWALK_CLASS_H */


