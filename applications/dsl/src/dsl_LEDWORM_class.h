/*----------------------------------------------------------------------------
 * File:  dsl_LEDWORM_class.h
 *
 * Class:       worm around  (LEDWORM)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
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
  i_t direction;  /* - direction */

  /* relationship storage */
  dsl_LEDCMD * LEDCMD_R21;
};
i_t dsl_LEDWORM_op_load(  dsl_LEDCMD *, dsl_PROGRAM * );
bool dsl_LEDWORM_op_run( dsl_LEDWORM * );

void dsl_LEDWORM_R21_Link( dsl_LEDCMD *, dsl_LEDWORM * );
/* Note:  No LEDCMD<-R21->LEDWORM unrelate accessor needed.  */


#define dsl_LEDWORM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDWORM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDWORM_CLASS_H */


