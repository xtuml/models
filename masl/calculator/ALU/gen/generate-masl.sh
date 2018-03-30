#!/bin/bash
MASLMC=$HOME/git/masl/core-java/install/masl-core/bin/masl-core
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
$MASLMC -domainpath $CWD/masl/ALU -mod $CWD/masl/ALU/ALU.mod -output $CWD/gen/code_generation/ALU -test
cd $CWD
cmake . -DCMAKE_INSTALL_PREFIX=$PWD
