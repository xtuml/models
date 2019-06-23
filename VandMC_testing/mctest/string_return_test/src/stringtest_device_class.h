/*----------------------------------------------------------------------------
 * File:  stringtest_device_class.h
 *
 * Class:       device  (device)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRINGTEST_DEVICE_CLASS_H
#define STRINGTEST_DEVICE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   device  (device)
 */
struct stringtest_device {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  c_t lower[ESCHER_SYS_MAX_STRING_LEN];  /* - lower */
  /* relationship storage */
  /* Note:  No storage needed for device->buffer[R2] */
};
c_t * stringtest_device_op_rstr( stringtest_device *, c_t[ESCHER_SYS_MAX_STRING_LEN] );


#define stringtest_device_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_stringtest_device_extent;

/*
 * instance event:  device1:'send'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  stringtest_host * p_h; /* h */
  c_t p_s[ESCHER_SYS_MAX_STRING_LEN]; /* s */
} stringtest_deviceevent1;
extern const Escher_xtUMLEventConstant_t stringtest_deviceevent1c;
/*
 * instance event:  device2:'recv'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  stringtest_host * p_h; /* h */
  c_t p_s[ESCHER_SYS_MAX_STRING_LEN]; /* s */
} stringtest_deviceevent2;
extern const Escher_xtUMLEventConstant_t stringtest_deviceevent2c;
/*
 * union of events targeted towards 'device' state machine
 */
typedef union {
  stringtest_deviceevent1 device1_1;  
  stringtest_deviceevent2 device2_2;  
} stringtest_device_Events_u;
/*
 * enumeration of state model states for class
 */
#define stringtest_device_STATE_1 1  /* state [1]:  (putting) */
#define stringtest_device_STATE_2 2  /* state [2]:  (getting) */
/*
 * enumeration of state model event numbers
 */
#define STRINGTEST_DEVICEEVENT1NUM 0  /* device1:'send' */
#define STRINGTEST_DEVICEEVENT2NUM 1  /* device2:'recv' */
extern void stringtest_device_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* STRINGTEST_DEVICE_CLASS_H */
