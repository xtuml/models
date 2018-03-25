#!/bin/bash
cd gen
FILES=`find . -name '*.cc'`
cd ../src
for f in $FILES; do
  stat $f &> /dev/null
  if [[ $? == 0 ]]; then
    mv $f $f.orig
  fi
  cp ../gen/$f .
done
cd ../gen
FILES=`find . -name '*.c'`
cd ../src
for f in $FILES; do
  stat $f &> /dev/null
  if [[ $? == 0 ]]; then
    mv $f $f.orig
  fi
  cp ../gen/$f .
done
cd ../gen
FILES=`find . -name '*.h'`
cd ../src
for f in $FILES; do
  stat $f &> /dev/null
  if [[ $? == 0 ]]; then
    mv $f $f.orig
  fi
  cp ../gen/$f .
done
