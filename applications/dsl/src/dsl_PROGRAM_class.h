/*----------------------------------------------------------------------------
 * File:  dsl_PROGRAM_class.h
 *
 * Class:       program  (PROGRAM)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_PROGRAM_CLASS_H
#define DSL_PROGRAM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   program  (PROGRAM)
 */
struct dsl_PROGRAM {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  /* - name */  /* OPTIMIZED OUT */
  /* - store */  /* OPTIMIZED OUT */
  /* - length */  /* OPTIMIZED OUT */
  /* - PC */  /* OPTIMIZED OUT */
  /* - starting_location (R1) */  /* OPTIMIZED OUT */
  /* - current_location (R3) */  /* OPTIMIZED OUT */

  /* relationship storage */
  /* Note:  No storage needed for PROGRAM->INSTRUCTION[R1] */
  /* Note:  No storage needed for PROGRAM->INSTRUCTION[R3] */
};
void dsl_PROGRAM_op_load(  i_t[256], const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void dsl_PROGRAM_op_run( dsl_PROGRAM * );
void dsl_PROGRAM_op_pause( dsl_PROGRAM * );
void dsl_PROGRAM_op_resume( dsl_PROGRAM * );

/* xtUML WARNING:  INSTRUCTION<-R1->PROGRAM never related!  */
/* Note:  INSTRUCTION<-R1->PROGRAM unrelate accessor not needed */
/* xtUML WARNING:  INSTRUCTION<-R3->PROGRAM never related!  */
/* Note:  INSTRUCTION<-R3->PROGRAM unrelate accessor not needed */


#define dsl_PROGRAM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_PROGRAM_extent;

/*
 * instance event:  PROGRAM1:'load'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  PROGRAM2:'done'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  PROGRAM3:'run'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  PROGRAM4:'pause'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  PROGRAM5:'instruction_loaded'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  PROGRAM6:'resume'
 * warning:  Event is not used in application - no code generated.
 */


/*
 * enumeration of state model states for class
 */
#define dsl_PROGRAM_STATE_1 1  /* state [1]:  (loading instruction) */
#define dsl_PROGRAM_STATE_2 2  /* state [2]:  (instruction loaded) */
#define dsl_PROGRAM_STATE_3 3  /* state [3]:  (loaded) */
#define dsl_PROGRAM_STATE_4 4  /* state [4]:  (executing) */
#define dsl_PROGRAM_STATE_5 5  /* state [5]:  (paused) */
#define dsl_PROGRAM_STATE_6 6  /* state [6]:  (finished) */
/*
 * enumeration of state model event numbers
 */
extern void dsl_PROGRAM_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_PROGRAM_CLASS_H */


