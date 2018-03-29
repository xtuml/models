#!/bin/bash
MASLMC=$HOME/git/masl/core-java/install/masl-core/bin/masl-core
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
$MASLMC -domainpath $CWD/masl/calc_test -mod $CWD/masl/calc_test/calc_test.mod -output $CWD/gen/code_generation/calc_test
cd $CWD
cmake . -DCMAKE_INSTALL_PREFIX=$PWD
