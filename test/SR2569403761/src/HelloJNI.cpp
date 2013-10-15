/*
 * HelloJNI.cpp
 *
 *  Created on: Aug 5, 2013
 *      Author: cmccausl
 */
#include <stdio.h>
#include "test_HelloJNI.h"

JNIEXPORT jstring JNICALL Java_test_HelloJNI_getMessage
  (JNIEnv *env, jobject obj)
{
	return env->NewStringUTF("Hello JNI.");
}



