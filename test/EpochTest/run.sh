#!/bin/bash
CIERA_VERSION=2.1.1-SNAPSHOT
EPOCH_TEST_VERSION=1.0.0-SNAPSHOT
CLASSPATH=$HOME/.m2/repository/io/ciera/runtime/$CIERA_VERSION/runtime-$CIERA_VERSION.jar:$HOME/.m2/repository/org/xtuml/EpochTest/$EPOCH_TEST_VERSION/EpochTest-$EPOCH_TEST_VERSION.jar
java -cp $CLASSPATH epochtest.EpochTestApplication
