#!/bin/bash
cd gen
FILES=`find . -name *.cc`
cd ../src
for f in $FILES; do
  stat $f &> /dev/null
  if [[ $? == 0 ]]; then
    mv $f $f.orig
    cp ../gen/$f .
  fi
done
