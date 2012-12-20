/*----------------------------------------------------------------------------
 * File:  dsl_DELAY_class.h
 *
 * Class:       delay  (DELAY)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_DELAY_CLASS_H
#define DSL_DELAY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   delay  (DELAY)
 */
struct dsl_DELAY {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  i_t milliseconds;  /* - milliseconds */
  i_t seconds;  /* - seconds */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
};
i_t dsl_DELAY_op_load(  dsl_INSTRUCTION *, dsl_PROGRAM * );
void dsl_DELAY_op_run( dsl_DELAY *, Escher_xtUMLEvent_t * );

void dsl_DELAY_R2_Link( dsl_INSTRUCTION *, dsl_DELAY * );
/* Note:  No INSTRUCTION<-R2->DELAY unrelate accessor needed.  */


#define dsl_DELAY_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_DELAY_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_DELAY_CLASS_H */


