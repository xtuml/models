/*----------------------------------------------------------------------------
 * File:  dsl_ASCMD_class.h
 *
 * Class:       autosampler command  (ASCMD)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_ASCMD_CLASS_H
#define DSL_ASCMD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   autosampler command  (ASCMD)
 */
struct dsl_ASCMD {

  /* application analysis class attributes */
  i_t opcode;  /* - opcode */
  i_t location;  /* * location (R2) */
  Escher_xtUMLEvent_t * completion_event;  /* - completion_event */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  void * R31_subtype;
  Escher_ClassNumber_t R31_object_id;
};
i_t dsl_ASCMD_op_load(  dsl_INSTRUCTION *, dsl_PROGRAM * );
bool dsl_ASCMD_op_run( dsl_ASCMD *, Escher_xtUMLEvent_t * );

void dsl_ASCMD_R2_Link( dsl_INSTRUCTION *, dsl_ASCMD * );
/* Note:  No INSTRUCTION<-R2->ASCMD unrelate accessor needed.  */

/* Accessors to ASCMD[R31] subtypes */
#define dsl_CARHOME_R31_From_ASCMD( ASCMD ) \
   ( (((ASCMD)->R31_object_id) == dsl_CARHOME_CLASS_NUMBER) ? \
     ((dsl_CARHOME *)((ASCMD)->R31_subtype)) : (0) )
#define dsl_CARNEXT_R31_From_ASCMD( ASCMD ) \
   ( (((ASCMD)->R31_object_id) == dsl_CARNEXT_CLASS_NUMBER) ? \
     ((dsl_CARNEXT *)((ASCMD)->R31_subtype)) : (0) )
#define dsl_NEEDLEUP_R31_From_ASCMD( ASCMD ) \
   ( (((ASCMD)->R31_object_id) == dsl_NEEDLEUP_CLASS_NUMBER) ? \
     ((dsl_NEEDLEUP *)((ASCMD)->R31_subtype)) : (0) )
#define dsl_NEEDLEDOWN_R31_From_ASCMD( ASCMD ) \
   ( (((ASCMD)->R31_object_id) == dsl_NEEDLEDOWN_CLASS_NUMBER) ? \
     ((dsl_NEEDLEDOWN *)((ASCMD)->R31_subtype)) : (0) )



#define dsl_ASCMD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_ASCMD_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_ASCMD_CLASS_H */


