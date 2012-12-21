/*----------------------------------------------------------------------------
 * File:  GUI_TestCase_class.h
 *
 * Class:       TestCase  (TestCase)
 * Component:   GUI
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef GUI_TESTCASE_CLASS_H
#define GUI_TESTCASE_CLASS_H



class GUI; // forward reference
/*
 * Structural representation of application analysis class:
 *   TestCase  (TestCase)
 */
class GUI_TestCase {
  public:
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t iterations;  /* - iterations */

  static void GUI_TestCase_op_execute(  GUI *);


};

#define GUI_TestCase_MAX_EXTENT_SIZE 200
extern sys_sets::Escher_Extent_t pG_GUI_TestCase_extent;

/*
 * instance event:  TestCase1:'delay'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} GUI_TestCaseevent1;
extern const Escher_xtUMLEventConstant_t GUI_TestCaseevent1c;

/*
 * creation event:  TestCase2:'start'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_iterations; /* iterations */
} GUI_TestCaseevent2;
extern const Escher_xtUMLEventConstant_t GUI_TestCaseevent2c;

/*
 * instance event:  TestCase3:'finish'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} GUI_TestCaseevent3;
extern const Escher_xtUMLEventConstant_t GUI_TestCaseevent3c;

/*
 * union of events targeted towards 'TestCase' state machine
 */
typedef union {
  GUI_TestCaseevent1 testcase11;  
  GUI_TestCaseevent2 testcase22;  
  GUI_TestCaseevent3 testcase33;  
} GUI_TestCase_Events_u;

/*
 * enumeration of state model states for class
 */
#define GUI_TestCase_STATE_2 1  /* state [2]:  (pressStartStop) */
#define GUI_TestCase_STATE_3 2  /* state [3]:  (testCaseFinished) */
/*
 * enumeration of state model event numbers
 */
#define GUI_TESTCASEEVENT1NUM 0  /* TestCase1:'delay' */
#define GUI_TESTCASEEVENT2NUM 1  /* TestCase2:'start' */
#define GUI_TESTCASEEVENT3NUM 2  /* TestCase3:'finish' */
extern void GUI_TestCase_Dispatch( Escher_xtUMLEvent_t * );



#endif  /* GUI_TESTCASE_CLASS_H */


