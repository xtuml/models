#!/bin/bash
MASLMC=$HOME/git/masl/core-java/install/masl-core/bin/masl-core
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
$MASLMC -domainpath $CWD/masl/calc -mod $CWD/masl/calc/calc.mod -output $CWD/gen/code_generation/calc
cd $CWD
cmake . -DCMAKE_INSTALL_PREFIX=$PWD
