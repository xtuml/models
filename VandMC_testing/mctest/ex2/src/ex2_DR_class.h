/*----------------------------------------------------------------------------
 * File:  ex2_DR_class.h
 *
 * Class:       Driver  (DR)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef EX2_DR_CLASS_H
#define EX2_DR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Driver  (DR)
 */
struct ex2_DR {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  Escher_UniqueID_t dr_id;  /* * dr_id */
};



#define ex2_DR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ex2_DR_extent;

/*
 * instance event:  DR1:'start test'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} ex2_DRevent1;
extern const Escher_xtUMLEventConstant_t ex2_DRevent1c;
/*
 * instance event:  DR2:'next test'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} ex2_DRevent2;
extern const Escher_xtUMLEventConstant_t ex2_DRevent2c;
/*
 * instance event:  DR3:'send event with supp data'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} ex2_DRevent3;
extern const Escher_xtUMLEventConstant_t ex2_DRevent3c;
/*
 * instance event:  DR4:'test complete'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} ex2_DRevent4;
extern const Escher_xtUMLEventConstant_t ex2_DRevent4c;
/*
 * instance event:  DR5:'go to idle'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} ex2_DRevent5;
extern const Escher_xtUMLEventConstant_t ex2_DRevent5c;
/*
 * union of events targeted towards 'DR' state machine
 */
typedef union {
  ex2_DRevent1 dr1_1;  
  ex2_DRevent2 dr2_2;  
  ex2_DRevent3 dr3_3;  
  ex2_DRevent4 dr4_4;  
  ex2_DRevent5 dr5_5;  
} ex2_DR_Events_u;
/*
 * enumeration of state model states for class
 */
#define ex2_DR_STATE_1 1  /* state [1]:  (Start Test) */
#define ex2_DR_STATE_2 2  /* state [2]:  (Idle) */
#define ex2_DR_STATE_3 3  /* state [3]:  (Start Next Test) */
#define ex2_DR_STATE_4 4  /* state [4]:  (Send Event With Supplemental Data) */
#define ex2_DR_STATE_5 5  /* state [5]:  (Test Complete) */
/*
 * enumeration of state model event numbers
 */
#define EX2_DREVENT1NUM 0  /* DR1:'start test' */
#define EX2_DREVENT2NUM 1  /* DR2:'next test' */
#define EX2_DREVENT3NUM 2  /* DR3:'send event with supp data' */
#define EX2_DREVENT4NUM 3  /* DR4:'test complete' */
#define EX2_DREVENT5NUM 4  /* DR5:'go to idle' */
extern void ex2_DR_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* EX2_DR_CLASS_H */
