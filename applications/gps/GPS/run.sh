#!/bin/bash
MVN_REPO=$HOME/.m2/repository
RUN_CMD="docker run -it --rm -v $PWD:/workspace -v $MVN_REPO:$MVN_REPO levistarrett/masl-base"
CIERA_VERSION=3.0.0-SNAPSHOT
VERSION=1.0.0-SNAPSHOT
MODULEPATH=$MVN_REPO/io/ciera/runtime-api/$CIERA_VERSION/runtime-api-$CIERA_VERSION.jar:$MVN_REPO/io/ciera/runtime/$CIERA_VERSION/runtime-$CIERA_VERSION.jar:$MVN_REPO/org/xtuml/runtime-masl-util/1.0.0-SNAPSHOT/runtime-masl-util-1.0.0-SNAPSHOT.jar:$MVN_REPO/io/ciera2/GPS_Watch/$VERSION/GPS_Watch-$VERSION.jar:$MVN_REPO/io/ciera2/HeartRateMonitor/$VERSION/HeartRateMonitor-$VERSION.jar:$MVN_REPO/io/ciera2/Location/$VERSION/Location-$VERSION.jar:$MVN_REPO/io/ciera2/Tracking/$VERSION/Tracking-$VERSION.jar:$MVN_REPO/io/ciera2/UI/$VERSION/UI-$VERSION.jar
PROPS="\
  -Dio.ciera.runtime.logLevel=FINEST \
  -Dio.ciera.runtime.useDeterministicIDs\
  -Dio.ciera.runtime.haltWhenIdle\
  -Dui.hostname=host.docker.internal\
"
$RUN_CMD java $PROPS --module-path $MODULEPATH -m GPS_Watch/gps_watch.GPS_Watch $@
