/*
 * HelloJNI.cpp
 *
 *  Created on: Aug 5, 2013
 *      Author: cmccausl
 */
#include <stdio.h>
#include "test_HelloJNI.h"

JNIEXPORT void JNICALL Java_test_HelloJNI_displayMessage
  (JNIEnv *env, jobject obj)
{
    printf("Hello JNI!\n");
    fflush(stdout);
}



