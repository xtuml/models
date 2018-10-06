#!/bin/bash
MASLMC=$HOME/git/masl/core-java/install/masl-core/bin/masl-core
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
$MASLMC -domainpath $CWD/masl/keypad -mod $CWD/masl/keypad/keypad.mod -output $CWD/gen/code_generation/keypad -custombuildfile gen/custom.cmake
cd $CWD
cmake . -DCMAKE_INSTALL_PREFIX=$PWD
