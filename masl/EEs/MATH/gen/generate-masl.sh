#!/bin/bash
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
GEN_MATH_Math_LOC="$HOME/git/masl/examples/utils/Math_OOA"
$HOME/git/masl/core-java/install/masl-core/bin/masl-core -domainpath $CWD/masl/MATH:$GEN_MATH_Math_LOC -mod $CWD/masl/MATH/MATH.mod -output $CWD/gen/code_generation/MATH
$HOME/git/masl/core-java/install/masl-core/bin/masl-core -domainpath $GEN_MATH_Math_LOC -mod $GEN_MATH_Math_LOC/Math.int -output $CWD/gen/code_generation/Math
cmake $CWD -DCMAKE_INSTALL_PREFIX=$PWD
