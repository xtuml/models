#!/bin/bash
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
GEN_LOG_Logger_LOC="$HOME/git/masl/examples/utils/Logger_OOA"
GEN_LOG_Format_LOC="$HOME/git/masl/examples/utils/Format_OOA"
$HOME/git/masl/core-java/install/masl-core/bin/masl-core -domainpath $CWD/masl/LOG:$GEN_LOG_Logger_LOC:$GEN_LOG_Format_LOC -mod $CWD/masl/LOG/LOG.mod -output $CWD/gen/code_generation/LOG
$HOME/git/masl/core-java/install/masl-core/bin/masl-core -domainpath $GEN_LOG_Logger_LOC -mod $GEN_LOG_Logger_LOC/Logger.int -output $CWD/gen/code_generation/Logger
$HOME/git/masl/core-java/install/masl-core/bin/masl-core -domainpath $GEN_LOG_Format_LOC -mod $GEN_LOG_Format_LOC/Format.int -output $CWD/gen/code_generation/Format
cmake $CWD -DCMAKE_INSTALL_PREFIX=$PWD
