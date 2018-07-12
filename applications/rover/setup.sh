#!/bin/bash
wget https://s3.amazonaws.com/challengeproblemmichal/Challenge+problem-Mac.zip
unzip -q Challenge+problem-*.zip
mv Challenge\ problem/* .
rm -rf Challenge\ problem
