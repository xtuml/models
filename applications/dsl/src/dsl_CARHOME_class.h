/*----------------------------------------------------------------------------
 * File:  dsl_CARHOME_class.h
 *
 * Class:       carousel home  (CARHOME)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_CARHOME_CLASS_H
#define DSL_CARHOME_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   carousel home  (CARHOME)
 */
struct dsl_CARHOME {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

  /* relationship storage */
  dsl_ASCMD * ASCMD_R31;
};
i_t dsl_CARHOME_op_load(  dsl_ASCMD *, dsl_PROGRAM * );
bool dsl_CARHOME_op_run( dsl_CARHOME * );

void dsl_CARHOME_R31_Link( dsl_ASCMD *, dsl_CARHOME * );
/* Note:  No ASCMD<-R31->CARHOME unrelate accessor needed.  */


#define dsl_CARHOME_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_CARHOME_extent;


/*
 * enumeration of state model states for class
 */
#define dsl_CARHOME_STATE_1 1  /* state [1]:  (a) */
/* note:  no events defined in state model */
extern void dsl_CARHOME_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_CARHOME_CLASS_H */


