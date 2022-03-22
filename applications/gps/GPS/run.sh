#!/bin/bash
CIERA_VERSION=3.0.0-SNAPSHOT
VERSION=1.0.0-SNAPSHOT
MVN_REPO=$HOME/.m2/repository
MODULEPATH=$MVN_REPO/io/ciera/runtime-api/$CIERA_VERSION/runtime-api-$CIERA_VERSION.jar:$MVN_REPO/io/ciera/runtime/$CIERA_VERSION/runtime-$CIERA_VERSION.jar:$MVN_REPO/io/ciera2/GPS_Watch/$VERSION/GPS_Watch-$VERSION.jar:$MVN_REPO/io/ciera2/HeartRateMonitor/$VERSION/HeartRateMonitor-$VERSION.jar:$MVN_REPO/io/ciera2/Location/$VERSION/Location-$VERSION.jar:$MVN_REPO/io/ciera2/Tracking/$VERSION/Tracking-$VERSION.jar:$MVN_REPO/io/ciera2/UI/$VERSION/UI-$VERSION.jar
PROPS="\
  -Dio.ciera.runtime.logLevel=FINEST \
  -Dio.ciera.runtime.useDeterministicIDs\
  -Dio.ciera.runtime.haltWhenIdle\
"
java $PROPS --module-path $MODULEPATH -m GPS_Watch/gps_watch.GPS_Watch $@
