/*----------------------------------------------------------------------------
 * File:  calc_VAL_class.h
 *
 * Class:       operand  (VAL)
 * Component:   calc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CALC_VAL_CLASS_H
#define CALC_VAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   operand  (VAL)
 */
struct calc_VAL {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  r_t value;  /* - value */
  i_t sign;  /* - sign */
  i_t whole;  /* - whole */
  i_t fraction;  /* - fraction */
  /* relationship storage */
  /* Note:  No storage needed for VAL->OP[R2] */
  /* Note:  No storage needed for VAL->OP[R3] */
};
void calc_VAL_op_init( calc_VAL * );
void calc_VAL_R2_Link_has_left( calc_OP *, calc_VAL * );
/* Note:  OP<-R2->VAL unrelate accessor not needed */
void calc_VAL_R3_Link_has_right( calc_OP *, calc_VAL * );
void calc_VAL_R3_Unlink_has_right( calc_OP *, calc_VAL * );

#define calc_VAL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_calc_VAL_extent;

/*
 * instance event:  VAL1:'digit'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_code; /* code */
} calc_VALevent1;
extern const Escher_xtUMLEventConstant_t calc_VALevent1c;
/*
 * instance event:  VAL2:'symbol'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_code; /* code */
} calc_VALevent2;
extern const Escher_xtUMLEventConstant_t calc_VALevent2c;
/*
 * instance event:  VAL3:'point'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_code; /* code */
} calc_VALevent3;
extern const Escher_xtUMLEventConstant_t calc_VALevent3c;
/*
 * union of events targeted towards 'VAL' state machine
 */
typedef union {
  calc_VALevent1 val1_1;  
  calc_VALevent2 val2_2;  
  calc_VALevent3 val3_3;  
} calc_VAL_Events_u;
/*
 * enumeration of state model states for class
 */
#define calc_VAL_STATE_1 1  /* state [1]:  (toggling sign) */
#define calc_VAL_STATE_2 2  /* state [2]:  (receiving whole part) */
#define calc_VAL_STATE_3 3  /* state [3]:  (receiving fraction) */
/*
 * enumeration of state model event numbers
 */
#define CALC_VALEVENT1NUM 0  /* VAL1:'digit' */
#define CALC_VALEVENT2NUM 1  /* VAL2:'symbol' */
#define CALC_VALEVENT3NUM 2  /* VAL3:'point' */
extern void calc_VAL_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* CALC_VAL_CLASS_H */
