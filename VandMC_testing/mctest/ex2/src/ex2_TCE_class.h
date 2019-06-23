/*----------------------------------------------------------------------------
 * File:  ex2_TCE_class.h
 *
 * Class:       Test Compound Expressions  (TCE)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef EX2_TCE_CLASS_H
#define EX2_TCE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Test Compound Expressions  (TCE)
 */
struct ex2_TCE {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  Escher_UniqueID_t tce_id;  /* * tce_id */
  i_t ack_count;  /* - ack_count */
  i_t a;  /* - a */
  i_t b;  /* - b */
  bool b1;  /* - b1 */
  bool b2;  /* - b2 */
  i_t i1;  /* - i1 */
  i_t i2;  /* - i2 */
  r_t r1;  /* - r1 */
  r_t r2;  /* - r2 */
};



#define ex2_TCE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ex2_TCE_extent;

/*
 * instance event:  TCE1:'start test'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} ex2_TCEevent1;
extern const Escher_xtUMLEventConstant_t ex2_TCEevent1c;
/*
 * instance event:  TCE2:'next test'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} ex2_TCEevent2;
extern const Escher_xtUMLEventConstant_t ex2_TCEevent2c;
/*
 * instance event:  TCE3:'event with supp data'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  c_t p_age[ESCHER_SYS_MAX_STRING_LEN]; /* age */
  c_t p_name[ESCHER_SYS_MAX_STRING_LEN]; /* name */
} ex2_TCEevent3;
extern const Escher_xtUMLEventConstant_t ex2_TCEevent3c;
/*
 * instance event:  TCE4:'next test with supp data'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  bool p_b1; /* b1 */
  bool p_b2; /* b2 */
  i_t p_i1; /* i1 */
  i_t p_i2; /* i2 */
  r_t p_r1; /* r1 */
  r_t p_r2; /* r2 */
} ex2_TCEevent4;
extern const Escher_xtUMLEventConstant_t ex2_TCEevent4c;
/*
 * instance event:  TCE5:'bool event'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  bool p_b1; /* b1 */
} ex2_TCEevent5;
extern const Escher_xtUMLEventConstant_t ex2_TCEevent5c;
/*
 * instance event:  TCE6:'int event'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_i1; /* i1 */
} ex2_TCEevent6;
extern const Escher_xtUMLEventConstant_t ex2_TCEevent6c;
/*
 * union of events targeted towards 'TCE' state machine
 */
typedef union {
  ex2_TCEevent1 tce1_1;  
  ex2_TCEevent2 tce2_2;  
  ex2_TCEevent3 tce3_3;  
  ex2_TCEevent4 tce4_4;  
  ex2_TCEevent5 tce5_5;  
  ex2_TCEevent6 tce6_6;  
} ex2_TCE_Events_u;
/*
 * enumeration of state model states for class
 */
#define ex2_TCE_STATE_1 1  /* state [1]:  (Compound Expressions Using Constants) */
#define ex2_TCE_STATE_2 2  /* state [2]:  (Compound Expressions Using Local Variables) */
#define ex2_TCE_STATE_3 3  /* state [3]:  (Compound Expressions Using Object Attributes) */
#define ex2_TCE_STATE_4 4  /* state [4]:  (Compound Expressions Using Supplemental Data Items Received From An Event) */
#define ex2_TCE_STATE_5 5  /* state [5]:  (Compound Expressions Using Function Invocations) */
#define ex2_TCE_STATE_6 6  /* state [6]:  (Compound Expressions Using Transformer Invocations) */
#define ex2_TCE_STATE_7 7  /* state [7]:  (Compound Expressions Using Bridge Invocations) */
#define ex2_TCE_STATE_8 8  /* state [8]:  (Order of Operations) */
#define ex2_TCE_STATE_9 9  /* state [9]:  (Stress Limits of Compound Expressions) */
#define ex2_TCE_STATE_11 10  /* state [11]:  (Bridges Within Expressions) */
#define ex2_TCE_STATE_12 11  /* state [12]:  (Transforms Within Expressions) */
#define ex2_TCE_STATE_13 12  /* state [13]:  (Combinine Real and Integer Data Types) */
#define ex2_TCE_STATE_14 13  /* state [14]:  (Unary Ops) */
#define ex2_TCE_STATE_15 14  /* state [15]:  (If Expressions) */
#define ex2_TCE_STATE_16 15  /* state [16]:  (Expressions Within Parameters) */
#define ex2_TCE_STATE_17 16  /* state [17]:  (Count Acks from Bool Event) */
#define ex2_TCE_STATE_18 17  /* state [18]:  (Count Acks from Int Event) */
#define ex2_TCE_STATE_19 18  /* state [19]:  (More Expressions within Parms) */
#define ex2_TCE_STATE_20 19  /* state [20]:  (Bool Event Acks) */
#define ex2_TCE_STATE_21 20  /* state [21]:  (Int Event Acks) */
/*
 * enumeration of state model event numbers
 */
#define EX2_TCEEVENT1NUM 0  /* TCE1:'start test' */
#define EX2_TCEEVENT2NUM 1  /* TCE2:'next test' */
#define EX2_TCEEVENT3NUM 2  /* TCE3:'event with supp data' */
#define EX2_TCEEVENT4NUM 3  /* TCE4:'next test with supp data' */
#define EX2_TCEEVENT5NUM 4  /* TCE5:'bool event' */
#define EX2_TCEEVENT6NUM 5  /* TCE6:'int event' */
extern void ex2_TCE_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* EX2_TCE_CLASS_H */
