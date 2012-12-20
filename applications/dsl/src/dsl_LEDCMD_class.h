/*----------------------------------------------------------------------------
 * File:  dsl_LEDCMD_class.h
 *
 * Class:       LED command  (LEDCMD)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_LEDCMD_CLASS_H
#define DSL_LEDCMD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   LED command  (LEDCMD)
 */
struct dsl_LEDCMD {

  /* application analysis class attributes */
  i_t opcode;  /* - opcode */
  i_t location;  /* * location (R2) */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  void * R21_subtype;
  Escher_ClassNumber_t R21_object_id;
};
i_t dsl_LEDCMD_op_load(  dsl_INSTRUCTION *, dsl_PROGRAM * );
bool dsl_LEDCMD_op_run( dsl_LEDCMD *, Escher_xtUMLEvent_t * );

void dsl_LEDCMD_R2_Link( dsl_INSTRUCTION *, dsl_LEDCMD * );
/* Note:  No INSTRUCTION<-R2->LEDCMD unrelate accessor needed.  */

/* Accessors to LEDCMD[R21] subtypes */
#define dsl_LEDSOFF_R21_From_LEDCMD( LEDCMD ) \
   ( (((LEDCMD)->R21_object_id) == dsl_LEDSOFF_CLASS_NUMBER) ? \
     ((dsl_LEDSOFF *)((LEDCMD)->R21_subtype)) : (0) )
#define dsl_LEDSON_R21_From_LEDCMD( LEDCMD ) \
   ( (((LEDCMD)->R21_object_id) == dsl_LEDSON_CLASS_NUMBER) ? \
     ((dsl_LEDSON *)((LEDCMD)->R21_subtype)) : (0) )
#define dsl_LEDWALK_R21_From_LEDCMD( LEDCMD ) \
   ( (((LEDCMD)->R21_object_id) == dsl_LEDWALK_CLASS_NUMBER) ? \
     ((dsl_LEDWALK *)((LEDCMD)->R21_subtype)) : (0) )
#define dsl_LEDWORM_R21_From_LEDCMD( LEDCMD ) \
   ( (((LEDCMD)->R21_object_id) == dsl_LEDWORM_CLASS_NUMBER) ? \
     ((dsl_LEDWORM *)((LEDCMD)->R21_subtype)) : (0) )



#define dsl_LEDCMD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDCMD_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDCMD_CLASS_H */


