/*----------------------------------------------------------------------------
 * File:  dsl_PROGRAM_class.h
 *
 * Class:       program  (PROGRAM)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
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
  c_t name[ESCHER_SYS_MAX_STRING_LEN];  /* - name */
  i_t store[256];  /* - store */
  i_t length;  /* - length */
  i_t PC;  /* - PC */
  i_t starting_location;  /* - starting_location (R1) */
  i_t current_location;  /* - current_location (R3) */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R1;
  dsl_INSTRUCTION * INSTRUCTION_R3;
};
void dsl_PROGRAM_op_load(  i_t[256], i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void dsl_PROGRAM_op_run( dsl_PROGRAM * );
void dsl_PROGRAM_op_pause( dsl_PROGRAM * );
void dsl_PROGRAM_op_resume( dsl_PROGRAM * );

void dsl_PROGRAM_R1_Link( dsl_INSTRUCTION *, dsl_PROGRAM * );
/* Note:  INSTRUCTION<-R1->PROGRAM unrelate accessor not needed */
void dsl_PROGRAM_R3_Link( dsl_INSTRUCTION *, dsl_PROGRAM * );
void dsl_PROGRAM_R3_Unlink( dsl_INSTRUCTION *, dsl_PROGRAM * );


#define dsl_PROGRAM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_PROGRAM_extent;

/*
 * instance event:  PROGRAM1:'load'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} dsl_PROGRAMevent1;
extern const Escher_xtUMLEventConstant_t dsl_PROGRAMevent1c;

/*
 * instance event:  PROGRAM2:'done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} dsl_PROGRAMevent2;
extern const Escher_xtUMLEventConstant_t dsl_PROGRAMevent2c;

/*
 * instance event:  PROGRAM3:'run'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} dsl_PROGRAMevent3;
extern const Escher_xtUMLEventConstant_t dsl_PROGRAMevent3c;

/*
 * instance event:  PROGRAM4:'pause'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  PROGRAM5:'instruction_loaded'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_length; /* length */
} dsl_PROGRAMevent5;
extern const Escher_xtUMLEventConstant_t dsl_PROGRAMevent5c;

/*
 * instance event:  PROGRAM6:'resume'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * union of events targeted towards 'PROGRAM' state machine
 */
typedef union {
  dsl_PROGRAMevent1 program11;  
  dsl_PROGRAMevent2 program22;  
  dsl_PROGRAMevent3 program33;  
  dsl_PROGRAMevent5 program54;  
} dsl_PROGRAM_Events_u;

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
#define DSL_PROGRAMEVENT1NUM 0  /* PROGRAM1:'load' */
#define DSL_PROGRAMEVENT2NUM 1  /* PROGRAM2:'done' */
#define DSL_PROGRAMEVENT3NUM 2  /* PROGRAM3:'run' */
#define DSL_PROGRAMEVENT5NUM 3  /* PROGRAM5:'instruction_loaded' */
extern void dsl_PROGRAM_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_PROGRAM_CLASS_H */


