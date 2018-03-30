#!/bin/bash
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
$HOME/git/masl/core-java/install/masl-core/bin/masl-core -domainpath $CWD/masl/ARCH -mod $CWD/masl/ARCH/ARCH.mod -output $CWD/gen/code_generation/ARCH
cmake $CWD -DCMAKE_INSTALL_PREFIX=$PWD
