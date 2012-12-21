/*----------------------------------------------------------------------------
 * File:  client_application_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  client_application
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CLIENT_APPLICATION_CLASSES_H
#define CLIENT_APPLICATION_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  client_application
 */
extern void client_application_execute_initialization( void );

#define client_application_STATE_MODELS 0


/* Define constants to map to class numbers.  */
#define client_application_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define client_application_TASK_NUMBERS 

#define client_application_CLASS_INFO_INIT

#define client_application_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define client_application_CLASS_U \
  char client_application_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
extern void client_application_test1( void );



#include "client_application.h"


/*
 * roll-up of all events (with their parameters) for domain client_application
 */
typedef union {
} client_application_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* CLIENT_APPLICATION_CLASSES_H */

